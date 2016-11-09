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

/* Very similar to the previous exercises. */
combine2/3.

combine2([],[],[]).

combine2([In1|T1],[In2|T2],[[In1,In2]|Out]) :-
    combine2(T1,T2,Out).

one :-
    combine2([a,b,c],[1,2,3],X).

two :-
    combine2([f,b,yip,yup],[glu,gla,gli,glo],Result).
