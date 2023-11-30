resource "google_compute_instance" "tf-instance-1" {
    name         = "tf-instance-1"
    machine_type = "e2-standard-2"
    boot_disk       {
        initialize_params {
            image = "debian-11-bullseye-v20231115"
        }
    }
      network_interface {
        network = "tf-vpc-527993"
        subnetwork = "subnet-01"
    } 

    allow_stopping_for_update = true
}

resource "google_compute_instance" "tf-instance-2"{
    name         = "tf-instance-2"
    machine_type = "e2-standard-2"
    boot_disk       {
        initialize_params {
            image = "debian-11-bullseye-v20231115"
        }
    }
       network_interface {
        network = "tf-vpc-527993"
        subnetwork = "subnet-02"
    }


    allow_stopping_for_update = true
}

