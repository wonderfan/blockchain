# Smart Contract

## Java Engine

The jvm can be started by start function. The start function uses one independent go routine to run the jvm bootstrap logic.In the go routine, one operating system's thread is allocated to the go routine. The following code statement utilizes cgo to invoke c code to start jvm. The jvm is started by two steps. One step is to create jvm instance, the second step is to start the jvm. The start result is returned for further process or notification. 

When contract transaction is sent from client, the valid transaction will be included in the block. The transaction will be executed during the block is applied. The transaction will lead the state transition in the contract engine side. The final state is stored in the module storage and contributed to the whole commit id and hash.


