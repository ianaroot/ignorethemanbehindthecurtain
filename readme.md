Kitout
----
* *Why?* The current process for restoring and updating DBC workstations is brittle and could easily become corrupt.  This project allows for easier editing of the build process at all stages for both future design decisions and additional features.

* *Deploy Setup:*
  * Install a clean copy of OSX 10.9
  * Install Xcode
  * Agree to the Xcode license
  * Copy the kitout files to /local/opt/kitout
  * run /local/opt/kitout

* *Development Setup*
  * [Download VMware Fusion](http://www.vmware.com/products/fusion/) Trial Only
  * Install OSX 10.9 on the VM
  * Enable remote login from the sharing preference pain
  * Install Xcode
  * Agree to the Xcode license
  * Take a snapshot of the Virtual Machine Image
    * testing will involve going to back to this snapshot to ensure functionality is not dependent
  * clone the kitout repo to your personal machine
  * make edits on your personal machine
  * transfer the edits via the [scp](http://linux.die.net/man/1/scp) command
    * There should be a functional network between the virtual machine and your computer without any setup
    * The Virtual Machine's IP address with the command `ifconfig -a`
  * run ./kitout from /local/opt/kitout
  * submit a pull request from a new branch with any suggested changes

* *Contribution Guidelines*
  * Each function should perform independently
  * Each function should guard against re-installation of itself
  * Each function should perform a dependency check prior to installation
  * Each function should primary be location in /local/opt/kitout/FEATURE_NAME/install.sh
  * Each function should be added to /local/opt/kitout/kitout at a point where it's dependencies are met