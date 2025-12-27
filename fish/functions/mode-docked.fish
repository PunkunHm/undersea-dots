function mode-docked --wraps='echo "export AQ_DRM_DEVICES=/dev/dri/card2:/dev/dri/card1" > ~/.config/uwsm/env-hyprland; echo "Switched to Docked Mode. Please logout/login."' --description 'alias mode-docked echo "export AQ_DRM_DEVICES=/dev/dri/card2:/dev/dri/card1" > ~/.config/uwsm/env-hyprland; echo "Switched to Docked Mode. Please logout/login."'
    echo "export AQ_DRM_DEVICES=/dev/dri/card2:/dev/dri/card1" > ~/.config/uwsm/env-hyprland; echo "Switched to Docked Mode. Please logout/login." $argv
end
