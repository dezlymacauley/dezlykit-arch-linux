
```sh
disk_space
```

Before extraction
```
Filesystem      Size  Used Avail Use% Mounted on
/dev/nvme0n1p2  233G  142G   80G  65% /
```

After extraction
```
❯ disk_space
Filesystem      Size  Used Avail Use% Mounted on
/dev/nvme0n1p2  233G  154G   68G  70% /
```

After deleting the .7z file
```
Filesystem      Size  Used Avail Use% Mounted on
/dev/nvme0n1p2  233G  150G   71G  68% /
```

_______________________________________________________________________________

```sh
free -h
```

```
              total        used        free      shared  buff/cache   available
Mem:           16G         4G         8G         
```

_______________________________________________________________________________

```sh
lscpu
```

Perfect. Here’s a breakdown for your setup:

CPU: Intel Core i5-8265U, 4 cores / 8 threads, VT-x virtualization supported ✅

RAM: 7.4 GB total, ~4 GB available for the host and VM to share

Virtualization: Enabled (VT-x), so KVM acceleration will work

_______________________________________________________________________________

Download pre-built QEMU image for Kali

```sh
mkdir virtual-machines
```

Move the image to this location

_______________________________________________________________________________

```
cd virtual-machines
```

```
7z x kali-linux-2025.4-qemu-amd64.7z
```

_______________________________________________________________________________

You should now have a `.qcow` file in the directory

That looks like this:
```

```

You can delete the `.7z` file
_______________________________________________________________________________

Check that there is a libvirt group

```
❯ getent group libvirt

libvirt:x:959:
```

If the group does not exist, you can create it
```
sudo groupadd libvirt
```

_______________________________________________________________________________

Add your user to the group:

`dezlymacauley` is the name of the user

```sh
sudo usermod -aG libvirt dezlymacauley
```

```
❯ getent group libvirt
```
_______________________________________________________________________________


```sh
vm_toggle
```

```sh
vm_status
```

_______________________________________________________________________________


Open the `virt-manager` GUI

_______________________________________________________________________________

## Step 10 - Open the `Virtual Machine Manager` program

You should see `QEMU/KVM` listed. 

Click on it and make sure that it is connected.

_______________________________________________________________________________
## Step 11 - Create a virtual machine pool

Click `File`, then click `New Virtual Machine`

Then select the option `Import existing disk image`

Then click `Forward`

_______________________________________________________________________________
Click `Browse`

You should see something that says:
```
default 
Filesystem Directory
```

There should be a `plus` icon at the bottom that displays the 
text `Add Pool` if you hover over it.

Then click on it.

_______________________________________________________________________________

Change the `Name` field to `virtual-machines`

And change the `Target Path` to where the `virtual-machines` 
directory is saved on your system.

Click `Finish`

_______________________________________________________________________________

You should see this:

```
virtual-machines
Filesystem Directory
```

Click it and you should see your kali-linux `qcow2` file image 
listed under `Volumes`

Click the kali-linux iso and then click `Choose Volume`

_______________________________________________________________________________

Look for the search bar:

`Choose the operating system you are installing:`

Kali won't appear in the drop down. 

This is because Kali is actually a fork of Linux distro called `Debian`.

To be even more specific, Kali Linux is based of the `testing` branch 
of Debian.

So search and select `Debian testing`

Then click `Forward`

_______________________________________________________________________________
I use this for memory and CPU settings:

- Memory: 3072 Mib
- CPUs:   2 CPU

_______________________________________________________________________________

Click `Forward`

Change the name from `debiantesting` to `kali`

Click `finish`

_______________________________________________________________________________

You should see a message:

```
Virtual Network is not active.
Would you like to start the network now.
```

`Yes`

_______________________________________________________________________________

The login username is `kali`.

The password is `kali`
_______________________________________________________________________________

