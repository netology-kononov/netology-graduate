Role Name
=========

Edge host configuration.  
(NGINX as reverse-proxy server, Tinyproxy as proxy server).

Requirements
------------

Public internet address is required.  

Role Variables
--------------

| Variable            | Description                                                                   | Default value  |
|---------------------|-------------------------------------------------------------------------------|----------------|
| proxy_allow_cidr    | Define internal IP addresses subnet allowed to access internet via TinyProxy. | 192.168.1.0/24 |
| edge_packages       | List of installation packages.                                                |                |
| ssl_certificate     | SSL certificate file location.                                                |                |
| ssl_certificate_key | SSL private key file location.                                                |                |
| ssl_listen          | NGINX configuration file option.                                              |                |
| ssl_sites           | List of sites for DNS registration via dnsexit.com API.                       |                |
| dnsexit_api         | API key for dnsexit.com                                                       |                |

Dependencies
------------

No dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - netology_edge

License
-------

MIT

Author Information
------------------

Created for learning purposes.
