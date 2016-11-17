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

/* Arithmetic and lists. */

/* In my opinion this is much better than using accumulators
 * (see kb6.pl).
 */

/* Length of an empty list is 0. */
len([],0).

/* 1 + len(cdr(list)) */
len([_|T],N) :-
    len(T,X),
    N is 1+X.

