# Router 

The map is used to store the router data. The route is composed  of route name and route handler. The router is divided into two kinds of types. One type is query router. The type in the route  of query router is querier. The data type is also map type.

The querier data type is function type in essence. The concrete  implementation provides route match method. The input parameter is path and the output result is query type. The message service handler is also function type. The service handler is matched by the message type URL. 

The launch class has the static methods which can be easily invoked. The main body of start method is to create another class instance and run its start method with state hex value. The actions are forwarded to the same instance. 
