# vagrantMaterials
Common vagrant files for use with Vagrant realated projects

 Basics
* `vagrant init`
* `vagrant up`
* `vagrant halt <id>`
* `vagrant suspend <id>`
* `vagrant destroy <id>`


# Boxes
* `vagrant box list` -- list all boxes downloaded on local PC
* `user/aoe/.vagrant.d/boxes` -- list of boxes located on local PC
* `vagrant box add ubuntu/trusty64` -- downloading and adding ubuntu/trusty64 to local repo of boxes
* `vagrant box outdated` -- check if the box which is in use in currect folder is outdated or not
* `vagrant box update` -- update box which is in use in currect fodler
* `vagrant box remove hashicorp/precise64`

http://www.vagrantbox.es/

vagrant box add fedora20<br> https://dl.dropboxusercontent.com/u/15733306/vagrant/fedora-20-netinst-2014_01_05-minimal-puppet-guestadditions.box<br>


# Plugins
Allow vagrant for extending Vagrant with new functionality, adding new providers, adding new provisioners, doing provisioning work.
* `vagrant plugin list`
* `vagrant plugin update`
* `vagrant plugin install vagrant-vbguest`
* `vagrant plugin uninstall vagrant-vbguest`

Disable auto update of vbguest even if the plugin is installed<br>
open vagrant file and add line 
* `config.vbguest.auto_update = false`


# Provisioning

vagrant VM must be running and user must be inside this vagrant folder, then please use:
* `vagrant package` --output centos-lamp.box
in the same folder new file will be created - centos-lamp.box

* `vagrant box add centos-lamp centos-lamp.box`

vagrant is running, but new changes has been added to vagrantfile and we would like to implement them, then please use
* `vagrant provision`

# Resources
Here are a few resources available on the web.<br>
Vagrant Website https://www.vagrantup.com/


Main Vagrant website. Has nice getting started guides and official documentation.<br>
Available Vagrant Plugins https://github.com/hashicorp/vagrant/wiki/Available-Vagrant-Plugins


List of available plugins for Vagrant maintained on GitHub.<br>
Vagrant Cloud https://app.vagrantup.com/boxes/search<br>
Great place to find more Vagrant boxes.


