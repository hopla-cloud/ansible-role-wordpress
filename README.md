Role Name
=========

Hopla.cloud role for ansible to install a simple Wordpress.

Requirements
------------

None.

Role Variables
--------------

vhost_url: "exemple.domain.com"
user_email: "exemple@domain.com"
wp_version: "5.3"

Dependencies
------------

- hoplacloud.linux_update
- hoplacloud.linux_motd
- hoplacloud.apache-php
- hoplacloud.fail2ban
- hoplacloud.vhostdeploy_apache
- hoplacloud.proftpd
- hoplacloud.postfix
- geerlingguy.mysql


Example Playbook
----------------

    - hosts: localhost
      remote_user: root
      roles:
         - hoplacloud.wordpress

License
-------

GPLv3

Author Information
------------------

Joffrey Skandera for [hopla.cloud](https://hopla.cloud)
