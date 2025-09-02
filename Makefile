dev-init:
	git pull
	rm -f .terraform/terraform.tfstate # Remove existing state file. Because when you first apply on dev, it creates state file in local. When you switch to prod, it should not use local state file again causing conflict.
	terraform init -backend-config=./environments/dev/state.tfvars

dev-plan:
	terraform plan -var-file=./environments/dev/main.tfvars

dev-apply: dev-init # There might be a chance that instead of running dev apply, user might run prod apply directly. In that case, dev init should be run first to avoid any issues. So added dependency.
	terraform apply -var-file=./environments/dev/main.tfvars -auto-approve

dev-destroy:
	terraform destroy -var-file=./environments/dev/main.tfvars -auto-approve


prod-init:
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=./environments/dev/state.tfvars

prod-plan:
	terraform plan -var-file=./environments/prod/main.tfvars

prod-apply: prod-init
	terraform apply -var-file=./environments/prod/main.tfvars -auto-approve

prod-destroy:
	terraform destroy -var-file=./environments/prod/main.tfvars -auto-approve