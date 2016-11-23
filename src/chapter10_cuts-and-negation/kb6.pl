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

/* max is true if Max is max(A,B) */

max_first(A,B,Max) :-
    A > B,
    Max is A.

/* If A == B we choose B as the maximum. */
max_first(A,B,Max) :-
    B >= A,
    Max is B.

/* Or, using unification instead of arithmetics.. */

max_second(A,B,B) :-
    B >= A.

max_second(A,B,A) :-
    A > B.

/* Use the cut to avoid useless backtracking.
 * Note that the order of the goals changes the behaviour.
 */

max_third(A,B,B) :-
    B >= A,
    !.

max_third(A,B,A) :-
    A > B.


/* If B >= A then A not > B, so we could avoid the > 
 * in the second clause. The problem is that it doesn't work.
 * (for example with: max_fourth(1,7,1). which returns true).
 */

max_fourth(A,B,B) :-
    B >= A,
    !.

max_fourth(A,B,A).

/* This is more similar to max_first/3.
 * Without the cut:
 *
 * [trace]  ?- max_fifth(1,7,1).
 *  Call: (7) max_fifth(1, 7, 1) ? creep
 *  Call: (8) 1=<7 ? creep
 *  Exit: (8) 1=<7 ? creep
 *  Call: (8) 7=1 ? creep
 *  Fail: (8) 7=1 ? creep
 *  Redo: (7) max_fifth(1, 7, 1) ? creep
 *  Exit: (7) max_fifth(1, 7, 1) ? creep
 * true.
 *
 * With the cut:
 *
 * [trace]  ?- max_fifth(1,7,1).
 *  Call: (7) max_fifth(1, 7, 1) ? creep
 *  Call: (8) 1=<7 ? creep
 *  Exit: (8) 1=<7 ? creep
 *  Call: (8) 7=1 ? creep
 *  Fail: (8) 7=1 ? creep
 *  Fail: (7) max_fifth(1, 7, 1) ? creep
 * false.
 */

max_fifth(A,B,Z) :-
    A =< B,
    !,
    B = Z.

max_fifth(A,B,A).
