# Polkadot SDK

The SDK has the whole components together. It can be used to build blockchain network and interoperate with each other. It also has the default implementation for Polkadot network. The state is the onchain data. The state is altered by executing the transactions in the block. 

The chain specification consists of the initial state and configurable parameters for network and logic controls. Each pallets have its own initial state.  The host functions are the contract interface between the node and wasm instance. The wasm instance provides the runtime environment and execute the state transition function. The wasm should use the host functions to communicate with the node service.


