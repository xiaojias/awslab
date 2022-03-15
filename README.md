# scenario 1 - Build a legacy 3-tier Web application with CloudFormation
## Adopted AWS services:
- VPC, NAT Gateway;
- Cloudformation;
- EC2, Elastic Load Balancing;
- S3;

## Goal
Overview:
<img src="/architecture/final.drawio.png" alt="Final Picture" />

- Create a 3-tier architecture there is one Web server and one Database server in an isolate environment;
- Web server connects to internet, but DB server does not, and Administrators connect to environment via a VPN Gateway plus a bastion host;
- The isolated environment communicates internet via an Internet Gateway outside of the environment;
- Every instance has itself dedicated security group;

Furthermore:
- There will be 2 sets (servers and so on) to improve high availability;
- It auto scales instances depends on workload for Web server/s;
- It adopts RDS service instead of MySQL database;
- It uses CloudFormation for infrastructure privision and management;
- 

# scenario 2 - Build a containerized Web application with CloudFormation
## Adopted AWS services:
- ECS;
- Auto Scaling, Elastic Load Balancing;
- Key Management service, Secrets Manager;
- AWS Lambda

## Goal
Overview:
<img src="/architecture/microservice-ecs.png" alt="Final Picture" />

- Setup an ECS cluster with EC2 instance type using [nested stacks](cf-codes/design/webservice-ecs-stacks.png);
- Setup a Bastion instance;
- Build a Lambda function to manage the hooks;
- Create documents for [templates' design](./cf-codes/design/webservice-ecs-templates.png) ;
- 
