# Multi-Cloud Application Migration

This repository contains Terraform configuration files for deploying a multi-cloud application, specifically targeting AWS (Amazon Web Services) and GCP (Google Cloud Platform).

## AWS Configuration

### Variables

- `aws_credentials_file_path`: This variable specifies the path to the AWS credentials file.
- `aws_region`: This variable specifies the AWS region to use. It defaults to US East (N. Virginia) region.

### AWS Provider Configuration

The AWS provider is configured with the following settings:

- `shared_credentials_file`: The path to the AWS credentials file is set based on the `aws_credentials_file_path` variable.
- `region`: The AWS region is set based on the `aws_region` variable.

### AWS Resources

#### AWS S3 Bucket

A private S3 bucket is created with the following configuration:

- `bucket`: The name of the S3 bucket is set to "luxxy-covid-testing-system-pdf-en-Daniel321".
- `acl`: The access control list (ACL) is set to "private".

## GCP Configuration

### Variables

- `gcp_project_id`: This variable specifies the GCP Project ID.
- `gcp_region`: This variable specifies the GCP region to use. It defaults to Ashburn, Virginia region.

### GCP Resources

#### Cloud SQL Instance and Database

A Cloud SQL instance and database are created with the following configuration:

- `name`: The name of the Cloud SQL instance is set to "luxxy-covid-testing-system-database-instance-en".
- `region`: The GCP region is set based on the `gcp_region` variable.
- `database_version`: The MySQL database version is set to "MYSQL_5_7".
- `tier`: The instance is configured with the "db-f1-micro" machine type.
- `deletion_protection`: Deletion protection is enabled for the instance.

#### Google Kubernetes Engine (GKE) Cluster

A Google Kubernetes Engine (GKE) cluster is created with the following configuration:

- `name`: The name of the GKE cluster is set to "luxxy-kubernetes-cluster-en".
- `location`: The GCP region is set based on the `gcp_region` variable.
- `initial_node_count`: The initial number of nodes in the cluster is set to 1.
- `enable_autopilot`: Autopilot mode is enabled for the cluster.
- `oauth_scopes`: The custom service account is configured with the "cloud-platform" scope.
- `labels`: The cluster nodes are labeled with the environment set to "training".
- `tags`: The cluster nodes are tagged with "environment" and "training".

## Requirements

- Terraform version: 0.15 or higher.
- Provider plugins:
  - `hashicorp/aws` version "~> 3.0"
  - `hashicorp/google` (Google Cloud Platform provider)

## Usage

1. Install Terraform on your local machine.
2. Set up the necessary credentials and authentication for AWS and GCP.
3. Clone this repository.
4. Update the variable values and configurations as needed.
5. Run `terraform init` to initialize the working directory.
6. Run `terraform plan` to see the execution plan.
7. Run `terraform apply` to apply the configuration and create the resources.

Please note that this README provides an overview of the code and its purpose. For detailed usage instructions, refer to the specific Terraform documentation and the comments in the code files.


