default['archlinux']['packages']['install'] = [
    # Server programs
    'wpa_supplicant',
    'sudo',
    'tmux',
    'git',
    'python-pip',
    'fish',
    'mlocate',
    'tree',
    'openssh',

    'ntfs-3g',
    'htop',
    'intel-ucode',
    'grub',
    'efibootmgr',
    'os-prober',

    # Desktop programs
    'onboard',
    'guake',
    'terminator',
    'gnome-tweak-tool',
    'firefox',
    'xchm',

    'fcitx-gtk3',
    'fcitx',
    'fcitx-configtool',

    'gvim',
    'variety',
    'okular',

    'emacs',

    # Chinese fonts.
    'adobe-source-han-sans-cn-fonts',
    'adobe-source-han-sans-tw-fonts',
    'adobe-source-han-serif-cn-fonts',
    'adobe-source-han-serif-tw-fonts',

    # laptop programs
    'powertop',
    'tlp',
    'smartmontools',
]

default['archlinux']['package_group']['install'] = [
    'gnome',
    'base-devel',
]

default['archlinux']['services']['enable'] = [
    'gdm',
    'NetworkManager'
]