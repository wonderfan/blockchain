# Sui

## White Paper

```mermaid
mindmap
    root)sui blockchain(
        move language
            type system
            data model
            global state
                pooled object
                    struct data value
                    package code value
            package
                module
                    struct type declaration
                        generic type
                    function declaration
                        parameter type
                        return type
                        function body
                            move instructions
                    initialize function
                        run at published time
            bytecode
                verifier
            object
                global unique identifier
                ownership
        transaction
            pubblish package
            call module function
            arguments
                manipulated object
                package version
                module function
            structure
                digest
                epoch ID
                inputs
                payment
                valid
                execute
        byzantine broadcast protocol
        check point governance
        parallel execution
        native asset for gas and staking
```

## Move Object

```mermaid
mindmap
    root((move docs))
        move object
            package
                bytecode module
                    module name
                    module body
                publishing unit
                package dependency                
            object
                struct data
                    primitive fields
            metadata
                global unique id
                version
                transaction digest
                owner
                    address
                    another object
                    immutable
                    shared object
```

## Source Codes

```mermaid
classDiagram
    class `Struct Type in Move ` {
        This explains how move struct are expressed in Rust language
        (1): The struct type has several fields and it is vector type.
        (2): The struct type has its ability set.
        (3): If it is generic type, it has parameter types.
        (4): Its name acts as its identifier.
        (5): The struct type belongs to one module and has module identifier to reflect the relationship.
        (6): The index is used to decribe its location in the module.
    }
    
    class `The primitive types in Move` {
        The collection of primitive types
        (1): bool type
        (2): unsigned 8 bits number
        (3): unsiged 64 bits number
        (4): unsigned 128 bits number
        (5): address type
        (6): signer type
        (7): struct type
        (8): reference type
        (9): mutable reference type
    }
```
