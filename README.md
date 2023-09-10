# dotfiles

WORK IN PROGRESS

## TODOs

Set up ansible script

1. install tools e.g. nvim, zsh (oh-my-zsh, plugins), fzf, ...
    - Mac (homebrew)
    - Linux (arch, maybe debian)
2. create ~/dev folder and check out dotfile repo into it
3. symlink dotfiles
4. Create ssh key (or document how to create it)

## Resources

- https://www.youtube.com/watch?v=gIDywsGBqf4
- https://github.com/LearnLinuxTV/ansible_desktop_tutorial
- https://stackoverflow.com/questions/63242221/use-ansible-package-module-to-work-with-apt-and-homebrew
- https://docs.ansible.com/ansible/latest/collections/community/general/homebrew_module.html
- https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_conditionals.html#basic-conditionals-with-when

## Install steps Mac

- Install Homebrew: https://brew.sh/
- Install ansible
- Run ansible with `ansible-pull -U ...`
