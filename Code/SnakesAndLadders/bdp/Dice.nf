Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Dice))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Dice))==(Machine(Dice));
  Level(Machine(Dice))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Dice)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Dice))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Dice))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Dice))==(?);
  List_Includes(Machine(Dice))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Dice))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Dice))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Dice))==(?);
  Context_List_Variables(Machine(Dice))==(?);
  Abstract_List_Variables(Machine(Dice))==(?);
  Local_List_Variables(Machine(Dice))==(lastNumber);
  List_Variables(Machine(Dice))==(lastNumber);
  External_List_Variables(Machine(Dice))==(lastNumber)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Dice))==(?);
  Abstract_List_VisibleVariables(Machine(Dice))==(?);
  External_List_VisibleVariables(Machine(Dice))==(?);
  Expanded_List_VisibleVariables(Machine(Dice))==(?);
  List_VisibleVariables(Machine(Dice))==(?);
  Internal_List_VisibleVariables(Machine(Dice))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Dice))==(btrue);
  Gluing_List_Invariant(Machine(Dice))==(btrue);
  Expanded_List_Invariant(Machine(Dice))==(btrue);
  Abstract_List_Invariant(Machine(Dice))==(btrue);
  Context_List_Invariant(Machine(Dice))==(btrue);
  List_Invariant(Machine(Dice))==(lastNumber <: INTEGER & card(lastNumber)<=1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Dice))==(btrue);
  Abstract_List_Assertions(Machine(Dice))==(btrue);
  Context_List_Assertions(Machine(Dice))==(btrue);
  List_Assertions(Machine(Dice))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Dice))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Dice))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Dice))==(lastNumber:={});
  Context_List_Initialisation(Machine(Dice))==(skip);
  List_Initialisation(Machine(Dice))==(lastNumber:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Dice))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Dice))==(btrue);
  List_Constraints(Machine(Dice))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Dice))==(roll);
  List_Operations(Machine(Dice))==(roll)
END
&
THEORY ListInputX IS
  List_Input(Machine(Dice),roll)==(number)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Dice),roll)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Dice),roll)==(roll(number))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Dice),roll)==(number: 1..6)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Dice),roll)==(number: 1..6 | lastNumber:={number});
  List_Substitution(Machine(Dice),roll)==(lastNumber:={number})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Dice))==(?);
  Inherited_List_Constants(Machine(Dice))==(?);
  List_Constants(Machine(Dice))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Dice))==(?);
  Context_List_Defered(Machine(Dice))==(?);
  Context_List_Sets(Machine(Dice))==(?);
  List_Valuable_Sets(Machine(Dice))==(?);
  Inherited_List_Enumerated(Machine(Dice))==(?);
  Inherited_List_Defered(Machine(Dice))==(?);
  Inherited_List_Sets(Machine(Dice))==(?);
  List_Enumerated(Machine(Dice))==(?);
  List_Defered(Machine(Dice))==(?);
  List_Sets(Machine(Dice))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Dice))==(?);
  Expanded_List_HiddenConstants(Machine(Dice))==(?);
  List_HiddenConstants(Machine(Dice))==(?);
  External_List_HiddenConstants(Machine(Dice))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Dice))==(btrue);
  Context_List_Properties(Machine(Dice))==(btrue);
  Inherited_List_Properties(Machine(Dice))==(btrue);
  List_Properties(Machine(Dice))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Dice),roll)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Dice)) == (? | ? | lastNumber | ? | roll | ? | ? | ? | Dice);
  List_Of_HiddenCst_Ids(Machine(Dice)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Dice)) == (?);
  List_Of_VisibleVar_Ids(Machine(Dice)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Dice)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Dice)) == (Type(lastNumber) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Dice)) == (Type(roll) == Cst(No_type,btype(INTEGER,?,?)))
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
