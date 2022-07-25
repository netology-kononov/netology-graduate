Role Name
=========

Prometheus stack installation.  

Requirements
------------

No requirements.  

Role Variables
--------------

| Variable         | Description                                                                           | Default value            |
|------------------|---------------------------------------------------------------------------------------|--------------------------|
| role_prom        | Define host`s role in the Prometheus stack. Allowed values "server", "node", "mysql". | node                     |
| prom_owner       | Define Linux user`s name for created systemd units.                                   | {{ ansible_user }}       |
| prom_owner_group | Define Linux user`s group for created systemd units.                                  | {{ ansible_user_group }} |
| prom_ver         | Define Prometheus install version.                                                    | 2.37.0                   |
| alerter_ver      | Define Alert manager install version.                                                 | 0.24.0                   |
| node_ver         | Define Node exporter install version.                                                 | 1.3.1                    |
| mysqld_ver       | Define MySQLd exporter install version.                                               | 0.14.0                   |
| prom_port        | Define Prometheus web listen port.                                                    | 9090                     |
| alerter_port     | Define Alert manager web listen port.                                                 | 9093                     |
| node_port        | Define Node exporter web listen port.                                                 | 9900                     |
| mysqld_port      | Define MySQLd exporter web listen port.                                               | 9901                     |
| grafana_packages | List of Grafana server`s installation packages.                                       |                          |

Dependencies
------------

No dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - netology_prom

License
-------

MIT

Author Information
------------------

Created for learning purposes.
