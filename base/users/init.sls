{% for usr in pillar['users'] %}
{{usr.name}}:
  user.present:
    - name: {{usr.name}}
    - fullname: {{ usr.fullname }}
    - shell: /bin/bash
  ssh_auth.present:
    - user: {{ usr.name }} 
    - enc: ssh-rsa
    - source: salt://users/keys/{{ usr.name }}_id_rsa.pub
    - config: /home/{{ usr.name}}/.ssh/authorized_keys
    - require:
      - user: {{ usr.name }}
{% endfor %} 
