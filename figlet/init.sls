figlet:
  pkg.installed

/etc/bash.bashrc:
   file.managed:
   - source: salt://figlet/new-bashrc
