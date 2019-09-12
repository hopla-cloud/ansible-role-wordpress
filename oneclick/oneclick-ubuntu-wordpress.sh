#!/bin/bash

#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Script Version 1.0

# Set env vars
export HOME=/root

# Install ansible
apt update
DEBIAN_FRONTEND=noninteractive apt install ansible -y --allow-yes true

# Install hoplacloud roles
ansible-galaxy install hoplacloud.wordpress

# Write roles
echo "- hoplacloud.apache_php" >> /etc/hopla.cloud-roles
echo "- hoplacloud.linux_update" >> /etc/hopla.cloud-roles
echo "- hoplacloud.fail2ban" >> /etc/hopla.cloud-roles
echo "- hoplacloud.vhostdeploy_apache" >> /etc/hopla.cloud-roles
echo "- hoplacloud.proftpd" >> /etc/hopla.cloud-roles
echo "- hoplacloud.postfix" >> /etc/hopla.cloud-roles
echo "- hoplacloud.mysql" >> /etc/hopla.cloud-roles
echo " " >> /etc/hopla.cloud-roles
echo "Deployment date (YYYY-MM-DD):" >> /etc/hopla.cloud-roles
date +%F >> /etc/hopla.cloud-roles

# Install oneclick app
ansible-playbook /root/.ansible/roles/hoplacloud.wordpress/playbooks/vhostdeploy_wordpress.yml --extra-vars "$1"
