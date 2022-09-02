# Memory Pool

## Reactor.

1. If the memory pool knows the peer, it can send the transactions to the peer by peer's send method.
2. The for loop is used to broadcast the transactions to the target peer.
3. The peer object has state field that represent its state data.
4. The transaction message is protocol buffer format and style.
5. The transaction message can hold one transaction and multiple transactions.
6. When the transaction is received from the pool reactor, the node will call memory pool's checkTx method to validate it.
7. The memory pool is the layer between RPC and consensus engine.
8. The memory pool provides transaction check functionality. If passing the check process, the transaction will be added into the memory pool.
9. The address book is created in the procedure of node bootstrap. The our address comes from configuration file.
10. The address book is set on the switch instance.
11. The address from p2p section is different from the persistent peer setting.
12. The pex is constructed and added into switch instance as its dependent field.