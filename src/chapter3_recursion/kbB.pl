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

/* Binary trees. */

/*
 * SOLVE THIS. 
 *
 */

leaf(1).
leaf(2).
leaf(3).
tree(leaf(1),leaf(2)).

/* Tree base case: create a new tree from 2 vertices. */
tree(leaf(B1),leaf(B2)).

/* Thanks to unification all cases are covered by 
 * a single predicate.
 */
tree(tree(B1),B2) :-
    tree(B1,B2).

run_tree :-
    tree(tree(leaf(23),leaf(24)),tree(leaf(21),leaf(31))).

/*
swap(X,Y) :-
    tree(leaf(X),leaf(Z)).

swap(tree(X),T) :-
    swap(X,T).
*/
