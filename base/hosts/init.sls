salt-master:
  host.present:
    - ip: 172.21.216.3
    - names:
        - salt
        - salt-master 
