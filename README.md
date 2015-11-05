# Single Node HDP

An automated installation for a single node HDP.

# Hardware Requirements

Out of the box, the Vagrant environment requires 8 GB of RAM, 2 CPUs, and 40 GB of disk space. While the memory and CPU requirements can be changed in the Vagrant file, the disk size is a hard requirement.

# Software Requirements

The following software must be installed locally before starting the Vagrant environment.

* VirtualBox - https://www.virtualbox.org/wiki/Downloads
* Vagrant - https://www.vagrantup.com/downloads.html
* Ansible - https://github.com/ansible/ansible

# Installation

Once all of the requirements are met, clone the git repository to your local machine, change directories to the newly cloned repo, and issue ```vagrant up```. The complete list of commands for the installation steps is as follows:

```
$ git clone https://github.com/MinerKasch/HDP_SignleNode_Vagrant.git
$ cd HDP_SignleNode_Vagrant
$ vagrant up
```

Installation will take between 20 to 60 minutes depending on your internet connection.

# SSH Access

Once the environment is completely done provisioning, the machine can be accessed via SSH. From within the repository directory, use the SSH command to connect to the newly created cluster.

```
$ vagrant ssh
```

__WARNING__: Do not remove the ```/vagrant``` directory in the environment! Doing so will cause irreversible catastrophic damage! 

# Web Access

By default the following ports can be visited on the local host to access resources installed on the machine.

| Service | Port  |
| ------- | ----- |
| Ambari  | 8080  |
| YARN    | 8088  |
| Spark   | 18080 | 

# Removal

To stop and delete all traces of the machine, use the ```destroy``` command.

```
$ vagrant destroy
```

Once this command is issued, ```vagrant up``` can be issued to rebuild the environment. 

# Installed Services

The following is a list of services automatically installed by Vagrant and Ansible.

| Service            | Version   |
| ------------------ | --------- |
| HDP                | 2.7.1.2.3 |
| YARN + MapReduce 2 | 2.7.1.2.3 |
| Accumulo           | 1.7.0.2.3 |
| Spark              | 1.4.1.2.3 |
