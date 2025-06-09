An experimental 'Choose your own adventure' mini-zine, designed to show people Fenestra, and the BIND system.

Compiling starts with `cyoa/head.tex`, and the first part.
The other parts are called `cyoa/pt_${n}.tex`.
They're split into groups of three:

- Group 1: `1, 4, 7,...`
- Group 2: `2, 5, 8,...`
- Group 3: `3, 6, 9,...`

Each group is then shuffled in order to minimize how often you see 'if X, go to part N' and then see part N printed on the same page fold.
The problem will still occur, but it should occur with a separate-and-shuffle.
