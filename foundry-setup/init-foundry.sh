#!/bin/bash
FORGE=https://github.com/sambacha/foundry/releases/download/v0.0.22/forge
CAST=https://github.com/sambacha/foundry/releases/download/v0.0.22/cast
curl -O https://github.com/sambacha/foundry/releases/download/v0.0.22/forge
chmod +x forge
mv forge /usr/local/bin
curl -O https://github.com/sambacha/foundry/releases/download/v0.0.22/cast
chmod +x cast
mv cast /usr/local/bin
forge --version || exit 137
brew install bash-completion
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile
forge completions bash > /usr/local/etc/bash_completion.d/forge
source ~/.bash_profile
