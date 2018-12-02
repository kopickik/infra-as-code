# Terraform Up and Running book


For example, the following code deploys a web server using Terraform: 


```
resource "aws_instance" "app" {
    instance_type        = "t2. micro"
    availability_zone    = "us-east-1a"
    ami                  = "ami-40d28157"
    
    user_data = < <-EOF
        #!/ bin/ bash
        sudo service apache2 start
        EOF
    }
```

Brikman, Yevgeniy. Terraform: Up and Running: Writing Infrastructure as Code (Kindle Locations 391-404). O'Reilly Media. Kindle Edition. 