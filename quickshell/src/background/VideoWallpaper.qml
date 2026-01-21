// src/background/VideoWallpaper.qml
import QtQuick
import Quickshell
import Quickshell.Io

Item {
    id: root

    property bool onBattery: false

    // 1. Check Battery every 5s
    Timer {
        interval: 5000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "file:///sys/class/power_supply/BAT0/status");
            xhr.onreadystatechange = function () {
                if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 0) {
                    root.onBattery = (xhr.responseText.trim() === "Discharging");
                }
            };
            xhr.send();
        }
    }

    // 2. The Socket Writer
    Process {
        id: socketSender
        // Command template
        command: ["sh", "-c", "echo '" + cmd + "' | socat - /tmp/mpvpaper-socket"]
        property string cmd: ""

        onCmdChanged: {
            if (cmd !== "")
                running = true;
        }
    }

    // 3. Robust Pausing Logic
    onOnBatteryChanged: {
        if (root.onBattery) {
            console.log("Battery Mode: FREEZING mpvpaper");
            // "set pause yes" is the internal command mpv listens for
            socketSender.cmd = '{ "command": ["set_property", "pause", true] }';
        } else {
            console.log("AC Mode: RESUMING mpvpaper");
            socketSender.cmd = '{ "command": ["set_property", "pause", false] }';
        }
    }
}
