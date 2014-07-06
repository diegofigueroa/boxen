# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def org(name, module_name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod module_name, :path => path
  else
    version = args.first
    options[:repo] ||= "#{name}/puppet-#{module_name}"
    mod module_name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module from GitHub's BlueKite organization
def bluekite(name, *args)
  org("blue-kite", name, *args)
end

# Shortcut for a module from GitHub's Boxen organization
def github(name, *args)
  org("boxen", name, *args)
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.4.2"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.0.100"

# Kyle's note: had to replace with this 'edge' copy because of
# recent incompatibilities with Homebrew
mod "git", :git => "https://github.com/boxen/puppet-git.git"

github "go",          "1.1.0"
github "homebrew",    "1.9.1"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "7.3.0"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Other modules from Github's Boxen repo

github "osx", "1.0.0"
github "emacs"
github "iterm2"
github "spotify"
github "zsh"
github "tmux"
github "wget"
github "dropbox"
github "adium"
github "python"
github "vagrant"
github "calibre"

github "zookeeper"
github "redis"
github "java"
github "intellij"

# Other modules from Github's Bluekite repo

bluekite "virtualbox"
bluekite "mysql51"

mod "ohmyzsh", :git => "https://github.com/samjsharpe/puppet-ohmyzsh.git"
mod "reattachtousernamespace", :git => "https://github.com/agustinvinao/puppet-reattach-to-user-namespace.git"
mod "git-flow", :git => "https://github.com/kpassapk/puppet-git-flow.git"
