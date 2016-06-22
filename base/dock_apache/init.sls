francislibra/salt-minion:ubuntu14.04:
  dockerng.image_present:
    - force: True

apache_server1:
  dockerng.running:
    - name: apache_srv1
    - image: francislibra/salt-minion:ubuntu14.04 
    - hostname: apache_srv1
    - port_bindings:
      - 5000:80
    - watch:
      - dockerng: francislibra/salt-minion:ubuntu14.04

apache_server2:
  dockerng.running:
    - name: apache_srv2
    - image: francislibra/salt-minion:ubuntu14.04
    - hostname: apache_srv2
    - port_bindings:
      - 5050:80
    - watch:
      - dockerng: francislibra/salt-minion:ubuntu14.04
