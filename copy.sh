
shopt -s nullglob
for i in `find . -type f -name ".*"`;
do
  cp $i ~/.
  echo copied $i to ~/$i
done
