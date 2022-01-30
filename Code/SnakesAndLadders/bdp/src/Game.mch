/* Game
 * Author: ayesh
 * Creation date: 26/01/2022
 *
 * The Game machine is used to represent a 
 */
MACHINE
    Game

SEES
    Board , Dice

SETS
    // The following set contains all the relevant status messages.
    MESSAGE = { WentDownASnake , WentUpALadder , ThrewTooHighADiceValue , FinishedAndWon , LandedOnANormalSquare , NewGameStarted }



                                                                        // Used to check if the square has a ladder top.
ABSTRACT_VARIABLES
    currentPosition , // Used to represent the current position on the board.
    numberOfSnakesEncountered , // Used to count the number of snakes gone down.
    numberOfLaddersEncountered , // Used to count the number of ladders gone up.
    numberOfTurnsTaken , // Used to represent the number of turns taken.
    squaresVisited // Sequence used to represent the squares visited.

INVARIANT
    currentPosition : NAT1 & // The currentPosition is an element of the natural number set.
    numberOfSnakesEncountered : NAT &  // The numberOfSnakesEncountered is an element of the natural number set.
    numberOfLaddersEncountered : NAT & // The numberOfLaddersEncountered is an element of the natural number set.
    numberOfTurnsTaken : NAT & // The numberOfTurnsTaken is an element of the natural number set.
    squaresVisited : seq ( board ) // The squaresVisited is a sequence of board elements.



INITIALISATION
    // The currentPosition is the startingPosition(1) in the beginning.
    currentPosition := startingPosition ||
    // The numberOfSnakesEncountered is 0 in the beginning.
    numberOfSnakesEncountered := 0 ||
    // The numberOfLaddersEncountered is 0 in the beginning.
    numberOfLaddersEncountered := 0 ||
    // The numberOfTurnsTaken is 0 in the beginning.
    numberOfTurnsTaken := 0 ||
    // The squaresVisited is the startingPosition(1) in the beginning.
    squaresVisited := [ startingPosition ]


OPERATIONS

    // The following operation is used to traverse the board.
    message , squareNumber <-- Move ( number ) =
    PRE
         number : diceNumbers
    THEN
        IF ( ( currentPosition + number ) < finishingPosition ) // If the new position is less than 100
        THEN
            numberOfTurnsTaken := numberOfTurnsTaken + 1 || //  Increment the numberOfTurnsTakenVariable
            IF ( ( currentPosition + number : dom ( snakes ) )     ) // IF the new position contains a snake head.
            THEN
                // Adding the new position to the sequence.
                squaresVisited := squaresVisited <- ( currentPosition + number ) <- snakes ( currentPosition + number )
                || currentPosition :=  snakes ( currentPosition + number ) // Updating the current position with the new position.
                || numberOfSnakesEncountered := numberOfSnakesEncountered + 1 // Incrementing the number of snakes encountered by 1.
                || message := WentDownASnake // Setting the relevant message.
                || squareNumber := currentPosition + number // Setting the square number.
            ELSE
                IF ( ( currentPosition + number : dom ( ladders ) )        ) // IF the new position contains a ladder bottom.
                THEN
                    // Adding the new position to the sequence.
                    squaresVisited := squaresVisited <- ( currentPosition + number ) <- ladders ( currentPosition + number )
                    || currentPosition :=  ladders ( currentPosition + number ) // Updating the current position with the new position.
                    || numberOfLaddersEncountered := numberOfLaddersEncountered + 1 // Incrementing the number of ladders encountered by 1.
                    || message := WentUpALadder // Setting the relevant message.
                    || squareNumber := currentPosition + number // Setting the square number.
                ELSE
                    currentPosition := currentPosition + number // Updating the current position with the new position.
                    || squaresVisited := squaresVisited <- ( currentPosition + number ) // Adding the new position to the sequence.
                    || message := LandedOnANormalSquare // Setting the relevant message.
                    || squareNumber := currentPosition + number // Setting the square number.

                END
            END
        ELSE
            IF ( ( currentPosition + number ) = finishingPosition )
            THEN
                currentPosition := currentPosition + number  // Updating the current position with the new position.
                || squaresVisited := squaresVisited <- ( currentPosition + number ) // Adding the new position to the sequence.
                || message := FinishedAndWon // Setting the relevant message.
                || squareNumber := currentPosition + number // Setting the square number.
            ELSE
                 message := ThrewTooHighADiceValue // Setting the relevant message.
                || squareNumber := currentPosition + number // Setting the square number.
            END
        END
    END ;


   //The following operation is used to get the current statistics of the game.
       // position - Current Position on the board.
       // numberOfSnakesGoneDown - Count of all the snakes gone down.
       // numberOfLaddersGoneDown - Count of all the ladders gone up.
       // numberOfTurns - Count of all the turns taken.
    position , numberOfSnakesGoneDown , numberOfLaddersGoneUp , numberOfTurns <-- GameStatistics =
    BEGIN
        position := currentPosition ||
        numberOfSnakesGoneDown := numberOfSnakesEncountered ||
        numberOfLaddersGoneUp := numberOfLaddersEncountered ||
        numberOfTurns := numberOfTurnsTaken
    END ;


    // The following operation will return the sequence of all the squares visited.
    previouslyVisitedSquares <-- VisitedSquares =
    BEGIN
        previouslyVisitedSquares := squaresVisited
    END ;


    // The following operation will reset all the values to the initial values.
    status <-- NewGame =
    BEGIN
        currentPosition := 1 ||
        numberOfSnakesEncountered := 0 ||
        numberOfLaddersEncountered := 0 ||
        numberOfTurnsTaken := 0 ||
        squaresVisited := [ startingPosition ] ||
        status := NewGameStarted
    END

END
