npm install -g intelephense stylelint-lsp typescript typescript-language-server markdownlint

if [[ $OSTYPE == 'darwin'* ]]; then
	brew install tflint
else
	curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
fi

