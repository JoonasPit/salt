sysstat:
  pkg.installed

/etc/default/sysstat:
  file.managed:
   - source: salt://sysstat/sysstat-conf
