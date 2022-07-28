# aws-lab

Code snippets for ephemeral lab environments

## Notes

- This code leveraged both doppler.com for secrets, and terraform cloud for state and tf variables.

## Setup

- Clone the repo, and cd into it
- run `doppler setup` if you have not already
    - This assumes you have a Doppler workspace setup with the needed secrets
- run `terraform init` in the directory
    - This assumes you have already setup the `LAB_NAME` and `AWS_REGION` variables and values in Terraform cloud
- Double check your setting for `module "sysdig-cs"` in `main.tf`
- You may want to double check your versions in `versions.tf`

## Running

You will need to run the commands via Doppler to get the secrets injected. For example:

- `doppler run -- terraform plan`
- `doppler run -- terraform apply`
