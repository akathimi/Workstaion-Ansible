# Workstation-Ansible

## Description
An Ansible script to prepare a development environment on a freshly installed ubuntu 18.04, It has three roles, the basic role installs the necessary packages that can be installed using apt.The second role installs packages that are obtained by downloading archive files, then it configures and creates the needed shortcuts for the user to be able to instantly use them.The third role is for sqldeveloper installation.

## Pre-requisites
On the host machine you need anisble and git to be installed.

```shell
sudo apt-get update
sudo apt-get install ansible git
```
 - The repository includes a Vagrantfile that sets the environment for testing.


## How-To
First, clone the repository either on a control machine or on the host directly, and edit the hosts file accordingly.

Now, run the `site.yml` playbook using:
```shell
ansible-playbook site.yml
```
