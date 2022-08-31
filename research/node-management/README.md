# Node Management

## Node Type

- common node
- consensus node

## Nodes

### CitaChain

1. The node management is implemented by smart contract.
2. The contract is deployed in the genesis block.
3. The super admin data is initialized in the network bootstrap.
4. The node data is published and persisted into chain by smart contract.


### BCOS

#### Group

1. The group can be extended dynamically.
2. One chain can have multiple groups.
3. multiple institutions and multiple groups consortium chain.
4. Precompiled contract or system contracts are used for permission management.
5. The admission of network access is managed through smart contract.
6. The node is allowed by certificate authority.
7. The p2p connection is on the basis of group.


### XuperChain

#### ParaChain and Group

1. ParaChain can be extensible when business expands.
2. ParaChain has its own data.
3. There is main chain.
4. The data can be shared and accessed if the parachain is in the same group.
5. The group mechanism is achieved by whitelist and carried out in the network layer.
6. The group is implemented by smart contract.
7. There is only one group contract.
8. XuperChain is a network and composed of master chain and business-oriented chains.

#### CA

1. The CA server is introduced.
2. The certificates are issued in the same way.
3. The node is authoried by the CA server.

### ChainMaker

1. One network and multiple chains.
2. The account can be either private/public key pair or certificate based.

### Group

### CitaChain

1. The accounts can be grouped by group name.
2. Permissions can be granted to account and group.
3. This mechanism is similar to linux user management.
