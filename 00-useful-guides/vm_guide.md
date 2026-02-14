
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


Opent the `virt-manager` GUI

_______________________________________________________________________________
