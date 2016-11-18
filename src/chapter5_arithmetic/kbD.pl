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

/* dot(V1,V2,Out)
 *
 * Out = V11*V21 + V12*V22 + ... + V1n*V2n
 */

/* Two empty vectors make 0. */
dot([],[],Prod) :-
    Prod is 0.

/* Prod is unified with X, so Prod holds the sum
 * in the previous step (compared to the current one),
 * while X holds the current sum.
 * This is not so easy to see unfortunately.
 */
dot([Head1|Tail1],[Head2|Tail2],X) :-
    dot(Tail1,Tail2,Prod),
    X is Prod+(Head1*Head2).
