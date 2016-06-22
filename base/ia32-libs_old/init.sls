ia32-libs-repo:
  pkgrepo.managed:
    - name: "deb http://archive.ubuntu.com/ubuntu/ raring main restricted universe multiverse"
    - file: /etc/apt/sources.list.d/ia32-libs-raring.list
    - require_in:
      - pkg: ia32-libs
ia32-libs:
  pkg.installed:
    - refresh: True  
