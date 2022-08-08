export K8S_APISERVER="https://192.168.1.100:6443"
export K8S_NODE="k8s-worker0"
export K8S_TOKEN="eyJhbGciOiJSUzI1NiIsImtpZCI6IkpXNEpVMjhfUEl6NDB2Y2hERWhYd2Y1NW45amV1NDNOalJzT0NOWVFxTTgifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNjU5NjA4NjQ0LCJpYXQiOjE2NTk2MDUwNDQsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJvdm4ta3ViZXJuZXRlcyIsInNlcnZpY2VhY2NvdW50Ijp7Im5hbWUiOiJvdm4iLCJ1aWQiOiIxZTkyZjcwYy02ODg2LTQ4NDUtODhmNi0zZTAzZmMxZTBiNGUifX0sIm5iZiI6MTY1OTYwNTA0NCwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50Om92bi1rdWJlcm5ldGVzOm92biJ9.FBsltbJZCqhNg0wXCzT8-cJ7d-x2OcBz0h80lu7Qthn7wRPbkfoYSXmN2jHhOSBYBIJD6z5-ZU1T2fh8HoANEEIgt4JYa9lTQ2yYAtFPK55nP33sB_m8l0eo8CDsT7Uwf4eMGFenTqNX8qibuPkVqRi3EKWf4FQictMpAE5JrRYRCT5P8w2izpwBrvWrO7gFsqjRLwvbsmZvkcsntuSvGmKm5MiMXRHuLomVPvwn4PlKeTXjeta1rLvtc5UJZKJk3FqK_yTPhZlbNg4wsu-qTdb6CI5dzmcqGGBnG5wrrK86rK4ouK7I6JL0Q5rwDPNXOYWHMFt_iMZt3xOEhxMjvQ"
export K8S_CACERT="/home/core/work/ovn-kubernetes-virtio/dist/images/ca.crt"
export OVN_NET_CIDR="172.16.0.0/16"
export OVN_SVC_CIDR="10.96.0.0/16"
export DPU_IP="192.168.1.120"
# for external traffic to go through a different gateway than the default,
# add to the below: --gateway-nexthop=<next-hop-ip>
export OVN_GATEWAY_OPTS='--gateway-interface=enp8s0'
export OVNKUBE_NODE_MGMT_PORT_NETDEV=enp9s0 # The representor  of the VF that used for --ovnkube-node-mgmt-port-netdev in deployment on host
export OVN_DISABLE_PKT_MTU_CHECK=true
 
# Assume still in dist/images
# Modify container image name in scripts below in case it
# differs than ovn-daemonset
./run-ovn-dpu.sh
./run-ovnkube-node-dpu.sh
