
curl localhost:8081 --data '{"jsonrpc":"2.0","method": "node_getNodeStates", "namespace": "global", "id": 1}'
curl localhost:8081 --data '{"jsonrpc":"2.0","method": "block_latestBlock", "namespace": "global", "id": 1}'
curl localhost:8081 --data '{"jsonrpc":"2.0","method": "radar_registerContract", "namespace": "global", "id": 1}'
curl localhost:8081 --data '{"jsonrpc":"2.0","method": "config_getConfig", "namespace": "global", "id": 1}'
curl localhost:8081 --data '{"jsonrpc":"2.0","method": "node_getNodes", "namespace": "global", "id": 1}'

docker pull hyperchaincn/solo:v1.0.0
docker run --name chain -d -p 8081:8081 -p 10001:10001 hyperchaincn/solo:v1.0.0
docker run --name chain -d -p 8081:8081 -p 10001:10001 hyperchaincn/solo:v2.0.0

mvn -Dtest=EVMTypeTest test
go test -run TestRPC_WebSocketClient_BlockEvent .
go test rpc/websocket_test.go

mvn exec:java -Dexec.mainClass="cn.hyperchain.demo.Demo1"
java -cp "target/sdkdemo-1.2.jar:libs/jdk_ultimate_4.1.13.jar" cn.hyperchain.demo.Demo1

git clone -b cmb http://fanjiahe:aq1sw2de@gitlab.ziggurat.cn/Zeus-Network/zeus-sdk.git
git clone http://fanjiahe:aq1sw2de@gitlab.ziggurat.cn/Zeus-Network/zeus-db.git
git clone http://fanjiahe:aq1sw2de@gitlab.ziggurat.cn/Zeus-Network/zeus-amino.git
git clone http://fanjiahe:aq1sw2de@gitlab.ziggurat.cn/Zeus-Network/zeus-crypto.git

sdk install java 8.0.292-zulu
sdk use java 8.0.292-zulu
sdk default java 8.0.292-zulu

export CGO_CFLAGS="-I$JAVA_HOME/include -I$JAVA_HOME/include/linux"
export CGO_LDFLAGS="-L$JAVA_HOME/jre/lib/amd64/server/ -ljvm -Wl,-rpath,$JAVA_HOME/jre/lib/amd64/server/"

zeus init test --chain-id="test" -v=true --home $PWD/node0
zeus start --home $PWD/node0 --p2p.laddr 'tcp://0.0.0.0:26656' --rpc.laddr 'tcp://127.0.0.1:26657' --address 'tcp://0.0.0.0:26658'
zeus init test --chain-id="test" -v=true --home $PWD/node1

kubelet  --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --cgroup-driver=cgroupfs --network-plugin=cni --pod-infra-container-image=k8s.gcr.io/pause:3.1

kubeadm init  --pod-network-cidr=192.168.0.0/16
kubeadm reset
kubeadm init --kubernetes-version v1.11.10 -v=4 --pod-network-cidr=10.244.14.0/16 

journalctl -xeu kubelet | tail -n 20

kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --cgroup-driver=cgroupfs --network-plugin=cni --pod-infra-container-image=k8s.gcr.io/pause:3.1"

kubelet --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --cgroup-driver=cgroupfs --pod-infra-container-image=k8s.gcr.io/pause:3.1

kubectl --kubeconfig=/etc/kubernetes/admin.conf get pod --all-namespaces 
kubectl --kubeconfig=/etc/kubernetes/admin.conf create deployment nginx --image=nginx

https://github.com/SUSE/skuba
https://software.opensuse.org/download/package?package=kubernetes&project=devel%3Akubic

ls -l /sys/fs/cgroup
wget https://download.docker.com/linux/static/stable/x86_64/docker-17.03.0-ce.tgz
wget https://download.docker.com/linux/static/stable/x86_64/docker-18.06.3-ce.tgz

tar xzvf /path/to/docker-17.03.0-ce.tgz
sudo cp docker/* /usr/bin/
sudo dockerd &
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
sudo rpm -Uvh minikube-latest.x86_64.rpm
rpm -evh minikube

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-1.8.0-0.x86_64.rpm
sudo rpm -Uvh minikube-1.8.0-0.x86_64.rpm

minikube start --driver docker --kubernetes-version v1.11.3 -v=4
minikube start --driver=none --kubernetes-version v1.11.10 -v=4

docker pull mirrorgooglecontainers/kube-apiserver:v1.14.1
docker tag kube-apiserver:v1.14.1 k8s.gcr.io/kube-apiserver:v1.14.1

curl -LO https://dl.k8s.io/release/v1.11.3/bin/linux/amd64/kubectl
curl -LO https://dl.k8s.io/release/v1.11.3/bin/linux/amd64/kubeadm

curl -LO https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.18.0/crictl-v1.18.0-linux-amd64.tar.gz

scp kubeadm kubectl kubelet  root@39.99.34.160:/root
stat /var/run/docker.sock

crictl --runtime-endpoint "unix:///var/run/docker/libcontainerd/docker-containerd.sock"

zypper ref && zypper dup -y
zypper in ebtables 
zypper in socat 

cat /etc/kubernetes/kubelet.conf
less /var/lib/kubelet/kubeadm-flags.env

git clone -b v1.18.0 https://gitee.com/wonderfan/minikube.git
