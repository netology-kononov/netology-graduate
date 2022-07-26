Role Name
=========

MySQL cluster installation.  

Requirements
------------

Required at least two hosts with different "role_mysql" variable values.  

Role Variables
--------------

| Variable                | Description                                                                | Default value    |
|-------------------------|----------------------------------------------------------------------------|------------------|
| role_mysql              | Define host`s role in the MySQL cluster. Allowed values "master", "slave". | slave            |
| server_id               | Define MySQL host`s unique ID in cluster.                                  | 0                |
| config_add_line         | Define MySQL host`s configuration additional options.                      |                  |
| commands_timeout        | Define timeouts (in sec) after entering MySQL console commands.            | 5                |
| replication_user        | Define MySQL cluster replication user name.                                | replication_user |
| replication_user_passwd | Define MySQL cluster replication user password.                            | #encrypted#      |
| wordpress_db            | Define MySQL Wordpress database name.                                      | wordpress        |
| wordpress_user          | Define MySQL Wordpress user name.                                          | wordpress        |
| wordpress_user_passwd   | Define MySQL Wordpress user password.                                      | #encrypted#      |
| exporter_user           | Define MySQL MySQLd_exporter user name.                                    | exporter         |
| exporter_user_passwd    | Define MySQL MySQLd_exporter user password.                                | #encrypted#      |
| mysql_packages          | List of MySQL server`s installation packages.                              |                  |

Dependencies
------------

No dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - netology_mysql

License
-------

MIT

Author Information
------------------

Created for learning purposes.
