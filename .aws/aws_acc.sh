#!/bin/bash

# This script utilizes gum to present a selection of aws profiles to be used.
# Going through the list of profiles that have already been configured, you can
# then make a selection that will allow you to switch aws accounts.

getProfilesConfigs() {
	gum choose "$(aws configure list-profiles)" --selected.background "10" --cursor.foreground "10"
}

# Check if aws CLI is installed
command -v aws >/dev/null 2>&1 || { echo >&2 "AWS CLI doesn't exist, please install it"; exit 1; }

gum style \
	--foreground 255 --border-foreground 10 --border double \
	--align center --width 20 --margin "1 1" --padding "1 4" \
	'Choose Profile'

PROFILE=$(getProfilesConfigs)

export AWS_PROFILE=$PROFILE
