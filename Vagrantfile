# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  (1..3).each do |i|
    config.vm.define "pd_server_#{i}" do |node|
      node.vm.hostname = "pd-server-#{i}"

      node.vm.box = "centos/8"
      
      node.vm.network "private_network", ip: "192.168.16.#{68 + i}"
        
      node.vm.provider "virtualbox" do |vb|
        vb.name = "pd-server-#{i}"
        vb.gui = false
        
        if i === 1
          vb.memory = "1024"
        else
          vb.memory = "512"
        end
      end
  
        node.vm.provision "shell", path: "provision/bootstrap.sh", privileged: false
    end
  end

  (1..3).each do |i|
    config.vm.define "kv_server_#{i}" do |node|
      node.vm.hostname = "kv-server-#{i}"

      node.vm.box = "centos/8"
      
      node.vm.network "private_network", ip: "192.168.16.#{71 + i}"
        
      node.vm.provider "virtualbox" do |vb|
        vb.name = "kv-server-#{i}"
        vb.gui = false
        vb.memory = "512"
      end
  
        node.vm.provision "shell", path: "provision/bootstrap.sh", privileged: false
    end
  end
end

