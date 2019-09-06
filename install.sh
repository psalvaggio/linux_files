files='
bashrc
clang-format
git_bash_functions
gitconfig
vimrc
'

for file in $files
do
  cp $file ${HOME}/.$file
done
