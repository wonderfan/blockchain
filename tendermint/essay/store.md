# State store

The database is the input parameter for multiple commit store. The cache can be also added into store layer.  
When the database is queried by first and end filter condition, the collection iterator is returned. The first item and last item can be extracted from the iterator.

The types package defines all necessary data models used in the store. The store, commit and cache are different concepts and have their own meaning and scope. The concept can be represented by interface. The concept can be extended and mixed. The new idea and scope are generated when concept interfaces are extended and mixed.

The best practise is that we can guess the object's relationship from their names. There are five storage types and they are database type, IAVL type, transient type, memory type and multiple type. In order to describe store better, the store key is introduced and designed. The store key interface includes two methods: name and string. 

The store information contains two parts: its name and commit id. The commit id is struct type and includes other information.The commit id is made of version and hash. The commit info has one-to-many relationship with store info. The store info has one-to-one relationship with commit id.

We can use code statement to verify whether the struct type implements the target interface. The tree data structure can also be used as storage mechanism. It is one data form and storage on top of memory. When the system is out of rage, the data are gone and lost.

The final target is to construct store onject. Before we achieve the target, the tree object should be created at the first step. The tree package gives us all kinds of tree implementations we can use. Our store is built atop of tree functionality.
