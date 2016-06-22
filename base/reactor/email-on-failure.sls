email-on-failure:
  runner.process_minion_data.email_errors:
    - smtp_server: smtp.gmail.com
    - fromaddr: tiusjc@gmail.com
    - toaddrs: francislibra@gmail.com
    - subject: "Salt master: minion fail ou changes: id: {{ data['id'] }} jid: {{ data['jid'] }}"
    - data_str: {{ data|yaml_dquote }}
    - username: tiusjc@gmail.com
    - password: #ana#dan#fra#thi#wal 
