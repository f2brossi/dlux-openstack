require 'vagrant-openstack-provider'

Vagrant.configure("2") do |config|

  config.vm.box = "openstack"
  config.vm.box_url = "https://github.com/ggiamarchi/vagrant-openstack/raw/master/source/dummy.box"

  config.ssh.shell = "bash"
  config.ssh.username = "stack"

  config.vm.provider :openstack do |os|
    os.username = ENV['OS_USERNAME']
    os.password = ENV['OS_PASSWORD']
    os.tenant_name = ENV['OS_TENANT_NAME']
    os.openstack_auth_url = ENV['OS_AUTH_URL']
    os.openstack_compute_url = ENV['OS_COMPUTE_URL']
    os.openstack_network_url = ENV['OS_NETWORK_URL']    
  end

  config.vm.define 'test' do |test|
    test.vm.provider :openstack do |os|
      os.server_name = "dlux"
      os.floating_ip = ENV['OS_FLOATING_IP']
      os.flavor = ENV['OS_FLAVOR']
      os.image = ENV['OS_IMAGE']
      os.networks = [ENV['OS_NETWORK']]              
   end
  end

  # Provision with apt-get commands, etc.. to install opendaylight
  # and its dependencies
  config.vm.provision :shell, :path => "install_dlux.sh"
end
