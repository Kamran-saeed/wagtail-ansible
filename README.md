
# Wagtail CMS Deployment with Ansible

This repository contails three ansible roles for setting up Wagtail-CMS with Maria Database, Nginx to configure the Wagtail-CMS to run on localhost with default port 80 and Supervisor to manage execution of application.
- Roles
  - maria-db
    - Install dependencies require to run MariaDB
    - Installs MariaDB from official reposiotry
    - Sets up mysql user, password and wagtaildb  
  - wagtail-cms
    - Checkout the sample wagtail project code from git
    - Install dependencies require to run wagtail cms
    - Creates virtualenv and install dependencies for the sample project
    - configure MariaDB with Wagtail CMS
    - Create superuser
    - Setup Supervisor to manage the execution of application
  - nginx
    - Install Nginx
    - Configure Nginx with Wagtail CMS to run on localhost with default port 80

To set up the application, following are the Pre-Reqs:
- Machine used to test application
  - Ubuntu Server 18.04 LTS
- Following needs to be installed before running application
  - Python
  ```
  sudo apt install python -y
  ```
  - Pip
  ```
  sudo apt install python-pip -y
  ```
  - Ansible
  ```
  sudo apt update
  sudo apt install software-properties-common
  sudo apt-add-repository --yes --update ppa:ansible/ansible
  sudo apt install ansible -y
  ```

To run the application, do the following:
  - Copy application code to remote Server
  - Run the following command to deploy the application
    >``` ansible-playbook playbook.yaml ```

Info about Sample Wagtail Project:
- Sample Wagtail project is stored on this [git repository](https://github.com/Kamran-saeed/wagtail.git)
