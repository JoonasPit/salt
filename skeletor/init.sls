/etc/skel/public_html:
  file.directory:
    - name: /etc/skel/public_html
    - mode: 755

/etc/skel/public_html/index.php:
  file.managed:
    - source: salt://skeletor/new-index.php
