ZSH="$HOME/.zsh"

ZSH_THEME=zxynghaaa
CASE_SENSITIVE=true
# ZSH_DOTENV_FILE=".dotenv"

# -- Fix: neovim cant load settings env
if [[ -f .env ]]; then
  source .env
fi
