salt_minion:
  pkg.installed:
    - name: salt-minion
  service.running:
    - name: salt-minion
    - require:
      - pkg: salt-minion
    - watch:
      - file: /etc/salt/minion
/etc/salt/minion:
  file.managed:
    - source: salt://salt-minion/minion
    - user: root
    - group: root
    - mode: 644
