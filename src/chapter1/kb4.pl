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
woman(mia).
woman(jody).
woman(yolanda).
loves(vincent,mia).
loves(marsellus,mia).
loves(pumpkin,honey_bunny).
loves(honey_bunny,pumpkin).

/* Queries */
/* First letter uppercase arguments are treated as variables.
 * Remembering thqat ';' means OR, if we run the first query, only the first
 * name (mia) is matched and return, while the second and the third query
 * matches respectively 2 and 3 names defined in the rules.
 */
/*
woman(X)

woman(X). ;

woman(X). ; ;
*/

/* Is there an entity that marsellus loves AND (,) it's a woman ? */
/*
loves(marsellus,X), woman(X).
*/
