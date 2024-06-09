# getmobil
case study for getmobil

- In this project, the necessary infrastructure was installed with Terraform. The required VPC, Subnet, Security Group, IAM roles and policies for AWS are defined using Terraform. 

- The AWS EKS cluster and its connected node groups were created with Terraform
AWS ECR repositories where Docker images will be stored were established with Terraform.

- Docker images were created for each layer of the application using Dockerfiles.

- Kubernetes deployment, service, pvc, secrets, storageclass, ingress objects yaml files were written.

CI/CD Pipeline Setup:
- Automatically converting changes in the application code to Docker images, testing and EKS
A CI/CD pipeline was created to be deployed to the cluster
- Integrated Terraform plan and apply operations into the CI process using GitHub Actions.