#opt/local before everything else in path so that macports versions are used
PATH=/opt/local/bin:/opt/local/sbin:/Users/peter/Library/Python/2.7/bin:$PATH
export PATH

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
