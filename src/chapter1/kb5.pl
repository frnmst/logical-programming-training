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
loves(vincent,mia).
loves(marsellus,mia).

loves(pumpkin,honey_bunny).
loves(honey_bunny,pumpkin).

/* Rules. */
/* X is jealous of Y if and only if X loves Z and Y loves Z. */
jealous(X,Y):-
    loves(X,Z),
    loves(Y,Z).


/* Queries */
/* In the last two cases,
 * this is what happens:
 *
 * loves(X,Y).
 * loves(Y,X).
 *
 * Variable substitution: Y of jealous = X
 * and vice-versa.
 *
 * jealous (X,X):-
 *      loves(X,Z),
 *      loves(X,Z).
 *
 * But since Z is another variable, it can be substitued to Y.
 * (which is the other person).
 * jealous (X,X):-
 *      loves(X,Y),
 *      loves(X,Y).
 *
 * Same reasoning for the other case:
 *
 * jealous (Y,Y):-
 *      loves(Y,X),
 *      loves(Y,X).
 *
 * This means that if two people love each other, then a person is jealous of
 * himself...
 */
/*
jealous(marsellus, vincent).
jealous(marsellus, W).

jealous(pumpkin,honey_bunny).
jealous(pumpkin,W).
jealous(honey_bunny,pumpkin).
jealous(W,honey_bunny).

jealous(vincent,vincent).

jealous(pumpkin,pumpkin).
jealous(honey_bunny,honey_bunny).

*/
