# State store

The database is the input parameter for multiple commit store. The cache can be also added into store layer.  
When the database is queried by first and end filter condition, the collection iterator is returned. The first item and last item can be extracted from the iterator.

The types package defines all necessary data models used in the store. The store, commit and cache are different concepts and have their own meaning and scope. The concept can be represented by interface. The concept can be extended and mixed. The new idea and scope are generated when concept interfaces are extended and mixed.
