# LP-Assignment
LivePerson - Cloud DevOps Engineer

The project has three modules:
1. Bootstrap: For creating buckets in GCP for storing TF state files.
2. gke: In this module we will create GKE in GCP.
3. root: In this module we will create airflow resources in GKE using helm charts.


Steps to run the project:
1. Create project in GCP
2. If google cloud SDK is missing, install using: `brew install --cask google-cloud-sdk`
3. Once google cloud SDK is installed login for project: `gcloud auth application-default login --project $PROJECT`
4. Enable container engine API either though portal or using google cloud SDK (gcloud): `gcloud services enable containerregistry.googleapis.com`
5. Go to bootstrap directory in project and create buckets using below commands:
   a. `terraform init`
   b. `terraform plan`
   c. `terraform apply`
6. Go to gke directory to create cluster:
   a. `terraform init`
   b. `terraform plan`
   c. `terraform apply`
7. Then connect to cluster and store credentials locally:
   a. `gcloud container clusters get-credentials my-cluster --region asia-east1 --project m7shekhawat`
8. Then go to root directory of project and create airflow resources in GKE using helm charts, by:
   a. `terraform init`
   b. `terraform plan`
   c. `terraform apply`

NOTE: In providers.tf: please update GCP project & location before creating resources.