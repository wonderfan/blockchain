# Protocol Buffer

The protocol buffer message is used for network packet transmission. The property struct type is constructed to describe one field in the message body. The message type can be parsed by reflect package. The message name can be extracted from the message type. 

The message should be be processed by handler. The mapping between message and handler is made by message url. The message url is generated from message uniquely and hander method has one same attribute and value. The message is also registered before its usage.
