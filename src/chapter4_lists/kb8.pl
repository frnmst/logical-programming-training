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

twice([],[]).

twice([In|Tin],[In,In|Tout]) :-
    twice(Tin,Tout).

one :-
    twice([a,4,buggle],X).

two :-
    twice([1,2,1,1],X).
    
