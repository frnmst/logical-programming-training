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

/* This is more efficient than kb5.pl. */

/* List length using an accumulator.
 * accLen(List,Acc,Length).
 * Lenght = Acc in the base case. */
accLen([],A,A).

/*
 * Anew = Anew + 1
 * accLen(cdr(list), Anew, Len)
 */
accLen([_|T],A,Len) :-
    Anew is A+1,
    accLen(T,Anew,Len).


/* Wrapper for accLen. */
llen(List,Length) :-
    accLen(List,0,Length).

