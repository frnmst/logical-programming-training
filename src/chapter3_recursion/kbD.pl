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
byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).
byTrain(ferrara,bologna).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

/* Rules. */
/* Three base cases. */
travel(X,Y) :-
    byCar(X,Y).

travel(X,Y) :-
    byTrain(X,Y).

travel(X,Y) :-
    byPlane(X,Y).

/* --- */

travel(X,Y) :-
    byCar(X,Z),
    travel(Z,Y).

travel(X,Y) :-
    byTrain(X,Z),
    travel(Z,Y).

travel(X,Y) :-
    byPlane(X,Z),
    travel(Z,Y).

/* Queries. */

one :-
    travel(ferrara,bologna).

two :-
    travel(valmont,raglan).

three :-
    travel(ferrara,losAngeles).
