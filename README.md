# Snakes & Ladders Board Game - Reasoning about Programs Coursework 2
This repository contains the B specification of a Snakes & Ladders board game developed using Atelier B & ProB tools.

## Introduction
The goal of this coursework is to develop a B specification for the Snakes & Ladders board game. The game involves throwing a single dice and moving up the board, where landing at the bottom of a ladder moves you to the top, and landing at the head of a snake moves you down to its tail. The game is completed by landing on the last square, i.e. 100. The state of the game includes the current position on the board, the dice value last thrown, the number of moves, the number of snakes gone down, the number of ladders gone up, and the list of squares visited in the order visited.

## Specification
### Sets and Constants
The following sets and constants are used to define the data and state of the board and player:

* PLAYER: set of players
* BOARD: set of squares on the board
* DICE: set of values on the dice
* snakes: constant set of snakes with their head and tail squares
* ladders: constant set of ladders with their bottom and top squares

### System State
The system state includes the following variables:

* position: current position of the player on the board
* snakes_gone_down: number of snakes the player has gone down
* ladders_gone_up: number of ladders the player has gone up
* moves: number of moves the player has made
* visited_squares: list of squares visited in the order visited
* last_dice_value: most recent dice value thrown

### Invariant:
The system state also includes the following invariant and initialization:

* 1 <= position <= 100
* snakes_gone_down >= 0
* ladders_gone_up >= 0
* moves >= 0
* visited_squares <: BOARD
* last_dice_value <: DICE

### Initialization:

* position = 1
* snakes_gone_down = 0
* ladders_gone_up = 0
* moves = 0
* visited_squares = {}
* last_dice_value = {}

## Operations
The system has the following four operations:

#### Move
This operation adds the last thrown dice value to the current position on the board, then takes whatever action is appropriate for the square landed on. That is either:

* go down a snake
* go up a ladder
* do not move as the new square is above 100
* land on the last square and win
* land on a normal square.

The move operation reports its outcome:

* result: a message indicating that the move either went down a snake, up a ladder, threw too high a dice value to finish, finished and won, or landed on a normal square.
* square_occupied: the square it occupies as a result of the move.

#### GameStatistics
This operation outputs the current statistics for the game, including:

position: current position on the board
snakes_gone_down: number of snakes encountered
ladders_gone_up: number of ladders encountered
moves: number of turns taken

#### VisitedSquares
This operation outputs the list of squares that have been visited in the order visited.

#### NewGame
This operation reinitializes the game so that a new game can be started, and outputs a message stating a new game has started.
