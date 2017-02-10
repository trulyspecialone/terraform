provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

resource "aws_instance" "example" {
  ami           = "ami-70edb016"
  instance_type = "t2.micro"
  key_name      = "terraform"
  
  tags {
  name = "terraform_example"
  }
}
