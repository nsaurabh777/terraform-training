Welcome to Cloud Shell! Type "help" to get started.
Your Cloud Platform project in this session is set to cool-discipline-186213.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
nsaurabh777@cloudshell:~ (cool-discipline-186213)$ terraform version
Terraform v1.7.0
on linux_amd64

provider "google"
Welcome to Cloud Shell! Type "help" to get started.
Your Cloud Platform project in this session is set to cool-discipline-186213.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
nsaurabh777@cloudshell:~ (cool-discipline-186213)$ terraform version
Terraform v1.7.0
on linux_amd64

Your version of Terraform is out of date! The latest version
is 1.7.2. You can update by downloading from https://www.terraform.io/downloads.html
nsaurabh777@cloudshell:~ (cool-discipline-186213)$ ls
README-cloudshell.txt
nsaurabh777@cloudshell:~ (cool-discipline-186213)$ mkdir terraform-training
nsaurabh777@cloudshell:~ (cool-discipline-186213)$ cd terraform-training/
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ ls
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ gcloud config list project
[core]
project = cool-discipline-186213

Your active configuration is: [cloudshell-32258]
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ vim provider.tf
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ gcloud compute regions list
NAME: africa-south1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: asia-east1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: asia-east2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: asia-northeast1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: asia-northeast2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: asia-northeast3
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: asia-south1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: asia-south2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: asia-southeast1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: asia-southeast2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: australia-southeast1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: australia-southeast2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-central2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-north1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-southwest1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-west1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-west10
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-west12
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-west2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-west3
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-west4
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-west6
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-west8
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: europe-west9
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: me-central1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: me-central2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: me-west1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: northamerica-northeast1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: northamerica-northeast2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: southamerica-east1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: southamerica-west1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: us-central1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: us-east1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: us-east4
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: us-east5
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: us-south1
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

provider "google" {
NAME: us-west1
resource "google_compute_instance" "vm_instance" {
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 

NAME: us-west2
CPUS: 0/24
DISKS_GB: 0/4096
ADDRESSES: 0/8
RESERVED_ADDRESSES: 0/8
STATUS: UP
TURNDOWN_DATE: 
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ ls
new_vm.tf  provider.tf
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/google...
- Installing hashicorp/google v5.14.0...
- Installed hashicorp/google v5.14.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ ls
new_vm.tf  provider.tf
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ ls -a
.  ..  new_vm.tf  provider.tf  .terraform  .terraform.lock.hcl
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ cat .terraform.lock.hcl
# This file is maintained automatically by "terraform init".
# Manual edits may be lost in future updates.

provider "registry.terraform.io/hashicorp/google" {
  version = "5.14.0"
  hashes = [
    "h1:+2NBnhyLVoyv3smDe+ujn31Iw/+NNqioP64P9W8nX3o=",
    "zh:3927ef7417d9d8a56077e6655d76c99f4175f9746e39226a00ee0555f8c63f8f",
    "zh:4b4f521f0779a1797047a8c531afda093aade934b4a49c080fe8d38680b3a52f",
    "zh:7e880c5b72684fc8342e03180a1fbbec65c6afeb70511b9c16181d5e168269e6",
    "zh:81a7f2efc30e698f476d3e240ee2d82f14eda374852059429fe808ad77b6addd",
    "zh:826d4ea55b4afceefb332646f21c6b6dc590b39b16e8d9b5d4a4211beb91dc5e",
    "zh:865600ef669fcdd4ae77515c3fd12565fab0f2a263fa2a6dae562f6fe68ed093",
    "zh:8e933d1d10fd316e62340175667264f093e4d24457b63d5adf3c424cce22b495",
    "zh:bf261924f7350074a355e5b9337f3a8054efb20d316e9085f2b5766dfb5126c4",
    "zh:e28e67dcbd4bbd82798561baf86d3dd04f97e08bbf523dfb9f355564ef27d3d6",
    "zh:f33cdd3117af8a15f33d375dbe398a5e558730cf6a7a145a479ab68e77572c12",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
    "zh:f913a0e0708391ccd26fc3458158cc1e10d68dc621bef3a1583328c61a77225d",
  ]
}
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ cd .terraform/
nsaurabh777@cloudshell:~/terraform-training/.terraform (cool-discipline-186213)$ ls
providers
nsaurabh777@cloudshell:~/terraform-training/.terraform (cool-discipline-186213)$ cd providers/
nsaurabh777@cloudshell:~/terraform-training/.terraform/providers (cool-discipline-186213)$ ls
registry.terraform.io
nsaurabh777@cloudshell:~/terraform-training/.terraform/providers (cool-discipline-186213)$ ls registry.terraform.io/
hashicorp
nsaurabh777@cloudshell:~/terraform-training/.terraform/providers (cool-discipline-186213)$ ls registry.terraform.io/hashicorp/
google
nsaurabh777@cloudshell:~/terraform-training/.terraform/providers (cool-discipline-186213)$ ls
registry.terraform.io
nsaurabh777@cloudshell:~/terraform-training/.terraform/providers (cool-discipline-186213)$ ls registry.terraform.io/hashicorp/google/
5.14.0
nsaurabh777@cloudshell:~/terraform-training/.terraform/providers (cool-discipline-186213)$ ls registry.terraform.io/hashicorp/google/5.14.0/
linux_amd64
nsaurabh777@cloudshell:~/terraform-training/.terraform/providers (cool-discipline-186213)$ ls registry.terraform.io/hashicorp/google/5.14.0/linux_amd64/
terraform-provider-google_v5.14.0_x5
resource "google_compute_instance" "vm_instance" {
        name = "my_terraform_vm"
        machine_type = "e2-medium"
        boot_disk {
nsaurabh777@cloudshell:~/terraform-training/.terraform/providers (cool-discipline-186213)$ cd ..
nsaurabh777@cloudshell:~/terraform-training/.terraform (cool-discipline-186213)$ cd ..
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ ls
new_vm.tf  provider.tf
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ terraform plan
╷
│ Error: Insufficient network_interface blocks
│ 
│   on new_vm.tf line 1, in resource "google_compute_instance" "vm_instance":
│    1: resource "google_compute_instance" "vm_instance" {
│ 
│ At least 1 "network_interface" blocks are required.
╵
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ vim new_vm.tf 
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + effective_labels     = (known after apply)
      + guest_accelerator    = (known after apply)
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "e2-medium"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "my_terraform_vm"
      + project              = "cool-discipline-186213"
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = (known after apply)
      + zone                 = "us-west1-b"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image                  = "centos-7-v20200403"
              + labels                 = (known after apply)
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + size                   = (known after apply)
              + type                   = (known after apply)
            }
        }

      + network_interface {
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "default"
          + network_ip                  = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + effective_labels     = (known after apply)
      + guest_accelerator    = (known after apply)
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "e2-medium"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "my_terraform_vm"
      + project              = "cool-discipline-186213"
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = (known after apply)
      + zone                 = "us-west1-b"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image                  = "centos-7-v20200403"
              + labels                 = (known after apply)
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + size                   = (known after apply)
              + type                   = (known after apply)
            }
        }

      + network_interface {
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "default"
          + network_ip                  = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
resource "google_compute_instance" "vm_instance" {
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_compute_instance.vm_instance: Creating...
╷
│ Error: Error creating instance: googleapi: Error 400: Invalid value for field 'resource.name': 'my_terraform_vm'. Must be a match of regex '(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?)', invalid
│ 
│   with google_compute_instance.vm_instance,
│   on new_vm.tf line 1, in resource "google_compute_instance" "vm_instance":
│    1: resource "google_compute_instance" "vm_instance" {
│ 
╵
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ vim new_vm.tf                                                                                                                                
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + effective_labels     = (known after apply)
      + guest_accelerator    = (known after apply)
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "e2-medium"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "my-terraform-vm"
      + project              = "cool-discipline-186213"
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = (known after apply)
      + zone                 = "us-west1-b"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image                  = "centos-7-v20200403"
              + labels                 = (known after apply)
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + size                   = (known after apply)
              + type                   = (known after apply)
            }
        }

      + network_interface {
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "default"
          + network_ip                  = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_compute_instance.vm_instance: Creating...
google_compute_instance.vm_instance: Still creating... [10s elapsed]
google_compute_instance.vm_instance: Creation complete after 18s [id=projects/cool-discipline-186213/zones/us-west1-b/instances/my-terraform-vm]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ ls -a
.  ..  new_vm.tf  provider.tf  .terraform  .terraform.lock.hcl  terraform.tfstate  terraform.tfstate.backup
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ cat terraform.tfstate.backup
{
  "version": 4,
  "terraform_version": "1.7.0",
  "serial": 1,
  "lineage": "f0e1886f-cf9c-a34a-9ee6-1ddf2ca4d1fb",
  "outputs": {},
  "resources": [],
  "check_results": null
}
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ cat terraform.tfstate
{
  "version": 4,
  "terraform_version": "1.7.0",
  "serial": 3,
  "lineage": "f0e1886f-cf9c-a34a-9ee6-1ddf2ca4d1fb",
  "outputs": {},
  "resources": [
    {
      "mode": "managed",
      "type": "google_compute_instance",
      "name": "vm_instance",
      "provider": "provider[\"registry.terraform.io/hashicorp/google\"]",
      "instances": [
        {
          "schema_version": 6,
          "attributes": {
            "advanced_machine_features": [],
            "allow_stopping_for_update": null,
            "attached_disk": [],
            "boot_disk": [
              {
                "auto_delete": true,
                "device_name": "persistent-disk-0",
                "disk_encryption_key_raw": "",
                "disk_encryption_key_sha256": "",
                "initialize_params": [
                  {
                    "enable_confidential_compute": false,
                    "image": "https://www.googleapis.com/compute/v1/projects/centos-cloud/global/images/centos-7-v20200403",
                    "labels": {},
                    "provisioned_iops": 0,
                    "provisioned_throughput": 0,
                    "resource_manager_tags": null,
                    "size": 20,
                    "type": "pd-standard"
                  }
                ],
                "kms_key_self_link": "",
                "mode": "READ_WRITE",
                "source": "https://www.googleapis.com/compute/v1/projects/cool-discipline-186213/zones/us-west1-b/disks/my-terraform-vm"
              }
            ],
            "can_ip_forward": false,
            "confidential_instance_config": [],
            "cpu_platform": "AMD Rome",
            "current_status": "RUNNING",
            "deletion_protection": false,
            "description": "",
            "desired_status": null,
            "effective_labels": {},
            "enable_display": false,
            "guest_accelerator": [],
            "hostname": "",
            "id": "projects/cool-discipline-186213/zones/us-west1-b/instances/my-terraform-vm",
            "instance_id": "3217701226839186981",
            "label_fingerprint": "42WmSpB8rSM=",
            "labels": null,
            "machine_type": "e2-medium",
            "metadata": null,
            "metadata_fingerprint": "VNXMP5XeGN8=",
            "metadata_startup_script": null,
            "min_cpu_platform": "",
            "name": "my-terraform-vm",
            "network_interface": [
              {
                "access_config": [
                  {
                    "nat_ip": "34.82.222.190",
                    "network_tier": "PREMIUM",
                    "public_ptr_domain_name": ""
                  }
                ],
                "alias_ip_range": [],
                "internal_ipv6_prefix_length": 0,
                "ipv6_access_config": [],
                "ipv6_access_type": "",
                "ipv6_address": "",
                "name": "nic0",
                "network": "https://www.googleapis.com/compute/v1/projects/cool-discipline-186213/global/networks/default",
                "network_ip": "10.138.0.2",
                "nic_type": "",
                "queue_count": 0,
                "stack_type": "IPV4_ONLY",
                "subnetwork": "https://www.googleapis.com/compute/v1/projects/cool-discipline-186213/regions/us-west1/subnetworks/default",
                "subnetwork_project": "cool-discipline-186213"
              }
            ],
            "network_performance_config": [],
            "params": [],
            "project": "cool-discipline-186213",
            "reservation_affinity": [],
            "resource_policies": null,
            "scheduling": [
              {
                "automatic_restart": true,
                "instance_termination_action": "",
                "local_ssd_recovery_timeout": [],
                "min_node_cpus": 0,
                "node_affinities": [],
                "on_host_maintenance": "MIGRATE",
                "preemptible": false,
                "provisioning_model": "STANDARD"
              }
            ],
            "scratch_disk": [],
            "self_link": "https://www.googleapis.com/compute/v1/projects/cool-discipline-186213/zones/us-west1-b/instances/my-terraform-vm",
            "service_account": [],
            "shielded_instance_config": [
              {
                "enable_integrity_monitoring": true,
                "enable_secure_boot": false,
                "enable_vtpm": true
              }
            ],
            "tags": null,
            "tags_fingerprint": "42WmSpB8rSM=",
            "terraform_labels": {},
            "timeouts": null,
            "zone": "us-west1-b"
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjoxMjAwMDAwMDAwMDAwLCJkZWxldGUiOjEyMDAwMDAwMDAwMDAsInVwZGF0ZSI6MTIwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiNiJ9"
        }
      ]
    }
  ],
  "check_results": null
}
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ terraform destroy
google_compute_instance.vm_instance: Refreshing state... [id=projects/cool-discipline-186213/zones/us-west1-b/instances/my-terraform-vm]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be destroyed
  - resource "google_compute_instance" "vm_instance" {
      - can_ip_forward       = false -> null
      - cpu_platform         = "AMD Rome" -> null
      - current_status       = "RUNNING" -> null
      - deletion_protection  = false -> null
      - effective_labels     = {} -> null
      - enable_display       = false -> null
      - guest_accelerator    = [] -> null
      - id                   = "projects/cool-discipline-186213/zones/us-west1-b/instances/my-terraform-vm" -> null
      - instance_id          = "3217701226839186981" -> null
      - label_fingerprint    = "42WmSpB8rSM=" -> null
      - labels               = {} -> null
      - machine_type         = "e2-medium" -> null
      - metadata             = {} -> null
      - metadata_fingerprint = "VNXMP5XeGN8=" -> null
      - name                 = "my-terraform-vm" -> null
      - project              = "cool-discipline-186213" -> null
      - resource_policies    = [] -> null
      - self_link            = "https://www.googleapis.com/compute/v1/projects/cool-discipline-186213/zones/us-west1-b/instances/my-terraform-vm" -> null
      - tags                 = [] -> null
      - tags_fingerprint     = "42WmSpB8rSM=" -> null
      - terraform_labels     = {} -> null
      - zone                 = "us-west1-b" -> null

      - boot_disk {
          - auto_delete = true -> null
          - device_name = "persistent-disk-0" -> null
          - mode        = "READ_WRITE" -> null
          - source      = "https://www.googleapis.com/compute/v1/projects/cool-discipline-186213/zones/us-west1-b/disks/my-terraform-vm" -> null

          - initialize_params {
              - enable_confidential_compute = false -> null
              - image                       = "https://www.googleapis.com/compute/v1/projects/centos-cloud/global/images/centos-7-v20200403" -> null
              - labels                      = {} -> null
              - provisioned_iops            = 0 -> null
              - provisioned_throughput      = 0 -> null
              - resource_manager_tags       = {} -> null
              - size                        = 20 -> null
              - type                        = "pd-standard" -> null
            }
        }

      - network_interface {
          - internal_ipv6_prefix_length = 0 -> null
          - name                        = "nic0" -> null
          - network                     = "https://www.googleapis.com/compute/v1/projects/cool-discipline-186213/global/networks/default" -> null
          - network_ip                  = "10.138.0.2" -> null
          - queue_count                 = 0 -> null
          - stack_type                  = "IPV4_ONLY" -> null
          - subnetwork                  = "https://www.googleapis.com/compute/v1/projects/cool-discipline-186213/regions/us-west1/subnetworks/default" -> null
          - subnetwork_project          = "cool-discipline-186213" -> null

          - access_config {
              - nat_ip       = "34.82.222.190" -> null
              - network_tier = "PREMIUM" -> null
            }
        }

      - scheduling {
          - automatic_restart   = true -> null
          - min_node_cpus       = 0 -> null
          - on_host_maintenance = "MIGRATE" -> null
          - preemptible         = false -> null
          - provisioning_model  = "STANDARD" -> null
        }

      - shielded_instance_config {
          - enable_integrity_monitoring = true -> null
          - enable_secure_boot          = false -> null
          - enable_vtpm                 = true -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

google_compute_instance.vm_instance: Destroying... [id=projects/cool-discipline-186213/zones/us-west1-b/instances/my-terraform-vm]
google_compute_instance.vm_instance: Still destroying... [id=projects/cool-discipline-186213/zones/us-west1-b/instances/my-terraform-vm, 10s elapsed]
google_compute_instance.vm_instance: Still destroying... [id=projects/cool-discipline-186213/zones/us-west1-b/instances/my-terraform-vm, 20s elapsed]
google_compute_instance.vm_instance: Destruction complete after 25s

Destroy complete! Resources: 1 destroyed.
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_compute_instance.vm_instance will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + effective_labels     = (known after apply)
      + guest_accelerator    = (known after apply)
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "e2-medium"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "my-terraform-vm"
      + project              = "cool-discipline-186213"
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = (known after apply)
      + zone                 = "us-west1-b"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image                  = "centos-7-v20200403"
              + labels                 = (known after apply)
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + size                   = (known after apply)
              + type                   = (known after apply)
            }
        }

      + network_interface {
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "default"
          + network_ip                  = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "default"
          + network_ip                  = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
nsaurabh777@cloudshell:~/terraform-training (cool-discipline-186213)$ 