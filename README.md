# IA INET4031 Puppet Lab 9 – LAMP Stack + MySQL Role

This project is a Puppet configuration for setting up a basic LAMP stack server with MariaDB. It includes:

- Apache2 Web Server
- PHP and required modules
- MariaDB (MySQL) Server
- A test PHP page (`phpinfo.php`)
- A Puppet manifest to manage users, groups, and packages

## 🗂 Directory Structure

IA_inet4031_puppet_lab9/
├── lamp_stack_server.pp # Main LAMP + MariaDB role manifest
├── server_users_groups.pp # Puppet manifest for managing users and groups
├── phpinfo.php # PHP test page to verify Apache + PHP setup
├── testing_puppet.pp # Optional: test file for trying out Puppet resources
