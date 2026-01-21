// ~/.config/quickshell/src/theme/Config.qml
pragma Singleton
import QtQuick

QtObject {
    // --- Wallpaper Settings ---
    property string wallpaperPath: "/home/purins/.config/arch-config/modules/_undersea-dots/dotfiles/hypr/wallpapers/monitor_wallpaper.mp4"
    readonly property bool muteWallpaper: true

    // --- Colors (For later) ---
    readonly property color accent: "#89b4fa" // Catppuccin Blue
    readonly property color background: "#1e1e2e"
}
