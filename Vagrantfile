# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
config.hostmanager.enabled = true


  config.vm.define "ubuntu18" do |ubuntu18|

  ubuntu18.vm.box = "peru/ubuntu-18.04-desktop-amd64"
  config.vm.network "private_network", ip: "192.168.5.6"
  config.vm.box_version = "20180530.01"


config.vm.provision :shell, :inline => <<'EOF'
sudo apt install -y  ansible git
EOF



  ubuntu18.vm.hostname= "PSPLT-001"


  ubuntu18.vm.provider "virtualbox" do |v|
  v.name = "ubuntu18.04"
  v.memory = "4096"
  v.cpus = 2



end

end

end
