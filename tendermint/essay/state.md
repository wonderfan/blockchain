# Blockchain State

When errors happen, the state can be rolled back to previous state. The previous state is loaded by state store. The block data is loaded by block store with the condition of height. The final state is generated by combining both consensus state and block state.

The data structure state and block has validation relationship. The value between state and block must be matched and equal. Particularly, the apphash in the block must be equal to value in the state.

The block is validated against with state before it is executed.

The struct definiton, constructor function and pointer type are strictly performed. The main job of block executor is to createnew block and apply consensused block.

The blockchain state is also updated after the block is executed. The transactions in the memory pool is also pruned.

The state can be aliased as consensus state. The consensus state is leveled up with new block.

The fundamental items in the state are version, chain id, last block, validators, and application hash.
