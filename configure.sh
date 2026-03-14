# apk: upgrade to edge repositories
echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
apk update

# alpine scripts
setup-devd udev
setup-wayland-base

# apk: drivers
apk add linux-firmware
apk add mesa-dri-gallium
apk add mesa-va-gallium
apk add intel-media-driver

# apk: git, gcc, make, etc.
apk add alpine-sdk

# apk: audio
apk add pipewire
apk add wireplumber

# apk: utils
apk add util-linux
apk add pciutils
apk add shadow
apk add iproute2

# apk: desktop
apk add wayland
apk add niri

# apk: seat management
apk add seatd

# apk: fonts
apk add font-terminus font-inconsolata font-dejavu font-noto font-noto-cjk font-awesome font-noto-extra

# seatd setup
rc-update add seatd
rc-service seatd start
adduser $USER seat

# apps
apk add neovim
apk add edit@testing
