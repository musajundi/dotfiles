# Dotfiles
Configs, dotfiles, profiles, schemes and themes, and everything in between.

**IMPORTANT**: Back up all the relevant files before doing anything that could potentially alter/destroy them.
## Files
- `nvim` : Neovim configs. Usually found in `~/.configs/nvim`
- `.asdf-list` : List of installed asdf plugins and versions
    - `asdf list > .asdf-list`
- `.brew-list` : List of user-installed homebrew packages, excluding packages installed as dependencies
    - `brew bundle dump --file - > .brew-list`
- `.gem-list` : List of locally installed, system-wide gems
    - `gem list > .gem-list`
- `.gitconfig` : Local git configuration, usually found in the user directory, e.g. `~/.gitconfig`
- `.p10k.zsh` : p10k file generated through the p10k script found here: https://github.com/romkatv/powerlevel10k. This file is sourced in `.zshrc`. Found in the user directory.
- `.tool-versions` : Determines the global default versions for installed asdf plugins. Found in the user directory.
- `.zshrc` : rc file for zsh. I keep my aliases here too, though they can be split out into a separate `.aliases` file to clean this up. Found in the user directory.
- `iterm2-colors.itermcolors` : My exported customized iTerm2 color scheme. Color schemes can be exported/imported from `Preferences > Profiles > Colors > Color Presets...`
- `iterm2-profile.json` : Profile settings exported from iTerm2. Profile settings can be saved in `Preferences > Profiles > Other Actions... > Save Profile as JSON`
- `ralph.jpg` : Photo of my dog who I love. I want to see his face while I work, so I use this as my background in iTerm2.
- `vscode.json` : VS Code settings

## Symlinks
In order to have these config files live here in this `dotfiles` repository, without having to manually sync configuration changes, we must create symlinks from these files to where our software expects them to be.

e.g. `ln -s ~/dev/dotfiles/.zshrc  ~/.zshrc`

If you make a mistake and need to remove the symlink:

`ln -s ~/dev/dotflies/.zshrc  ~/.zshrc` <-- Oops! There's a typo!

`rm ~/.zshrc` <-- Bad symlink removed