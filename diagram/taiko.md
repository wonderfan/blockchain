# Taiko 

- [white paper](https://taikoxyz.github.io/taiko-mono/taiko-whitepaper.pdf)
- [github](https://github.com/taikoxyz)

## Visualization

```mermaid
classDiagram
    class RollUP {
        <<solution>>
        It is scaling solution
        (1): optimistic rollup
        (2): zk rollup
        (3): validium rollup
        (4): volition rollup
    }
```

```mermaid
graph
    a[layer2 architecture]
    b[node]
    c[prover]
    d[smart contract]
    a --> b & c & d
```

```mermaid
graph
    a[zk-rollup tradeoff]
    b[evm compatibility]
    c[zk efficiency for proof generation]
    a --> b & c
```    

```mermaid
classDiagram
    class `block submission process` {
        <<process>>
        block life cycle
        (1): block proposal
        (2): block verification
    }
```

