# dotfiles

## What's inside

This repository contains configurations for:

* R
* VS Code

The `install.sh` script assumes that these programs are already installed. A future version might
install them as needed.

## Installation

```shell
git clone https://github.com/netbek/dotfiles ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

The install script creates symbolic links from the configuration files in the dotfiles directory
to the user directory. If the install script encounters an existing configuration file in the user
directory, then it makes a backup of the file (with .bak extension) before creating a symbolic link.

## Usage

The suggested workflow is as follows, but feel free to choose your own adventure:

* To add a configuration not listed above, add a subdirectory to the dotfiles directory, add
  one or more entries to `install.sh` as needed, then commit and push.

* To remove a configuration, comment out the relevant entries in `install.sh`.

After making changes to the configuration files, remember to commit and push.

## License

Copyright (c) 2018 Hein Bekker. Licensed under the MIT License.
