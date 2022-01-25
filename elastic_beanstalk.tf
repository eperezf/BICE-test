# Crear aplicación de Elastic Beanstalk
resource "aws_elastic_beanstalk_application" "bicetest" {
  name = var.bice_name_application
}

# Crear ambiente de Elastic Beanstalk
resource "aws_elastic_beanstalk_environment" "biceenv" {
  name = var.bice_environment
  application = aws_elastic_beanstalk_application.bicetest.name
  solution_stack_name = var.bice_solution_stack_name
  tier = "WebServer"

  # IAM Instance Profile
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     =  "aws-elasticbeanstalk-ec2-role"
 }

  # VPC ID
  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = var.bice_vpc_id
  }
}
