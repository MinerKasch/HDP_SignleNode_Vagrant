# -*- mode: ruby -*-
# vi: set ft=ruby :


BOX="ubuntu/trusty64"

VAGRANTFILE_API_VERSION = "2"

PLAYBOOK_PATH='ansible'
PLAYBOOK_NAME='hdp_ubuntu14_playbook.yml'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  # Set the box and box_url
  config.vm.box = BOX
  #config.vm.box_url=BOX_URL

  #
  # Configure the network ports being forwarded

  # Ambari
  config.vm.network :forwarded_port, guest: 8080, host: 8080

  # YARN
  config.vm.network :forwarded_port, guest: 8088, host: 8088

  # Spark UI
  config.vm.network :forwarded_port, guest: 18080, host: 18080
  config.vm.network :forwarded_port, guest: 4040, host: 4040
  config.vm.network :forwarded_port, guest: 4041, host: 4041
  config.vm.network :forwarded_port, guest: 4042, host: 4042

  # Accumulo UI
  config.vm.network :forwarded_port, guest: 50095, host: 50095



  # Configure the virtualbox settings
  config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", 4096]
      vb.customize ["modifyvm", :id, "--ioapic", "on", "--cpus", 1]
  end

  config.vm.hostname = "dev.minerkasch.com"


  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "%s/%s" % [PLAYBOOK_PATH, PLAYBOOK_NAME]
  end

end
