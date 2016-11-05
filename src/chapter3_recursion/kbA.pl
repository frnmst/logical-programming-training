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

/* Greater than relationship. */

/* Now I'm getting the hang of it :) */

/* Base case: 1 succ X vs 0 Y means that X gt Y. */
greater_than(succ(X),0).

/* Strip of the succs and call recursively. */
greater_than(succ(X),succ(Y)) :-
    greater_than(X,Y).

run_true :-
    greater_than(succ(succ(0)),succ(0)).

run_false :-
    greater_than(succ(succ(0)),succ(succ(0))).
