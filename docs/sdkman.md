# SDKMAN!

## Introduction

SDKMAN! is a software development toolkit manager, a version manager similar to `nvm` for Node.js environments,
and `rbenv` for Ruby environments. This tool allows developers to manage parallel versions of different Software
Development Kits on most Unix-based systems (such as Linux, macOS, and Cygwin). It supports multiple versions and types
of SDKs, including Groovy, Scala, Gradle, Java, and of course, KOTLIN :hearts:.

## Installation

Installing SDKMAN! is relatively straightforward using a terminal. While SDKMAN! is not directly available via `brew` or
other package managers, its own one-liner bash script will achieve the same purpose.

> **Note:** No guarantees that below instructions are still up-to-date. Please refer to the
> official [SDKMAN!](https://sdkman.io/install) website.

1. Open your terminal and enter:

    ```bash
    curl -s "https://get.sdkman.io" | bash
    ```

2. To ensure that the installation was successful, open a new terminal or enter the following command in the current
   terminal:

    ```bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
    ```

   Sdkman init will also be automatically sourced by me zshrc file.

3. Then check SDKMAN! version by executing:

    ```bash
    sdk version
    ```

   If the installation went well, this should display the installed version of SDKMAN!.

## Common Tasks

> **Note:** No guarantees that below instructions are still up-to-date. Please refer to the
> official [SDKMAN!](https://sdkman.io/usage) website.

Using SDKMAN!, you can easily manage different versions of an SDK. Here are a few common operations:

### Installing Java

To install Java, use the `install` or `i` command followed by the software you want to install. For example, to install
Java 17:

```bash
sdk install java 17.0.7-jbr # jbr is the JetBrains Runtime
```

You can also view all versions available for install by entering:

```bash
sdk list java
```

This will display all the versions available to install **as well** as indicate the current and default versions in use.

### Switching Between SDK Versions

To switch between available versions of an SDK, use the `use` command followed by the SDK and the version you want to
switch to. For example, to use Java 11:

```bash
sdk use java 11.0.14.1-jbr # jbr is the JetBrains Runtime
```

To make a specific version the default version (which will be used in all new shells), you can use the `default`
command. For example, to set Java 11 as the default:

```bash
sdk default java 11.0.14.1-jbr # jbr is the JetBrains Runtime
```

### Getting Current SDK Version

If you need to see the current version you're using for a specific SDK, you can use the `current` command. Specifically
for Java, use:

```bash
sdk current java
```

This will display the currently active Java version.
