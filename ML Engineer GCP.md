gcloud auth list
gcloud config list project


gcloud config set compute/region us-east4
export REGION=us-east4
export ZONE=us-east4-a


gcloud compute firewall-rules create allow-ssh-from-iap \
    --direction=INGRESS \
    --action=ALLOW \
    --rules=tcp:22 \
    --source-ranges=35.235.240.0/20 \
    --target-tags=gcelab


sudo apt-get update
sudo apt-get install -y nginx
ps auwx | grep nginx

http://34.86.64.30


gcloud compute instances create gcelab2 --machine-type e2-medium --zone=$ZONE
gcloud compute instances create --help
gcloud compute ssh gcelab2 --zone=$ZONE


# Windows Server Creation
gcloud compute instances get-serial-port-output instance-1


# To set a password for logging into the RDP, run the following command in Cloud Shell. Be sure you replace [instance] with the VM Instance that you created, [zone] that you defined earlier and set [username] as admin.
gcloud compute reset-windows-password instance-1 --zone us-east1-c --user admin

```
Updated [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-00-c2759c6e6edb/zones/us-east1-c/instances/instance-1].
ip_address: 34.138.186.58
password:   r@HJ<ln(n;&_-[N
username:   admin
```


# Initialise & Authenticate (Optional)
gcloud auth list
gcloud config list project


# Set Region & Zone in environment variables
gcloud config set compute/region us-west1
gcloud config get-value compute/region
gcloud config set compute/zone us-west1-a
gcloud config get-value compute/zone


# Get Project ID
gcloud config get-value project
gcloud compute project-info describe --project $(gcloud config get-value project)


# Setting Environment Variables
export PROJECT_ID=$(gcloud config get-value project)
export ZONE=$(gcloud config get-value compute/zone)
echo -e "PROJECT ID: $PROJECT_ID\nZONE: $ZONE"


# Create Compute Engine
gcloud compute instances create gcelab2 --machine-type e2-medium --zone $ZONE
gcloud compute instances create --help


# Help commands
gcloud -h
gcloud --help
gcloud config --help
gcloud help config


# Get list of config
gcloud config list
gcloud config list --all


# List all components in the project
gcloud components list


# List & Filter Instances
gcloud compute instances list
gcloud compute instances list --filter="name=('gcelab2')"


# List & filter Firewall rules
gcloud compute firewall-rules list
gcloud compute firewall-rules list --filter="network='default'"
gcloud compute firewall-rules list --filter="NETWORK:'default' AND ALLOW:'icmp'"


# SSH & Install nginx
gcloud compute ssh gcelab2 --zone $ZONE
sudo apt install -y nginx


# Add Firewall Rule & Filter
gcloud compute firewall-rules list
http://34.82.197.164/
gcloud compute instances add-tags gcelab2 --tags http-server,https-server
gcloud compute firewall-rules create default-allow-http --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:80 --source-ranges=0.0.0.0/0 --target-tags=http-server
gcloud compute firewall-rules list --filter=ALLOW:'80'
curl http://$(gcloud compute instances list --filter=name:gcelab2 --format='value(EXTERNAL_IP)')


# Logs & Filtering
gcloud logging logs list
gcloud logging logs list --filter="compute"
gcloud logging read "resource.type=gce_instance" --limit 5
gcloud logging read "resource.type=gce_instance AND labels.instance_name='gcelab2'" --limit 5



# GKE
gcloud auth list
gcloud config list project
gcloud config set compute/region us-west1
gcloud config set compute/zone us-west1-c
gcloud container clusters create --machine-type=e2-medium --zone=us-west1-c lab-cluster


# Authenticate with the cluster:
gcloud container clusters get-credentials lab-cluster


# Deployment of k8s app
kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:1.0


# To create a Kubernetes Service, which is a Kubernetes resource that lets you expose your application to external traffic
kubectl expose deployment hello-server --type=LoadBalancer --port 8080


# To inspect the hello-server Service, run kubectl get:
kubectl get service


http://34.83.48.218:8080/


# Delete cluster
gcloud container clusters delete lab-cluster



# Load Balancers
gcloud auth list
gcloud config list project

gcloud config set compute/region europe-west1
gcloud config set compute/zone europe-west1-c

## Create a virtual machine www1 in your default zone using the following code:
gcloud compute instances create www1 \
    --zone=europe-west1-c \
    --tags=network-lb-tag \
    --machine-type=e2-small \
    --image-family=debian-11 \
    --image-project=debian-cloud \
    --metadata=startup-script='#!/bin/bash
      apt-get update
      apt-get install apache2 -y
      service apache2 restart
      echo "
<h3>Web Server: www1</h3>" | tee /var/www/html/index.html'


## Create a virtual machine www2 in your default zone using the following code:
  gcloud compute instances create www2 \
    --zone=europe-west1-c \
    --tags=network-lb-tag \
    --machine-type=e2-small \
    --image-family=debian-11 \
    --image-project=debian-cloud \
    --metadata=startup-script='#!/bin/bash
      apt-get update
      apt-get install apache2 -y
      service apache2 restart
      echo "
<h3>Web Server: www2</h3>" | tee /var/www/html/index.html'

## Create a virtual machine www3 in your default zone.
  gcloud compute instances create www3 \
    --zone=europe-west1-c  \
    --tags=network-lb-tag \
    --machine-type=e2-small \
    --image-family=debian-11 \
    --image-project=debian-cloud \
    --metadata=startup-script='#!/bin/bash
      apt-get update
      apt-get install apache2 -y
      service apache2 restart
      echo "
<h3>Web Server: www3</h3>" | tee /var/www/html/index.html'

## Create a firewall rule to allow external traffic to the VM instances:
gcloud compute firewall-rules create www-firewall-network-lb \
    --target-tags network-lb-tag --allow tcp:80


gcloud compute instances list
curl http://35.195.97.190


## Create a static external IP address for your load balancer:
gcloud compute addresses create network-lb-ip-1 \
  --region europe-west1

## Add a legacy HTTP health check resource:
gcloud compute http-health-checks create basic-check

## Add a target pool in the same region as your instances. Run the following to create the target pool and use the health check, which is required for the service to function
gcloud compute target-pools create www-pool \
  --region europe-west1 --http-health-check basic-check

## Add the instances to the pool
gcloud compute target-pools add-instances www-pool \
    --instances www1,www2,www3

## Add a forwarding rule
gcloud compute forwarding-rules create www-rule \
    --region  europe-west1 \
    --ports 80 \
    --address network-lb-ip-1 \
    --target-pool www-pool

## Enter the following command to view the external IP address of the www-rule forwarding rule used by the load balancer:
gcloud compute forwarding-rules describe www-rule --region europe-west1

## Access the external IP address
IPADDRESS=$(gcloud compute forwarding-rules describe www-rule --region europe-west1 --format="json" | jq -r .IPAddress)

## Show the external IP address
echo $IPADDRESS

## Use curl command to access the external IP address, replacing IP_ADDRESS with an external IP address from the previous command:
while true; do curl -m1 $IPADDRESS; done

# Create an HTTP load balancer
## First, create the load balancer template:
gcloud compute instance-templates create lb-backend-template \
   --region=europe-west1 \
   --network=default \
   --subnet=default \
   --tags=allow-health-check \
   --machine-type=e2-medium \
   --image-family=debian-11 \
   --image-project=debian-cloud \
   --metadata=startup-script='#!/bin/bash
     apt-get update
     apt-get install apache2 -y
     a2ensite default-ssl
     a2enmod ssl
     vm_hostname="$(curl -H "Metadata-Flavor:Google" \
     http://169.254.169.254/computeMetadata/v1/instance/name)"
     echo "Page served from: $vm_hostname" | \
     tee /var/www/html/index.html
     systemctl restart apache2'

## Managed instance groups (MIGs) let you operate apps on multiple identical VMs. You can make your workloads scalable and highly available by taking advantage of automated MIG services, including: autoscaling, autohealing, regional (multiple zone) deployment, and automatic updating.
## Create a managed instance group based on the template:
gcloud compute instance-groups managed create lb-backend-group \
   --template=lb-backend-template --size=2 --zone=europe-west1-c

## Create the fw-allow-health-check firewall rule.
gcloud compute firewall-rules create fw-allow-health-check \
  --network=default \
  --action=allow \
  --direction=ingress \
  --source-ranges=130.211.0.0/22,35.191.0.0/16 \
  --target-tags=allow-health-check \
  --rules=tcp:80

## Now that the instances are up and running, set up a global static external IP address that your customers use to reach your load balancer:
gcloud compute addresses create lb-ipv4-1 \
  --ip-version=IPV4 \
  --global

## Note the IPv4 address that was reserved:
gcloud compute addresses describe lb-ipv4-1 \
  --format="get(address)" \
  --global

## Create a health check for the load balancer:
gcloud compute health-checks create http http-basic-check \
  --port 80

## Create a backend service:
gcloud compute backend-services create web-backend-service \
  --protocol=HTTP \
  --port-name=http \
  --health-checks=http-basic-check \
  --global

## Add your instance group as the backend to the backend service
gcloud compute backend-services add-backend web-backend-service \
  --instance-group=lb-backend-group \
  --instance-group-zone=europe-west1-c \
  --global

## Create a URL map to route the incoming requests to the default backend service:
gcloud compute url-maps create web-map-http \
    --default-service web-backend-service

## Create a target HTTP proxy to route requests to your URL map:
gcloud compute target-http-proxies create http-lb-proxy \
    --url-map web-map-http

## Create a global forwarding rule to route incoming requests to the proxy:
gcloud compute forwarding-rules create http-content-rule \
   --address=lb-ipv4-1\
   --global \
   --target-http-proxy=http-lb-proxy \
   --ports=80

# Testing traffic sent to your instances


# Predicting Visitor Purchases using Bigquery ML


# Entity and Sentiment Analysis with the Natural Language API
Navigation menu > APIs & Services > Credentials.
Create API Key
SSH into the VM
`export API_KEY=<YOUR_API_KEY>`
Add a file `request.json`:
```json
{
  "document":{
    "type":"PLAIN_TEXT",
    "content":"Joanne Rowling, who writes under the pen names J. K. Rowling and Robert Galbraith, is a British novelist and screenwriter who wrote the Harry Potter fantasy series."
  },
  "encodingType":"UTF8"
}
```
curl "https://language.googleapis.com/v1/documents:analyzeEntities?key=${API_KEY}" \
  -s -X POST -H "Content-Type: application/json" --data-binary @request.json > result.json
cat result.json

```json
{
  "document":{
    "type":"PLAIN_TEXT",
    "content":"Harry Potter is the best book. I think everyone should read it."
  },
  "encodingType": "UTF8"
}
```
curl "https://language.googleapis.com/v1/documents:analyzeSentiment?key=${API_KEY}" \
  -s -X POST -H "Content-Type: application/json" --data-binary @request.json

```json
{
  "document":{
    "type":"PLAIN_TEXT",
    "content":"I liked the sushi but the service was terrible."
  },
  "encodingType": "UTF8"
}
```
curl "https://language.googleapis.com/v1/documents:analyzeEntitySentiment?key=${API_KEY}" \
  -s -X POST -H "Content-Type: application/json" --data-binary @request.json
```json
{
  "document":{
    "type":"PLAIN_TEXT",
    "content": "Joanne Rowling is a British novelist, screenwriter and film producer."
  },
  "encodingType": "UTF8"
}
```
curl "https://language.googleapis.com/v1/documents:analyzeSyntax?key=${API_KEY}" \
  -s -X POST -H "Content-Type: application/json" --data-binary @request.json
```json
{
  "document":{
    "type":"PLAIN_TEXT",
    "content":"日本のグーグルのオフィスは、東京の六本木ヒルズにあります"
  }
}
```
curl "https://language.googleapis.com/v1/documents:analyzeEntities?key=${API_KEY}" \
  -s -X POST -H "Content-Type: application/json" --data-binary @request.json
