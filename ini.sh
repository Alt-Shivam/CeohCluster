git clone --single-branch --branch v1.8.6 https://github.com/rook/rook.git

cd CephCluster/

cd rook/deploy/examples


rm -R cluster.yaml

kubectl create -f crds.yaml -f common.yaml -f operator.yaml

sleep 300




kubectl create -f ../../../cluster.yaml


sleep 300

cd csi/rbd/

kubectl create -f storageclass.yaml



echo "please run ...........   kubectl exec -it rook-ceph-tools-55ddbc9f78-2dg9b -n rook-ceph ceph status"



