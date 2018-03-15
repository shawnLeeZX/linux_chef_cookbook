# #########################################################################
# Attributes for package installation.
# #########################################################################

# Server programs
default['archlinux']['packages']['install']['server'] = [
    'sudo',
    'tmux',
    'git',
    'python-pip',
    'fish',
    'mlocate',
    'tree',
    'openssh',
    'bash-completion',
    'wget',
    'unrar',

    'ntfs-3g',
    'htop',
    'nmon',
    'intel-ucode', # Update provided by intel for CPUs.
    'grub',
    'efibootmgr',
    'os-prober',

    # Chinese fonts.
    'adobe-source-han-sans-cn-fonts',
    'adobe-source-han-sans-tw-fonts',
    'adobe-source-han-serif-cn-fonts',
    'adobe-source-han-serif-tw-fonts',
]

# Desktop programs
default['archlinux']['packages']['install']['desktop'] = [
    'onboard',
    'guake',
    'terminator',
    'gnome-tweak-tool',
    'firefox',
    'xchm',
    'gvim',
    'variety',
    'okular',
    'emacs',

    'fcitx-gtk3',
    'fcitx',
    'fcitx-configtool',

    'texlive-science',

    'flashplugin',

    'vlc',
]

# laptop programs
default['archlinux']['packages']['install']['laptop'] = [
    'wpa_supplicant',
    # Has similar capability with tlp. TLP is used mainly. powertop is mainly
    # used to monitor.
    'powertop',
    'tlp',
    'tlp-rdw', # Radio device wizard for tlp
    # Enable disable of wake on LAN of tlp.
    'ethtool',
    # The following two are thinkpad related tlp feature packages.
    'tp_smapi',
    'acpi_call',
    # For monitoring disk health, the service related to check disk
    # periodically is not enabled actually.
    'smartmontools', 
]

default['archlinux']['package_group']['install'] = [
    'gnome',
    'base-devel',
]

default['archlinux']['services']['enable']['desktop'] = [
    'gdm',
    'NetworkManager',
    'NetworkManager-dispatcher',
    'tlp',
    'tlp-sleep',
]

default['archlinux']['services']['disable']['desktop'] = [
    'systemd-rfkill.service',
    'systemd-rfkill.socket',
]

# #########################################################################
# Attributes for customizing super users.
# #########################################################################


default['super_users']['name'] = [
    'shawn'
]

default['super_users']['config'] = [
    { 'type': :file, 'name': '.gitconfig'},
    { 'type': :file, 'name': '.tmux.conf'},
    { 'type': :file, 'name': '.xprofile'},
    { 'type': :git,
      'name': '.emacs.d',
      'url': 'https://github.com/shawnLeeZX/emacs.d' },
    { 'type': :git,
      'name': '.vim',
      'url': 'https://github.com/shawnLeeZX/.vim' },
    { 'type': :file, 'name': '.vimrc'},
]
