# Minimal-OS Zsh Theme

**Minimal-OS** is a sleek and simple Zsh theme designed for use with Oh-My-Zsh. It provides a minimalist prompt with helpful Git status indicators and system-specific icons.

## Features

- **System Icons:** Displays an icon based on your operating system:
  - Linux: 🐧
  - macOS: 
  - Windows (Cygwin/MSYS): ⊞
  - Others: ❯
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
<img width="520" alt="Screenshot 2024-06-02 at 15 59 05" src="https://github.com/nkurata/zsh-theme/assets/90001579/b9376de8-1a6d-442a-9307-08852e65e278">
<img width="581" alt="Screenshot 2024-06-02 at 15 58 25" src="https://github.com/nkurata/zsh-theme/assets/90001579/42e6d75b-48eb-41a5-9ee9-07619487f23b">
<img width="521" alt="Screenshot 2024-06-02 at 15 59 50" src="https://github.com/nkurata/zsh-theme/assets/90001579/7c41d107-3e94-44fe-9366-09ecf7a59cba">
<img width="574" alt="Screenshot 2024-06-02 at 16 00 28" src="https://github.com/nkurata/zsh-theme/assets/90001579/5510b667-192d-4ba8-a393-9d31a3a7f4e8">


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or fixes.

## Acknowledgments

- Inspired by various Zsh themes available in the Oh-My-Zsh community.

Enjoy your new minimal and efficient Zsh prompt with **Minimal-OS**!
