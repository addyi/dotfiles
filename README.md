# Welcome to my Dotfiles Repository :wave:

Greetings, coding enthusiasts and lovers of productivity! This repository houses my personal collection of dotfiles, a
work in progress :construction: which is poised to utilize an Ansible-pull playbook for setup and management once it's
fully realized. There'll be something for everyone interested in refining their systems - Mac or Linux users, neovim
fans, zsh aficionados, terminal appreciators - all are welcome here!

> **Info**: see `docs` folder for more information

## Project Status: Work in Progress :construction:

Currently, the focus is on setting up an Ansible script that will allow us to:

- Install various tools for our dev journey, such as neovim, zsh, fzf, and others.
- Cater both to Mac (utilizing Homebrew) and later on Linux users (particular focus on Arch, possible Debian support in
  future).
- Efficiently copy or symlink dotfiles to their rightful places.

Pull up a chair, skim through some code, and feel free to contribute or learn from this project as we all strive for
more knowledge and an overly complicated relationship with our computers :grin: Heartily accept this invitation to
navigate through this exciting maze of configurations. Let the love of automation unite us and guide us towards
top-notch, personalized system setups. Welcome aboard!

## Install on macOS

> **Info**: see [docs/ansible.md](docs/ansible.md) for details

1. Install [Homebrew](https://brew.sh/)
2. Install ansible via brew: `brew install ansible`
3. Run `ansible-pull -U https://github.com/addyi/dotfiles`

## Install on Linux

> **Info**: see [docs/ansible.md](docs/ansible.md) for details

### Arch Linux
1. Install Ansible and Git: `sudo pacman -Syu ansible git`
2. Run `ansible-pull -U https://github.com/addyi/dotfiles -K`

### Fedora / RedHat
1. Install Ansible and Git: `sudo dnf install -y ansible git`
2. Run `ansible-pull -U https://github.com/addyi/dotfiles -K`

### Debian / Ubuntu
1. Install Ansible and Git: `sudo apt update && sudo apt install -y ansible git`
2. Run `ansible-pull -U https://github.com/addyi/dotfiles -K`

> **Note:** `-K` (`--ask-become-pass`) prompts for your `sudo` password to install system packages and update the default login shell.

## TODOs

Set up ansible script with following tasks:

- [x] Install tools e.g. nvim, zsh, fzf, ...
    - [x] Mac (homebrew)
    - [x] Linux (Arch, Fedora, Debian/Ubuntu)
- [x] Set up oh-my-zsh including plugins
    - [Custom theme](files/config/zsh/addyi.zsh-theme)
    - External plugins to install
        - zsh-autosuggestions
        - zsh-syntax-highlighting
    - Maybe it makes sense to create a custom oh-my-zsh repo with all the plugins and themes preinstalled
        - Questions are how to keep it up to date and how to install it
        - <https://github.com/ohmyzsh/ohmyzsh#unattended-install>
- [x] Create `~/dev` folder and clone dotfile repository
- [x] Copy or symlink dotfiles to correct locations
- [ ] Create ssh key (or document how to create it)
- [x] Install [SDKMAN](docs/sdkman.md)
