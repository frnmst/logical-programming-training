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

/* Difference between =/2 and "is":
 * With =/2, unification is performed (because numbers
 * and operators are treated as complex terms), while with 
 * "is" arthmetic operations are carried out.
 */
run :-
    X = 3+2.

/* Arithmetic operators can use a more prolog-like notation.
 * All the following are equivalent.
 */
run_2 :-
    X is 3+2,
    X is +(3,2),
    is(X,+(3,2)).

/* Running: 2+3 is X. would result in an error.*/
