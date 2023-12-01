# Install dependencies
apt update
DEBIAN_FRONTEND=noninteractive apt -y install build-essential ninja-build cmake gettext git ripgrep fd-find unzip tmux zsh locales ca-certificates curl wget gnupg xclip libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev libjson-c-dev libwebsockets-dev

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install neovim
git clone --depth=1 https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=Release
make install
mv /neovim/build/bin/nvim /usr/bin/
cd .. && rm -r neovim

# Install NvChad
git clone --depth=1 https://github.com/NvChad/NvChad ~/.config/nvim
rm -rf $HOME/.config/nvim/.git
git clone https://github.com/gpt-partners/nvim-config /root/.config/nvim/lua/custom
nvim --headless +MasonInstallAll +qa

# Fix UTF-8 support
locale-gen en_IN.UTF-8
