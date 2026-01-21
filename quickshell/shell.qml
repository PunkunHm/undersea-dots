// ~/.config/quickshell/shell.qml
import Quickshell
import QtQuick
import "./src/background"

Scope {
    // initialize the background module on every screen
    Variants {
        model: Quickshell.screens
        delegate: Background {
            screen: modelData
        }
    }

    // Future modules will go here:
    // Panel { ... }
    // NotificationServer { ... }
}
