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
5. How to evaluate the cache design and implantation.
6. The function type is used to decorate the concurrent list.
7. If the cache size is configured in the file, the cache instance is initialized.
8. The pre/post pattern is adopted for transaction validition.
9. Why does the memory pool also use write ahead log and what is its purpose?
10. If the process wants to execute checkTx method, it should acquire the lock firstly.
11. Before the transaction is validated, the transaction will write into a log file.
12. The memory pool is full when either size or bytes are matched.
13. The new form is defined to store transaction in the memory pool.
14. The memory transaction cache has its own lock.
15. The transaction in the log can be used for debug and analyzed.
16. The transaction in the form of bytes will be written into write ahead log.
17. The load test is performed, all parts should be ready for concurrent process.
18. If the prometheus is enabled, the metrics data will write into prometheus metrics collector.
