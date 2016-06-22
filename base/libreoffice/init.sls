libreofice-ppa:
  pkgrepo.managed:
    - ppa: libreoffice/ppa
    - require_in:
      - pkg: libreoffice
libreoffice:
  pkg.installed:
    - refresh: True

    
