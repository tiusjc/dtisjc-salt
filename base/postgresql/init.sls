postgresql-repo:
  pkgrepo.managed:
    - name: deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main
    - file: /etc/apt/sources.list.d/pgdg.list
postgresql-key:
  cmd.run:
    - name: wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
postgresql-9.4:
  pkg.installed:
    - required:
      - pkg: postgresql-key
    - refresh: True


