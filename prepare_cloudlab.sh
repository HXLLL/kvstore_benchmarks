git clone https://github.com/efficient/rdma_bench
echo 8192 > /sys/devices/system/node/node0/hugepages/hugepages-2048kB/nr_hugepages
bash -c "echo kernel.shmmax = 9223372036854775807 >> /etc/sysctl.conf"
bash -c "echo kernel.shmall = 1152921504606846720 >> /etc/sysctl.conf"
sysctl -p /etc/sysctl.conf
apt update
apt install memcached libnuma-dev
tar xvf MLNX_OFED_LINUX-4.9-3.1.5.0-ubuntu20.04-x86_64.tgz
cd MLNX_OFED_LINUX-4.9-3.1.5.0-ubuntu20.04-x86_64
./mlnxofedinstall --force
