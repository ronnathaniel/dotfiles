
shopt -s nullglob
for i in `find . -type f -name ".*" -and ! -name "*git*" -and ! -name "*.vim/*"`;
do
  cp $i ~/.
  echo copied $i to ~/$i
done
