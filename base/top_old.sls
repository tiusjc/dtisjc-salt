base:
  '*':
    - hosts
    - salt-minion
  'ag-ubuntu14':
    - apache
    - docker
    - dock_apache
    - haproxy.config 
  'apach*':
    - apache  

