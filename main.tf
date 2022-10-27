 resource "aws_ebs_volume" "bad_example" {
   availability_zone = "us-west-2a"
   size              = "super"

   tags = {
     Name = "HelloWorld
   }
   encrypted = false
 
