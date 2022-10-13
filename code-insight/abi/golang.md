# Go Language

The object file data can be written into file by writer. There are two parameters. both of them are pointer type. The object file header is written into file firstly. There are symbols from builtin. The number of built-in symbols can be calculated. The name and abi can be acquired by index. The variable is initialized in the package init step. The builtin symboles are function name located in the runtime package. The information of function symbol contains function arguments, function identity, function flags, function location, function tree nodes.

The three dots can be used as variadic function parameters. In the array literal, the ... notations specifies a length equal to the number of elements in the literal. Three dots are used by the go command as a wildcard when describing package lists. 

The type and its content is specified so they must be matched. The program is organized by linked list. The element of linked list is the program structure. The program structure has the link context field. The as is refered to assembly code and instruction. 

## Trace Event

The trace file is opened for writing trace event. The tracer is put into the context. The tracer has file, string buffer and encoder fields. The trace data has the fields of events, frames and time span. The event has fields of name, phase, scope, time, during, process id, trace id, stack, argument, category.

The frame has the fields of name and its parent frame. The data model can be encoded and decoded in the format of json. 

The trace can be filtered by trace time. It includes heap allocation and garbage collection. It has thread statistics. The thread divides into system routines and user routine and how many threads are running. The threads are related to system call. It may be system call caused by system routine, or it is caused by user go routine. 

The frame node is tree like data structure. The frame chains are displayed at the same time. The routine has five states. The go routine have two categories. The basic routine information has state, name, trace event and mark event. 

