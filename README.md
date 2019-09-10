Role Name
=========

Hopla.cloud role for ansible to install a simple Wordpress.

Requirements
------------

None.

Role Variables
--------------

None.


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

This role was created in 2019 by [hopla.cloud](https://hopla.cloud)
