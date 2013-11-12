Kitout Late 2013

---
Pre-kitout setup
Install OSX 10.9
Install updates
Install Xcode

---

* Commands that must be run on the VM

Edit files on your host machine
Scp those files to VM with:
scp -r * apprentice@172.16.119.128:/usr/local/opt/kitout
Save snapshots

#create dir for kitout
sudo mkdir -p /usr/local/opt/kitout
#change permission for kitout dir recursisively to the currently logged in user
sudo chown -R $USER /usr/local

* This is just for development of kitout

created a ssh key pair on host
ssh-keygen # host

mkdir ~/.ssh # on vm

scp /Users/vmwarehost/.ssh/id_rsa.pub apprentice@172.16.119.128:.ssh/authorized_keys #from host

---
Post-imaging tasks:
Set Machine Name