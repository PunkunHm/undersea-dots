// src/background/Background.qml
import Quickshell
import Quickshell.Wayland
import QtQuick

PanelWindow {
    id: root

    // Make the window click-through and transparent
    color: "transparent"

    anchors {
        top: true
        bottom: true
        left: true
        right: true
    }
    WlrLayershell.layer: WlrLayer.Background
    exclusionMode: ExclusionMode.Ignore

    // Load the controller (no visual output)
    VideoWallpaper {}
}
