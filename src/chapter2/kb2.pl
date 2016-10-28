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

point(X,Y):-
    true.

is-vertical(Ax,Ay,Bx,By) :-
    Ax = Bx.
    % vertical(line(point(X,Y),point(X,Z))).

% is-horizontal(X,Y,Z) :-
%    horizontal(line(point(X,Y),point(Z,Y))).
