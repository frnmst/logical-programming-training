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

/* This is the way to declare predicates. */
second/2.

/* Is X the second element of the list ? */

/* Base case involves two elements only,
 * with the second element being X
 */
second(X,[_,X|T]).

/* Simple list iteration (cdr). */
second(X,[_,List]) :-
    second(X,List).

/* The following is a solution from:
 * <https://github.com/dragonwasrobot/learn-prolog-now-exercises/blob/master/chapter-4/exercises.pl#L31>
 *
 * second(X,List) :-
 *   List = [_,X|_].
 *
 * This is a completely different approach:
 * instead of recurring down the list he simply decided to check
 * that a new list with X as the second element is equal to the
 * original list. This is possible thanks to unification
 * and to the anonymous variable.
 */

one :-
    second(a,[b,a,c,d]).

two :-
    second(a,[b,[a,d],c,d]).

three :-
    second(a,[[b,c,d],a,[c,r,t,q],d]).

four :-
    second(a,[[b,c,d],f,[c,r,t,q],d]).

