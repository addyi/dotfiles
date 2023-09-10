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

## TODOs

Set up ansible script with following tasks:

1. Install tools e.g. nvim, zsh, fzf, ...
    - Mac (homebrew)
    - Linux (arch, maybe debian)
2. Set up oh-my-zsh including plugins
    - [Custom theme](files/addyi.zsh-theme)
    - External plugins to install
        - zsh-autosuggestions
        - zsh-syntax-highlighting
    - Maybe it makes sense to create a custom oh-my-zsh repo with all the plugins and themes preinstalled
        - Questions are how to keep it up to date and how to install it
        - <https://github.com/ohmyzsh/ohmyzsh#unattended-install>
3. Create `~/dev` folder and check out dotfile repo into it
4. Copy or symlink dotfiles to correct locations
5. Create ssh key (or document how to create it)
6. Install [SDKMAN](docs/sdkman.md)
