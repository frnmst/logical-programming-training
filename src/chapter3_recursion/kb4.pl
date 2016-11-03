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

/* The following is the same as: 
 * add(0,Y,Y) :-
 *      true.
 *
 * The base case is when the first argument is equal to 0. This is because if I 
 * add 0 to something, that something is the result.
 * This case also covers: add(Y,0,Y).
 */
add(0,Y,Y).

/*
 * Since the base case is
 *       add(0,Y,Y)
 * and
 * at every recursive call each succ is stripped of X,
 * when we reach the base case with the given example
 * we get:
 *
 * add(0, succ(succ(0)), _Tmp_var).
 *
 * we can see that _Tmp_var must be equal to the middle var:
 * i.e.: succ(succ(0))
 *
 * Afterwards, a succ is added to each variable accordingly.
*/
add(succ(X),Y,succ(Z)) :-
    add(X,Y,Z).
    
run :-
    add(succ(succ(succ(0))), succ(succ(0)), R).

