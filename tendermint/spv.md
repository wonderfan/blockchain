# Light Client

The trusted header is provided to validate the following header and transaction. The trusted header has trusting period and expired after some time.

The header is trusted after it is verified by validator set's signatures.

The trusted data is stored into database which can be used to verify the upcoming block and adjacent header. 

The provider can provide the trusted data. The proxy can delegate the rpc service from node.The light client can send request to node program through proxy service.

