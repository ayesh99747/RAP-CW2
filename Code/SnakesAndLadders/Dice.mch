/* Dice
 * Author: ayesh
 * Creation date: 26/01/2022
 *
 * The Dice Machine is used to represent a 6 sided dice.
 */
MACHINE
    Dice

CONSTANTS 
    diceNumbers // This constant set is used to represent the sides of a dice.

PROPERTIES 
    diceNumbers <: NAT1  // The set is a subset of the Natural number set.
    & diceNumbers = 1..6 // The set has numbers from 1 to 6.

END
