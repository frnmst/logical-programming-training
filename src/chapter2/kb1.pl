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

/* Two queries that mean the same thing. */
unification :-
    =(mia,mia),
    mia = mia.

non-unification :-
    =(mia,vincent),
    mia = vincent.

number-equality :-
    2 = 2.

quoting-strings :-
    'mia' = mia.

/* '2' is an atom and 2 is a number,
 * so they must be different.
 */
quoting-numbers :-
    '2' = 2.

/* No problems with this one. */
variable :-
    mia = X.

/* From now on X and Y represent the same value.
 * This is not just a simple query.
 */
two-variables :-
    X = Y.

/* A variable cannot hold two values at once. 
 * If the same queries are run separately, they will succede.
 */
two-values :-
    X = mia,
    X = vincent.

/* It succedes because:
 *   They have the same arity,
 *   They have the same functor,
 *   s(g) = X,
 *   Y = t(k).
 */
complex-terms :-
    k(s(g),Y) = k(X,t(k)).

/* X = s(g),
 * t(k) = t(Y) -> Y = k.
 */
complex-terms-bis :-
    k(s(g), t(k)) = k(X, t(Y)).

/* X = marsellus,
 * X = mia. --> either one or the other, so it's false.
 */
relationship :-
    loves(X,X) = loves(marsellus,mia).

/* These two rules should not work but the do for SWI Prolog
 * and other implementations. This is because Prolog is optimistic so to have 
 * more speed. If the "occurs" check is execued, the program would be slower.
 * See: standard unification algorithm.
 */
wtf-relationship-zero :-
    X = father(X).

wtf-relationship-one :-
    X = father(X),
    Y = father(Y),
    X = Y.

/* If we run the following, we'll get false. */
wtf-relationship-two :-
    unify_with_occurs_check(father(X),X).
