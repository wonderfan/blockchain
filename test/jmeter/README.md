Jmeter
======

The gui makes use of awt and swing components. The components are organized by tree data structure. About ten types of components are added into the tree layout. The gui tree data are stored in the xml format and it is also tree like data structure. The class loader is used to loadthe java class dynamically. The driver design pattern is adopted. The drive manages all of environment and its dependencies. The drive executes the main class in the mannner of dynamic loading. The main class is Jmeter and start is the entry point method.

The skeleton is offered and acted as the base. The contract method is sample. The input parameter for sample method is entry type. The sample result is prepared and command is organized. The string builder is utilized to construct the command and its arguments. The system command is introduced to run the command. The result collects the data generated from the command. 

The test element is abstract item. The thread group is one of its concrete types. The common property and behavior are extracted into abstract class. The core methods of thread group are its start and stop methods. The thread creation method is supplied to make new thread.The thread is symboled as JmetherThread. The interesting question is how thread is used and managed. The thread has communication with other thread.
