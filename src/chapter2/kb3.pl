#!/usr/bin/env swipl

/*
 * logical-programming-training (c) by Franco Masotti
 * <franco.masotti@student.unife.it>
 *
 * logical-programming-training is licensed under a
 * Creative Commons Attribution-ShareAlike 4.0 International License.
 *
 * You should have received a copy of the license along with this
 * work. If not, see <http://creativecommons.org/licenses/by-sa/4.0/>.
 */

/* Unification is made possible by backtracking: if Prolog fails 
 * with Y = a, he's going to try again with Y = b. This process can be 
 * represented by a tree. I guess this is the same concept described in:
 * https://www.youtube.com/watch?v=PNKj529yY5c&list=PLUl4u3cNGP63gFHB6xb-kVBiQHYe_4hSi&index=2
 * Leaf nodes, with an empty goal list (ie: nothing more to do) of the sarch 
 * tree, correspond to a possible solution.
 */

f(a).
f(b).

g(b).
g(d).

h(b).
h(c).

/* Ask the query "k(Y)." */
k(X) :-
    f(X),
    g(X),
    h(X).
