# Configure Identity and Access Management(IAM) on AWS using Terraform

<img width="417" alt="image" src="https://user-images.githubusercontent.com/99150197/169721680-6e98ff0b-9bae-4bff-b584-f4be4f6805e3.png">


# What is IAM?

IAM enables us to manage access to AWS services and resources in a secured manner.

# How does IAM work?

principal: an entity that performs actions on AWS resource. A user, role or an application can be a principal.
Authentication: the process of confirming the identity of the principal trying to get access to AWS service/resource.
Request: A principal sends a request to AWS to specify the action and which resource it wants to perform.
Authorization: IAM authorizes a request only if all parts of the request are allowed by a matching policy.

# Components of IAM Users
Groups: Collection if IAM users that require the same permissions
policies: Sets permissions and control access to AWS resource.
Roles: Role is a set of permission to define what actions are allowed.


In this project, I  created IAM users and groups using terraform, assign these users to the group and attached some policies .

# FILE COMPONENTS

1. The providers.tf file contains the aws provider configuration pulled from terraform docs.
2. The variable.tf file contains variables referenced in the root module.
3. The i_am_user.tf file contains the resources provisioned in aws environment.

