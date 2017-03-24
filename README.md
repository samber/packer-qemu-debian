
# Building Debian 8.7 image for Qemu with Packer

Packer is a VM builder. Recipe are in ```debian8.json```.

## Requirements

```
# install some stuff
$ apt-get install tmux git unzip curl

# install packer (image builder)
$ curl -Ls -o /tmp/packer.zip https://releases.hashicorp.com/packer/0.12.3/packer_0.12.3_linux_amd64.zip
$ cd /tmp && unzip /tmp/packer.zip
$ mv packer /usr/local/bin/packer

# install virsh (qemu cli)
$ brew install libvirt

# install qemu !
$ apt-get install qemu-system
```

Please add your own ssh public keys to ```.authorized_keys2```.

## Build

```sh
$ git clone git@github.com:samber/packer-qemu-debian
$ cd packer-qemu-debian

# Needed to shut-up X11 errors on remote servers
$ export DISPLAY=0
# Failing after a 15 minutes build, without displaying any errors, is pretty annoying !
$ export PACKER_LOG=1

# tmux for long running stuff on remote servers !
$ tmux new -s packer
[tmux] $ packer build debian8.json
#
#       { some logs }
#
[tmux] $ ls
```

## Starting a debian virtual machine

RTFM:

```
$ virsh --help
```
