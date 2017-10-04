Vagrant.configure(2) do |config|
  #config.vm.box = "centos/7"
  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.define "ak1" do |m|
    m.vm.box = "centos/7"
    m.vm.network "private_network", ip: "192.168.7.11"
    m.vm.provision "shell", inline: "hostnamectl set-hostname bg1"
    #m.vm.provision "shell", inline: "cd /tmp/kube;sudo make master"
  end

  config.vm.network "private_network", type: "dhcp"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = "2"
  end
  #config.vm.provision :shell, :path => "ssh-setup.sh"
end
