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

/* Find min in list of integers. */

/* Min = Acc. */
accMin([],Acc,Acc).

/* Head >= Min */
accMin([Head|Tail],Acc,Min) :-
    Head >= Acc,
    accMin(Tail,Acc,Min).

/* Head < Min */
accMin([Head|Tail],Acc,Min) :-
    Head < Acc,
    accMin(Tail,Head,Min).

/* Min = car(List)
 * Head = Min
 *
 * Through unification:
 * List = [Head|_] = [Head| <rest of list>] = List
 */
min(List,Min) :-
    List = [Head|_],
    accMin(List,Head,Min).
