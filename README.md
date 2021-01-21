# dotfiles

## What's inside

This repository contains configurations for:

* R
* VS Code

## Installation

```shell
git clone https://github.com/netbek/dotfiles ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

The install script installs the relevant programs, and creates symbolic links from the configuration
files in the dotfiles directory to the user directory. If the install script encounters an existing
configuration file in the user directory, then it makes a backup of the file (with `.bak` extension)
before creating a symbolic link.

## Usage

The suggested workflow is as follows, but feel free to choose your own adventure:

* To add a configuration not listed above, add a subdirectory to the dotfiles directory, and add
  one or more entries to the install script as needed.

* To remove a configuration, comment out the relevant entries in the install script.

Remember to commit and push any changes to the configuration files and install script in your fork.

## License

Copyright (c) 2018 Hein Bekker. Licensed under the MIT License.
