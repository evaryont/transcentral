Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/debian-7.4-64-puppet"

  config.vm.hostname = "puppetmaster.vm"

  # Enable provisioning with Puppet stand alone
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "default.pp"
    puppet.module_path    = "modules"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 2
  end
end
