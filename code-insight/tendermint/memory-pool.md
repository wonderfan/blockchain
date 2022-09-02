# Memory Pool

## Reactor.

1. If the memory pool knows the peer, it can send the transactions to the peer by peer's send method.
2. The for loop is used to broadcast the transactions to the target peer.
3. The peer object has state field that represent its state data.
4. The transaction message is protocol buffer format and style.
5. The transaction message can hold one transaction and multiple transactions.