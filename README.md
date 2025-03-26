**Ticket Type:** Task  
**Title**: Terraform TFVars  
**Project**: Version Control System Deployment  
**Assignee**: You  
**Reporter**: Derek Morgan  
**Priority**: High  
**Labels**: Terraform, GitHub, Variables, Conditionals  
**Epic** **Link**: GitHub Expansion  
**Sprint**: Sprint 01/Conditionals

**Description:**

A repository is needed for infrastructure code. Below is the structure of the repository. In the example, “infrastructure” is the project variable value and “dev” is the env variable value. Store those in a variables.tf  file. You can use existing code from other labs if you wish, just note that you will not be using the gitignore variable from before, as it will use Terraform conditionals to define.

**Acceptance Criteria:**

> **Note:** If the `terraform validate` command fails, all tasks in the lab will fail!

1\. For the private attribute, configure a conditional statement to define it based on the env variable definition: 

1. If the env variable is “dev,” visibility should be set to private.  
2. If the env variable is “prod,” visibility should be set to public

2\. For the gitignore\_template attribute, configure a conditional statement based on the following information:

1. If Project \= “infrastructure,” use the “Terraform” .gitignore template.   
2. If project \= “backend, “ use the “Python” .gitignore template.  
3. If project \= “frontend,” use the “Node” .gitignore template. (We use ReactJS, so Node satisfies our .gitignore requirements.)

3\. Apply the configuration and test each value to ensure everything works properly. 

**Important:**   
You will get a "deprecation warning" if you use the "private" attribute instead of "visibility." I have left this in the lesson because it's a valuable lesson to teach. If you find that the "private" attribute has been fully deprecated and it's still mentioned here, please reach out and let me know\!

- <a href="https://registry.terraform.io/providers/integrations/github/latest/docs" target="_blank">GitHub Provider Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/language/expressions/conditionals" target="_blank">Terraform Documentation</a>

