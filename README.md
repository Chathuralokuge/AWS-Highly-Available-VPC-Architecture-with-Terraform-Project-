# AWS Highly Available VPC Architecture with Terraform

## Project Overview

This project demonstrates the design and deployment of a **Highly
Available AWS VPC Architecture** using two approaches:

-   Manual deployment through the AWS Management Console
-   Infrastructure as Code (IaC) deployment using Terraform

The architecture follows cloud networking and security best practices to
provide high availability, fault tolerance, scalability, and secure
connectivity for production-style workloads.

------------------------------------------------------------------------

## Architecture Highlights

### High Availability

-   Multi-AZ deployment across **two Availability Zones**
-   Redundant infrastructure components to minimize downtime
-   Fault-tolerant application deployment strategy

### Scalability

-   Auto Scaling Groups for dynamic resource management
-   Elastic scaling based on application demand

### Load Balancing

-   Application Load Balancer (ALB)
-   Efficient traffic distribution across application instances

### Security

-   Application servers deployed within **private subnets**
-   Controlled access using Security Groups and network segmentation
-   No direct public exposure of application servers

### Internet Connectivity

-   Dedicated NAT Gateway per Availability Zone
-   Secure outbound internet access from private subnets
-   Improved resilience during AZ failures

------------------------------------------------------------------------

## Technologies Used

  Technology                  Purpose
  --------------------------- --------------------------------
  AWS VPC                     Network Architecture
  EC2                         Application Hosting
  Auto Scaling Group          Dynamic Scaling
  Application Load Balancer   Traffic Distribution
  NAT Gateway                 Outbound Internet Connectivity
  Terraform                   Infrastructure as Code
  AWS Management Console      Manual Deployment

------------------------------------------------------------------------

## Project Objectives

-   Design a production-ready AWS network architecture
-   Implement high availability and fault tolerance principles
-   Secure workloads using private subnet deployment
-   Compare manual provisioning with Infrastructure as Code
-   Improve operational efficiency through Terraform automation

------------------------------------------------------------------------

## Key Learning Outcomes

-   Practical implementation of highly available cloud architectures
-   AWS networking design and best practices
-   Multi-AZ deployment strategies
-   Infrastructure automation using Terraform
-   Security-focused cloud network design
-   Production-level architecture planning and deployment

------------------------------------------------------------------------

## Terraform Benefits Demonstrated

-   Consistent infrastructure deployment
-   Version-controlled infrastructure
-   Faster provisioning and management
-   Reduced configuration drift
-   Repeatable and scalable deployments

------------------------------------------------------------------------

## Project Structure     

├── provider.tf
├─ vpc.tf
├─ subnet.tf
├─ sg.tf
├─ route.tf
├─ igw.tf
├─ nat_gateway.tf
├─ tamplate.tf
├─ bastion.tf
├─ alb.tf
├── variables.tf
├── terraform.tfvars
├──  outputs.tf
└── README.md

------------------------------------------------------------------------

## Future Enhancements

-   Route 53 DNS integration
-   HTTPS implementation using AWS Certificate Manager
-   CloudWatch monitoring and alerting
-   Centralized logging with CloudWatch Logs
-   CI/CD pipeline integration

------------------------------------------------------------------------

## Author

** L.L Chathura Sandaruwan Madhusankha **

Cloud / Network Engineering Enthusiast

LinkedIn: https://www.linkedin.com/in/chathura-sandaruwan-75444429a

------------------------------------------------------------------------

## Tags

`AWS` `Terraform` `VPC` `Cloud Computing` `DevOps` `Networking`
`Infrastructure as Code`
