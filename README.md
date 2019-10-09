# TF S3 for Lambda Edge

Creates an S3 bucket in us-east-1 region, used for storing zip files for lambda edge functions.

## Dir Structure

```
.
├── README.md
├── dev
│   ├── config.tf
│   ├── output.tf
│   ├── s3.tf
│   └── variables.tf
└── prod
```

## Config

Go to corresponding environment (for example, `cd dev`)

Use your favourite text editor to open `config.tf`, and update:

- bucket
- dynamodb_table

from the `terraform backend "s3"` section.

Note that the s3 bucket and dynamodb table used here must already exist before using this terraform repo.

## Adding Another Environment

Copy the `dev` folder to another name for your new environment (for example, `staging`), and update `variables.tf` accordingly.

## Deploy

Go to corresponding environment (for example, `cd dev`)

```
tf plan -o tfplan
tf apply tfplan
```
