# Modidy Genesis/Config Block

## Get Genesis Block

1. examine the orderer yaml file and find the clues for genesis block

```
  - env:
    - name: ORDERER_GENERAL_GENESISFILE
      value: /certs/genesis/orderer.block
    - name: FABRIC_CFG_PATH
      value: /certs/
    envFrom:
    - configMapRef:
        name: orderingservice6node1-env
```

2. fectch the block from configMap

```
oc get configmap orderingservice6node1-env > genesis.block
```

## Update Genesis Block

1. translate the block to json format

```
configtxlator proto_decode --input genesis.block --type common.Block --output genesis.json
```

2. find orderer endpoint fragments and modify it correctly

```
    "Endpoints": {
        "mod_policy": "Admins",
        "value": {
            "addresses": [
            "orderer.example.com:7050"
            ]
        },
        "version": "0"
    }
```

```
cp genesis.json modified-genesis.json
```

3. convert genesis block from json to protocol buffer format and verify modified content

```
cp genesis.json modified-genesis.json
configtxlator proto_encode --type common.Block --input modified-genesis.json --output modified-genesis.block
configtxgen -inspectBlock modified-genesis.block
configtxgen -inspectBlock modified-genesis.block | grep addresses
```

4. update the genesis block in openshift

```
# backup previous configmap
oc get configmap correct-name > cm.yaml.backup
# use edit to rename as backup 
oc edit correct-name # 

# create new configmap
 oc create configmap correct-name --from-file modified-genesis.block
```

## Experiments

```
git clone -b v2.1.1 https://github.com/hyperledger/fabric.git
cd fabric/
./scripts/bootstrap.sh -h
 cd fabric-samples/test-network
 /network.sh up
 ll system-genesis-block
```
