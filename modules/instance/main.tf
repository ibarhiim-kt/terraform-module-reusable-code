resource "aws_instance" "my-instance" {
    count = var.instance_count
    ami = var.ami
    key_name = var.key_name
    subnet_id = var.subnet_id
    vpc_security_group_ids = [var.security_group_id]
    instance_type = var.itype

    tags = {
        Name = "${var.iname}-${count.index+1}"
    }
     root_block_device {
        volume_size = 15
        volume_type = "gp2"
    }
}
