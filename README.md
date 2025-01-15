# Lua Stack Overflow in Deep Table Traversal

This repository demonstrates a common Lua error: stack overflow due to excessive recursion when traversing deeply nested tables. The `foo` function recursively iterates through a table. If the table is too deep, the recursion exceeds the Lua interpreter's stack limit, causing a stack overflow error. The solution demonstrates a safer iterative approach to avoid this issue.