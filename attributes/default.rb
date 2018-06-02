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
    'whois',

    'ntfs-3g',
    'htop',
    'nmon',
    'intel-ucode', # Update provided by intel for CPUs.
    'grub',
    'efibootmgr',
    'os-prober',

    # Font
    'ttf-dejavu', # fonts for english.
    # Chinese fonts.
    'adobe-source-han-sans-cn-fonts',
    'adobe-source-han-sans-tw-fonts',
    'adobe-source-han-serif-cn-fonts',
    'adobe-source-han-serif-tw-fonts',
    # library data to render pdf with Chinese.
    'poppler-data',

    # spell checker
    'aspell-en',

    # programming
    'ctags',

    # markdown converter
    'pandoc',
    'markdown',
]

# Desktop programs
default['archlinux']['packages']['install']['desktop'] = [
    'onboard',
    'guake',
    'terminator',
    'gnome-tweak-tool',
    'chrome-gnome-shell',
    'firefox',
    'xchm',
    'gvim',
    'variety',
    'okular',
    'emacs',
    'calibre',

    'fcitx-gtk3',
    'fcitx',
    'fcitx-configtool',

    'texlive-science',

    'flashplugin',

    'vlc',

    # bluetooth
    ' bluez',
    'bluez-utils',
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

default['archlinux']['packages']['install']['gpu']['intel'] = [
    'vulkan-intel', # Vulkan is a low-overhead, cross-platform 3D graphics and compute API. c.f. arch wiki
    'libva-intel-driver', # Video acceleration by Intel
    'libvdpau-va-gl', # Video acceleration by NVIDIA
    'libva-utils', # Tools to check libva
    'vdpauinfo', # Tools to check libvdpau
]

default['archlinux']['package_group']['install'] = [
    'gnome',
    'base-devel',
]

default['archlinux']['services']['enable']['desktop'] = [
    'gdm',
    'NetworkManager',
    'NetworkManager-dispatcher',
    # Set up and disable tlp during boot and shutdown.
    'tlp',
    # Set up and disable tlp on and from suspend and sleep.
    'tlp-sleep',
    # evoke fstrim service twice a week to issue TRIM command to SSD to tell
    # which part of the disk is not used anymore.
    # NOTE: it should not be enabled on machines that does not have a SSD, but
    # I am not sure to detect it yet.
    'fstrim.timer', 
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
