hosts_changed:
  smtp.send_msg:
    - kwarg:
      recipient: francislibra@gmail.com
      message: Hosts File Changed on {{data['id']}}
      subject: Hosts File Changed on {{data['id']}}
      profile: my-smtp-login

