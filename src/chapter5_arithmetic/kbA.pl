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

/* addone(List,Out)
 *
 * Out = 1 + List
 * If list is seen as a vector.
 */

addone([],[]).

/* A fake lisp equivalent:
 * cons(car(Head+1),Out)
 */
addone([Head|Tail],[X|Out]) :-
    addone(Tail,Out),
    X is 1+Head.
