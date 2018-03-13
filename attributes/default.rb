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

    'ntfs-3g',
    'htop',
    'nmon',
    'intel-ucode',
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
    'powertop',
    'tlp',
    'smartmontools',
]

default['archlinux']['package_group']['install'] = [
    'gnome',
    'base-devel',
]

default['archlinux']['services']['enable']['desktop'] = [
    'gdm',
    'NetworkManager'
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
    { 'type': :git,
      'name': '.emacs.d',
      'url': 'https://github.com/shawnLeeZX/emacs.d' },
    { 'type': :git,
      'name': '.vim',
      'url': 'https://github.com/shawnLeeZX/.vim' },
    { 'type': :file, 'name': '.vimrc'},
]
