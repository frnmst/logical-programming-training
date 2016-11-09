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

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([],[]).

/* Translate the head and cdr the list. */
listtran([Gh|Gt],[Eh|Et]) :-
    tran(Gh,Eh),
    listtran(Gt,Et).


one :-
    listtran([eins,neun,zwei],X).

two :-
    listtran(X,[one,seven,six,two]).
