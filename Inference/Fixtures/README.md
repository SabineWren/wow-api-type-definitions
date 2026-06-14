Currently globals infer nil if not assigned when declared.
We need to store all globals in metacontext, and infer
types before annotating any output.

Tests are currently wrong for functions due to incomplete inference.

TODO metavariable code:
- Infer param from operator usage
- Infer return types (union of all return statements, or 'nil' if none)
- Update global vars based on usage

TODO annotations:
- Union types (probably need sorting)
- Records/Classes
- Tables (literals, parameters, returns)
- Unknown (parameters, returns)
