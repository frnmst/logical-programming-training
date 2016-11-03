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

/* Base case is always called first at every recursive step. */
descend(X,Y) :-
    child(X,Y).

descend(X,Y) :-
    child(X,Z),
    descend(Z,Y).

run:-
    descend(anne,donna).

/* Trace call of run/0 goal.
  
   Call: (7) run ? 

       -- Recursive call

       // Base case
       Call: (8) descend(anne, donna) ? 
           Call: (9) child(anne, donna) ? 
       Fail: (9) child(anne, donna) ? 

       Redo: (8) descend(anne, donna) ? 
           Call: (9) child(anne, _3110) ? 
           Exit: (9) child(anne, bridget) ? 

       Call: (9) descend(bridget, donna) ? 

       --

       // Base case
       Call: (10) child(bridget, donna) ? 
       Fail: (10) child(bridget, donna) ? 

       Redo: (9) descend(bridget, donna) ? 
           Call: (10) child(bridget, _3110) ? 
           Exit: (10) child(bridget, caroline) ? 

       Call: (10) descend(caroline, donna) ? 

       --

       // Base case
       Call: (11) child(caroline, donna) ? 
           Exit: (11) child(caroline, donna) ? 

       Exit: (10) descend(caroline, donna) ? 

       --- return

       Exit: (9) descend(bridget, donna) ? 

       --- return

       Exit: (8) descend(anne, donna) ? 

       --- return

   Exit: (7) run ?

   --- return 

true
*/
