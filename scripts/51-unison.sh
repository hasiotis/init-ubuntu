cat <<"EOF" > ~/.unison/daruk.hasiotis.loc.prf
# Unison preferences file
logfile = /home/hasiotis/.unison/unison.log

root = /home/hasiotis
root = ssh://daruk.hasiotis.loc//home/hasiotis

path = Documents
path = Media

ignore = Name .vagrant
EOF

ln -s ~/.unison/daruk.hasiotis.loc.prf ~/.unison/default
