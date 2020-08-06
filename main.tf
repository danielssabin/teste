# Criação da instância SQL Server RDS via terraform
# Daniel Sabin

resource "aws_db_instance" "database-1" {
    identifier 			     = "database-1"
	engine 				     = "sqlserver-ex"
	instance_class 		     = "db.t2.micro"
	username 				 = "admin"
	password 				 = "eHKnsrwAi9zJiBQSrBNz"
	port 					 = 1433
	storage_encrypted		 = false
	multi_az  				 = false
	backup_retention_period	 = 7
	allocated_storage 		 = 20
	publicly_accessible      = true
	vpc_security_group_ids = ["${aws_security_group.sgdb.id}"]
}


