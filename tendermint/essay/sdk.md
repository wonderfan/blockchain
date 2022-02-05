# ABIC SDK

## Client

The client is provided by the rpc package and wraped with additional methods and fields. Client is the bridge between rpc client and command line. It fills the gap for easy usage.

The client can send both common rpc request and gRPC request. The capability is offered by the context object. Regarding to gRPC request, the context should implement gRPC client connection interface and comply with gRPC package requirement.

The context object contains a lot of fields in its type definition. The fields can be categoried into end user, key management, encoding, signature and node. The context defines with style methods to decorate the field.

The command flags are described by constant variables. They can be used with flags and flagset.

The minter and minting parameters are ready before minting the coins. This process is carried out in the block begin hook point. 

The sdk context is the first parameter in the keeper's method and the logger can be fetched from context object.

## Mint

The minter and minting parameters can be set and get. The bank module will mint the coins upon the minter and parameters information.
