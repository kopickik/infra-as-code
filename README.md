# Terraform Up and Running book

For example, the following code deploys a web server using Terraform:

```
resource "aws_instance" "app" {
    instance_type          = "t2.micro"
    availability_zone      = "us-east-1a"
    ami                    = "ami-40d28157"
    vpc_security_group_ids = ["${aws_security_group.sample_site_instance.id}"]

    user_data = <<-EOF
        #!/bin/bash
        echo "Hello web servers." > index.html
        nohup busybox httpd -f -p 8080 &
        EOF

    tags {
        Name = "terraform-and-web-servers"
    }
}

resource "aws_security_group" "sample_site_instance" {
    name = "terraform-and-web-servers-instance"

    ingress {
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
```
