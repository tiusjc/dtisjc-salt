kdevelop-ppa:
  pkgrepo.managed:
    - ppa: marian.kadanka/kdevelop
    - require_in:
      - pkg: kdevelop
kdevelop:
  pkg.installed:
    - refresh: True

    
