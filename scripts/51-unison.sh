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

cat <<"EOF" > stuff.hasiotis.loc.prf
# Unison preferences file
# Unison preferences file
logfile = /home/hasiotis/.unison/stuff.log

root = /stuff/Public
root = ssh://shuttle.hasiotis.loc//stuff/Public
EOF
