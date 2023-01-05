sudo rm -f /etc/openvswitch/*
sudo rm -f /var/lib/openvswitch/*
sudo service openvswitch-switch restart

sudo modprobe vport_geneve
for bridge in `ovs_vsctl list-br`; do
                ovs_vsctl del-br $bridge
done

sudo ovs-vsctl add-br brext
sudo ovs-vsctl add-port brext enp26s0f0
sudo ovs-vsctl add-port brext ext
sudo ifconfig enp26s0f0 up
sudo ifconfig enp26s0f1 up
sudo ifconfig enp26s0f2 up
