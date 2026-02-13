#______________________________________________________________________________
# SECTION: $PATH Management

# Display the contents ot the $PATH variable in a list format
list_path_variable_contents() {
  echo "$PATH" | tr ':' '\n'
}

#______________________________________________________________________________
# SECTION: Zsh Management

shell_history_clear() {
    cat /dev/null > $HISTFILE && \
    rm -f $HISTFILE && \
    touch $HISTFILE && \
    exec zsh
}

shell_history_disable() {
    unset HISTFILE
    export HISTSIZE=0
    export HISTFILESIZE=0
    set +o history
}

shell_reload() {
    exec zsh
}

#______________________________________________________________________________

# SECTION: Virtual Machines: QEMU/libvirt

vm_status() {
    if systemctl is-active --quiet libvirtd.service; then
        echo
        echo "✅ QEMU/libvirt engine is active"
        echo
    else
        echo
        echo "⬛ QEMU/libvirt engine is inactive"
        echo
    fi
}

vm_toggle() {
    if systemctl is-active --quiet libvirtd.service; then
        sudo systemctl stop \
            libvirtd.service \
            libvirtd.socket \
            libvirtd-admin.socket \
            libvirtd-ro.socket >/dev/null 2>&1

        echo
        echo "⬛ QEMU/libvirt engine deactivated"
        echo
    else
        sudo systemctl start libvirtd.service >/dev/null 2>&1

        echo
        echo "✅ QEMU/libvirt engine activated"
        echo
    fi
}

#______________________________________________________________________________

# SECTION: External Drive Management

seagate_external_drive_mount_point="/run/media/dezlymacauley/sg-800"

seagate_external_drive() {
  if cd "$seagate_external_drive_mount_point" 2>/dev/null; then
    # cd succeeded, nothing else to do
    # `:` is a builtin command in Bash.
    # It literally does nothing and always returns success (exit 0).
    # It’s often called the null command.
    :
  else
    echo "Seagate external drive is not connected."
  fi
}

# Safely remove an external drive
safely_remove_seagate_external_drive() {
    sync
    udiskie-umount "$seagate_external_drive_mount_point"
    sync
}

#______________________________________________________________________________
