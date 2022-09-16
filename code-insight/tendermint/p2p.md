# P2P Network

The transport layer is one layer in the network communication stack. There are different transport protocol in this transport layer. To suppor mutltiple transport protocol, the multiple address is introduced so that each protocol has one address format. 

## Switch

The switch is used to connect with different devices. The router is used to forward message packet through the conntection bridged by switch.

The switch connects different reactors with peers through channel mechanism. The reactor can register into channel. The different channel represents different data. The channel is used to divide messages into different types. One type message has its own channel.

## Reactor

The reactor is one type and can associate with more than one channel. The reactor is also service type and start up along with node startup. There is only one reactor service instance in the whole software. The switch is the most important object which is linked with reactor. The request from switch will be dispatched into reactor. For example, the reactors associated with switch will be iteracted to execute its `addPeer` method when new peer arrives at switch.

## Transport

The interface gives us the picture of transport. The methods in the interface are transport's behaviors. Its behaviors stand for its abilities. It means what the transport can do. The main capability of transport is to connect with other peer through dial and accept the peers's connection via accpet method.

The peers connect with eath other with the support of transport. The object creation pattern can be summaried and marked as good practice. When you face the same problem, you can adopt the same style to solve it. The select statement is the case statement for channel type. Once one channel is ready, the case statement is executed. The network address is utilized to create the connection. The timeout is also considered when creating the connection. Once the timeout time period is reached, the connection is cancelled and timeout error is thrown and notified. 

The tcp connection is raw connection. It is created by the net package. The tcp connection is upgraded into secure connection by key exchange protocol. The message dispatch methods are put into peer object. There are two methods on the `Peer` interface. The `Send` method is synchronous way and `TrySend` method is asynchronous mechanism. The `MConnection` is created to support multiple channels. 

## Multiple connection

To support the multiplex connnection, some aspects of dependent packages should be introduced. They are buffer reader and writer as well as flow monitor.


## Current flow

### Node data structure

The node id is composed of name and public key. The node private id has additional private key. As a result, the node id mainly has three properties. The node can send greeting message to each other. The signed greeting message adds the signature as its extra field. The target object can be regarded as output parameter, therefore function type can be used to get it. Duringt the node instance construction, the input elements like node key, validator key, node proxy client, genesis document, database shoud be reay and provided. The provide mode is design pattern and code practice. The option type is function type in essence and the input parameter is node. The option function type can decorate node optionally. Each reator has its own interested channel. The reactors are grouped by map type. The node's switch can absorb and process the reactor. The node's transport can manage the channel and receive the reactor channel to its internal data model. The node info can manage the channel and reactor. The node information can be assured to be p2p node information. The node's state can be also from the state provider. The state provider type gives the state data which the node needs. The node is a big object. Dividing its structure into different parts should be considered. The state store and block store are two different kinds of storage. The node's client handshakes with ABCI application with state support. During the handshake step, the query is executed to get application state and apply the lagged blocks. The state between node and application is promoted into same level. The memory pool and memory reactor should be examined carefully and know its orientation and usage. The connection can be filered by configuration and filter function. The filters can be also in the abic application side. The node sends one filter request to get the node list. 

The transport varaible is dependent variale for switch object. All kinds of reactors are registed into switch object. The transport and switch instance are from p2p package.

The state synchronizing service can get the latest state. The latest state are handled by state store and block store. The node state are pushed into latest level. The state synchronizing mode is changed to be fast synchronizing.

The state synchronizing procedure needs state provider. The state synchronizing service fetches the state from the state provider. The index service is started to index the transaction and block data. The one problem is how the event bus works and how to use event bus.

The main content of `node.go` file is node structure definition, node factory function and node start function. 

### node startup

When the node starts, the switch instance is created and started. The transport instance is bound to switch instance. The initial peer set is created from the peer configuration. The peer set is updated through the peer exchange protocol. When the messages are generated in the transaction flow, the message is sent to other peers via transport instance. The node will receive this message and dispatch to the rector by the channel. 


## How to embed zone concept into current implementation?

### Node network address

1. The network address is composed of node identity, node ip and port.
2. The network address can be expressed as string format.
3. The network structure type and string type are converted.
4. The ip address can be looked up by host name.
5. There is aslo protocol buffer format for network address.
6. The ip address have several kinds of formats and styles.

The io is in the manner of async mode. Seven message type is defined by enum data type. The peer type can be required or optional. The public key is used to stand for the node's identity. The node has node id, node type fields. The node table is employed to store the node list. The node table has add and remove methods to manage node list. 

The system contract is used to extend the chain features and capabilities. The node information is the data structure defined to describenode's attributes and actions. The group is the data model which has group name and chain id. The group has the collection of nodes. The group concept is introduced to expand the multiple groups.

The number of node connection is certain, therefore, there should be one policy that guide how the connection is discarded when new connection is coming. The private key is generated firstly. The certificate is issued secondly.

The node can be discovered and connected automatically. The active node can be the seed node. The network discovery mechnism can support large and complex network. The link layer can be NAT and proxy. The node identity is verified by the tls connection which uses the certificate. The tls certficate is unique per node. The node info definition contains the certificate field. The whole archicture divides into three layers: application layer, management layer and secure transport layer. 

The public key can be encoded into x509 certificate extension. There are some configuration items for memory pool. They are broadcast, size, max transaction bytes and max bytes per transaction. The transactions are reaped from the memory pool. The total transactions are constrained by the max bytes and max gas. The memory pool reap max bytes method is called when new block is proposaled. There is one block configuration on the consensus parameters. The block has max bytes and max gas two items. The consensus parameters are hardcoded in the source code file. The block max bytes is 21MB. If we know the transaction byte, we can calculate the number of total transactions. 

The connection has the max packet message size restriction. If the connection monitor can collect the message packet, the connection willpause some time if the message packet bytes are more than the allowed value. The max packet size is calculated from the max packet payload size. The default value is 1024 bytes and equals to 1KB. As a result, the total block bytes can reduce and increase the max packet message size. 

The picture generated from logic analysis is that the connection will sleep for some times if the message bytes is more than the default message size. The connection flow control is on the basis of max packet size and send rate. The question which flow rate try to solve is that the stream is limited by rate. Given the sample period, the total bytes can be monitored and the flow rate can be calculated.
