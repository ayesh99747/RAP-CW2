/* Dice
 * Author: ayesh
 * Creation date: 26/01/2022
 */
MACHINE
    Dice

ABSTRACT_VARIABLES
    lastNumber

INVARIANT
    lastNumber <: INTEGER & card ( lastNumber ) <= 1

INITIALISATION
    lastNumber := {}

OPERATIONS
    roll ( number ) =
    PRE
        number : 1 .. 6
    THEN
        lastNumber := { number }
    END

END
