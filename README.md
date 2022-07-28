# aws-lab

Code snippets for ephemeral lab environments

## Notes

- This code leveraged both doppler.com for secrets, and terraform cloud for state and tf variables.

## Setup

- Clone the repo, and cd into it
- run `doppler setup` if you have not already
    - This assumes you have a Doppler workspace setup with the needed secrets
- run `terraform init` in the directory
    - This assumes you have already setup the `lab_name` and `dk_aws_region` variables and values in Terraform cloud
- Double check your setting for `module "sysdig-cs"` in `main.tf`
- You may want to double check your versions in `versions.tf`

## Running Terraform

You will need to run the commands via Doppler to get the secrets injected. For example:

- `doppler run --name-transformer tf-var -- terraform plan`
- `doppler run --name-transformer tf-var -- terraform apply`
- `doppler run --name-transformer tf-var -- terraform destroy`

## Running eksctl

- ensure you edit your cluster info in `eksctl/sysdig-dk-lab-eks-cluster.yaml` after the terraform apply
    - vpc id
    - subnet id
    - region - if you are not in us-west-2
    - metadata name
    - instance sizes
    - ensure `spot: true` is set
- Once you are happy with the settings, run `eksctl create cluster -f sysdig-dk-lab-eks-cluster.yaml`
