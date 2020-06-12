# Install Debs
sudo apt update
sudo apt upgrade -y

echo ">>> Instalando Gnome Tweak Tool:"
sudo apt install gnome-tweak-tool -y

echo ">>> Instalando Git:"
sudo apt install git -y

echo ">>> Instalando Zsh:"
sudo apt install zsh -y

echo ">>> Instalando VSCode:"
sudo snap install code --classic

echo ">>> Instalando Insomnia:"
sudo snap install insomnia
sudo snap install insomnia-designer

echo ">>> Instalando Spotify:"
sudo snap install spotify

echo ">>> Instalando Vim:"
sudo apt install vim -y

# Install Docker
echo ">>> Instalando Docker:"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo groupadd docker
sudo usermod -aG docker $USER

# Create folders
echo ">>> Criando Pastas:"
mkdir ~/Projetos
mkdir ~/.ssh

# Install .gitconfig
echo ">>> Copiando .gitconfig:"
cp .gitconfig ~/

# Change to Zsh
sudo chsh -s $(which zsh)
echo ">>> Instalando Oh My Zsh:"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy Zshrc
echo ">>> Copiando .zshrc:"
cp .zshrc ~/

# Install Dracula VIM
echo ">>> Instalando VIM Dracula:"
mkdir -p ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git ~/.vim/pack/themes/start/dracula

echo ">>> Copiando .vimrc"
cp .vimrc ~/
