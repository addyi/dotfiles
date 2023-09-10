# Ansible

Ansible is an open-source automation tool, or platform, that simplifies complex coordination and orchestration tasks in
an IT environment. Ansible uses a simple language called YAML, in the form of Ansible Playbooks, which allow you to
describe your automation tasks in a way that resembles plain English. The tool is primarily used for software
provisioning, configuration management, and application deployment. However, its flexibility and versatility have led to
its use in a variety of scenarios beyond these.

## Ansible Pull

Ansible-Pull is ideal for setting up a new computer. You can store the desired configurations and necessary packages in
a central repository, like GitHub. After acquiring your new computer, you can use Ansible-Pull to grab this
configuration from the repository and apply it to the machine. This way, you avoid repetitive manual configuration,
achieving a consistent and automated setup process, regardless of how many times you need to set up a new device.

## Running on macOS

1. Install [Homebrew](https://brew.sh/)

2. Install Ansible

    ```shell
    brew install ansible
    ```

3. Run ansible with default `local.yml` playbook

    ```shell
    ansible-pull -U https://github.com/addyi/dotfiles
    ```
   **Note:** The repository needs to have a `master` branch for this to work.

## Testing Ansible Playbooks Locally

Before you push your Ansible playbook to a source control system like GitHub, you should test it locally to ensure it's
functioning as expected.

> **Note:** Running an Ansible playbook will make changes to your machine based on the tasks defined in the playbook. It
> is therefore crucial to review your playbook carefully before executing it to avoid any unexpected changes on your
> system. For example, it might install certain packages or modify system settings.

**Prerequisites**: Ensure that you have Ansible installed on your machine. This testing procedure assumes you're using a
macOS.

Run the playbook locally using the following command:

```shell
ansible-playbook your_playbook.yml
```

## Resources

- https://www.youtube.com/watch?v=gIDywsGBqf4
- https://github.com/LearnLinuxTV/ansible_desktop_tutorial
- https://stackoverflow.com/questions/63242221/use-ansible-package-module-to-work-with-apt-and-homebrew
- https://docs.ansible.com/ansible/latest/collections/community/general/homebrew_module.html
- https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_conditionals.html#basic-conditionals-with-when
