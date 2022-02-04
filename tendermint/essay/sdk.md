# ABIC SDK

## Client

The client is provided by the rpc package and wraped with additional methods and fields. Client is the bridge between rpc client and command line. It fills the gap for easy usage.

The client can send both common rpc request and gRPC request. The capability is offered by the context object. Regarding to gRPC request, the context should implement gRPC client connection interface and comply with gRPC package requirement.

The context object contains a lot of fields in its type definition. The fields can be categoried into end user, key management, encoding, signature and node.
