if command -v npm &>/dev/null; then
	npm install -g intelephense stylelint-lsp typescript typescript-language-server markdownlint
fi

ARCH=$(uname -m)

if [[ $OSTYPE == 'darwin'* ]]; then
	brew install tflint zls
else
	case "$ARCH" in
		x86_64)  TFLINT_ARCH="amd64" ;;
		aarch64) TFLINT_ARCH="arm64" ;;
		*)       echo "Unsupported architecture: $ARCH"; exit 1 ;;
	esac
	TMPFILE=$(mktemp)
	curl -fsL "https://github.com/terraform-linters/tflint/releases/latest/download/tflint_linux_$TFLINT_ARCH.zip" -o "$TMPFILE"
	sudo unzip -o "$TMPFILE" -d /usr/local/bin
	rm -f "$TMPFILE"

	case "$ARCH" in
		x86_64)  ZLS_ARCH="x86_64-linux" ;;
		aarch64) ZLS_ARCH="aarch64-linux" ;;
		*)       echo "Unsupported architecture: $ARCH"; exit 1 ;;
	esac
	TMPFILE=$(mktemp)
	curl -fsL "https://github.com/zigtools/zls/releases/latest/download/zls-$ZLS_ARCH.tar.xz" -o "$TMPFILE"
	sudo tar xJf "$TMPFILE" -C /usr/local/bin
	rm -f "$TMPFILE"
fi

