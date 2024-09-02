#!/bin/sh

# RUN IN SAME DIRECTORY AS DOTS

# Get the absolute path to the directory where the script is located
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Function to create a symbolic link after removing existing files or symlinks
create_symlink() {
  TARGET="$1"
  LINK_NAME="$2"

  # Check if the link or file exists and remove it
  if [ -e "$LINK_NAME" ] || [ -L "$LINK_NAME" ]; then
    rm -rf "$LINK_NAME"
  fi

  # Create the symbolic link
  ln -s "$TARGET" "$LINK_NAME"
}

# Create links to home using absolute paths
create_symlink "$SCRIPT_DIR/bashrc" "$HOME/.bashrc"
create_symlink "$SCRIPT_DIR/zshrc" "$HOME/.zshrc"

# Create links to scripts
create_symlink "$SCRIPT_DIR/scr/framework" "$HOME/scr/framework"

# Create links to .config using absolute paths
create_symlink "$SCRIPT_DIR/config/aliasrc" "$HOME/.config/aliasrc"
create_symlink "$SCRIPT_DIR/config/okularpartrc" "$HOME/.config/okularpartrc"
create_symlink "$SCRIPT_DIR/config/okularrc" "$HOME/.config/okularrc"
create_symlink "$SCRIPT_DIR/config/picom.conf" "$HOME/.config/picom.conf"

# Link directories using absolute paths
for dir in awesome fastfetch hypr kitty leftwm lvim mpv neofetch qalculate qtile ranger sway waybar; do
  create_symlink "$SCRIPT_DIR/config/$dir" "$HOME/.config/$dir"
done

