sudo yum upgrade
sudo yum install https://rdoproject.org/repos/openstack-ocata/rdo-release-ocata.rpm
sudo yum install git
sudo git clone https://git.openstack.org/openstack/openstack-ansible /opt/openstack-ansible
sudo cd /opt/openstack-ansible
sudo git checkout 16.0.0.0b1
export ANSIBLE_ROLE_FETCH_MODE=git-clone
sudo scripts/bootstrap-ansible.sh
sudo scripts/bootstrap-aio.sh
