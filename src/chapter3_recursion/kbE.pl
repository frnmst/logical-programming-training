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
byCar(raglan,mars).

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

go(X,Y).
go(X,Y,Z).

/* Rules. */
/* Three base cases. 
 * Now, travel has arity 3. In the last variable, the path is recorded in the 
 * go/2 predicate. 
 */
travel(X,Y,go(X,Y)) :-
    byCar(X,Y).

travel(X,Y,go(X,Y)) :-
    byTrain(X,Y).

travel(X,Y,go(X,Y)) :-
    byPlane(X,Y).

/* --- */

/* go/3 catches the base case go/2. */
travel(X,Y,go(X,Z,Q)) :-
    byCar(X,Z),
    travel(Z,Y,Q).

travel(X,Y,go(X,Z,Q)) :-
    byTrain(X,Z),
    travel(Z,Y,Q).

travel(X,Y,go(X,Z,Q)) :-
    byPlane(X,Z),
    travel(Z,Y,Q).

/* Queries. */

one :-
    travel(auckland,mars,X).

two :-
    travel(valmont,losAngeles,X).

