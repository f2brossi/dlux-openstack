# dlux-openstack
Install dlux opendaylight web UI on Openstack


#Usage

$ vagrant up --provicer=openstack
$ vagrant ssh
$ cd ~/distribution-karaf-0.2.1-Helium-SR1
$ ./bin/karaf

opendaylight-user@root>feature:install odl-restconf odl-l2switch-switch odl-mdsal-apidocs odl-dlux-core

Navigate to http://localhost:8181/dlux/index.html to access the DLUX UI. The default username and password are both "admin".
