function system-backup
    # 1. Create the backup folder
    mkdir -p ~/System-Backup/etc

    # 2. Backup User Services (Your rclone stuff!)
    # We use -r to capture overrides folders too
    cp -r ~/.config/systemd/user ~/System-Backup/user-services

    # 3. Backup System-Wide Configs (Kernel, Rules, etc)
    # We look for specific folders where users usually make edits
    cp -r /etc/sysctl.d ~/System-Backup/etc/  2>/dev/null || echo "No custom sysctl found"
    cp -r /etc/udev/rules.d ~/System-Backup/etc/ 2>/dev/null || echo "No custom udev rules found"
    cp -r /etc/modprobe.d ~/System-Backup/etc/ 2>/dev/null || echo "No custom modprobes found"
    cp -r /etc/systemd/system ~/System-Backup/etc/system-services 2>/dev/null

    # 4. Check what we got
    echo "Backup Complete! Check inside ~/System-Backup"
    ls -R ~/System-Backup
end
