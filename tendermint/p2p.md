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

