# -*- mode: ruby-mode; -*-

VAGRANTFILE_API_VERSION = "2"
SHARED = "/vagrant"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32-lts"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box"
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision "shell", inline: "sudo /bin/sh #{SHARED}/bootstrap.sh"
end
