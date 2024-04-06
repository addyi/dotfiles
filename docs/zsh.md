# Zsh

Zsh (Z Shell) is a powerful shell that operates as both an interactive shell and as a scripting language interpreter. It
is similar to the Bourne Shell (sh), but with numerous enhancements and refinements. Zsh provides features like smart
command completion, command correction, and more that make it easier to use and a popular alternative to more
traditional shells like bash.

Zsh is the default shell for macOS, but it is not the default shell for most Linux distributions. However, it is easy to
install and configure Zsh on Linux.

# Oh-My-Zsh

[Oh-My-Zsh](https://ohmyz.sh/) is an open-source, community-driven framework built on top of Zsh. It not only further
enhances Zsh's
potential, but also provides a central location for system configuration, enabling users to better manage different
plugins and themes. Oh-My-Zsh simplifies and speeds up workspace setup, making it an essential tool for developers who
wish to utilize the full extent of Zsh's power and flexibility in a streamlined, efficient manner.

## Theme

I have created a new, custom Oh-My-Zsh theme that draws inspiration from the robust foundations of
the `robbyrussell.zsh-theme` and the [robbyrussell-WIP theme by ecbrodie][rrWIP]. My theme brings together the best of
both designs. It provides the `git_super_status` prompt from the [git-prompt] plugin. This handy addition improves
usability by displaying a comprehensive git status in the prompt, thereby enabling straightforward tracking of changes
right from the terminal.

### Git Work in Progress (WIP)

One unique feature of this theme is its detection of a [Work in Progress][branchWIP] or WIP branch. A branch is flagged
as WIP specifically when the most recent commit message includes `-- wip--`. This provides developers with the
flexibility to pause work on one branch and smoothly transition to another.

See [Work in Progress (WIP)][branchWIP] from oh-my-zsh [git plugin][gitPlugin] that provides a huge list of useful git
aliases:

- `gwip`: Create a WIP commit
- `gunwip`: Revert WIP commit

## Aliases in Oh-My-Zsh

> **Note**: With **als** (alias ls) you can list all currently available aliases.

Aliases are a core aspect of Zsh and Oh-My-Zsh, offering shortcuts for longer commands and thereby increasing
productivity and command-line efficiency. Oh-My-Zsh excels at providing a diverse buffet of alias options through
multiple plugins.

In my customized workspace, I've enabled several alias plugins for commonly used tools, namely Git, Gradle, Android
Debug Bridge (ADB), and Arch Linux's package manager Pacman. These alias sets enhance the manipulation and iteration
speeds of these respective tools, streamlining my daily tasks.

Additionally, my configuration includes all the wonderfully convenient default Oh-My-Zsh aliases, covering a wide range
of general command line use cases.


[rrWIP]: https://github.com/ecbrodie/robbyrussell-WIP-theme/

[git-prompt]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-prompt

[branchWIP]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#work-in-progress-wip

[gitPlugin]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
