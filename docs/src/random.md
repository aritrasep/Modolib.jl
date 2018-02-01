# Random Instance Generators #

## Multiobjective and Biobjective Multi Dimensional Knapsack Problems ##

```@docs
generate_knapsack_instances
generate_bokp_instances
```

The method for generating a random biobjective multi dimensional knapsack instance is as follows:

When `sparse = true`

$\begin{align*}
c^1_i & \in [1:100], & \forall i \in \{1,..., n\} \\
c^2_i & \in [1:100], & \forall i \in \{1,..., n\} \\
A_{i,j} & \in [0:100], & \forall i \in \{1,..., n\}, j \in \{1,..., m\} \\
b_j & = \lceil \dfrac{\sum_i A_{ij}}{2} \rceil, & \forall j \in \{1,..., m\}
\end{align*}$

When `sparse = false`

$\begin{align*}
c^1_i & \in [1:100], & \forall i \in \{1,..., n\} \\
c^2_i & \in [1:100], & \forall i \in \{1,..., n\} \\
A_{i,j} & \in [1:100], & \forall i \in \{1,..., n\}, j \in \{1,..., m\} \\
b_j & = \lceil \dfrac{\sum_i A_{ij}}{2} \rceil, & \forall j \in \{1,..., m\}
\end{align*}$

## Multiobjective General Mixed Binary Problem ##

```@docs
generate_mixed_binary_instances
```
