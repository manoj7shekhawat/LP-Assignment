# LP-Assignment - Ansible

1. Create project in GCP
2. Create Service Account User and download the keys(.json)
3. service account name = ansible-admin
4. service account should have below four roles
   1. Compute OS Admin Login 
   2. Compute OS Login 
   3. Editor 
   4. Service Account user
5. Download the keys of service account to your local system. (Example: `/Users/I566958/Downloads/m7shekhawat-fa4b46a2f8d1.json`)
6. install pyenv, python, ansible and google sdk if not done already at your local machine
   1. `brew update`
   2. `brew install pyenv`
   3. `pyenv install 3.10.4`
   4. `pip install ansible requests google-auth`
   5. `brew install --cask google-cloud-sdk`
7. Login to GCP using the service account user created in the previous step.
   1. `gcloud init`
   2. `gcloud compute project-info add-metadata --metadata=enable-oslogin=TRUE`
   3. `gcloud auth activate-service-account --key-file=/Users/I566958/Downloads/m7shekhawat-fa4b46a2f8d1.json`
   4. `cd ~/.ssh;  ssh-keygen -f ssh-key-ansible-sa`
   5. `gcloud compute os-login ssh-keys add --key-file=ssh-key-ansible-sa.pub`
   6. `gcloud config list`
   7. `gcloud compute project-info add-metadata --metadata google-compute-default-region=asia-east1,google-compute-default-zone=asia-east1-b`
8. Run the Ansible playbook, go to ansible directory
   1. `ansible-playbook main.yml -u sa_112870513885200380098` 

NOTE: 
1. sa_112870513885200380098: Is service account user
2. /Users/I566958/Downloads/m7shekhawat-fa4b46a2f8d1.json: keys of service account