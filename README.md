# Minimal-OS Zsh Theme

**Minimal-OS** is a sleek and simple Zsh theme designed for use with Oh-My-Zsh. It provides a minimalist prompt with helpful Git status indicators and system-specific icons.

## Features

- **System Icons:** Displays an icon based on your operating system:
  - macOS: 
  - Linux: 🐧
  - Windows (Cygwin/MSYS): ⊞
  - Unrecognised: ❯
- **Git Integration:** Indicates the status of your Git repository with different symbols for:
  - Modified files
  - Untracked files
  - Clean state
  - Behind remote status

## Installation

1. **Oh-My-Zsh Installation:**
   Make sure you have Oh-My-Zsh installed. If not, you can install it by following the instructions [here](https://github.com/ohmyzsh/ohmyzsh).

2. **Download the Theme:**
   Save the theme file `minimal-os.zsh-theme` to the Oh-My-Zsh custom themes directory:

   ```sh
    curl -o $ZSH_CUSTOM/themes/minimal-os.zsh-theme https://raw.githubusercontent.com/nkurata/zsh-theme/main/minimal-os.zsh-theme
   ```

3. **Set the Theme:**
   Edit your `~/.zshrc` file to set `ZSH_THEME` to `minimal-os`:

   ```sh
   ZSH_THEME="minimal-os"
   ```

4. **Apply the Changes:**
   Reload your Zsh configuration by running:

   ```sh
   source ~/.zshrc
   ```

## Example Prompt

With the `minimal-os` theme, your prompt will look something like this:

```
~/my-project (main) ↑12↓ 23:45:56
 🐧
```

This indicates:
- The current directory is `~/my-project`
- The current Git branch is `main`
- There are 12 changes ahead of the remote branch
- The current time is `23:45:56`
- You are on a Linux system

## Examples
- Apple System
<img width="500" alt="apple-zshtheme" src="https://github.com/nkurata/zsh-theme/assets/90001579/bc312d40-9e76-422b-9ac5-db50a9475cc6">
- Linux System
<img width="500" alt="linux-zshtheme" src="https://github.com/nkurata/zsh-theme/assets/90001579/23d5be54-c134-45c3-871d-4c1454462c70">
- Windows System
<img width="500" alt="windows-zshtheme" src="https://github.com/nkurata/zsh-theme/assets/90001579/e5edb17c-0577-4fd9-bede-8d441e554e3c">
- Unrecognised System
<img width="500" alt="other-zshtheme" src="https://github.com/nkurata/zsh-theme/assets/90001579/3734bf07-05ce-41d0-8960-af491df03750">




## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or fixes.

## Acknowledgments

- Inspired by various Zsh themes available in the Oh-My-Zsh community.

Enjoy your new minimal and efficient Zsh prompt with **Minimal-OS**!
