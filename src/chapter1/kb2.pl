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

/* Three predicates:
 * listens2Music
 * happy
 * playsAirGuitar
 */

/* Facts.
 * Can be viewed as rules with an empty body.
 */
happy(yolanda).
listens2Music(mia).

/* Rules.
 * A:- B
 * A = head, B = body.
 * A is true if B is true.
 * A is implied by B.
 */
listens2Music(yolanda):- happy(yolanda).
playsAirGuitar(mia):- listens2Music(mia).
playsAirGuitar(yolanda):- listens2Music(yolanda).


/* Proposition*/


/* Queries. */
