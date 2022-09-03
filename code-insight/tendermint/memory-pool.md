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
13. The dial attemps are recorded and the last dial timestamp is known.
14. There is one setting item named man peer dial period which is used to wait during the redialing.
15. The first attemps and sequent attemps are treated differently because first attemp is triggered right away, but following attempts will be delayed for some times.
16. The connection reconnection and pex redial process have its backoff algorithm.
17. The pex has proactive and passive dialing modes. The proactive mode starts from address book. The go routine is used to dial the peer addess from address book with some strategies. When the pex reactor receives new address from peer node, it will also make dialing to add the peer.
18. The channel table can used to depict the channel name and its number.
19. The memory pool is created and hooked in the node initialization.
20. Both the memory pool and memory pool reactor are created at the same time.

## Interface and Implemention

1. The transactions are stored into memory pool and in the specific order.
2. The transaction is checked before adding into memory pool.
3. The concurrent list structure is the data structure which is used to store valid transactions.
4. There is a question that how many concurrent accesses are supported.
5. 