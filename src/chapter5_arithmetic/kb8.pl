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

/* Find max in list of integers. */

/* Max = Acc. */
accMax([],Acc,Acc).

/* Head > Max */
accMax([Head|Tail],Acc,Max) :-
    Head > Acc,
    accMax(Tail,Head,Max).

/* Head <= Max */
accMax([Head|Tail],Acc,Max) :-
    Head =< Acc,
    accMax(Tail,Acc,Max).

/* Max = car(List)
 * Head = Max
 *
 * Through unification:
 * List = [Head|_] = [Head| <rest of list>] = List
 */
max(List,Max) :-
    List = [Head|_],
    accMax(List,Head,Max).
