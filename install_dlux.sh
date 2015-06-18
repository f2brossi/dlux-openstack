apt-get update
apt-get install -y maven git openjdk-7-jre openjdk-7-jdk unzip
wget https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.2.1-Helium-SR1/distribution-karaf-0.2.1-Helium-SR1.tar.gz
tar xf distribution-karaf-0.2.1-Helium-SR1.tar.gz
export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
##Add to ~/.bashrc for persistence through a reboot##
echo "export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64" >> ~/.bashrc
