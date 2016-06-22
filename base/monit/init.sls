{% if pillar['monit'] is defined and pillar['monit'] %}
monit_pkgs:
  pkg.installed:
    - names:
      - monit

/etc/init/monit.conf:
  file:
    - managed
    - source: salt://monit/monit.conf
    - user: root
    - group: root
    - mode: 0444

/etc/monit/conf.d:
  file.directory:
    - user: root
    - group: root
    - mode: 0755

/etc/monit/conf.d/main:
  file:
    - managed
    - source: salt://monit/main
    - user: root
    - group: root
    - mode: 0444

{% if pillar['mail_alert'] is defined %}
/etc/monit/conf.d/mail:
  file:
    - managed
    - source: salt://monit/mail
    - user: root
    - group: root
    - mode: 0444
    - template: jinja
{% endif %}

monit:
  service:
    - running
    - enable: True
    - restart: True
    - require:
      - pkg: monit
      - file: /etc/init/monit.conf
      - file: /etc/monit/conf.d/main
      {% if pillar['mail_alert'] is defined %}- file: /etc/monit/conf.d/mail{% endif %}
    - watch:
      - file: /etc/monit/conf.d/*
{% endif %}
