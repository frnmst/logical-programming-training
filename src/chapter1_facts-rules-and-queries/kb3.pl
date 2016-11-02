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

/* Facts. */
happy(vincent).
listens2Music(butch).

/* Rules. */

/*  A logical conjunction (AND) is expressed with a comma in this language. */
playsAirGuitar(vincent):-
    listens2Music(vincent),
    happy(vincent).

/* Logical disjunction (OR) is expressed by listing multiple rules
 * with different bodies.
 */
playsAirGuitar(butch):-
    happy(butch).

playsAirGuitar(butch):-
    listens2Music(butch).

/* Another way of expressing disjunction, using the semicolon (;). */
playsAirGuitar(butch):-
    happy(butch);
    listens2Music(butch).

