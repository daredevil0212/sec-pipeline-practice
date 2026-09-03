resource "aws_security_group" "bad" {
  name = "wide-open"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "bad" {
  identifier          = "practice"
  engine              = "postgres"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  storage_encrypted   = false
  publicly_accessible = true
  skip_final_snapshot = true
  username            = "admin"
  password            = "hunter2"
}

resource "aws_s3_bucket" "bad" {
  bucket = "practice-bucket-not-real"
}
