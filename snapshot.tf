resource "aws_db_snapshot" "snap" {
	db_instance_identifier = aws_db_instance.database-1.id
	db_snapshot_identifier = "snap-database-1"
}