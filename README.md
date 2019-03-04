# dotfiles

## Prérequis
- update système
    
        sudo apt-get update && sudo apt-get upgrade
     
- installer zsh 

        sudo apt install zsh
    
- installer oh-my-zsh (vérifier que la ligne de commande est tjs celle-ci)

        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    > ^ ceci va 
    > - créer le `$HOME/.zshrc`
    > - set ZSH as default Shell
    > - create the `$HOME/.oh-my-zsh` directory        

## Customisation du ZSH
### installer le thème powerlevel9k

    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

(_vérifier si la ligne est tjs ok sur https://github.com/bhilburn/powerlevel9k_)

### install fontconfig (utile ?)
    sudo apt-get install fontconfig
    test

### install font hack dans sa version NerdFont
    sudo apt-get install fonts-hack-ttf
    
ici clonage du projet complet pour installer NerdFont-complete (https://github.com/ryanoasis/nerd-fonts/ - attention clonage volumineux !)
 
    git clone https://github.com/ryanoasis/nerd-fonts.git
    cd nerd-fonts && ./install.sh Hack
    cd .. && rm -rf ./nerd-fonts

### install zsh plugins
#### zsh-syntax-higlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting\
#### autosuggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions\
    
### Moar colorz
Pour voir les couleurs dispo et leurs codes couleurs : `spectrum_ls`
    
    sudo apt install spectrum

Pour voir les icônes dispo : `get_icon_names`

### Installs NPM & NVM
    sudo apt install npm
    sudo apt install nvm
    
### NVM dans ZSH
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh\

## Moar installs
### weechat 
https://weechat.org
    
    sudo apt-get install weechat

puis copier le dossier de config weechat

### Indicator multiload (plus complet que celui de base et sans graph
    sudo apt install indicator-multiload
    
### Sublime text 3
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -\
    sudo apt-get install apt-transport-https\
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list\
    sudo apt-get update\
    sudo apt-get install sublime-text\
    
### Shutter
    sudo apt-get update && sudo apt-get install shutter\
        

## Moar theming (based on Ubuntu Mate)
    sudo add-apt-repository ppa:daniruiz/flat-remix\
    sudo add-apt-repository ppa:system76/pop\
    sudo apt-get update\
    sudo apt install flat-remix-gtk\
    sudo apt install materia-gtk-theme
    sudo apt install pop-icon-theme\

## Moar swap
    sudo fallocate -l 4G /swapfile\
    sudo chmod 600 /swapfile\
    sudo mkswap /swapfile\
    sudo swapon /swapfile\
    sudo swapon --show
