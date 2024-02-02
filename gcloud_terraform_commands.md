# To install terraform:
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
echo ‘export PATH=”$HOME/.tfenv/bin:$PATH”‘ >> ~/.bash_profile
sudo ln -s ~/.tfenv/bin/* /usr/local/bin



# On the Google Cloud Shell
gcloud init
gcloud config list project
gcloud config set project <PROJECT_ID>
gcloud compute instances list
gcloud compute regions list # https://cloud.google.com/compute/docs/regions-zones#available
gcloud compute regions describe us-west4
gcloud compute images list | grep -i ubuntu


# On mac: Download and install gcloud sdk : https://cloud.google.com/sdk/docs/install


# Go to IAM & Accounts create a service account. Then add a key to that account. Then authenticate this service account by using the following command:
gcloud auth activate-service-account  --key-file=terraform-cool-discipline-186213-884c8d890250.json



# Install Terraform: https://developer.hashicorp.com/terraform/install
brew tap hashicorp/tap
brew install hashicorp/tap/terraform






# Debian Apache installation
sudo apt install apache2
sudo service apache2 status

http://34.170.129.119/
cd /var/www/html # Apache Directory
index.html is the website

Compute Engine > Images > Instance Templates > Managed Instance Groups


# To add load to the autoscaled server (on terminal)
dd if=/dev/zero of=/dev/null &