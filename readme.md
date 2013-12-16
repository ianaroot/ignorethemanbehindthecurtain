# Kitout

The documented - and hence transparent - setup procedure for the DBC
workstations.

Currently this procedure requires some manual steps be taken by the operator.
The long term goal is to automate everything. Please file an issue if you
know how a currently manual step could be automated.

## Prerequsites

A clean install of the latest version of OS X. The username should be
apprentice. You know what the password should be.

## Kitout a DBC Workstation

Install kitout

    sudo mkdir -p /usr/local/opt
    sudo chown -R $USER /usr/local
    cd /usr/local/opt
    git clone https://github.com/Devbootcamp/kitout.git
    cd kitout

Then run it

    ./kitout

## Kitout Your Machine

Install kitout

    sudo mkdir -p /usr/local/opt
    sudo chown -R $USER /usr/local
    cd /usr/local/opt
    git clone https://github.com/Devbootcamp/kitout.git
    cd kitout

Then create a `_blacklist` file and include in it the units you don't want
installed on your machine, an example `_blacklist` might look like:

    # Don't allow people to ssh into my machine
    remote-login
    # I installed chrome with the installer so it's in /Applications
    google-chrome
    # Same for sublime
    sublime

Now run kitout and blacklisted units will be skipped

    ./kitout

## Usage & Development

This is how you kitout:

First, create a unit. A unit is a folder. A unit sets up **one** aspect of the
machine. That's why it's called a unit.

Units have four kind of files (that kitout cares about):

* `readme.md` - includes a sentence that justifies why this is in the kit
* `install.sh` - a script that should install the unit
* `installed.sh` - a script that should exit with a zero status code if the unit
  is already installed.
* `deps` file should be a list of units that this unit depends on

Run your unit with `install-unit`. Run all units with `kitout`.

For convinence, you can specify which units should run first (instead of
just letting kitout work it out from the dependency graph) by putting their
names in the `first` file.

## The Way of Kitout

Kitout is inspired by systems like [boxen], [sprout-wrap], [sprout], [chef],
[babushka] and [puppet].

Kitout is not better, just simpler. Kitout has no external dependencies. Kitout
has no server. There are no conferences about Kitout. There are no consultancies
that offer Kitout services. Kitout is too simple for your use case (unless your
use case is setting up DBC workstations).

Kitout is okay with units that require manual operator intervention as Kitout is
as much about documentation as it is about automation. In fact, if Kitout was a
person it would suggest you first write your units as the kind that instruct the
operator _before_ you investigate how to make them automated and non-interactive.

[boxen]: http://boxen.github.com
[sprout-wrap]: https://github.com/pivotal-sprout/sprout-wrap
[sprout]: https://github.com/pivotal-sprout/sprout
[babushka]: http://babushka.me
[chef]: http://www.opscode.com/chef
[puppet]: http://puppetlabs.com

## Dev on a VM

[Download VMware Fusion](http://www.vmware.com/products/fusion/)

Follow the VMWare instructions to install OS X on the VM.

As soon as the installer has finished, **take a snapshot of the vm in its
"pristine" state**. If you mess something up you can always roll back to here.

See the install instructions above but don't run the kitout command, instead run

    sh remote-login/install.sh

Now you want edit the kitout repo on the host machine and sync the files over
to the VM before running them with something like:

    scp -r ~/dbc/kitout apprentice@192.168.1.12:/usr/local/opt/kitout
