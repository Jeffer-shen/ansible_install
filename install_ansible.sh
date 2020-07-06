
tar -xf local_ansible_rpm.tar.gz

if [ $? -ne 0 ]
then
	exit
fi

cd rpm_page
rpm -ivh libyaml-0.1.4-11.el7_0.x86_64.rpm
rpm -ivh PyYAML-3.10-11.el7.x86_64.rpm
rpm -ivh python-ply-3.4-11.el7.noarch.rpm
rpm -ivh python-pycparser-2.14-1.el7.noarch.rpm
rpm -ivh python-cffi-1.6.0-5.el7.x86_64.rpm
rpm -ivh python-enum34-1.0.4-1.el7.noarch.rpm
rpm -ivh python-idna-2.4-1.el7.noarch.rpm
rpm -ivh python-ipaddress-1.0.16-2.el7.noarch.rpm
rpm -ivh python2-pyasn1-0.1.9-7.el7.noarch.rpm
rpm -ivh python-backports-1.0-8.el7.x86_64.rpm
rpm -ivh python-backports-ssl_match_hostname-3.5.0.1-1.el7.noarch.rpm
rpm -ivh python-setuptools-0.9.8-7.el7.noarch.rpm
rpm -ivh python-six-1.9.0-2.el7.noarch.rpm
rpm -ivh python2-cryptography-1.7.2-2.el7.x86_64.rpm
rpm -ivh python-markupsafe-0.11-10.el7.x86_64.rpm
rpm -ivh python-babel-0.9.6-8.el7.noarch.rpm
rpm -ivh python-jinja2-2.7.2-4.el7.noarch.rpm

rpm -ivh sshpass-1.06-1.el7.x86_64.rpm
rpm -ivh python2-jmespath-0.9.0-3.el7.noarch.rpm
rpm -ivh python-httplib2-0.9.2-0.2.el7.noarch.rpm
rpm -ivh python-paramiko-2.1.1-9.el7.noarch.rpm
cd ..


echo ""
echo ""

tar -xf ansible-2.9.7.tar.gz
cd ansible-2.9.7 && python setup.py install

echo ""
echo ""

cd /opt/
mkdir -p /etc/ansible/roles
cp -p config/hosts /etc/ansible/
cp -p config/ansible.cfg /etc/ansible/

