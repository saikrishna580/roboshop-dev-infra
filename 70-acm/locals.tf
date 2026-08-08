locals {
    
    common_tags = {
        project = "${var.project}"
        Environment = "${var.environment}"
        Terraform = "true"
    }
}