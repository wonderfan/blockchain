# JSON RPC

The service is provided by jsonrpc server and  we can use rpc client to consume them. As for client side, we can build SDK by
leveraging client to send http requests.

The transaction can be sent and processed via GPRC protocol. The message and service are defined by protocol buffer file. The 
gRPC server is booted up with network listener. The client can dial network address to setup http connection and send transaction
request.


