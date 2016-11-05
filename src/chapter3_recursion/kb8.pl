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

/* Matryoshkas dolls. */
directlyIn(irina,natasha).
directlyIn(natasha,olga).
directlyIn(olga,katarina).

/* Doll X is contained in doll Y and it's the next doll.
 * This is the base case.
 */
in(X,Y) :-
    directlyIn(X,Y).

/* Doll X is contained in doll Y and can be contained at any level in Y. */
in(X,Y) :-
    directlyIn(X,Z),
    in(Z,Y).


run :-
    in(irina,katarina).
