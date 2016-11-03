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

child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

/* X is a child of Y in the child(X,Y) relationship. */

/* This does not work because of the reason that the recursive call 
 * that includes the unknown variable Z. */
descend(X,Y) :-
    descend(Z,Y),
    child(X,Z).

descend(X,Y) :-
    child(X,Y).

run:-
    descend(anne,donna).

