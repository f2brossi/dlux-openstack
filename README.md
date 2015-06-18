# dlux-openstack
Install dlux opendaylight web UI on Openstack

## Requirements

* Vagrant Openstack provider

## Usage

$ vagrant up --provider=openstack

$ vagrant ssh

$ cd ~/distribution-karaf-0.2.1-Helium-SR1

$ ./bin/karaf


opendaylight-user@root>feature:install odl-restconf odl-l2switch-switch odl-mdsal-apidocs odl-dlux-core


## Accessing the dlux UI

Navigate to http://localhost:8181/dlux/index.html to access the DLUX UI.
The default username and password are both "admin".
