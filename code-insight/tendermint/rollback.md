# Rollback

## State Tree

### Facts of ABCI database

1. The database name is application under chain data directory.
2. The database is operated by multiple commit store.
3. The application has only one store instance.
4. The iavl tree is behind the scene of commit store.
5. The state tree is mvcc style.
6. The version is composed of height.
7. The tree provides version retrieval, version delete, version check utilities.
8. The latest version can not be removed in the current implementation.

### How to revert

When unexpected things happen, there should be measures to rescue the situation.

1. The data in the node database can be deleted by version.
2. The key point is how to populate the tree with last valid version and does not break the constraints between mutable 
   and immutable parts.
3. rollback proposal to community.

