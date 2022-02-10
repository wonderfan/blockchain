# Protocol Buffer

The protocol buffer message is used for network packet transmission. The property struct type is constructed to describe one field in the message body. The message type can be parsed by reflect package. The message name can be extracted from the message type. 

The message should be be processed by handler. The mapping between message and handler is made by message url. The message url is generated from message uniquely and hander method has one same attribute and value. The message is also registered before its usage.

The key problem is how to map the replationship between message and action. The role can be added in the dynamic mode. The action can also be added in the dynamic manner. The user role can be found by the user data. 

The function's operations are described by bulleted-lists and visualized by diagrams. The function specification is breaked down into serverl files and has the same file structures. The main content are concept, state, state transimition, message, block hooks, module hooks, events, params, future improvements, appendix.


