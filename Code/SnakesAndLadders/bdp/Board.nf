Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Board))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Board))==(Machine(Board));
  Level(Machine(Board))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Board)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Board))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Board))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Board))==(?);
  List_Includes(Machine(Board))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Board))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Board))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Board))==(?);
  Context_List_Variables(Machine(Board))==(?);
  Abstract_List_Variables(Machine(Board))==(?);
  Local_List_Variables(Machine(Board))==(LadderTops,LadderBottoms,snakeTails,snakeHeads);
  List_Variables(Machine(Board))==(LadderTops,LadderBottoms,snakeTails,snakeHeads);
  External_List_Variables(Machine(Board))==(LadderTops,LadderBottoms,snakeTails,snakeHeads)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Board))==(?);
  Abstract_List_VisibleVariables(Machine(Board))==(?);
  External_List_VisibleVariables(Machine(Board))==(?);
  Expanded_List_VisibleVariables(Machine(Board))==(?);
  List_VisibleVariables(Machine(Board))==(?);
  Internal_List_VisibleVariables(Machine(Board))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Board))==(btrue);
  Gluing_List_Invariant(Machine(Board))==(btrue);
  Expanded_List_Invariant(Machine(Board))==(btrue);
  Abstract_List_Invariant(Machine(Board))==(btrue);
  Context_List_Invariant(Machine(Board))==(btrue);
  List_Invariant(Machine(Board))==(snakeHeads: Length <-> Length & card(snakeHeads) = 6 & snakeTails: Length <-> Length & card(snakeTails) = 6 & LadderBottoms: Length <-> Length & card(LadderBottoms) = 6 & LadderTops: Length <-> Length & card(LadderTops) = 6)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Board))==(btrue);
  Abstract_List_Assertions(Machine(Board))==(btrue);
  Context_List_Assertions(Machine(Board))==(btrue);
  List_Assertions(Machine(Board))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Board))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Board))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Board))==(snakeHeads,snakeTails,LadderBottoms,LadderTops:={10|->4,2|->5,7|->5,3|->7,6|->7,4|->10},{4|->1,2|->8,5|->3,1|->6,9|->6,8|->8},{3|->1,10|->1,7|->3,5|->6,1|->7,9|->8},{2|->4,9|->2,8|->6,4|->9,2|->10,10|->9});
  Context_List_Initialisation(Machine(Board))==(skip);
  List_Initialisation(Machine(Board))==(snakeHeads:={10|->4,2|->5,7|->5,3|->7,6|->7,4|->10} || snakeTails:={4|->1,2|->8,5|->3,1|->6,9|->6,8|->8} || LadderBottoms:={3|->1,10|->1,7|->3,5|->6,1|->7,9|->8} || LadderTops:={2|->4,9|->2,8|->6,4|->9,2|->10,10|->9})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Board))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Board))==(btrue);
  List_Constraints(Machine(Board))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Board))==(?);
  List_Operations(Machine(Board))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Board))==(sideLength,Length,board);
  Inherited_List_Constants(Machine(Board))==(?);
  List_Constants(Machine(Board))==(sideLength,Length,board)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Board))==(?);
  Context_List_Defered(Machine(Board))==(?);
  Context_List_Sets(Machine(Board))==(?);
  List_Valuable_Sets(Machine(Board))==(?);
  Inherited_List_Enumerated(Machine(Board))==(?);
  Inherited_List_Defered(Machine(Board))==(?);
  Inherited_List_Sets(Machine(Board))==(?);
  List_Enumerated(Machine(Board))==(?);
  List_Defered(Machine(Board))==(?);
  List_Sets(Machine(Board))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Board))==(?);
  Expanded_List_HiddenConstants(Machine(Board))==(?);
  List_HiddenConstants(Machine(Board))==(?);
  External_List_HiddenConstants(Machine(Board))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Board))==(btrue);
  Context_List_Properties(Machine(Board))==(btrue);
  Inherited_List_Properties(Machine(Board))==(btrue);
  List_Properties(Machine(Board))==(sideLength: NAT1 & sideLength = 10 & Length <: NAT1 & Length = 1..sideLength & board: POW(NAT1*NAT1) & board = Length*Length)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Board)) == (sideLength,Length,board | ? | LadderTops,LadderBottoms,snakeTails,snakeHeads | ? | ? | ? | ? | ? | Board);
  List_Of_HiddenCst_Ids(Machine(Board)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Board)) == (sideLength,Length,board);
  List_Of_VisibleVar_Ids(Machine(Board)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Board)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Board)) == (Type(sideLength) == Cst(btype(INTEGER,?,?));Type(Length) == Cst(SetOf(btype(INTEGER,"[Length","]Length")));Type(board) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Board)) == (Type(LadderTops) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(LadderBottoms) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(snakeTails) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(snakeHeads) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
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
