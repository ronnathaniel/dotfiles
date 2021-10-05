
git pull --recurse-submodules
git submodule update --recursive --remote


shopt -s nullglob
for i in `find . -type f -name ".*" -and ! -name "*git*"`;
do
  # -type f
  # -and ! -name "*.vim/*"
  cp $i ~/.
  echo copied $i to ~/$i
done

cp -r ./.vim ~
echo copied .vim to ~/.vim
