# AWS Terraform Personal Repository

This repository contains my personal AWS Terraform configurations for managing and automating AWS infrastructure. It is organized into logical modules to ensure maintainability and clarity.

## Repository Structure
```
.
├── backend
│   ├── main.tf          # Terraform configuration for backend setup
│   └── README.md        # Documentation for backend module
├── hello.txt            # Placeholder or example text file
└── iam
    ├── groups           # IAM group configurations
    │   ├── AccessToJenniferPhotosBucket.tf
    │   ├── AWSAdministrators.tf
    │   ├── CodeCommitBasicGitAllowed.tf
    │   ├── main.tf
    │   ├── README.md
    │   ├── RestrictedIpAddress.tf
    │   └── StrictMFAEnforced.tf
    ├── main.tf          # Root IAM module configuration
    ├── README.md        # Documentation for IAM module
    └── users            # IAM user configurations
        ├── bitbucket_pipelines.tf
        ├── code_commit_power_user.tf
        ├── jennifer_photo_backup.tf
        ├── main.tf
        ├── README.md
        ├── terraform_cloud.tf
        └── williseedAdmin.tf
```

## Modules Overview

- **`backend/`**  
  Contains Terraform configurations for backend setup, such as S3 for state storage or DynamoDB for state locking.

- **`iam/`**  
  Manages IAM groups and users:
  - `groups/`: Defines access policies for groups like administrators and restricted access users.
  - `users/`: Creates and configures individual users with specific permissions and roles.
