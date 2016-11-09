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

/* This rules answers the question if X belongs to a list L.
 * This is just like the lisp operator cdr called recursively
 * (in my fake lisp-like language):
 *
 * find(X,L)
 *      (X == car (L) || find(cdr(L)))
 *
 */

/* If X belogs to L then X is the head of the list. */
member(X,[X|T]).

/* Remove the head from the list and call the function on the
 * remaining list.
 */
member(X,[H|T]) :-
    member(X,T).

one :-
    member(vincent,[yolanda,trudy,vincent,jules]).

two :-
    member(yolanda,[yolanda,trudy,vincent,jules]).

three :-
    member(zed,[yolanda,trudy,vincent,jules]).

/*
?- member(zed,[yolanda,trudy,vincent,jules]).

   Call: (7) member(zed, [yolanda, trudy, vincent, jules]) ? creep
   Call: (8) member(zed, [trudy, vincent, jules]) ? creep
   Call: (9) member(zed, [vincent, jules]) ? creep
   Call: (10) member(zed, [jules]) ? creep

   Call: (11) member(zed, []) ? creep

   // Empty lists cannot be split.
   Fail: (11) member(zed, []) ? creep

   Fail: (10) member(zed, [jules]) ? creep
   Fail: (9) member(zed, [vincent, jules]) ? creep
   Fail: (8) member(zed, [trudy, vincent, jules]) ? creep
   Fail: (7) member(zed, [yolanda, trudy, vincent, jules]) ? creep

false.
*/

/* Find every member of the list. This is usually the way
 * it's done.
 */
four :-
    member(X,[yolanda,trudy,vincent,jules]).
