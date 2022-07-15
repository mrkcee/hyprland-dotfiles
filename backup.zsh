#!/bin/zsh -e

config_files=(
	foot
	fuzzel
	hypr
	mako
	nvim
	yambar
	zsh
)

for config in $config_files
do
	echo "Backing up $config..."
	if [[ -d ./$config ]]; then
		rm -rf ./$config
	fi
	cp -r $HOME/.config/$config .
done
rm ./zsh/.zcompdump

echo "Config files have been backed up successfully."
