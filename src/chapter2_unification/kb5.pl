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

house_elf(dobby).
witch(hermione).
witch('McGonagall').
witch(rita_skeeter).
/* I added the following predicate
 * in order to make things work.
 */
wizard(ron).

magic(X) :-
    house_elf(X).

magic(X) :-
    wizard(X).

magic(X) :-
    witch(X).

/* Answers to all five question lie here. */
/* How can I ask if the house_elf entity in general (not a specific one) is 
 * magic? Maybe i should fire up some rules for it or something...
 * Same goes for wizard, witch or whatever...
 */
one :-
    magic(house_elf).

two :-
    wizard(harry).

three :-
    magic(wizard).

four :-
    magic('McGonagall').

/* Here I'm asking: "What is magic ?" */
five :-
    magic(Hermione).
