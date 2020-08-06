resource "aws_s3_bucket" "dba-teste"{
	bucket = "968138669688-dba-teste"
	acl = "private"
	
	tags = {
		Name = "Bucket Teste"
	}
}