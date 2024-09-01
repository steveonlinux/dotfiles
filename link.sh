#!/bin/sh

# Create links to home
ln -s bashrc "$HOME/.bashrc"
ln -s zshrc "$HOME/.zshrc"

# Create links to scripts
ln -s scr/framework "$HOME/scr/framework"

# Create links to .config
#ln -s .config/[] "$HOME/.config[]"
ln -s config/aliasrc "$HOME/.config/aliasrc"
ln -s config/okularpartrc "$HOME/.config/okularpartrc"
ln -s config/okularrc "$HOME/.config/okularrc"
ln -s config/picom.conf "$HOME/.config/picom.conf"

ln -s config/awesome "$HOME/.config/awesome"
ln -s config/fastfetch "$HOME/.config/fastfetch"
ln -s config/hypr "$HOME/.config/hypr"
ln -s config/kitty "$HOME/.config/kitty"
ln -s config/leftwm "$HOME/.config/leftwm"
ln -s config/lvim "$HOME/.config/lvim"
ln -s config/mpv "$HOME/.config/mpv"
ln -s config/neofetch "$HOME/.config/neofetch"
ln -s config/qalculate "$HOME/.config/qalculate"
ln -s config/qtile "$HOME/.config/qtile"
ln -s config/ranger "$HOME/.config/ranger"
ln -s config/sway "$HOME/.config/sway"
ln -s config/waybar "$HOME/.config/waybar"

#create_symlinks() {
#    src_dir="$1"  # Source directory provided as the argument
#    dest_dir="$HOME/.config"  # Destination directory for symlinks
#
#    # Check if the source directory exists
#    if [[ ! -d "$src_dir" ]]; then
#        echo "Error: Source directory '$src_dir' does not exist."
#        return 1
#    fi
#
#    # Create the destination directory if it does not exist
#    mkdir -p "$dest_dir"
#
#    # Iterate over all files and directories in the source directory
#    for file in "$src_dir"/*; do
#        # Get the base name of the file or directory
#        basename=$(basename "$file")
#        
#        # Create a symbolic link
#        ln -s "$file" "$dest_dir/$basename"
#    done
#
#    echo "Symbolic links created in '$dest_dir'."
#}
