libdvdcss-repo:
  pkgrepo.managed:
    - name: deb http://download.videolan.org/pub/debian/stable /
    - file: /etc/apt/sources.list
libdvdcss-repo-src:
  pkgrepo.managed:
    - name: deb-src http://download.videolan.org/pub/debian/stable /
    - file: /etc/apt/sources.list
libdvdcss-key:
  cmd.run:
    - name: wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
libdvdcss:
  pkg.installed:
    - required:
      - pkg: libdvdcss-key
    - refresh: True


