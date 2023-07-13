/* choosing a provider to work with on terraform */
provider "aws" {
    region = "us-east-1"
}
/* creating ec2 instances which is the resources under the provider,the docker mentioned is for terraform to identify instance  */
resource "aws_instance" "Docker_sys" {
    ami           = "ami-06ca3ca175f37dd66"
    instance_type = "t2.micro"
    tags = {
        "Name" = "Docker_sys"
    }
}

