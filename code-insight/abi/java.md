# ABI in Java Contract

## Compiler

The compiler class is provoded to compile the class. The input parameter for the main method is jar file. There are two arguments for the main method. One is the jar file path, the other is version. The version is refered to abi version number. After the jar file is compiled, the output is written into new file. The class reader and writer from asm package are used to read the byte code form. The callable and initializable methods are annotated and gathered from the class. The method name and its parameter type can be collected for ABI information. The method visitor is used to process the method. With the assistance of method visitor, the method can be validated and method data can be extracted from the method signature.

The visitor can be applied into Java class. The visitor can be class level, field level or method level. 