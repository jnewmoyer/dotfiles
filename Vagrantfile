# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.box = "bento/centos-7.5"

  config.vm.network "forwarded_port", guest: 7880, host: 7880  # geoserver
  config.vm.network "forwarded_port", guest: 7890, host: 7890   # gambit
  config.vm.network "forwarded_port", guest: 7891, host: 7891   # wmsproxy
  config.vm.network "forwarded_port", guest: 54321, host: 54321 # postgres

  config.vm.synced_folder ENV['GOPATH'], "/vagrant/gopath"

  config.vm.provision "shell", path: "bin/provision.sh"

end
