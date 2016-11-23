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

/* cut-fail combination. */

enjoys(vincent,X) :-
    big_kahuna_burger(X),
    !,
    fail.

enjoys(vincent,X) :-
    burger(X).


burger(X) :-
    big_mac(X).

burger(X) :-
    big_kahuna_burger(X).

burger(X) :-
    whopper(X).


big_mac(a).
big_mac(c).
big_kahuna_burger(b).
whopper(d).
