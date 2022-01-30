Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Game))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Game))==(Machine(Game));
  Level(Machine(Game))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Game)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Game))==(Board,Dice)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Game))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Game))==(?);
  List_Includes(Machine(Game))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Game))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Game))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Game))==(?);
  Context_List_Variables(Machine(Game))==(?);
  Abstract_List_Variables(Machine(Game))==(?);
  Local_List_Variables(Machine(Game))==(squaresVisited,numberOfTurnsTaken,numberOfLaddersEncountered,numberOfSnakesEncountered,currentPosition);
  List_Variables(Machine(Game))==(squaresVisited,numberOfTurnsTaken,numberOfLaddersEncountered,numberOfSnakesEncountered,currentPosition);
  External_List_Variables(Machine(Game))==(squaresVisited,numberOfTurnsTaken,numberOfLaddersEncountered,numberOfSnakesEncountered,currentPosition)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Game))==(?);
  Abstract_List_VisibleVariables(Machine(Game))==(?);
  External_List_VisibleVariables(Machine(Game))==(?);
  Expanded_List_VisibleVariables(Machine(Game))==(?);
  List_VisibleVariables(Machine(Game))==(?);
  Internal_List_VisibleVariables(Machine(Game))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Game))==(btrue);
  Gluing_List_Invariant(Machine(Game))==(btrue);
  Expanded_List_Invariant(Machine(Game))==(btrue);
  Abstract_List_Invariant(Machine(Game))==(btrue);
  Context_List_Invariant(Machine(Game))==(btrue);
  List_Invariant(Machine(Game))==(currentPosition: NAT1 & numberOfSnakesEncountered: NAT & numberOfLaddersEncountered: NAT & numberOfTurnsTaken: NAT & squaresVisited: seq(board))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Game))==(btrue);
  Abstract_List_Assertions(Machine(Game))==(btrue);
  Context_List_Assertions(Machine(Game))==(btrue);
  List_Assertions(Machine(Game))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Game))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Game))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Game))==(currentPosition,numberOfSnakesEncountered,numberOfLaddersEncountered,numberOfTurnsTaken,squaresVisited:=startingPosition,0,0,0,[startingPosition]);
  Context_List_Initialisation(Machine(Game))==(skip);
  List_Initialisation(Machine(Game))==(currentPosition:=startingPosition || numberOfSnakesEncountered:=0 || numberOfLaddersEncountered:=0 || numberOfTurnsTaken:=0 || squaresVisited:=[startingPosition])
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Game))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Game),Machine(Board))==(?);
  List_Instanciated_Parameters(Machine(Game),Machine(Dice))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Game))==(btrue);
  List_Constraints(Machine(Game))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Game))==(Move,GameStatistics,VisitedSquares,NewGame);
  List_Operations(Machine(Game))==(Move,GameStatistics,VisitedSquares,NewGame)
END
&
THEORY ListInputX IS
  List_Input(Machine(Game),Move)==(number);
  List_Input(Machine(Game),GameStatistics)==(?);
  List_Input(Machine(Game),VisitedSquares)==(?);
  List_Input(Machine(Game),NewGame)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Game),Move)==(message,squareNumber);
  List_Output(Machine(Game),GameStatistics)==(position,numberOfSnakesGoneDown,numberOfLaddersGoneUp,numberOfTurns);
  List_Output(Machine(Game),VisitedSquares)==(previouslyVisitedSquares);
  List_Output(Machine(Game),NewGame)==(status)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Game),Move)==(message,squareNumber <-- Move(number));
  List_Header(Machine(Game),GameStatistics)==(position,numberOfSnakesGoneDown,numberOfLaddersGoneUp,numberOfTurns <-- GameStatistics);
  List_Header(Machine(Game),VisitedSquares)==(previouslyVisitedSquares <-- VisitedSquares);
  List_Header(Machine(Game),NewGame)==(status <-- NewGame)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Game),Move)==(number: diceNumbers);
  List_Precondition(Machine(Game),GameStatistics)==(btrue);
  List_Precondition(Machine(Game),VisitedSquares)==(btrue);
  List_Precondition(Machine(Game),NewGame)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Game),NewGame)==(btrue | currentPosition,numberOfSnakesEncountered,numberOfLaddersEncountered,numberOfTurnsTaken,squaresVisited,status:=1,0,0,0,[startingPosition],NewGameStarted);
  Expanded_List_Substitution(Machine(Game),VisitedSquares)==(btrue | previouslyVisitedSquares:=squaresVisited);
  Expanded_List_Substitution(Machine(Game),GameStatistics)==(btrue | position,numberOfSnakesGoneDown,numberOfLaddersGoneUp,numberOfTurns:=currentPosition,numberOfSnakesEncountered,numberOfLaddersEncountered,numberOfTurnsTaken);
  Expanded_List_Substitution(Machine(Game),Move)==(number: diceNumbers | currentPosition+number<finishingPosition ==> (numberOfTurnsTaken:=numberOfTurnsTaken+1 || (currentPosition+number: dom(snakes) ==> squaresVisited,currentPosition,numberOfSnakesEncountered,message,squareNumber:=squaresVisited<-currentPosition+number<-snakes(currentPosition+number),snakes(currentPosition+number),numberOfSnakesEncountered+1,WentDownASnake,currentPosition+number [] not(currentPosition+number: dom(snakes)) ==> (currentPosition+number: dom(ladders) ==> squaresVisited,currentPosition,numberOfLaddersEncountered,message,squareNumber:=squaresVisited<-currentPosition+number<-ladders(currentPosition+number),ladders(currentPosition+number),numberOfLaddersEncountered+1,WentUpALadder,currentPosition+number [] not(currentPosition+number: dom(ladders)) ==> currentPosition,squaresVisited,message,squareNumber:=currentPosition+number,squaresVisited<-currentPosition+number,LandedOnANormalSquare,currentPosition+number))) [] not(currentPosition+number<finishingPosition) ==> (currentPosition+number = finishingPosition ==> currentPosition,squaresVisited,message,squareNumber:=currentPosition+number,squaresVisited<-currentPosition+number,FinishedAndWon,currentPosition+number [] not(currentPosition+number = finishingPosition) ==> message,squareNumber:=ThrewTooHighADiceValue,currentPosition+number));
  List_Substitution(Machine(Game),Move)==(IF currentPosition+number<finishingPosition THEN numberOfTurnsTaken:=numberOfTurnsTaken+1 || IF currentPosition+number: dom(snakes) THEN squaresVisited:=squaresVisited<-currentPosition+number<-snakes(currentPosition+number) || currentPosition:=snakes(currentPosition+number) || numberOfSnakesEncountered:=numberOfSnakesEncountered+1 || message:=WentDownASnake || squareNumber:=currentPosition+number ELSE IF currentPosition+number: dom(ladders) THEN squaresVisited:=squaresVisited<-currentPosition+number<-ladders(currentPosition+number) || currentPosition:=ladders(currentPosition+number) || numberOfLaddersEncountered:=numberOfLaddersEncountered+1 || message:=WentUpALadder || squareNumber:=currentPosition+number ELSE currentPosition:=currentPosition+number || squaresVisited:=squaresVisited<-currentPosition+number || message:=LandedOnANormalSquare || squareNumber:=currentPosition+number END END ELSE IF currentPosition+number = finishingPosition THEN currentPosition:=currentPosition+number || squaresVisited:=squaresVisited<-currentPosition+number || message:=FinishedAndWon || squareNumber:=currentPosition+number ELSE message:=ThrewTooHighADiceValue || squareNumber:=currentPosition+number END END);
  List_Substitution(Machine(Game),GameStatistics)==(position:=currentPosition || numberOfSnakesGoneDown:=numberOfSnakesEncountered || numberOfLaddersGoneUp:=numberOfLaddersEncountered || numberOfTurns:=numberOfTurnsTaken);
  List_Substitution(Machine(Game),VisitedSquares)==(previouslyVisitedSquares:=squaresVisited);
  List_Substitution(Machine(Game),NewGame)==(currentPosition:=1 || numberOfSnakesEncountered:=0 || numberOfLaddersEncountered:=0 || numberOfTurnsTaken:=0 || squaresVisited:=[startingPosition] || status:=NewGameStarted)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Game))==(?);
  Inherited_List_Constants(Machine(Game))==(?);
  List_Constants(Machine(Game))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Game),MESSAGE)==({WentDownASnake,WentUpALadder,ThrewTooHighADiceValue,FinishedAndWon,LandedOnANormalSquare,NewGameStarted});
  Context_List_Enumerated(Machine(Game))==(?);
  Context_List_Defered(Machine(Game))==(?);
  Context_List_Sets(Machine(Game))==(?);
  List_Valuable_Sets(Machine(Game))==(?);
  Inherited_List_Enumerated(Machine(Game))==(?);
  Inherited_List_Defered(Machine(Game))==(?);
  Inherited_List_Sets(Machine(Game))==(?);
  List_Enumerated(Machine(Game))==(MESSAGE);
  List_Defered(Machine(Game))==(?);
  List_Sets(Machine(Game))==(MESSAGE)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Game))==(?);
  Expanded_List_HiddenConstants(Machine(Game))==(?);
  List_HiddenConstants(Machine(Game))==(?);
  External_List_HiddenConstants(Machine(Game))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Game))==(btrue);
  Context_List_Properties(Machine(Game))==(startingPosition: NAT1 & startingPosition = 1 & finishingPosition: NAT1 & finishingPosition = 100 & board <: NAT1 & board = startingPosition..finishingPosition & snakes: NAT1 +-> NAT1 & snakes = {31|->4,16|->13,47|->25,63|->60,66|->52,97|->75} & ladders: NAT1 +-> NAT1 & ladders = {3|->39,10|->12,27|->53,56|->84,61|->99,72|->90} & diceNumbers <: NAT1 & diceNumbers = 1..6);
  Inherited_List_Properties(Machine(Game))==(btrue);
  List_Properties(Machine(Game))==(MESSAGE: FIN(INTEGER) & not(MESSAGE = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Game),Machine(Dice))==(?);
  Seen_Context_List_Enumerated(Machine(Game))==(?);
  Seen_Context_List_Invariant(Machine(Game))==(btrue);
  Seen_Context_List_Assertions(Machine(Game))==(btrue);
  Seen_Context_List_Properties(Machine(Game))==(btrue);
  Seen_List_Constraints(Machine(Game))==(btrue);
  Seen_List_Operations(Machine(Game),Machine(Dice))==(?);
  Seen_Expanded_List_Invariant(Machine(Game),Machine(Dice))==(btrue);
  Seen_Internal_List_Operations(Machine(Game),Machine(Board))==(?);
  Seen_List_Operations(Machine(Game),Machine(Board))==(?);
  Seen_Expanded_List_Invariant(Machine(Game),Machine(Board))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Game),Move)==(?);
  List_ANY_Var(Machine(Game),GameStatistics)==(?);
  List_ANY_Var(Machine(Game),VisitedSquares)==(?);
  List_ANY_Var(Machine(Game),NewGame)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Game)) == (MESSAGE,WentDownASnake,WentUpALadder,ThrewTooHighADiceValue,FinishedAndWon,LandedOnANormalSquare,NewGameStarted | ? | squaresVisited,numberOfTurnsTaken,numberOfLaddersEncountered,numberOfSnakesEncountered,currentPosition | ? | Move,GameStatistics,VisitedSquares,NewGame | ? | seen(Machine(Board)),seen(Machine(Dice)) | ? | Game);
  List_Of_HiddenCst_Ids(Machine(Game)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Game)) == (?);
  List_Of_VisibleVar_Ids(Machine(Game)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game)) == (?: ?);
  List_Of_Ids(Machine(Dice)) == (diceNumbers | ? | ? | ? | ? | ? | ? | ? | Dice);
  List_Of_HiddenCst_Ids(Machine(Dice)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Dice)) == (diceNumbers);
  List_Of_VisibleVar_Ids(Machine(Dice)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Dice)) == (?: ?);
  List_Of_Ids(Machine(Board)) == (startingPosition,finishingPosition,board,snakes,ladders | ? | ? | ? | ? | ? | ? | ? | Board);
  List_Of_HiddenCst_Ids(Machine(Board)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Board)) == (startingPosition,finishingPosition,board,snakes,ladders);
  List_Of_VisibleVar_Ids(Machine(Board)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Board)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Game)) == (Type(MESSAGE) == Cst(SetOf(etype(MESSAGE,0,5))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Game)) == (Type(WentDownASnake) == Cst(etype(MESSAGE,0,5));Type(WentUpALadder) == Cst(etype(MESSAGE,0,5));Type(ThrewTooHighADiceValue) == Cst(etype(MESSAGE,0,5));Type(FinishedAndWon) == Cst(etype(MESSAGE,0,5));Type(LandedOnANormalSquare) == Cst(etype(MESSAGE,0,5));Type(NewGameStarted) == Cst(etype(MESSAGE,0,5)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Game)) == (Type(squaresVisited) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(numberOfTurnsTaken) == Mvl(btype(INTEGER,?,?));Type(numberOfLaddersEncountered) == Mvl(btype(INTEGER,?,?));Type(numberOfSnakesEncountered) == Mvl(btype(INTEGER,?,?));Type(currentPosition) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Game)) == (Type(NewGame) == Cst(etype(MESSAGE,?,?),No_type);Type(VisitedSquares) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),No_type);Type(GameStatistics) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(Move) == Cst(etype(MESSAGE,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)));
  Observers(Machine(Game)) == (Type(VisitedSquares) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),No_type);Type(GameStatistics) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
