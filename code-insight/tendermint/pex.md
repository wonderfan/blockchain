# Peer Exchange Protocol

1. The pex feature is offered by reactor.
2. It uses address book to store peers's network address.
3. There are two routines: seed mode and non-send-mode.
4. The switch has three kinds of peers: dialing, inbound, outbound.
5. The peer list on the switch is the node's current peers.
6. If there are some peers, the pex will sleep some times. The times is calculated by random algorithm.
7. The peer ensure algorithm is performed by time ticker.
   1. The dial numbers is computed.
   2. The max number is larger than present out number.
   3. The network address is selected.
   4. The dial action is finished by switch.
8. The switch has dialing list to maintain potential peer list.
9. If error happens in the dial procedure, the peer network address is removed from address book.
10. If the network address is in the list of persistent peers, the reconnection action is executed by go routine.
11. The transport and connection are critical components for finding the root cause.
12. If there are some errors in the send or receive process, the peer is stopped and reconnected if it is persistent peer.

## Lifecycle

1. When the node starts up, the persistent peers are dialed and generated peer list.
2. If errors happen in the sending and receiving action, there would be something wrong with connection.
3. The conditions for reconnection can be found. There should be some logic hole in the current codes.
4. There are two addresses for each peer. One is socket address, the other is network address.
5. When the node stopped, the peer is stopped and removed.
6. The reconnection policy is interval as first and backoff as second.
7. The reconnection constant variables are defined for interval and attempt times.
8. The reconnection method will try 20 times and each time is 5 seconds.
9. The transport term is created for peer and based on the raw network connection.
10. The transport interface has dial and accept method on the peer level.
11. 
