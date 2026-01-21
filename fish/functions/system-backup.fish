function system-backup
    # 1. Create the backup folders
    mkdir -p ~/System-Backup/etc
    mkdir -p ~/System-Backup/etc/systemd
    mkdir -p ~/System-Backup/user-data

    # 2. Backup User data (including rclone stuff)
    # Use -r to capture overrides folders
    echo "--- Backing up User Data ---"
    # Backup User Services
    cp -r ~/.config/systemd/user ~/System-Backup/user-services 2>/dev/null
    # Backup Shortcuts (Your custom game launchers)
    cp -r ~/.local/share/applications ~/System-Backup/user-data/shortcuts 2>/dev/null || echo "No custom desktop shortcuts found"

    echo "--- Backing up System Configs ---"
    # 3. Backup System-Wide Configs (Kernel, Rules, etc)
    # Look for specific folders where users usually make edits

    # 3.1 HARDWARE & GAMING
    cp -r /etc/sysctl.d ~/System-Backup/etc/  2>/dev/null || echo "No custom sysctl found"
    cp -r /etc/udev/rules.d ~/System-Backup/etc/ 2>/dev/null || echo "No custom udev rules found"
    cp -r /etc/modprobe.d ~/System-Backup/etc/ 2>/dev/null || echo "No custom modprobes found"
    cp -r /etc/systemd/system ~/System-Backup/etc/system-services 2>/dev/null

    # 3.2 BOOT CONFIGS (ASUS tweaks)
    cp -r /etc/mkinitcpio.conf.d ~/System-Backup/etc/ 2>/dev/null
    # ZRAM Config (Missing in your last run)
    cp /etc/systemd/zram-generator.conf ~/System-Backup/etc/systemd/ 2>/dev/null

    # 3.3 NETWORK FIXES (Ping Spikes)
    cp -r /etc/iwd ~/System-Backup/etc/ 2>/dev/null
    # We rename this target folder slightly to avoid confusion
    cp -r /etc/NetworkManager/conf.d ~/System-Backup/etc/NetworkManager-conf.d 2>/dev/null

    # 3.4 FIREWALL (UxPlay/Sunshine Ports)
    cp -r /etc/firewalld ~/System-Backup/etc/ 2>/dev/null

    # 4. Check what we got
    echo "------------------------------------------------"
    echo "Backup Complete! Content saved to ~/System-Backup"
    ls -R ~/System-Backup
end
