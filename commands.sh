 echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/trusted.gpg.d/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

 curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker.gpg

kubeadm join 192.168.0.21:6443 --token ${TOKEN} \
        --discovery-token-ca-cert-hash ${HASH}

kubeadm --cri-socket unix:///var/run/containerd/containerd.sock --cluster-cidr=10.200.0.0/16

# install flannel

kubectl patch node thinkcentre23 -p '{"spec":{"podCIDR":"10.200.0.0/16"}}'

