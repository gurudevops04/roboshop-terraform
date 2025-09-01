instances = {
    frontend = {
        instance_type = "t3.small"
    }
    catalogue = {
        instance_type = "t3.small"
    }
    cart = {
        instance_type = "t3.small"
    }
    user = {
        instance_type = "t3.small"
    }
    shipping = {
        instance_type = "t3.small"
    }
    payment = {
        instance_type = "t3.small"
    }
    mysql = {
        instance_type = "t3.medium"
    }
    redis = {
        instance_type = "t3.small"
    }
    rabbitmq = {
        instance_type = "t3.small"
    }
    mongodb = {
        instance_type = "t3.medium"
    }
}

env = "dev"
ami = "ami-09c813fb71547fc4f"
zone_id = "Z00583123V5EQJ9R0FTHI"
zone_name = "gurudevops4.online"