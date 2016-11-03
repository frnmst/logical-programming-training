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
just_ate(mosquito, blood(john)).
just_ate(frog, mosquito).
just_ate(stork, frog).

/* Rules. */
/* Base case of the recursive rule.
 * This is aka as base clause.
 */
is_digesting(X,Y) :-
    just_ate(X,Y).

/* Rsecursive rule. */
is_digesting(X,Y) :-
    just_ate(X,Z),
    is_digesting(Z,Y).

/*
[trace]  ?- is_digesting(stork,blood(john)).

   Call: (7) is_digesting(stork, blood(john)) ? creep
   Call: (8) just_ate(stork, blood(john)) ? creep
   Fail: (8) just_ate(stork, blood(john)) ? creep

   Redo: (7) is_digesting(stork, blood(john)) ? creep
   Call: (8) just_ate(stork, _2370) ? creep
   Exit: (8) just_ate(stork, frog) ? creep

   Call: (8) is_digesting(frog, blood(john)) ? creep
   Call: (9) just_ate(frog, blood(john)) ? creep
   Fail: (9) just_ate(frog, blood(john)) ? creep

   Redo: (8) is_digesting(frog, blood(john)) ? creep
   Call: (9) just_ate(frog, _2370) ? creep
   Exit: (9) just_ate(frog, mosquito) ? creep

   Call: (9) is_digesting(mosquito, blood(john)) ? creep
   Call: (10) just_ate(mosquito, blood(john)) ? creep
   Exit: (10) just_ate(mosquito, blood(john)) ? creep
   Exit: (9) is_digesting(mosquito, blood(john)) ? creep
   Exit: (8) is_digesting(frog, blood(john)) ? creep
   Exit: (7) is_digesting(stork, blood(john)) ? creep

true
*/

