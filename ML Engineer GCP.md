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
