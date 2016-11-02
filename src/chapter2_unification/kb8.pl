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


/*
 * a \= b.
 * Is the not version of a = b.
 */

/* F (trivial). */
one :-
    a \= a.

/* F (same as above). */
two :-
    'a' \= a.

/* F because the variable A can be instantiated to a. */
three :-
    A \= a.

/* T because no variables are involved
 * so the two entitied cannot be unified.
 */
four :-
    f(a) \= a.

/* F because a variable can be instatiated to a simple compound.*/
five :-
    f(a) \= A.

/* F because these unify. */
six :-
    g(a,B,c) \= g(A,b,C).

/* T because arity is different. */
seven :-
    g(a,b,c) \= g(A,C).

/* F because the can be unified. */
eight :-
    f(X) \= X.

