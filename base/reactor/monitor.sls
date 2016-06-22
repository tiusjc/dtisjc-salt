remove_marker:
  local.cmd.run:
    - tgt: '*'
    - arg:
      - 'rm /etc/salt/texto.txt'
