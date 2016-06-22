email_hosts: 
  local.smtp.send_msg:
    - name: 'Esta é uma mensagem de teste' 
    - profile: my-smtp
    - subject: 'Mensagem do SALT'
    - recipient: francislibra@gmail.com
    - use_ssl: true
