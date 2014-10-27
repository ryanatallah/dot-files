FILES=~/Code/ryanatallah/dot-files/.*
for f in $FILES
do
  if [ -f $f ]; then
    ln -svf $f ~/$(basename $f)
  fi
done

