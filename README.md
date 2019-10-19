# not-dot

## Description
This is my (mostly) [XDG](https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html)-compliant linux configuration. The repository name is a reference to the fact that following the XDG specification removes most of the hidden dotfiles which traditonally occupy the user's home directory. Thus configuration dotfiles become refular files located under `XDG_CONFIG_HOME` (`$HOME/.config/`), restorable cache files move to `XDG_CACHE_HOME` (`$HOME/.cache/`), and persistent data files are placed in `XDG_DATA_HOME` (`$HOME/.local/share`). In addition to keeping the home directory organized, this makes it much easier to perform backups.

XDG-compliance is accomplished through a variety of means. Some applications will automatically follow the specification while others will only do so if the XDG variables are set. Many other applications can be made XDG-compliant by setting environment variables, creating aliases, or placing simple wrapper scripts in a location on the path where they will override the original commands.

## Installation
1. Run `git clone https://github.com/LiteracyFanatic/not-dot "$HOME/.config"`

2. Because these settings are applied in bash's configuration dotfiles which normally occupy the home directory, the process must be bootstrapped by telling bash where to look for them. This can be accomplished in one of two ways:

    a) Add `. "$HOME/.config/bash/bash_profile"` to `/etc/profile`.

    b) Run `ln -s "$HOME/.config/bash/bash_profile" "$HOME/.bash_profile"`.

3. If the system is running `sshd`, the daemon must be able to locate the `authorized_keys` file.

    a) Add `AuthorizedKeysFile .config/ssh/authorized_keys` to `/etc/ssh/sshd_config`.
    
    b) Run `ln -s "$HOME/.config/ssh/" "$HOME/.ssh"`.

4. Symlink any of the desired wrapper scripts to a location on the path.

    ```
    mkdir -p "$HOME/bin"
    ln -s "$SCRIPT" "$HOME/bin"
    ```

## License
The scripts in this repository may be used under the conditions of the MIT license.
