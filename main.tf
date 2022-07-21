resource "aws_instance" "good_example" {
  ami = "ami-7f89a64f"
  instance_type = "t1.micro"
  metadata_options {
     http_tokens = "required"
     }  
 }

  root_block_device {
      encrypted = true
  }

  ebs_block_device {
    device_name = "/dev/sdg"
    volume_size = 5
    volume_type = "gp2"
    delete_on_termination = false
    encrypted = true
  }
}
