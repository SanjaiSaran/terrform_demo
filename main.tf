resource "aws_s3_bucket" "bad_example" {
  bucket = "mybucket"
}

resource "aws_s3_bucket_public_access_block" "bad_example" {
  bucket = aws_s3_bucket.bad_example.id
}

resource "aws_instance" "bad_example" {
  ami = "ami-7f89a64f"
  instance_type = "t1.micro"

  root_block_device {
      encrypted = false
  }

  ebs_block_device {
    device_name = "/dev/sdg"
    volume_size = 5
    volume_type = "gp2"
    delete_on_termination = false
    encrypted = false
  }
}
