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

p(X) :-
    a(X).

p(X) :-
    b(X),
    c(X),
    !,
    d(X),
    e(X).

p(X) :-
    f(X).

a(1).

b(1).
b(2).

c(1).
c(2).

d(2).

e(2).

f(3).

run :-
    p(X).
