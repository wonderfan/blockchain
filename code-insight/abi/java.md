# ABI in Java Contract

## Compiler

The compiler class is provoded to compile the class. The input parameter for the main method is jar file. There are two arguments for the main method. One is the jar file path, the other is version. The version is refered to abi version number. After the jar file is compiled, the output is written into new file. The class reader and writer from asm package are used to read the byte code form. The callable and initializable methods are annotated and gathered from the class. The method name and its parameter type can be collected for ABI information. The method visitor is used to process the method. With the assistance of method visitor, the method can be validated and method data can be extracted from the method signature.

The visitor can be applied into Java class. The visitor can be class level, field level or method level. The jvm can be modified and changed. New elements can be added into the source code. Rigster, stack and thread stuff are all aspects of architecture consideration. The assembler is created to handle the assemble code stuff. The compiler is constructed to process the constant, variables and operation codes. 

The runtime is the instructions for different type operations. The code generation is the final step of compilation procedure. It includes compile, assemble, link, runtime and intermediate representation. The heap is memory area and memory allocation. The system is referred to operation system and system call. It has the content of memory management, signal handling and process management. Some cpp files and codes are added to extend previous system. The conditional directive can be used in the source code for conditional compilation. The dependent files are included and necessary macro variables are defined. A full set of interfaces are related to socket. The additional classes are injected into the sdk layers and compiled together. The header files are added to offer new offerings. The software will run in the different target computer architecture. The high-level language and low-level language are utilized to fulfill the functionalities. Most of low-level language is assembly language. The macro constant can make the code more semantic. 

The target file is found by the file name. The content and its lines are iterated and obtain the expected content and main class. The main flow is find the main class from the jar file, start the jvm and execute the main class method. 

## OpenJDK

The main method passes the process right to the launch method. In the launch method, the execution environment is created and the jvm is initialized. The new thread is created to launch java virtual machine. The main method is called by the main thread.The java native call can be executed in the current thread or new thread by operating system thread. The system call is performed in the low level programming language. 

The launcher is helper class and written in java language. It is enumeration type. Lots of static fields are defined in the class body. The system class loader is used in the launcher helper class. The switch case statement is used to show different kinds of settings like virtual machine, properties and locale. The virtual machine contains stack, heap, machine class properties. The properties is get from system class and print them out. The message is parsed and printed according to their pattern. The main class can be acquired from jar file. The class is able to be loaded by system class loader. The method can be acquired by infection approach. The clue is that the class is loaded and called. The bootstrap loader is used to find the loader. The jvm is implemented in c plus plus language. The c version data type and method is available for understanding. It is possible that the class file is parsed by the class file parser. It is no doubt that the class file is loaded by the class file loder and its content to be parsed. The class is defined for class path, class path directory. The class loader is in charge of class loading by class type. It is likely that the package information is looked up from the package file. The return value of class file load method is the class instance. The class file is read as stream and parsed as class instance handle. The class data is also read as necessary data. 

The c language version of java standard class is responsible for processing class file. The class is class type and class instance is also class type. 

## HotSpot

The Java runtime environment as provided by OpenJDK consists of the HotSpot JVM combined with class libraries (which are largely bundled up into rt.jar).

As Java is a portable environment, anything that requires a call into the operating system is ultimately handled by a native method. In addition, some methods require special support from the JVM (e.g. classloading). These too are handed off to the JVM via a native call.

For example, let’s look at the C source for the native methods of the primordial Object class. The native source for Object is contained in jdk/src/share/native/java/lang/Object.c and it has six methods.

The Java Native Interface (JNI) usually requires the C implementations of native methods to be named in a very specific way. For example, the native method Object::getClass() uses the usual naming convention, so the C implementation is contained in a C function with this signature:

```
Java_java_lang_Object_getClass(JNIEnv *env, jobject this)
```

Any Java object in the heap is represented by an Ordinary Object Pointer (OOP). An OOP is a genuine pointer in the C / C++ sense - a machine word which points to a memory location inside the Java heap. The Java heap is allocated as a single continuous address range in terms of the JVM process’s virtual address space, and then memory is managed purely from within user space by the JVM process itself, unless the JVM needs to resize the heap for any reason.

The vtable structure of klassOops is directly relevant to Java’s method dispatch and single inheritance. Remember that Java’s instance method dispatch is virtual by default (so methods are looked up using the runtime type information of the instance object being called).

This is implemented in klassOop vtables by the use of “constant vtable offset”. This means that an overriding method is at the same offset in the vtable as the implementation in the parent (or grandparent, etc) that is being overridden.

Virtual dispatch is then easily implemented by simply walking up the inheritance hierarchy (tracking from class to superclass to super-superclass) and looking for an implementation of the method, always at the same vtable offset. 

HotSpot is a more advanced interpreter than the simplistic “switch in a while loop” style of interpreters that are usually more familiar to developers.

Instead, HotSpot is a template interpreter. This means that a dynamic dispatch table of optimised machine code is constructed - which is specific to the operating system and CPU in use. The majority of bytecode instructions are implemented as assembler language code, with only the more complex instructions such as looking up an entry from a classfile’s constant pool being delegated back to the VM.

This improves HotSpot’s interpreter performance at a cost of making it more difficult to port the VM to new architectures and operating systems. It also makes the interpreter harder to understand for new developers.

In terms of getting started, it’s often better for developers to gain a basic understanding of the runtime environment provided by OpenJDK:

Most of the environment written in Java
Operating system portability achieved with native methods
Java objects represented in the heap as OOPs
Class metadata expressed in the JVM as KlassOOPs
An advanced template interpreter for high performance even in interpreted mode.

## Code Styles

Some programmers seem to have lexers and even C preprocessors installed directly behind their eyeballs. The rest of us require code that is not only functionally correct but also easy to read. More than that, since there is no one style for easy-to-read code, and since a mashup of many styles is just as confusing as no style at all, it is important for coders to be conscious of the many implicit stylistic choices that historically have gone into the HotSpot code base.

Some of these guidelines are driven by the cross-platform requirements for HotSpot. Shared code must work on a variety of platforms, and may encounter deficiencies in some. Using platform conditionalization in shared code is usually avoided, while shared code is strongly preferred to multiple platform-dependent implementations, so some language features may be recommended against.

Some of the guidelines here are relatively arbitrary choices among equally plausible alternatives. The purpose of stating and enforcing these rules is largely to provide a consistent look to the code. That consistency makes the code more readable by avoiding non-functional distractions from the interesting functionality.

When changing pre-existing code, it is reasonable to adjust it to match these conventions. Exception: If the pre-existing code clearly conforms locally to its own peculiar conventions, it is not worth reformatting the whole thing. Also consider separating changes that make extensive stylistic updates from those which make functional changes.

The whole content can be refered from here (https://github.com/openjdk/jdk/blob/master/doc/hotspot-style.md).

## JVM

HotSpot is written in C++ and Assembly. In 2007, Sun estimated it comprised approximately 250,000 lines of source code. Hotspot provides:

A Java Classloader
A templating Java bytecode interpreter
Client and Server Just-in Time Compilers, optimized for their respective uses
Several garbage collectors (including the very-low-pause-time ZGC and pauseless Shenandoah)
A set of supporting runtime libraries

Understanding bytecode and what bytecode is likely to be generated by a Java compiler helps the Java programmer in the same way that knowledge of assembly helps the C or C++ programmer.

Instructions fall into a number of broad groups:

Load and store (e.g. aload_0, istore)
Arithmetic and logic (e.g. ladd, fcmpl)
Type conversion (e.g. i2b, d2i)
Object creation and manipulation (new, putfield)
Operand stack management (e.g. swap, dup2)
Control transfer (e.g. ifeq, goto)
Method invocation and return (e.g. invokespecial, areturn)

## Class Loader

The Java Class Loader is a part of the Java Runtime Environment that dynamically loads Java classes into the Java Virtual Machine.[1] Usually classes are only loaded on demand. The Java run time system does not need to know about files and file systems as this is delegated to the class loader.

A software library is a collection of related object code. In the Java language, libraries are typically packaged in JAR files. Libraries can contain objects of different types. The most important type of object contained in a Jar file is a Java class. A class can be thought of as a named unit of code. The class loader is responsible for locating libraries, reading their contents, and loading the classes contained within the libraries. This loading is typically done "on demand", in that it does not occur until the class is called by the program. A class with a given name can only be loaded once by a given class loader.

When the JVM is started, three class loaders are used:

Bootstrap class loader
Extensions class loader
System class loader

# Class File

A Java class file is a file (with the .class filename extension) containing Java bytecode that can be executed on the Java Virtual Machine (JVM). A Java class file is usually produced by a Java compiler from Java programming language source files (.java files) containing Java classes (alternatively, other JVM languages can also be used to create class files). If a source file has more than one class, each class is compiled into a separate class file.

There are 10 basic sections to the Java class file structure:

Magic Number: 0xCAFEBABE
Version of Class File Format: the minor and major versions of the class file
Constant Pool: Pool of constants for the class
Access Flags: for example whether the class is abstract, static, etc.
This Class: The name of the current class
Super Class: The name of the super class
Interfaces: Any interfaces in the class
Fields: Any fields in the class
Methods: Any methods in the class
Attributes: Any attributes of the class (for example the name of the sourcefile, etc.)

