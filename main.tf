terraform {
    required_providers {
        vkcs = {
            source = "vk-cs/vkcs"
            version = "~> 0.1.12" 
        }
    }
}

provider "vkcs" {
    # Your user account.
    username = "${var.username}"

    # The password of the account
    password = "${var.password}"

    # The tenant token can be taken from the project Settings tab - > API keys.
    # Project ID will be our token.
    project_id = "${var.project_id}"
    
    # Region name
    region = "${var.region}"
    
    auth_url = "${var.auth_url}" 
}
