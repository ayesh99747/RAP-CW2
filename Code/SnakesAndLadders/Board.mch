/* Board
 * Author: ayesh
 * Creation date: 26/01/2022
 *
 * The Board Machine is used to 
 */
MACHINE
    Board

CONSTANTS 
    startingPosition, // This constant is used to define the starting position on the board.
    finishingPosition,  // This constant is used to define the finishing position on the board.
    board, // This set is used to represent the values available on the board (0 to 100).
    snakes, // This set of maplets is used to represent the snakes on the board (head |-> tail).
    ladders // This set of maplets is used to represent the ladders on the board (bottom |-> top).
    
PROPERTIES    
    startingPosition : NAT1 & startingPosition = 1 & // Setting the starting position as 1.
    finishingPosition : NAT1 & finishingPosition = 100 &  // Setting the starting position as 100.
    board <: NAT1 & board = startingPosition..finishingPosition & // Setting the values on the board 0 to 100.
    snakes : NAT1 +-> NAT1 & // The snakes array consists of maplets of natural numbers.
    snakes = { 31 |-> 4, 16 |-> 13, 47 |-> 25, 63 |-> 60, 66 |-> 52, 97 |-> 75 } & // Initialising the values for snakes.
    ladders : NAT1 +-> NAT1 & // The ladders array consists of maplets of natural numbers.
    ladders = { 3 |-> 39, 10 |-> 12, 27 |-> 53, 56 |-> 84, 61 |-> 99, 72 |-> 90 } // Initialising the values for ladders.

END
