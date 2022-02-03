# Node software

These are multiple steps before the node starts up. During node bootstraping period, the node handshakes with abic application.
The main purpose of handshake is to synchronize the state with abic application. The node's state variables are on the same page with abic application.

There are three blockchain versions and all of them depend on blockchain state, block store and block executor. The node program runs several go routines and each go routine can interact with abci application. The abci application can provide data for node routine as well as processing requests from go routines.


