# Go Language

The object file data can be written into file by writer. There are two parameters. both of them are pointer type. The object file header is written into file firstly. There are symbols from builtin. The number of built-in symbols can be calculated. The name and abi can be acquired by index. The variable is initialized in the package init step. The builtin symboles are function name located in the runtime package. The information of function symbol contains function arguments, function identity, function flags, function location, function tree nodes.

The three dots can be used as variadic function parameters. In the array literal, the ... notations specifies a length equal to the number of elements in the literal. Three dots are used by the go command as a wildcard when describing package lists. 

The type and its content is specified so they must be matched. The program is organized by linked list. The element of linked list is the program structure. The program structure has the link context field. The as is refered to assembly code and instruction. 

## Trace Event

The trace file is opened for writing trace event. The tracer is put into the context. The tracer has file, string buffer and encoder fields. The trace data has the fields of events, frames and time span. The event has fields of name, phase, scope, time, during, process id, trace id, stack, argument, category.

The frame has the fields of name and its parent frame. The data model can be encoded and decoded in the format of json. 

The trace can be filtered by trace time. It includes heap allocation and garbage collection. It has thread statistics. The thread divides into system routines and user routine and how many threads are running. The threads are related to system call. It may be system call caused by system routine, or it is caused by user go routine. 

The frame node is tree like data structure. The frame chains are displayed at the same time. The routine has five states. The go routine have two categories. The basic routine information has state, name, trace event and mark event. 

## Syntax

Go is a general-purpose language designed with systems programming in mind. It is strongly typed and garbage-collected and has explicit support for concurrent programming. Programs are constructed from packages, whose properties allow efficient management of dependencies.

The syntax is compact and simple to parse, allowing for easy analysis by automatic tools such as integrated development environments.

Productions are expressions constructed from terms and the following operators, in increasing precedence. Tokens form the vocabulary of the Go language. There are four classes: identifiers, keywords, operators and punctuation, and literals. White space, formed from spaces (U+0020), horizontal tabs (U+0009), carriage returns (U+000D), and newlines (U+000A), is ignored except as it separates tokens that would otherwise combine into a single token. Also, a newline or end of file may trigger the insertion of a semicolon. While breaking the input into tokens, the next token is the longest sequence of characters that form a valid token.

A variable is a storage location for holding a value. The set of permissible values is determined by the variable's type.

A variable declaration or, for function parameters and results, the signature of a function declaration or function literal reserves storage for a named variable. Calling the built-in function new or taking the address of a composite literal allocates storage for a variable at run time. Such an anonymous variable is referred to via a (possibly implicit) pointer indirection.

The language predeclares certain type names. Others are introduced with type declarations or type parameter lists. Composite types—array, struct, pointer, function, interface, slice, map, and channel types—may be constructed using type literals.

Predeclared types, defined types, and type parameters are called named types. An alias denotes a named type if the type given in the alias declaration is a named type.

A pointer type denotes the set of all pointers to variables of a given type, called the base type of the pointer. The value of an uninitialized pointer is nil. A function type denotes the set of all functions with the same parameter and result types. The value of an uninitialized variable of function type is nil. An interface type defines a type set. A variable of interface type can store a value of any type that is in the type set of the interface. Such a type is said to implement the interface. The value of an uninitialized variable of interface type is nil. An interface type is specified by a list of interface elements. An interface element is either a method or a type element, where a type element is a union of one or more type terms. A type term is either a single type or a single underlying type.A map is an unordered group of elements of one type, called the element type, indexed by a set of unique keys of another type, called the key type. The value of an uninitialized map is nil.A channel provides a mechanism for concurrently executing functions to communicate by sending and receiving values of a specified element type. The value of an uninitialized channel is nil.A block is a possibly empty sequence of declarations and statements within matching brace brackets.A declaration binds a non-blank identifier to a constant, type, type parameter, variable, function, label, or package. Every identifier in a program must be declared. No identifier may be declared twice in the same block, and no identifier may be declared in both the file and package block.

A type declaration binds an identifier, the type name, to a type. Type declarations come in two forms: alias declarations and type definitions. A function declaration binds a function name(an identifier) to a function. For an operand ch whose core type is a channel, the value of the receive operation <-ch is the value received from the channel ch. The channel direction must permit receive operations, and the type of the receive operation is the element type of the channel. The expression blocks until a value is available. Receiving from a nil channel blocks forever. A receive operation on a closed channel can always proceed immediately, yielding the element type's zero value after any previously sent values have been received.

