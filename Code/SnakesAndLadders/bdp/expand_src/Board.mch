/* Board
 * Author: ayesh
 * Creation date: 26/01/2022
 */
MACHINE
    Board

CONCRETE_CONSTANTS
    sideLength , // This constant will hold the length of a side on the board(10). 
    Length , // This constant will hold the set of the length values of the board (1 to 10). 
    board // The following set holds all the possible coordinates on the board.

PROPERTIES
    sideLength : NAT1 & sideLength = 10 &
    Length <: NAT1 & Length =  1 .. sideLength  &
    board : BOARD & board = Length * Length

ABSTRACT_VARIABLES
    snakeHeads ,
    snakeTails ,
    LadderBottoms ,
    LadderTops

INVARIANT
    snakeHeads : Length <-> Length & card ( snakeHeads ) = 6 &
    snakeTails : Length <-> Length & card ( snakeTails ) = 6 &
    LadderBottoms : Length <-> Length & card ( LadderBottoms ) = 6 &
    LadderTops : Length <-> Length & card ( LadderTops ) = 6

INITIALISATION
    snakeHeads := { ( 10 |-> 4 ) , ( 2 |-> 5 ) , ( 7 |-> 5 ) , ( 3 |-> 7 ) , ( 6 |-> 7 ) , ( 4 |-> 10 ) } ||
    snakeTails := { ( 4 |-> 1 ) , ( 2 |-> 8 ) , ( 5 |-> 3 ) , ( 1 |-> 6 ) , ( 9 |-> 6 ) , ( 8 |-> 8 ) } ||
    LadderBottoms := { ( 3 |-> 1 ) , ( 10 |-> 1 ) , ( 7 |-> 3 ) , ( 5 |-> 6 ) , ( 1 |-> 7 ) , ( 9 |-> 8 ) } ||
    LadderTops := { ( 2 |-> 4 ) , ( 9 |-> 2 ) , ( 8 |-> 6 ) , ( 4 |-> 9 ) , ( 2 |-> 10 ) , ( 10 |-> 9 ) }

DEFINITIONS
    /* The following definition will return true or false depending on whether 
       or not the given point in Space is out of the boundary. */
    isOutOfBoundary ( x , y ) == ( x /: Length or y /: Length ) ;




    BOARD == POW ( NAT1 * NAT1 )

END
