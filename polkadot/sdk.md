# Polkadot SDK

The SDK has the whole components together. It can be used to build blockchain network and interoperate with each other. It also has the default implementation for Polkadot network. The state is the onchain data. The state is altered by executing the transactions in the block. 

The chain specification consists of the initial state and configurable parameters for network and logic controls. Each pallets have its own initial state.  The host functions are the contract interface between the node and wasm instance. The wasm instance provides the runtime environment and execute the state transition function. The wasm should use the host functions to communicate with the node service.

The state is equal to the onchain data storage. It is in the form of ledger. The host is part of the whole network.The whole network is bootstrapped by the node software program. The offchain operations are conducted out of the consensus mechanism. The wasm instance shall query the data through the host functions. The pallets are the unit of modules in the whole stack. It is used to extend the functionalities of current network.

The option type is one example of defensive programming. The instance of option type is either some or none. It gives the detailed value. 

The transition functions are stored in the wasm runtime. They are part of the whole state. The runtime is determined by its version. The runtime shall execute the block and update the states. The updated states are persisted into ledger through the host functions. The base layer and pallet framework are written as generic framework. When designing the trait, the type parameter or generic type is usually used. 


