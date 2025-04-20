**Ticket Type:** Task  
**Title**: Terraform Conditional Expressions with AWS  
**Project**: Cloud Infrastructure Deployment  
**Assignee**: You  
**Reporter**: Derek Morgan  
**Priority**: High  
**Labels**: Terraform, AWS, VPC, Conditionals  
**Epic** **Link**: AWS Infrastructure Expansion  
**Sprint**: Sprint 01/Conditionals

**Lab Setup**
This lab uses Localstack to simulate an AWS environment. Localstack is already preinstalled in your environment. You don't need keys or to configure the provider. If you'd like to use your own account, feel free to specify your provider configuration and run `unset aws` and `unset terraform` to decouple them from Localstack.

**Description:**

A Virtual Private Cloud (VPC) is needed for your cloud infrastructure. In the example, "infrastructure" is the project variable value and "dev" is the env variable value. Store those in a variables.tf file. You can use existing code from other labs if you wish, just note that you will be using Terraform conditionals to define several attributes of your VPC and subnet resources.

**Acceptance Criteria:**

> **Note:** If the `terraform validate` command fails, all tasks in the lab will fail!

1\. For the `enable_dns_hostnames` attribute of the VPC, configure a conditional statement to define it based on the env variable definition: 

1. If the env variable is "dev," enable_dns_hostnames should be set to false.  
2. If the env variable is "prod," enable_dns_hostnames should be set to true.

2\. For the `cidr_block` attribute of the VPC, configure a conditional statement based on the following information:

1. If project = "infrastructure," use the "10.0.0.0/16" CIDR block.   
2. If project = "backend," use the "172.16.0.0/16" CIDR block.  
3. If project = "frontend," use the "192.168.0.0/16" CIDR block.

3\. Apply the configuration and test each value to ensure everything works properly. 

**Implementation Notes:**

Feel free to use code from previous labs. The values aren't as important as the concepts. 

- <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc" target="_blank">AWS VPC Resource Documentation</a>  
- <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet" target="_blank">AWS Subnet Resource Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/language/expressions/conditionals" target="_blank">Terraform Conditional Expressions Documentation</a>
