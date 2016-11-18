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

/* scalarMult(N,List,Out)
 *
 * Out = N * List
 * If list is seen as a vector.
 */

scalarMult(N,[],[]).

/* A fake lisp equivalent:
 * cons(car(Head*N),Out)
 */
scalarMult(N,[Head|Tail],[X|Out]) :-
    scalarMult(N,Tail,Out),
    X is N*Head.
