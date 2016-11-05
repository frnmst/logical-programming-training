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

/* Train connections. */
directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

/* Base case: I can travel from X to Y if there os a direct
 * train from X to Y. 
 */
travelFromTo(X,Y) :-
    directTrain(X,Y).

/* X -> Z -> Y => X -> Y (recursively).
 * Once you see this relationsip everything gets trivial. 
 */
travelFromTo(X,Y) :-
    directTrain(X,Z),
    travelFromTo(Z,Y).

run :-
    travelFromTo(nancy,saarbruecken).
