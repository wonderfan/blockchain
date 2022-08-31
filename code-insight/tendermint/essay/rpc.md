# JSON RPC

The service is provided by jsonrpc server and  we can use rpc client to consume them. As for client side, we can build SDK by
leveraging client to send http requests.

The transaction can be sent and processed via GPRC protocol. The message and service are defined by protocol buffer file. The 
gRPC server is booted up with network listener. The client can dial network address to setup http connection and send transaction
request.

The search function is provided to service the search request. There are six input parameters and the out parameter is search result. The transaction indexer is accessed by field operator. The query is parsed and passed into indexer's search method. If errors happen in the search process, the empty result and error message is returned as the search result. After the result is fetched, the result is sorted and paged.

There are two input parameters for the owner query method. First parameter is the context and second one is request object. The function type can also be the argument type. The  slice type is the function's return type. The query result can be appended into slice type. The special kind of data are stored by using prefix data store. The prefix store is a mechanism to store the data with prefix and key as final key. The prefix store does not create a new store. It just leverages  the parent store to store the data. The prefix store structure has one field name prefix and key method to construct the final key. 
