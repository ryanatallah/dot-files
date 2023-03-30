FILES=~/Developer/github.com/ryanatallah/system-setup/dot-files/.*
for f in $FILES
do
  if [ -f $f ]; then
    ln -svf $f ~/$(basename $f)
  fi
done

