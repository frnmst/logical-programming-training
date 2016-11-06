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

/* Get head (car) and tail (cdr). */
[H|T] = [mia,vincent,jules,yolanda].
[H|T] = [mia].
[H|T] = [].

/* Prolog behaves differently with Z in repect to LPN:
 * Z is not converted to an internal variable.
 */
[X|Y] = [[], dead(z), [2, [b, c]], [], Z].

/* Get the first two elements in X and Y respectively
 * and the tail in W.
 */
[X,Y | W] = [[], dead(z), [2, [b, c]], [], Z].


/* We are interested in retreiving the second and the fourth 
 * element of the list. We can proceed like the following: 
 */
[X1,X2,X3,X4 | T] = [[], dead(z), [2, [b, c]], [], Z].

/* We are also got two useless elements (X1 and X3).
 * To get what we want we need to use the special variable "_".
 * This variable is very important and it's called the anonymous
 * variable.
 *
 * Prolog does not report "_", and each instantiaton of it
 * is indepedent.
 */
[_,X,_,Y | _] = [[], dead(z), [2, [b, c]], [], Z].

/* Get the tail of the second internal list. */
[_,_,[_|X]|_] = [[], dead(z), [2, [b, c]], [], Z].
