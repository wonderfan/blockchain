# JSON RPC

The service is provided by jsonrpc server and  we can use rpc client to consume them. As for client side, we can build SDK by
leveraging client to send http requests.

The transaction can be sent and processed via GPRC protocol. The message and service are defined by protocol buffer file. The 
gRPC server is booted up with network listener. The client can dial network address to setup http connection and send transaction
request.

The search function is provided to service the search request. There are six input parameters and the out parameter is search result. The transaction indexer is accessed by field operator. The query is parsed and passed into indexer's search method. If errors happen in the search process, the empty result and error message is returned as the search result. After the result is fetched, the result is sorted and paged.


