sudo yum -y upgrade
sudo yum install -y https://rdoproject.org/repos/openstack-ocata/rdo-release-ocata.rpm
sudo yum install -y git ansible
sudo git clone https://git.openstack.org/openstack/openstack-ansible /opt/openstack-ansible
sudo cd /opt/openstack-ansible
sudo git checkout -b tag-13.3.1 13.3.1
export ANSIBLE_ROLE_FETCH_MODE=git-clone
sudo scripts/bootstrap-ansible.sh
sudo scripts/bootstrap-aio.sh
