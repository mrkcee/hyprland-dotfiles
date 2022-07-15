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
	echo "Restoring $config configs..."
	if [[ -d $HOME/.config/$config ]]; then
		rm -rf $HOME/.config/$config
	fi
	cp -r ./$config $HOME/.config/$config
done

echo "Config files have been restored successfully."
