# Playing with Terramate

The idea behind this project it to test the functionality of a the tool [Terramate](https://github.com/mineiros-io/terramate)..

## Prerequisites

- Terraform == 1.2.3
- Terramate == 0.1.7
- [Localstack](https://docs.localstack.cloud/get-started/#localstack-cli)

## Running AWS with localsack

- Start localstack in default port (4566):

    ```bash
    localstack start -d > /var/log/localstack.log 2>& &
    ```

## Execute current version of the stacks

- Init stacks:

    ```bash
    terramate run terraform init
    ```

- Generate plan for every stack:

    ```bash
    terramate run terraform plan
    ```

- Apply plan for every stack:

    ```bash
    terramate run terraform apply
    ```

## Adding some changes

- Add some changes to the stacks.

- Re-generate TF code:

    ```bash
    terramate generate
    ```

- Commit changes.

- Generate plan for every stack:

    ```bash
    terramate run terraform plan
    ```

- Apply plan for every stack:

    ```bash
    terramate run terraform apply
    ```
