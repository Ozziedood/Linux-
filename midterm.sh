touch "Osvaldo Perez"

mkdir -p /var/public/sales/data
mkdir -p /var/public/sales/projects
mkdir -p /var/public/techs/data
mkdir -p /var/public/techs/projects
mkdir -p /var/public/devops/data
mkdir -p /var/public/devops/projects

groupadd sales
groupadd techs
groupadd devops
groupadd looneytunes

chmod -R 770 /var/public/sales
chgrp -R sales /var/public/sales
chmod -R 770 /var/public/techs
chgrp -R techs /var/public/techs
chmod -R 770 /var/public/devops
chgrp -R devops /var/public/devops

cp -r /etc/skel /etc/skel-sales
cp -r /etc/skel /etc/skel-techs
cp -r /etc/skel /etc/skel-devops

echo "function ipconfig(){" >> /etc/skel-sales/.bashrc
echo "ip addr | grep -v inet6 | grep -v 127.0.0.1 | awk'{print\"IP Address:\"$2}'" >> /etc/skel-sales/.bashrc
echo "ip route | grep default | awk'{print\"Default Gateway:\"$3}'" >> /etc/skel-sales/.bashrc
echo "}" >> /etc/skel-sales/.bashrc

printf "phrase='That\'s All Folks'\nexport phrase" >> /etc/skel-techs/.bash_profile

mkdir -p /home/SALES
mkdir -p /home/TECHS
mkdir -p /home/DEVOPS


chgrp -R sales /home/SALES
useradd -c "Bugs Bunny" -g sales -G looneytunes -m -d /home/SALES/bbunny -k /etc/skel-sales bbunny
echo Pa11word | passwd --stdin bbunny

useradd -c "Tasmanian Devil" -g sales -G looneytunes -m -d /home/SALES/tdevil -k /etc/skel-sales tdevil
echo Pa11word | passwd --stdin tdevil

useradd -c "Marvin the Martian" -g sales -G looneytunes -m -d /home/SALES/mmartian -k /etc/skel-sales mmartian
echo Pa11word | passwd --stdin mmartian

useradd -c "Sylvester" -g sales -G looneytunes -m -d /home/SALES/sylvester -k /etc/skel-sales sylvester
echo Pa11word | passwd --stdin sylvester

chgrp -R techs /home/TECHS
useradd -c "Yosemite Sam" -g techs -G looneytunes -m -d /home/TECHS/ysam -k /etc/skel-techs ysam
echo Pa11word | passwd --stdin ysam

useradd -c "Speedy Gonzales" -g techs -G looneytunes -m -d /home/TECHS/sgonzales -k /etc/skel-techs sgonzales
echo Pa11word | passwd --stdin sgonzales

useradd -c "Pepe Le Pew" -g techs -G looneytunes -m -d /home/TECHS/ppew -k /etc/skel-techs ppew
echo Pa11word | passwd --stdin ppew

useradd -c "Wile E. Coyote" -g techs -G looneytunes -m -d /home/TECHS/wcoyote -k /etc/skel-techs wcoyote
echo Pa11word | passwd --stdin wcoyote

chgrp -R devops /home/DEVOPS
useradd -c "Foghorn Leghorn" -g devops -G looneytunes -m -d /home/DEVOPS/fleghorn -k /etc/skel-devops fleghorn
echo Pa11word | passwd --stdin fleghorn

useradd -c "Elmer Fudd" -g devops -G looneytunes -m -d /home/DEVOPS/efudd -k /etc/skel-devops efudd
echo Pa11word | passwd --stdin efudd

useradd -c "Tweety" -g devops -G looneytunes -m -d /home/DEVOPS/tweety -k /etc/skel-devops tweety
echo Pa11word | passwd --stdin tweety

useradd -c "Porky Pig" -g devops -G looneytunes -m -d /home/DEVOPS/ppig -k /etc/skel-devops ppig
echo Pa11word | passwd --stdin ppig




