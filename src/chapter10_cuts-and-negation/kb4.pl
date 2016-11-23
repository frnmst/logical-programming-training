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

s(X,Y) :-
    q(X,Y).

s(0,0).

q(X,Y) :-
    i(X),
    j(Y).


i(1).
i(2).

j(1).
j(2).
j(3).

/*
 * q(X,Y),
 * X = Y,
 * i(1), j(1);
 * i(2), j(2);
 *
 * i(1), j(2);
 * i(2), j(1);
 * i(1), j(3);
 * i(2), j(3).
 *
 * ===========
 *
 * s(X,Y),
 * s(0,0),
 * X = Y,
 * <same as q(X,Y)>;
 * X = Y, Y = 0.
 * 
*/
