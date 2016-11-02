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
word(determiner,a).
word(determiner,every).

word(noun,criminal).
word(noun,'big kahuna burger').

word(verb,eats).
word(verb,likes).

/* Rule. */
sentence(Word1,Word2,Word3,Word4,Word5) :-
    word(determiner,Word1),
    word(noun,Word2),
    word(verb,Word3),
    word(determiner,Word4),
    word(noun,Word5).

/* Query that reports all possible valid sentences.
 * You should run it by copying and pasting it in the 
 * prolog terminal.
 */
run :-
    word(determiner,V),
    word(noun,W),
    word(verb,X),
    word(determiner,Y),
    word(noun,Z).

