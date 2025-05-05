init:
	docker compose run terraform init

plan:
	docker compose run terraform plan

apply:
	docker compose run terraform apply

fmt:
	docker compose run terraform fmt -recursive

validate:
	docker compose run terraform validate