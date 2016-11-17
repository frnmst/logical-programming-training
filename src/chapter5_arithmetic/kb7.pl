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

/* Integer comparison. */

/*
 * =:= means ==
 * =\= means != 
 */
run :-
    2 < 4,
    2 =< 4,
    4 =< 4,
    4 =:= 4,
    4 =\= 5,
    4 => 4,
    4 > 2.

run_2 :-
    2 < 4+1,
    2+1 < 4,
    2+1 < 3+2.

/* Unification vs arithmetic equivalence. */
run_3 :-
    4 = 4,
    2+2 = 4.

run_4 :-
    2+2 =:= 4.
    
