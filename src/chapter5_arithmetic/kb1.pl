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

run :-
    8 is 6+2,
    12 is 6*2,
    4 is 6-2,
    -2 is 6-8,
    3 is 6/2,
    1 is mod(7,2).

/* Unlike what's written on the LPN website, integer division
 *  gives a floating point number.
 */
run_2 :-
    3.5 is 7/2,
    3 is 7/2.

run_2 :-
    X is 6+2,
    Y is 6*2,
    R is mod(7,2).

