resource "aws_security_group" "sgdb"{
	name = "sgdb"
	description  = "Security Group"
	vpc_id       = "vpc-80819ce7"
	
	
	ingress{ 
		from_port =  1433
		to_port   =  1433
		protocol  =  "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
	
	egress{
		from_port =  0
		to_port   =  0
		protocol  =  "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
	
	tags = {
		Name = "sgdb"
	}
}