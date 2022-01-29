/* Board
 * Author: ayesh
 * Creation date: 26/01/2022
 */
MACHINE
    Board

CONSTANTS 
    startingPosition, 
    finishingPosition, 
    board, 
    /*snakeHeads,
    snakeTails,
    LadderBottoms,
    LadderTops*/
    snakes,
    ladders
    
PROPERTIES    
    startingPosition : NAT1 & startingPosition = 1 & 
    finishingPosition : NAT1 & finishingPosition = 100 & 
    board <: NAT1 & board = startingPosition..finishingPosition &

    /*snakeHeads : 1..6 +-> NAT1 &
    snakeTails : 1..6 +-> NAT1 &
    LadderBottoms : 1..6 +-> NAT1 &
    LadderTops : 1..6 +-> NAT1 &

    snakeHeads = { 1 |-> 31, 2 |-> 16, 3 |-> 47, 4 |-> 63, 5 |-> 66, 6 |-> 97 } &
    snakeTails = { 1 |-> 4, 2 |-> 13, 3 |-> 25, 4 |-> 60, 5 |-> 52, 6 |-> 75 } &
    LadderBottoms = { 1 |-> 3, 2 |-> 10, 3 |-> 27, 4 |-> 56, 5 |-> 61, 6 |-> 72 } &
    LadderTops = { 1 |-> 39, 2 |-> 12, 3 |-> 53, 4 |-> 84, 5 |-> 99, 6 |-> 90 } */
    snakes : NAT1 +-> NAT1 &
    ladders : NAT1 +-> NAT1 &
    snakes = { 31 |-> 4, 16 |-> 13, 47 |-> 25, 63 |-> 60, 66 |-> 52, 97 |-> 75 } &
    ladders = { 3 |-> 39, 10 |-> 12, 27 |-> 53, 56 |-> 84, 61 |-> 99, 72 |-> 90 }


  /*VARIABLES
  snakeHeads,
    snakeTails,
    LadderBottoms,
    LadderTops
    snakes,
    ladders*/

    
    
/*INVARIANT
    snakeHeads <: NAT1 & card(snakeHeads) = 6 &
    snakeTails <: NAT1 & card(snakeTails) = 6 &
    LadderBottoms <: NAT1 & card(LadderBottoms) = 6 &
    LadderTops <: NAT1 & card(LadderTops) = 6 
    snakes : NAT1 <-> NAT1 &
    ladders : NAT1 <-> NAT1*/

    

/*INITIALISATION
    snakeHeads := { 31, 16, 47, 63, 66, 97 } ||
    snakeTails := { 4, 13, 25, 60, 52, 75 } ||
    LadderBottoms := { 3, 10, 27, 56, 61, 72 } ||
    LadderTops := { 39, 12, 53, 84, 99, 90 } 
    snakes := {(31 |-> 4) , (16 |-> 13), (47 |-> 25), (63 |-> 60), (66 |-> 52), (97 |-> 75)} ||
    ladders := {(3 |-> 39) , (10 |-> 12), (27 |-> 53), (56 |-> 84), (61 |-> 99), (72 |-> 90)}*/

   
END
