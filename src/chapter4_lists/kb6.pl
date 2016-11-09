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

/* I just copied this solution because the request
 * was unclear to me.
 *
 * ?- swap12([a,b,c,d],X).
 * X = [b, a, c, d].
 *
 * From this example it's clear what it means.
*/

swap12/2.

swap12(List1,List2) :-
    List1 = [ListA,ListB|Tail],
    List2 = [ListB,ListA|Tail].
    
