Role Name
=========

Gitlab application installation.  

Requirements
------------

Required at least two hosts with different "role_gitlab" variable values.  

Role Variables
--------------

| Variable        | Description                                                                      | Default value       |
|-----------------|----------------------------------------------------------------------------------|---------------------|
| role_gitlab     | Define host`s role in the Gitlab application. Allowed values "server", "runner". | runner              |
| runner_executor | Define Gitlab runner executor type. See Gitlab documetation.                     | shell               |
| gitlab_url      | Gitlab server web interface URL.                                                 | http://#ip-address# |
| gitlab_root_pwd | Gitlab server root user password.                                                | #encrypted#         |
| gitlab_token    | Gitlab runner access tocken.                                                     | #encrypted#         |
| gitlab_packages | List of Gitlab server`s installation packages.                                   |                     |


Dependencies
------------

No dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - netology_gitlab

License
-------

MIT

Author Information
------------------

Created for learning purposes.
