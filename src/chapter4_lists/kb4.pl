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

/* a2b/2 
 *  true if the first argument is:  [a,...,a,a,...a]
 *   and if the second argument is: [b,...,b,b,...b]
 *   both of the same length.
 */

/* Empty lists have the same number of as and bs (0). */
a2b([],[]).

/* Thanks to unification we have an implicit conditional test. 
 * ([_X | ..] == [a | ...]),([_Y | ..] == [b | ...])
 *
 * _X = a,
 * _Y = b.
 *
 * where _X and _Y are the head values
 * of both input lists respectively.
 */
a2b([a|Ta],[b|Tb]) :-
    a2b(Ta,Tb).

one :-
    a2b([a,a,a],[b,b,b]).

two :-
    a2b([a,a,a],[b,b]).

/* X becomes [b,b,b,b] because of unification. */
two :-
    a2b([a,a,a,a],X).

/* X always = Y in this case. */
three :-
    a2b(X,Y).
