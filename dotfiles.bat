@echo off

IF NOT EXIST %HOMEPATH%"\.vim\bundle" (
  mkdir %HOMEPATH%"\.vim\bundle"
  git clone https://github.com/Shougo/neobundle.vim.git %HOMEPATH%"\.vim\bundle\neobundle.vim"
)

mklink %HOMEPATH%"\_vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\_gvimrc" %HOMEPATH%"\dotfiles\.gvimrc"

mklink /D %HOMEPATH%"\vimfiles\autoload" %HOMEPATH%"\dotfiles\.vim\autoload"
mklink /D %HOMEPATH%"\.vim\dict" %HOMEPATH%"\dotfiles\.vim\dict"

pause
exit 0
