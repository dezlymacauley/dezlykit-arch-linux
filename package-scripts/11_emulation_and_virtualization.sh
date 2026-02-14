#!/usr/bin/env bash

#______________________________________________________________________________

# SECTION: QEMU

# A cross-platform open-source machine emulator and virtualizer.
sudo pacman -S --needed qemu-full

# A GUI to manager create and manage virtual machines.
sudo pacman -S --needed virt-manager

# libvirt is a daemon (a local API server). When started, it listens for
# requests/instructions from the client (virt-manager), and then passes
# those instructions on in a format that QEMU understands.
#
# This package is actually part of qemu-full but I like to list it here
# for an understanding of how things work.
sudo pacman -S --needed libvirt

# Lightweight DHCP and DNS server that provides networking services for VMs.
# Creates virtual networks (like the "default" 192.168.122.x network) and
# automatically assigns IP addresses to VMs so they can communicate with
# each other and access the internet through NAT. Without this, VMs would
# have no network connectivity unless manually configured.
sudo pacman -S --needed dnsmasq

#______________________________________________________________________________
