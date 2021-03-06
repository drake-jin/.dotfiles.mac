
brew update
brew install git vim tree tmux tig fzf the_silver_searcher zsh zsh-completions zsh-syntax-highlighting wget
brew upgrade vim
brew cask install iterm2

# zsh install
export ZSH="$HOME/.oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

# zsh 플러그인
# zsh-syntax-highlighting: 명령어 하이라이팅
# zsh-autosuggestions: 자동완성 플러그인
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "plugins=(git zsh-syntax-highlighting zsh-autosuggestions)" >> ~/.zshrc

echo "source ~/.dotfiles.mac/zshrcCustom" >> ~/.zshrc


# Powerline font
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

cd ~/
git clone https://github.com/powerline/fontpatcher ~/fontpatcher
cd fontpatcher
sudo python setup.py install
cd ~/
rm -rf fontpatcher

# terminal iterm2 theme
mkdir ~/themes
mkdir ~/themes/iterm2
cd ~/themes/iterm2
wget https://github.com/mbadolato/iTerm2-Color-Schemes/tarball/master
mv master master.tar.gz
tar xvf master.tar.gz
rm master.tar.gz
cd ~/


# .gitconfig를 옮깁니다.
ln -s ~/.dotfiles.mac/gitconfig ~/.gitconfig

# powerlevel 9k install
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/themes/powerlevel9k
# Then edit your ~/.zshrc and set ZSH_THEME="powerlevel9k/powerlevel9k".


echo "설치가 끝났으면 install.sh를 참고 하여 아직 남은 셋팅들에 대해서 마무리 해주세요."
echo "1. iTerm -> 프로파일 -> 테마 변경"
echo "2. 폰트 및 터미널 색상변경"
echo '3. .zshrc의 theme내용 변경 `ZSH_THEME="powerlevel9k/powerlevel9k"`'
echo '4. .vimrc의 인스톨을 위하 1회 실행'
# 터미널 프로파일 들어가서 ~/themes/iterm2/mbadolato-iTerm2-Color-Schemes-d6098c7/terminal/Solarized\ Dark.terminal  이걸 가져오기 하면 됨



source ~/.zshrc
