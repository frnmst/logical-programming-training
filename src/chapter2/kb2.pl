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

vertical(line(point(X,Y),point(X,Z))).

horizontal(line(point(X,Y),point(Z,Y))).

run :-
    vertical(line(point(1,1),point(1,3))),
    horizontal(line(point(1,3),point(8,3))).

/* Run the following two manually (don't call the goals). */
findy :-
    horizontal(line(point(1,1),point(2,Y))).

findany :-
    horizontal(line(point(2,3),P)).
