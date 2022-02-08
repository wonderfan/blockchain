# Smart Contract

## Java Engine

The jvm can be started by start function. The start function uses one independent go routine to run the jvm bootstrap logic.In the go routine, one operating system's thread is allocated to the go routine. The following code statement utilizes cgo to invoke c code to start jvm. The jvm is started by two steps. One step is to create jvm instance, the second step is to start the jvm. The start result is returned for further process or notification. 

When contract transaction is sent from client, the valid transaction will be included in the block. The transaction will be executed during the block is applied. The transaction will lead the state transition in the contract engine side. The final state is stored in the module storage and contributed to the whole commit id and hash.

There are three constructor functions in the source code file. The code base, database and state tree are its associated fields. These fields are created by the help of configuration.

The message is the input parameter for all kinds of functions. The state tree is the tree storage for whole state. The state slot is only segment state. It is only one part of the whole state.

## State

The contract transaction is handled by sandbox which provides closed environment for transaction processing. There are two kinds of sandboxes. One is regular sandbox and the other is system sandbox for system contract. The input parameters are message, state slot and contract class. The reflection is used to get target method from smart contract class. The state is put into the context object and placed as the first parameter for the contract method.
