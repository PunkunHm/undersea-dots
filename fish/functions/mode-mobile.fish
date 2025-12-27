function mode-mobile --wraps='echo "export AQ_DRM_DEVICES=/dev/dri/card2" > ~/.config/uwsm/env-hyprland; echo "Switched to Mobile Mode. Please logout/login."' --description 'alias mode-mobile echo "export AQ_DRM_DEVICES=/dev/dri/card2" > ~/.config/uwsm/env-hyprland; echo "Switched to Mobile Mode. Please logout/login."'
    echo "export AQ_DRM_DEVICES=/dev/dri/card2" > ~/.config/uwsm/env-hyprland; echo "Switched to Mobile Mode. Please logout/login." $argv
end
