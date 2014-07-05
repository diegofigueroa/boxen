class people::diegofigueroa {
  include emacs
  include vim
  include iterm2::dev
  include spotify
  include packer
  include dropbox
  include adium
  include reattachtousernamespace
  include git-flow
  include virtualbox
  include python

  $home = "/Users/dfigueroa"

  boxen::osx_defaults { 'Expand save panel by default':
    key    => 'NSNavPanelExpandedStateForSaveMode',
    domain => 'NSGlobalDomain',
    value  => 'true',
  }

  boxen::osx_defaults { 'Expand print panel by default':
      key    => 'PMPrintingExpandedStateForPrint',
      domain => 'NSGlobalDomain',
      value  => 'true',
  }

  boxen::osx_defaults { 'Disable the "Are you sure you want to open this application?" dialog':
    key    => 'LSQuarantine',
    domain => 'com.apple.LaunchServices',
    value  => 'true',
  }

  boxen::osx_defaults { 'a sane key repeat':
    domain => 'NSGlobalDomain',
    key    => 'KeyRepeat',
    value  => '0',
  }

  boxen::osx_defaults { 'Do not create .DS_Store':
    key    => 'DSDontWriteNetworkStores',
    domain => 'com.apple.dashboard',
    value  => 'true',
  }

  boxen::osx_defaults { 'Disable reopen windows when logging back in':
    key    => 'TALLogoutSavesState',
    domain => 'com.apple.loginwindow',
    value  => 'false',
  }

  boxen::osx_defaults { 'Enable press-and-hold character picker':
    key    => 'ApplePressAndHoldEnabled',
    domain => 'NSGlobalDomain',
    value  => 'true',
  }

  boxen::osx_defaults { 'Display full POSIX path as Finder Window':
    key    => '_FXShowPosixPathInTitle',
    domain => 'com.apple.finder',
    value  => 'true',
  }

  boxen::osx_defaults { 'Secure Empty Trash':
    key    => 'EmptyTrashSecurely',
    domain => 'com.apple.finder',
    value  => 'true',
  }

  boxen::osx_defaults { 'Put my Dock on the right':
    key    => 'orientation',
    domain => 'com.apple.dock',
    value  => 'right',
    user   => $::boxen_user
  } # -> exec { "killall Dock": }

  boxen::osx_defaults { 'run all searches on current folder by default':
    domain => 'com.apple.finder',
    key    => 'FXDefaultSearchScope',
    type   => 'string',
    value  => 'SCcf',
    user   => $::boxen_user
  }

  boxen::osx_defaults { 'show all filename extensions':
    domain => 'NSGlobalDomain',
    key    => 'AppleShowAllExtensions',
    type   => 'bool',
    value  => 'true',
    user   => $::boxen_user
  }

}
