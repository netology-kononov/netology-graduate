Role Name
=========

Wordpress application installation.  

Requirements
------------

No requirements.  

Role Variables
--------------

| Variable           | Description                                       | Default value     |
|--------------------|---------------------------------------------------|-------------------|
| wp_db_name         | Define MySQL Wordpress database name.             | wordpress         |
| wp_db_user         | Define MySQL Wordpress user name.                 | wordpress         |
| wp_db_passwd       | Define MySQL Wordpress user password.             | #encrypted#       |
| wp_auth_key        | See Wordpress documetation.                       | netology_was_here |
| wp_sec_auth_key    | See Wordpress documetation.                       | netology_was_here |
| wp_logged_in_key   | See Wordpress documetation.                       | netology_was_here |
| wp_nonce_key       | See Wordpress documetation.                       | netology_was_here |
| wp_auth_salt       | See Wordpress documetation.                       | netology_was_here |
| wp_sec_auth_salt   | See Wordpress documetation.                       | netology_was_here |
| wp_logged_in_salt  | See Wordpress documetation.                       | netology_was_here |
| wp_nonce_salt      | See Wordpress documetation.                       | netology_was_here |
| wordpress_packages | List of Wordpress server`s installation packages. |                   |

Dependencies
------------

Depends on "netology_mysql" role. Uses MySQL database on MySQL server host.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - netology_wordpress

License
-------

MIT

Author Information
------------------

Created for learning purposes.
