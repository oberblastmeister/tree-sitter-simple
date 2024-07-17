{-# LANGUAGE DeriveAnyClass #-}
-- This file was generated! DO NOT EDIT!
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-unused-local-binds #-}

{-# HLINT ignore "Use camelCase" #-}

module AST.Haskell.Generated
  ( ClassDecl (..),
    Constraint (..),
    Constraints (..),
    Decl (..),
    Declaration (..),
    Expression (..),
    Guard (..),
    InstanceDecl (..),
    Pattern (..),
    Qualifier (..),
    QuantifiedType (..),
    Statement (..),
    Type (..),
    TypeParam (..),
    AbstractFamily (..),
    Alternative (..),
    AlternativeU (..),
    Alternatives (..),
    AlternativesU (..),
    Annotated (..),
    AnnotatedU (..),
    Apply (..),
    ApplyU (..),
    ArithmeticSequence (..),
    ArithmeticSequenceU (..),
    As (..),
    AsU (..),
    AssociatedType (..),
    AssociatedTypeU (..),
    Bind (..),
    BindU (..),
    BindingList (..),
    BindingListU (..),
    Boolean (..),
    BooleanU (..),
    Case (..),
    CaseU (..),
    Children (..),
    ChildrenU (..),
    Class (..),
    ClassU (..),
    ClassDeclarations (..),
    ClassDeclarationsU (..),
    Conditional (..),
    ConditionalU (..),
    ConstructorOperator (..),
    ConstructorSynonym (..),
    ConstructorSynonymU (..),
    ConstructorSynonyms (..),
    ConstructorSynonymsU (..),
    Context (..),
    ContextU (..),
    DataConstructor (..),
    DataConstructorU (..),
    DataConstructors (..),
    DataConstructorsU (..),
    DataFamily (..),
    DataFamilyU (..),
    DataInstance (..),
    DataInstanceU (..),
    DataType (..),
    DataTypeU (..),
    Declarations (..),
    DeclarationsU (..),
    DefaultSignature (..),
    DefaultSignatureU (..),
    DefaultTypes (..),
    DefaultTypesU (..),
    Deriving (..),
    DerivingU (..),
    DerivingInstance (..),
    DerivingInstanceU (..),
    DerivingStrategy (..),
    Do (..),
    DoU (..),
    DoModule (..),
    DoModuleU (..),
    EmptyList (..),
    Entity (..),
    EntityU (..),
    Equation (..),
    EquationU (..),
    Equations (..),
    EquationsU (..),
    Exp (..),
    ExpU (..),
    ExplicitType (..),
    ExplicitTypeU (..),
    Export (..),
    ExportU (..),
    Exports (..),
    ExportsU (..),
    Field (..),
    FieldU (..),
    FieldName (..),
    FieldNameU (..),
    FieldPath (..),
    FieldPathU (..),
    FieldPattern (..),
    FieldPatternU (..),
    FieldUpdate (..),
    FieldUpdateU (..),
    Fields (..),
    FieldsU (..),
    Fixity (..),
    FixityU (..),
    Forall (..),
    ForallU (..),
    ForallRequired (..),
    ForallRequiredU (..),
    ForeignExport (..),
    ForeignExportU (..),
    ForeignImport (..),
    ForeignImportU (..),
    Function (..),
    FunctionU (..),
    FunctionHeadParens (..),
    FunctionHeadParensU (..),
    Fundep (..),
    FundepU (..),
    Fundeps (..),
    FundepsU (..),
    GadtConstructor (..),
    GadtConstructorU (..),
    GadtConstructors (..),
    GadtConstructorsU (..),
    Generator (..),
    GeneratorU (..),
    Group (..),
    GroupU (..),
    Guards (..),
    GuardsU (..),
    Haskell (..),
    HaskellU (..),
    Header (..),
    HeaderU (..),
    ImplicitParameter (..),
    ImplicitParameterU (..),
    Import (..),
    ImportU (..),
    ImportList (..),
    ImportListU (..),
    ImportName (..),
    ImportNameU (..),
    Imports (..),
    ImportsU (..),
    Inferred (..),
    InferredU (..),
    Infix (..),
    InfixU (..),
    InfixId (..),
    InfixIdU (..),
    Instance (..),
    InstanceU (..),
    InstanceDeclarations (..),
    InstanceDeclarationsU (..),
    Integer (..),
    Invisible (..),
    InvisibleU (..),
    Irrefutable (..),
    IrrefutableU (..),
    KindApplication (..),
    KindApplicationU (..),
    KindSignature (..),
    KindSignatureU (..),
    Lambda (..),
    LambdaU (..),
    LambdaCase (..),
    LambdaCaseU (..),
    LambdaCases (..),
    LambdaCasesU (..),
    LazyField (..),
    LazyFieldU (..),
    LeftSection (..),
    LeftSectionU (..),
    Let (..),
    LetU (..),
    LetIn (..),
    LetInU (..),
    LinearFunction (..),
    LinearFunctionU (..),
    List (..),
    ListU (..),
    ListComprehension (..),
    ListComprehensionU (..),
    Literal (..),
    LiteralU (..),
    LocalBinds (..),
    LocalBindsU (..),
    Match (..),
    MatchU (..),
    Modifier (..),
    ModifierU (..),
    Module (..),
    ModuleU (..),
    ModuleExport (..),
    ModuleExportU (..),
    MultiWayIf (..),
    MultiWayIfU (..),
    Namespace (..),
    Negation (..),
    NegationU (..),
    Newtype (..),
    NewtypeU (..),
    NewtypeConstructor (..),
    NewtypeConstructorU (..),
    Operator (..),
    Parens (..),
    ParensU (..),
    PatternGuard (..),
    PatternGuardU (..),
    PatternSynonym (..),
    PatternSynonymU (..),
    Patterns (..),
    PatternsU (..),
    Prefix (..),
    PrefixU (..),
    PrefixId (..),
    PrefixIdU (..),
    PrefixList (..),
    PrefixTuple (..),
    PrefixUnboxedSum (..),
    PrefixUnboxedTuple (..),
    Projection (..),
    ProjectionU (..),
    ProjectionSelector (..),
    ProjectionSelectorU (..),
    Promoted (..),
    PromotedU (..),
    Qualified (..),
    QualifiedU (..),
    Qualifiers (..),
    QualifiersU (..),
    QuantifiedVariables (..),
    QuantifiedVariablesU (..),
    Quasiquote (..),
    QuasiquoteU (..),
    Quote (..),
    QuoteU (..),
    QuotedDecls (..),
    QuotedDeclsU (..),
    QuotedExpression (..),
    QuotedExpressionU (..),
    QuotedPattern (..),
    QuotedPatternU (..),
    QuotedType (..),
    QuotedTypeU (..),
    Quoter (..),
    QuoterU (..),
    Rec (..),
    RecU (..),
    Record (..),
    RecordU (..),
    RightSection (..),
    RightSectionU (..),
    RoleAnnotation (..),
    RoleAnnotationU (..),
    Signature (..),
    SignatureU (..),
    Special (..),
    SpecialU (..),
    Splice (..),
    SpliceU (..),
    Star (..),
    Strict (..),
    StrictU (..),
    StrictField (..),
    StrictFieldU (..),
    ThQuotedName (..),
    ThQuotedNameU (..),
    TopSplice (..),
    TopSpliceU (..),
    Transform (..),
    TransformU (..),
    Tuple (..),
    TupleU (..),
    TypeApplication (..),
    TypeApplicationU (..),
    TypeBinder (..),
    TypeBinderU (..),
    TypeFamily (..),
    TypeFamilyU (..),
    TypeFamilyInjectivity (..),
    TypeFamilyInjectivityU (..),
    TypeFamilyResult (..),
    TypeFamilyResultU (..),
    TypeInstance (..),
    TypeInstanceU (..),
    TypeParams (..),
    TypeParamsU (..),
    TypePatterns (..),
    TypePatternsU (..),
    TypeRole (..),
    TypeSynomym (..),
    TypeSynomymU (..),
    TypedQuote (..),
    TypedQuoteU (..),
    UnboxedSum (..),
    UnboxedSumU (..),
    UnboxedTuple (..),
    UnboxedTupleU (..),
    UnboxedUnit (..),
    Unit (..),
    Via (..),
    ViaU (..),
    ViewPattern (..),
    ViewPatternU (..),
    Wildcard (..),
    AllNames (..),
    CallingConvention (..),
    Char (..),
    Comment (..),
    Constructor (..),
    Cpp (..),
    Float (..),
    Haddock (..),
    ImplicitVariable (..),
    ImportPackage (..),
    Label (..),
    ModuleId (..),
    Name (..),
    Pragma (..),
    QuasiquoteBody (..),
    Safety (..),
    String (..),
    Variable (..),
  )
where

import AST.Cast qualified
import AST.Err qualified
import AST.Node qualified
import AST.Runtime qualified
import AST.Sum qualified as Sum
import AST.Token qualified
import AST.Unwrap qualified
import Control.DeepSeq qualified
import Control.Monad qualified
import Data.List.NonEmpty qualified
import Data.Map.Strict qualified
import Data.Text qualified
import GHC.Generics qualified
import TreeSitter.Api qualified as Api
import Prelude qualified

data ClassDecl = ClassDecl {dynNode :: AST.Node.DynNode, getClassDecl :: (DataFamily Sum.:+ Decl Sum.:+ DefaultSignature Sum.:+ Fixity Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast ClassDecl where
  cast dynNode = do
    getClassDecl <- AST.Cast.cast dynNode
    Prelude.pure (ClassDecl {dynNode = dynNode, getClassDecl})

instance AST.Node.HasDynNode ClassDecl where
  getDynNode (ClassDecl {dynNode}) = dynNode

data Constraint = Constraint {dynNode :: AST.Node.DynNode, getConstraint :: (Apply Sum.:+ Infix Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Tuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Constraint where
  cast dynNode = do
    getConstraint <- AST.Cast.cast dynNode
    Prelude.pure (Constraint {dynNode = dynNode, getConstraint})

instance AST.Node.HasDynNode Constraint where
  getDynNode (Constraint {dynNode}) = dynNode

data Constraints = Constraints {dynNode :: AST.Node.DynNode, getConstraints :: (Constraint Sum.:+ Context Sum.:+ Forall Sum.:+ ImplicitParameter Sum.:+ Signature Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Constraints where
  cast dynNode = do
    getConstraints <- AST.Cast.cast dynNode
    Prelude.pure (Constraints {dynNode = dynNode, getConstraints})

instance AST.Node.HasDynNode Constraints where
  getDynNode (Constraints {dynNode}) = dynNode

data Decl = Decl {dynNode :: AST.Node.DynNode, getDecl :: (Bind Sum.:+ Function Sum.:+ Signature Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Decl where
  cast dynNode = do
    getDecl <- AST.Cast.cast dynNode
    Prelude.pure (Decl {dynNode = dynNode, getDecl})

instance AST.Node.HasDynNode Decl where
  getDynNode (Decl {dynNode}) = dynNode

data Declaration = Declaration {dynNode :: AST.Node.DynNode, getDeclaration :: (Class Sum.:+ DataFamily Sum.:+ DataInstance Sum.:+ DataType Sum.:+ Decl Sum.:+ DefaultTypes Sum.:+ DerivingInstance Sum.:+ Fixity Sum.:+ ForeignExport Sum.:+ ForeignImport Sum.:+ Instance Sum.:+ KindSignature Sum.:+ Newtype Sum.:+ PatternSynonym Sum.:+ RoleAnnotation Sum.:+ TopSplice Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ TypeSynomym Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Declaration where
  cast dynNode = do
    getDeclaration <- AST.Cast.cast dynNode
    Prelude.pure (Declaration {dynNode = dynNode, getDeclaration})

instance AST.Node.HasDynNode Declaration where
  getDynNode (Declaration {dynNode}) = dynNode

data Expression = Expression {dynNode :: AST.Node.DynNode, getExpression :: (Apply Sum.:+ ArithmeticSequence Sum.:+ Case Sum.:+ Conditional Sum.:+ Constructor Sum.:+ Do Sum.:+ ImplicitVariable Sum.:+ Infix Sum.:+ Label Sum.:+ Lambda Sum.:+ LambdaCase Sum.:+ LambdaCases Sum.:+ LeftSection Sum.:+ LetIn Sum.:+ List Sum.:+ ListComprehension Sum.:+ Literal Sum.:+ MultiWayIf Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Projection Sum.:+ ProjectionSelector Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Quote Sum.:+ Record Sum.:+ RightSection Sum.:+ Splice Sum.:+ ThQuotedName Sum.:+ Tuple Sum.:+ TypedQuote Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Expression where
  cast dynNode = do
    getExpression <- AST.Cast.cast dynNode
    Prelude.pure (Expression {dynNode = dynNode, getExpression})

instance AST.Node.HasDynNode Expression where
  getDynNode (Expression {dynNode}) = dynNode

data Guard = Guard {dynNode :: AST.Node.DynNode, getGuard :: (Boolean Sum.:+ Let Sum.:+ PatternGuard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Guard where
  cast dynNode = do
    getGuard <- AST.Cast.cast dynNode
    Prelude.pure (Guard {dynNode = dynNode, getGuard})

instance AST.Node.HasDynNode Guard where
  getDynNode (Guard {dynNode}) = dynNode

data InstanceDecl = InstanceDecl {dynNode :: AST.Node.DynNode, getInstanceDecl :: (DataInstance Sum.:+ Decl Sum.:+ TypeInstance Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast InstanceDecl where
  cast dynNode = do
    getInstanceDecl <- AST.Cast.cast dynNode
    Prelude.pure (InstanceDecl {dynNode = dynNode, getInstanceDecl})

instance AST.Node.HasDynNode InstanceDecl where
  getDynNode (InstanceDecl {dynNode}) = dynNode

data Pattern = Pattern {dynNode :: AST.Node.DynNode, getPattern :: (Apply Sum.:+ As Sum.:+ Constructor Sum.:+ Infix Sum.:+ Irrefutable Sum.:+ List Sum.:+ Literal Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Record Sum.:+ Splice Sum.:+ Strict Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Pattern where
  cast dynNode = do
    getPattern <- AST.Cast.cast dynNode
    Prelude.pure (Pattern {dynNode = dynNode, getPattern})

instance AST.Node.HasDynNode Pattern where
  getDynNode (Pattern {dynNode}) = dynNode

data Qualifier = Qualifier {dynNode :: AST.Node.DynNode, getQualifier :: (Boolean Sum.:+ Generator Sum.:+ Group Sum.:+ Let Sum.:+ Transform Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Qualifier where
  cast dynNode = do
    getQualifier <- AST.Cast.cast dynNode
    Prelude.pure (Qualifier {dynNode = dynNode, getQualifier})

instance AST.Node.HasDynNode Qualifier where
  getDynNode (Qualifier {dynNode}) = dynNode

data QuantifiedType = QuantifiedType {dynNode :: AST.Node.DynNode, getQuantifiedType :: (Context Sum.:+ Forall Sum.:+ ForallRequired Sum.:+ Function Sum.:+ ImplicitParameter Sum.:+ LinearFunction Sum.:+ Type Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast QuantifiedType where
  cast dynNode = do
    getQuantifiedType <- AST.Cast.cast dynNode
    Prelude.pure (QuantifiedType {dynNode = dynNode, getQuantifiedType})

instance AST.Node.HasDynNode QuantifiedType where
  getDynNode (QuantifiedType {dynNode}) = dynNode

data Statement = Statement {dynNode :: AST.Node.DynNode, getStatement :: (Bind Sum.:+ Exp Sum.:+ Let Sum.:+ Rec Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Statement where
  cast dynNode = do
    getStatement <- AST.Cast.cast dynNode
    Prelude.pure (Statement {dynNode = dynNode, getStatement})

instance AST.Node.HasDynNode Statement where
  getDynNode (Statement {dynNode}) = dynNode

data Type = Type {dynNode :: AST.Node.DynNode, getType :: (Apply Sum.:+ Infix Sum.:+ List Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Star Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast Type where
  cast dynNode = do
    getType <- AST.Cast.cast dynNode
    Prelude.pure (Type {dynNode = dynNode, getType})

instance AST.Node.HasDynNode Type where
  getDynNode (Type {dynNode}) = dynNode

data TypeParam = TypeParam {dynNode :: AST.Node.DynNode, getTypeParam :: (Invisible Sum.:+ Parens Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Cast.Cast TypeParam where
  cast dynNode = do
    getTypeParam <- AST.Cast.cast dynNode
    Prelude.pure (TypeParam {dynNode = dynNode, getTypeParam})

instance AST.Node.HasDynNode TypeParam where
  getDynNode (TypeParam {dynNode}) = dynNode

data AbstractFamily = AbstractFamily {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode AbstractFamily where
  getDynNode (AbstractFamily {dynNode}) = dynNode

instance AST.Cast.Cast AbstractFamily where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "abstract_family")
    Prelude.pure (AbstractFamily {dynNode = dynNode})

data Alternative = Alternative
  { binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    match :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Match))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Patterns))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data AlternativeU = AlternativeU
  { binds :: Prelude.Maybe (LocalBinds),
    match :: Data.List.NonEmpty.NonEmpty (Match),
    pattern' :: Prelude.Maybe ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (Patterns),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Alternative :: Api.Node -> Prelude.Maybe Alternative
cast_Alternative dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "alternative")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr binds))
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr match))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr pattern'))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  Prelude.pure
    Alternative
      { binds,
        match,
        pattern',
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Alternative where
  getDynNode (Alternative {dynNode}) = dynNode

instance AST.Cast.Cast Alternative where
  cast = cast_Alternative

unwrap_Alternative :: Alternative -> AST.Err.Err AlternativeU
unwrap_Alternative node = do
  binds <- AST.Runtime.unwrapMaybe node.binds
  match <- AST.Runtime.unwrapNonEmpty node.match
  pattern' <- AST.Runtime.unwrapMaybe node.pattern'
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    AlternativeU
      { binds,
        match,
        pattern',
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Alternative AlternativeU where
  unwrap = unwrap_Alternative

data Alternatives = Alternatives
  { alternative :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Alternative))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data AlternativesU = AlternativesU
  { alternative :: AST.Runtime.List (Alternative),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Alternatives :: Api.Node -> Prelude.Maybe Alternatives
cast_Alternatives dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "alternatives")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alternative <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternative" namedMap))
  alternative <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr alternative))
  Prelude.pure
    Alternatives
      { alternative,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Alternatives where
  getDynNode (Alternatives {dynNode}) = dynNode

instance AST.Cast.Cast Alternatives where
  cast = cast_Alternatives

unwrap_Alternatives :: Alternatives -> AST.Err.Err AlternativesU
unwrap_Alternatives node = do
  alternative <- AST.Runtime.unwrapList node.alternative
  Prelude.pure
    AlternativesU
      { alternative,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Alternatives AlternativesU where
  unwrap = unwrap_Alternatives

data Annotated = Annotated
  { children :: ((AST.Err.Err (TypeParam))),
    kind :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data AnnotatedU = AnnotatedU
  { children :: (TypeParam),
    kind :: (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Annotated :: Api.Node -> Prelude.Maybe Annotated
cast_Annotated dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "annotated")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr kind))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Annotated
      { children,
        kind,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Annotated where
  getDynNode (Annotated {dynNode}) = dynNode

instance AST.Cast.Cast Annotated where
  cast = cast_Annotated

unwrap_Annotated :: Annotated -> AST.Err.Err AnnotatedU
unwrap_Annotated node = do
  children <- AST.Runtime.unwrapSingle node.children
  kind <- AST.Runtime.unwrapSingle node.kind
  Prelude.pure
    AnnotatedU
      { children,
        kind,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Annotated AnnotatedU where
  unwrap = unwrap_Annotated

data Apply = Apply
  { argument :: ((AST.Err.Err ((ExplicitType Sum.:+ Expression Sum.:+ KindApplication Sum.:+ Pattern Sum.:+ Type Sum.:+ TypeApplication Sum.:+ TypeBinder Sum.:+ Sum.Nil)))),
    constructor :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Constraint Sum.:+ Type Sum.:+ Sum.Nil)))),
    function :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ApplyU = ApplyU
  { argument :: ((ExplicitType Sum.:+ Expression Sum.:+ KindApplication Sum.:+ Pattern Sum.:+ Type Sum.:+ TypeApplication Sum.:+ TypeBinder Sum.:+ Sum.Nil)),
    constructor :: Prelude.Maybe ((Constraint Sum.:+ Type Sum.:+ Sum.Nil)),
    function :: Prelude.Maybe ((Expression Sum.:+ Pattern Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Apply :: Api.Node -> Prelude.Maybe Apply
cast_Apply dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "apply")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  argument <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "argument" namedMap))
  argument <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr argument))
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr constructor))
  function <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "function" namedMap))
  function <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr function))
  Prelude.pure
    Apply
      { argument,
        constructor,
        function,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Apply where
  getDynNode (Apply {dynNode}) = dynNode

instance AST.Cast.Cast Apply where
  cast = cast_Apply

unwrap_Apply :: Apply -> AST.Err.Err ApplyU
unwrap_Apply node = do
  argument <- AST.Runtime.unwrapSingle node.argument
  constructor <- AST.Runtime.unwrapMaybe node.constructor
  function <- AST.Runtime.unwrapMaybe node.function
  Prelude.pure
    ApplyU
      { argument,
        constructor,
        function,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Apply ApplyU where
  unwrap = unwrap_Apply

data ArithmeticSequence = ArithmeticSequence
  { from :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    step :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    to :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ArithmeticSequenceU = ArithmeticSequenceU
  { from :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    step :: Prelude.Maybe ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    to :: Prelude.Maybe ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ArithmeticSequence :: Api.Node -> Prelude.Maybe ArithmeticSequence
cast_ArithmeticSequence dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "arithmetic_sequence")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  from <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "from" namedMap))
  from <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr from))
  step <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "step" namedMap))
  step <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr step))
  to <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "to" namedMap))
  to <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr to))
  Prelude.pure
    ArithmeticSequence
      { from,
        step,
        to,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ArithmeticSequence where
  getDynNode (ArithmeticSequence {dynNode}) = dynNode

instance AST.Cast.Cast ArithmeticSequence where
  cast = cast_ArithmeticSequence

unwrap_ArithmeticSequence :: ArithmeticSequence -> AST.Err.Err ArithmeticSequenceU
unwrap_ArithmeticSequence node = do
  from <- AST.Runtime.unwrapSingle node.from
  step <- AST.Runtime.unwrapMaybe node.step
  to <- AST.Runtime.unwrapMaybe node.to
  Prelude.pure
    ArithmeticSequenceU
      { from,
        step,
        to,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ArithmeticSequence ArithmeticSequenceU where
  unwrap = unwrap_ArithmeticSequence

data As = As
  { bind :: ((AST.Err.Err (Variable))),
    pattern' :: ((AST.Err.Err (Pattern))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data AsU = AsU
  { bind :: (Variable),
    pattern' :: (Pattern),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_As :: Api.Node -> Prelude.Maybe As
cast_As dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "as")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  bind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "bind" namedMap))
  bind <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr bind))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    As
      { bind,
        pattern',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode As where
  getDynNode (As {dynNode}) = dynNode

instance AST.Cast.Cast As where
  cast = cast_As

unwrap_As :: As -> AST.Err.Err AsU
unwrap_As node = do
  bind <- AST.Runtime.unwrapSingle node.bind
  pattern' <- AST.Runtime.unwrapSingle node.pattern'
  Prelude.pure
    AsU
      { bind,
        pattern',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap As AsU where
  unwrap = unwrap_As

data AssociatedType = AssociatedType
  { namespace :: ((AST.Err.Err ((AST.Token.Token "type")))),
    type' :: ((AST.Err.Err ((Name Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data AssociatedTypeU = AssociatedTypeU
  { namespace :: ((AST.Token.Token "type")),
    type' :: ((Name Sum.:+ Qualified Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_AssociatedType :: Api.Node -> Prelude.Maybe AssociatedType
cast_AssociatedType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "associated_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr namespace))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    AssociatedType
      { namespace,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode AssociatedType where
  getDynNode (AssociatedType {dynNode}) = dynNode

instance AST.Cast.Cast AssociatedType where
  cast = cast_AssociatedType

unwrap_AssociatedType :: AssociatedType -> AST.Err.Err AssociatedTypeU
unwrap_AssociatedType node = do
  namespace <- AST.Runtime.unwrapSingle node.namespace
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    AssociatedTypeU
      { namespace,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap AssociatedType AssociatedTypeU where
  unwrap = unwrap_AssociatedType

data Bind = Bind
  { arrow :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)))),
    binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    implicit :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ImplicitVariable))),
    match :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Match))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data BindU = BindU
  { arrow :: Prelude.Maybe (((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)),
    binds :: Prelude.Maybe (LocalBinds),
    expression :: Prelude.Maybe ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    implicit :: Prelude.Maybe (ImplicitVariable),
    match :: AST.Runtime.List (Match),
    name :: Prelude.Maybe ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)),
    pattern' :: Prelude.Maybe ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Bind :: Api.Node -> Prelude.Maybe Bind
cast_Bind dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "bind")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr arrow))
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr binds))
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr expression))
  implicit <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "implicit" namedMap))
  implicit <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr implicit))
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr match))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    Bind
      { arrow,
        binds,
        expression,
        implicit,
        match,
        name,
        pattern',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Bind where
  getDynNode (Bind {dynNode}) = dynNode

instance AST.Cast.Cast Bind where
  cast = cast_Bind

unwrap_Bind :: Bind -> AST.Err.Err BindU
unwrap_Bind node = do
  arrow <- AST.Runtime.unwrapMaybe node.arrow
  binds <- AST.Runtime.unwrapMaybe node.binds
  expression <- AST.Runtime.unwrapMaybe node.expression
  implicit <- AST.Runtime.unwrapMaybe node.implicit
  match <- AST.Runtime.unwrapList node.match
  name <- AST.Runtime.unwrapMaybe node.name
  pattern' <- AST.Runtime.unwrapMaybe node.pattern'
  Prelude.pure
    BindU
      { arrow,
        binds,
        expression,
        implicit,
        match,
        name,
        pattern',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Bind BindU where
  unwrap = unwrap_Bind

data BindingList = BindingList
  { name :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data BindingListU = BindingListU
  { name :: Data.List.NonEmpty.NonEmpty ((Constructor Sum.:+ PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_BindingList :: Api.Node -> Prelude.Maybe BindingList
cast_BindingList dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "binding_list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr name))
  Prelude.pure
    BindingList
      { name,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode BindingList where
  getDynNode (BindingList {dynNode}) = dynNode

instance AST.Cast.Cast BindingList where
  cast = cast_BindingList

unwrap_BindingList :: BindingList -> AST.Err.Err BindingListU
unwrap_BindingList node = do
  name <- AST.Runtime.unwrapNonEmpty node.name
  Prelude.pure
    BindingListU
      { name,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap BindingList BindingListU where
  unwrap = unwrap_BindingList

data Boolean = Boolean
  { children :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data BooleanU = BooleanU
  { children :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Boolean :: Api.Node -> Prelude.Maybe Boolean
cast_Boolean dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "boolean")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Boolean
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Boolean where
  getDynNode (Boolean {dynNode}) = dynNode

instance AST.Cast.Cast Boolean where
  cast = cast_Boolean

unwrap_Boolean :: Boolean -> AST.Err.Err BooleanU
unwrap_Boolean node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    BooleanU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Boolean BooleanU where
  unwrap = unwrap_Boolean

data Case = Case
  { children :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    alternatives :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Alternatives))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data CaseU = CaseU
  { children :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    alternatives :: Prelude.Maybe (Alternatives),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Case :: Api.Node -> Prelude.Maybe Case
cast_Case dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "case")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr alternatives))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Case
      { children,
        alternatives,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Case where
  getDynNode (Case {dynNode}) = dynNode

instance AST.Cast.Cast Case where
  cast = cast_Case

unwrap_Case :: Case -> AST.Err.Err CaseU
unwrap_Case node = do
  children <- AST.Runtime.unwrapSingle node.children
  alternatives <- AST.Runtime.unwrapMaybe node.alternatives
  Prelude.pure
    CaseU
      { children,
        alternatives,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Case CaseU where
  unwrap = unwrap_Case

data Children = Children
  { element :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((AllNames Sum.:+ AssociatedType Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ChildrenU = ChildrenU
  { element :: AST.Runtime.List ((AllNames Sum.:+ AssociatedType Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Children :: Api.Node -> Prelude.Maybe Children
cast_Children dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "children")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr element))
  Prelude.pure
    Children
      { element,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Children where
  getDynNode (Children {dynNode}) = dynNode

instance AST.Cast.Cast Children where
  cast = cast_Children

unwrap_Children :: Children -> AST.Err.Err ChildrenU
unwrap_Children node = do
  element <- AST.Runtime.unwrapList node.element
  Prelude.pure
    ChildrenU
      { element,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Children ChildrenU where
  unwrap = unwrap_Children

data Class = Class
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    declarations :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ClassDeclarations))),
    fundeps :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Fundeps))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ClassU = ClassU
  { children :: Prelude.Maybe ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)),
    context :: Prelude.Maybe (Context),
    declarations :: Prelude.Maybe (ClassDeclarations),
    fundeps :: Prelude.Maybe (Fundeps),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (TypeParams),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Class :: Api.Node -> Prelude.Maybe Class
cast_Class dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "class")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr context))
  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr declarations))
  fundeps <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fundeps" namedMap))
  fundeps <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr fundeps))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Class
      { children,
        context,
        declarations,
        fundeps,
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Class where
  getDynNode (Class {dynNode}) = dynNode

instance AST.Cast.Cast Class where
  cast = cast_Class

unwrap_Class :: Class -> AST.Err.Err ClassU
unwrap_Class node = do
  children <- AST.Runtime.unwrapMaybe node.children
  context <- AST.Runtime.unwrapMaybe node.context
  declarations <- AST.Runtime.unwrapMaybe node.declarations
  fundeps <- AST.Runtime.unwrapMaybe node.fundeps
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    ClassU
      { children,
        context,
        declarations,
        fundeps,
        name,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Class ClassU where
  unwrap = unwrap_Class

data ClassDeclarations = ClassDeclarations
  { declaration :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (ClassDecl))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ClassDeclarationsU = ClassDeclarationsU
  { declaration :: AST.Runtime.List (ClassDecl),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ClassDeclarations :: Api.Node -> Prelude.Maybe ClassDeclarations
cast_ClassDeclarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "class_declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr declaration))
  Prelude.pure
    ClassDeclarations
      { declaration,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ClassDeclarations where
  getDynNode (ClassDeclarations {dynNode}) = dynNode

instance AST.Cast.Cast ClassDeclarations where
  cast = cast_ClassDeclarations

unwrap_ClassDeclarations :: ClassDeclarations -> AST.Err.Err ClassDeclarationsU
unwrap_ClassDeclarations node = do
  declaration <- AST.Runtime.unwrapList node.declaration
  Prelude.pure
    ClassDeclarationsU
      { declaration,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ClassDeclarations ClassDeclarationsU where
  unwrap = unwrap_ClassDeclarations

data Conditional = Conditional
  { else' :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    if' :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    then' :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ConditionalU = ConditionalU
  { else' :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    if' :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    then' :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Conditional :: Api.Node -> Prelude.Maybe Conditional
cast_Conditional dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "conditional")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  else' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "else" namedMap))
  else' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr else'))
  if' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "if" namedMap))
  if' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr if'))
  then' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "then" namedMap))
  then' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr then'))
  Prelude.pure
    Conditional
      { else',
        if',
        then',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Conditional where
  getDynNode (Conditional {dynNode}) = dynNode

instance AST.Cast.Cast Conditional where
  cast = cast_Conditional

unwrap_Conditional :: Conditional -> AST.Err.Err ConditionalU
unwrap_Conditional node = do
  else' <- AST.Runtime.unwrapSingle node.else'
  if' <- AST.Runtime.unwrapSingle node.if'
  then' <- AST.Runtime.unwrapSingle node.then'
  Prelude.pure
    ConditionalU
      { else',
        if',
        then',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Conditional ConditionalU where
  unwrap = unwrap_Conditional

data ConstructorOperator = ConstructorOperator {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode ConstructorOperator where
  getDynNode (ConstructorOperator {dynNode}) = dynNode

instance AST.Cast.Cast ConstructorOperator where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_operator")
    Prelude.pure (ConstructorOperator {dynNode = dynNode})

data ConstructorSynonym = ConstructorSynonym
  { binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    implicit :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ImplicitVariable))),
    match :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Match))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ConstructorSynonymU = ConstructorSynonymU
  { binds :: Prelude.Maybe (LocalBinds),
    implicit :: Prelude.Maybe (ImplicitVariable),
    match :: Data.List.NonEmpty.NonEmpty (Match),
    name :: Prelude.Maybe ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)),
    pattern' :: Prelude.Maybe ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ConstructorSynonym :: Api.Node -> Prelude.Maybe ConstructorSynonym
cast_ConstructorSynonym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_synonym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr binds))
  implicit <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "implicit" namedMap))
  implicit <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr implicit))
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr match))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    ConstructorSynonym
      { binds,
        implicit,
        match,
        name,
        pattern',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ConstructorSynonym where
  getDynNode (ConstructorSynonym {dynNode}) = dynNode

instance AST.Cast.Cast ConstructorSynonym where
  cast = cast_ConstructorSynonym

unwrap_ConstructorSynonym :: ConstructorSynonym -> AST.Err.Err ConstructorSynonymU
unwrap_ConstructorSynonym node = do
  binds <- AST.Runtime.unwrapMaybe node.binds
  implicit <- AST.Runtime.unwrapMaybe node.implicit
  match <- AST.Runtime.unwrapNonEmpty node.match
  name <- AST.Runtime.unwrapMaybe node.name
  pattern' <- AST.Runtime.unwrapMaybe node.pattern'
  Prelude.pure
    ConstructorSynonymU
      { binds,
        implicit,
        match,
        name,
        pattern',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ConstructorSynonym ConstructorSynonymU where
  unwrap = unwrap_ConstructorSynonym

data ConstructorSynonyms = ConstructorSynonyms
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (ConstructorSynonym))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ConstructorSynonymsU = ConstructorSynonymsU
  { children :: AST.Runtime.List (ConstructorSynonym),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ConstructorSynonyms :: Api.Node -> Prelude.Maybe ConstructorSynonyms
cast_ConstructorSynonyms dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_synonyms")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    ConstructorSynonyms
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ConstructorSynonyms where
  getDynNode (ConstructorSynonyms {dynNode}) = dynNode

instance AST.Cast.Cast ConstructorSynonyms where
  cast = cast_ConstructorSynonyms

unwrap_ConstructorSynonyms :: ConstructorSynonyms -> AST.Err.Err ConstructorSynonymsU
unwrap_ConstructorSynonyms node = do
  children <- AST.Runtime.unwrapList node.children
  Prelude.pure
    ConstructorSynonymsU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ConstructorSynonyms ConstructorSynonymsU where
  unwrap = unwrap_ConstructorSynonyms

data Context = Context
  { arrow :: ((AST.Err.Err (((AST.Token.Token "=>") Sum.:+ (AST.Token.Token "⇒") Sum.:+ Sum.Nil)))),
    constraint :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Constraints))),
    context :: ((AST.Err.Err (Constraint))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ContextU = ContextU
  { arrow :: (((AST.Token.Token "=>") Sum.:+ (AST.Token.Token "⇒") Sum.:+ Sum.Nil)),
    constraint :: Prelude.Maybe (Constraints),
    context :: (Constraint),
    type' :: Prelude.Maybe (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Context :: Api.Node -> Prelude.Maybe Context
cast_Context dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "context")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr arrow))
  constraint <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constraint" namedMap))
  constraint <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr constraint))
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr context))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    Context
      { arrow,
        constraint,
        context,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Context where
  getDynNode (Context {dynNode}) = dynNode

instance AST.Cast.Cast Context where
  cast = cast_Context

unwrap_Context :: Context -> AST.Err.Err ContextU
unwrap_Context node = do
  arrow <- AST.Runtime.unwrapSingle node.arrow
  constraint <- AST.Runtime.unwrapMaybe node.constraint
  context <- AST.Runtime.unwrapSingle node.context
  type' <- AST.Runtime.unwrapMaybe node.type'
  Prelude.pure
    ContextU
      { arrow,
        constraint,
        context,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Context ContextU where
  unwrap = unwrap_Context

data DataConstructor = DataConstructor
  { constructor :: ((AST.Err.Err ((Infix Sum.:+ Prefix Sum.:+ Record Sum.:+ Special Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DataConstructorU = DataConstructorU
  { constructor :: ((Infix Sum.:+ Prefix Sum.:+ Record Sum.:+ Special Sum.:+ Sum.Nil)),
    context :: Prelude.Maybe (Context),
    forall' :: Prelude.Maybe ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_DataConstructor :: Api.Node -> Prelude.Maybe DataConstructor
cast_DataConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr constructor))
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr context))
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr forall'))
  Prelude.pure
    DataConstructor
      { constructor,
        context,
        forall',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode DataConstructor where
  getDynNode (DataConstructor {dynNode}) = dynNode

instance AST.Cast.Cast DataConstructor where
  cast = cast_DataConstructor

unwrap_DataConstructor :: DataConstructor -> AST.Err.Err DataConstructorU
unwrap_DataConstructor node = do
  constructor <- AST.Runtime.unwrapSingle node.constructor
  context <- AST.Runtime.unwrapMaybe node.context
  forall' <- AST.Runtime.unwrapMaybe node.forall'
  Prelude.pure
    DataConstructorU
      { constructor,
        context,
        forall',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap DataConstructor DataConstructorU where
  unwrap = unwrap_DataConstructor

data DataConstructors = DataConstructors
  { constructor :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (DataConstructor))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DataConstructorsU = DataConstructorsU
  { constructor :: Data.List.NonEmpty.NonEmpty (DataConstructor),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_DataConstructors :: Api.Node -> Prelude.Maybe DataConstructors
cast_DataConstructors dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_constructors")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr constructor))
  Prelude.pure
    DataConstructors
      { constructor,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode DataConstructors where
  getDynNode (DataConstructors {dynNode}) = dynNode

instance AST.Cast.Cast DataConstructors where
  cast = cast_DataConstructors

unwrap_DataConstructors :: DataConstructors -> AST.Err.Err DataConstructorsU
unwrap_DataConstructors node = do
  constructor <- AST.Runtime.unwrapNonEmpty node.constructor
  Prelude.pure
    DataConstructorsU
      { constructor,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap DataConstructors DataConstructorsU where
  unwrap = unwrap_DataConstructors

data DataFamily = DataFamily
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DataFamilyU = DataFamilyU
  { children :: Prelude.Maybe ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)),
    kind :: Prelude.Maybe (QuantifiedType),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (TypeParams),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_DataFamily :: Api.Node -> Prelude.Maybe DataFamily
cast_DataFamily dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_family")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    DataFamily
      { children,
        kind,
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode DataFamily where
  getDynNode (DataFamily {dynNode}) = dynNode

instance AST.Cast.Cast DataFamily where
  cast = cast_DataFamily

unwrap_DataFamily :: DataFamily -> AST.Err.Err DataFamilyU
unwrap_DataFamily node = do
  children <- AST.Runtime.unwrapMaybe node.children
  kind <- AST.Runtime.unwrapMaybe node.kind
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    DataFamilyU
      { children,
        kind,
        name,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap DataFamily DataFamilyU where
  unwrap = unwrap_DataFamily

data DataInstance = DataInstance
  { children :: ((AST.Err.Err ((DataType Sum.:+ Newtype Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DataInstanceU = DataInstanceU
  { children :: ((DataType Sum.:+ Newtype Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_DataInstance :: Api.Node -> Prelude.Maybe DataInstance
cast_DataInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    DataInstance
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode DataInstance where
  getDynNode (DataInstance {dynNode}) = dynNode

instance AST.Cast.Cast DataInstance where
  cast = cast_DataInstance

unwrap_DataInstance :: DataInstance -> AST.Err.Err DataInstanceU
unwrap_DataInstance node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    DataInstanceU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap DataInstance DataInstanceU where
  unwrap = unwrap_DataInstance

data DataType = DataType
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    constructors :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((DataConstructors Sum.:+ GadtConstructors Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    deriving' :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Deriving))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DataTypeU = DataTypeU
  { children :: Prelude.Maybe ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)),
    constructors :: Prelude.Maybe ((DataConstructors Sum.:+ GadtConstructors Sum.:+ Sum.Nil)),
    context :: Prelude.Maybe (Context),
    deriving' :: AST.Runtime.List (Deriving),
    forall' :: Prelude.Maybe ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)),
    kind :: Prelude.Maybe (QuantifiedType),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe ((TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_DataType :: Api.Node -> Prelude.Maybe DataType
cast_DataType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructors <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructors" namedMap))
  constructors <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr constructors))
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr context))
  deriving' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "deriving" namedMap))
  deriving' <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr deriving'))
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr forall'))
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    DataType
      { children,
        constructors,
        context,
        deriving',
        forall',
        kind,
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode DataType where
  getDynNode (DataType {dynNode}) = dynNode

instance AST.Cast.Cast DataType where
  cast = cast_DataType

unwrap_DataType :: DataType -> AST.Err.Err DataTypeU
unwrap_DataType node = do
  children <- AST.Runtime.unwrapMaybe node.children
  constructors <- AST.Runtime.unwrapMaybe node.constructors
  context <- AST.Runtime.unwrapMaybe node.context
  deriving' <- AST.Runtime.unwrapList node.deriving'
  forall' <- AST.Runtime.unwrapMaybe node.forall'
  kind <- AST.Runtime.unwrapMaybe node.kind
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    DataTypeU
      { children,
        constructors,
        context,
        deriving',
        forall',
        kind,
        name,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap DataType DataTypeU where
  unwrap = unwrap_DataType

data Declarations = Declarations
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Declaration Sum.:+ Import Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DeclarationsU = DeclarationsU
  { children :: Data.List.NonEmpty.NonEmpty ((Declaration Sum.:+ Import Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Declarations :: Api.Node -> Prelude.Maybe Declarations
cast_Declarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Declarations
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Declarations where
  getDynNode (Declarations {dynNode}) = dynNode

instance AST.Cast.Cast Declarations where
  cast = cast_Declarations

unwrap_Declarations :: Declarations -> AST.Err.Err DeclarationsU
unwrap_Declarations node = do
  children <- AST.Runtime.unwrapNonEmpty node.children
  Prelude.pure
    DeclarationsU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Declarations DeclarationsU where
  unwrap = unwrap_Declarations

data DefaultSignature = DefaultSignature
  { signature :: ((AST.Err.Err (Signature))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DefaultSignatureU = DefaultSignatureU
  { signature :: (Signature),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_DefaultSignature :: Api.Node -> Prelude.Maybe DefaultSignature
cast_DefaultSignature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "default_signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr signature))
  Prelude.pure
    DefaultSignature
      { signature,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode DefaultSignature where
  getDynNode (DefaultSignature {dynNode}) = dynNode

instance AST.Cast.Cast DefaultSignature where
  cast = cast_DefaultSignature

unwrap_DefaultSignature :: DefaultSignature -> AST.Err.Err DefaultSignatureU
unwrap_DefaultSignature node = do
  signature <- AST.Runtime.unwrapSingle node.signature
  Prelude.pure
    DefaultSignatureU
      { signature,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap DefaultSignature DefaultSignatureU where
  unwrap = unwrap_DefaultSignature

data DefaultTypes = DefaultTypes
  { type' :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DefaultTypesU = DefaultTypesU
  { type' :: AST.Runtime.List ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_DefaultTypes :: Api.Node -> Prelude.Maybe DefaultTypes
cast_DefaultTypes dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "default_types")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    DefaultTypes
      { type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode DefaultTypes where
  getDynNode (DefaultTypes {dynNode}) = dynNode

instance AST.Cast.Cast DefaultTypes where
  cast = cast_DefaultTypes

unwrap_DefaultTypes :: DefaultTypes -> AST.Err.Err DefaultTypesU
unwrap_DefaultTypes node = do
  type' <- AST.Runtime.unwrapList node.type'
  Prelude.pure
    DefaultTypesU
      { type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap DefaultTypes DefaultTypesU where
  unwrap = unwrap_DefaultTypes

data Deriving = Deriving
  { classes :: ((AST.Err.Err (Constraint))),
    strategy :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (DerivingStrategy))),
    via :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Via))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DerivingU = DerivingU
  { classes :: (Constraint),
    strategy :: Prelude.Maybe (DerivingStrategy),
    via :: Prelude.Maybe (Via),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Deriving :: Api.Node -> Prelude.Maybe Deriving
cast_Deriving dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  classes <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "classes" namedMap))
  classes <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr classes))
  strategy <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "strategy" namedMap))
  strategy <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr strategy))
  via <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "via" namedMap))
  via <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr via))
  Prelude.pure
    Deriving
      { classes,
        strategy,
        via,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Deriving where
  getDynNode (Deriving {dynNode}) = dynNode

instance AST.Cast.Cast Deriving where
  cast = cast_Deriving

unwrap_Deriving :: Deriving -> AST.Err.Err DerivingU
unwrap_Deriving node = do
  classes <- AST.Runtime.unwrapSingle node.classes
  strategy <- AST.Runtime.unwrapMaybe node.strategy
  via <- AST.Runtime.unwrapMaybe node.via
  Prelude.pure
    DerivingU
      { classes,
        strategy,
        via,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Deriving DerivingU where
  unwrap = unwrap_Deriving

data DerivingInstance = DerivingInstance
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypePatterns))),
    strategy :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (DerivingStrategy))),
    via :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Via))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DerivingInstanceU = DerivingInstanceU
  { children :: Prelude.Maybe ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)),
    context :: Prelude.Maybe (Context),
    forall' :: Prelude.Maybe ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (TypePatterns),
    strategy :: Prelude.Maybe (DerivingStrategy),
    via :: Prelude.Maybe (Via),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_DerivingInstance :: Api.Node -> Prelude.Maybe DerivingInstance
cast_DerivingInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr context))
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr forall'))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  strategy <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "strategy" namedMap))
  strategy <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr strategy))
  via <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "via" namedMap))
  via <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr via))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    DerivingInstance
      { children,
        context,
        forall',
        name,
        patterns,
        strategy,
        via,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode DerivingInstance where
  getDynNode (DerivingInstance {dynNode}) = dynNode

instance AST.Cast.Cast DerivingInstance where
  cast = cast_DerivingInstance

unwrap_DerivingInstance :: DerivingInstance -> AST.Err.Err DerivingInstanceU
unwrap_DerivingInstance node = do
  children <- AST.Runtime.unwrapMaybe node.children
  context <- AST.Runtime.unwrapMaybe node.context
  forall' <- AST.Runtime.unwrapMaybe node.forall'
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  strategy <- AST.Runtime.unwrapMaybe node.strategy
  via <- AST.Runtime.unwrapMaybe node.via
  Prelude.pure
    DerivingInstanceU
      { children,
        context,
        forall',
        name,
        patterns,
        strategy,
        via,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap DerivingInstance DerivingInstanceU where
  unwrap = unwrap_DerivingInstance

data DerivingStrategy = DerivingStrategy {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode DerivingStrategy where
  getDynNode (DerivingStrategy {dynNode}) = dynNode

instance AST.Cast.Cast DerivingStrategy where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving_strategy")
    Prelude.pure (DerivingStrategy {dynNode = dynNode})

data Do = Do
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (DoModule))),
    statement :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Statement))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DoU = DoU
  { children :: Prelude.Maybe (DoModule),
    statement :: AST.Runtime.List (Statement),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Do :: Api.Node -> Prelude.Maybe Do
cast_Do dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "do")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  statement <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "statement" namedMap))
  statement <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr statement))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Do
      { children,
        statement,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Do where
  getDynNode (Do {dynNode}) = dynNode

instance AST.Cast.Cast Do where
  cast = cast_Do

unwrap_Do :: Do -> AST.Err.Err DoU
unwrap_Do node = do
  children <- AST.Runtime.unwrapMaybe node.children
  statement <- AST.Runtime.unwrapList node.statement
  Prelude.pure
    DoU
      { children,
        statement,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Do DoU where
  unwrap = unwrap_Do

data DoModule = DoModule
  { id :: ((AST.Err.Err (((AST.Token.Token "do") Sum.:+ (AST.Token.Token "mdo") Sum.:+ Sum.Nil)))),
    module' :: ((AST.Err.Err (Module))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data DoModuleU = DoModuleU
  { id :: (((AST.Token.Token "do") Sum.:+ (AST.Token.Token "mdo") Sum.:+ Sum.Nil)),
    module' :: (Module),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_DoModule :: Api.Node -> Prelude.Maybe DoModule
cast_DoModule dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "do_module")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  id <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "id" namedMap))
  id <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr id))
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr module'))
  Prelude.pure
    DoModule
      { id,
        module',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode DoModule where
  getDynNode (DoModule {dynNode}) = dynNode

instance AST.Cast.Cast DoModule where
  cast = cast_DoModule

unwrap_DoModule :: DoModule -> AST.Err.Err DoModuleU
unwrap_DoModule node = do
  id <- AST.Runtime.unwrapSingle node.id
  module' <- AST.Runtime.unwrapSingle node.module'
  Prelude.pure
    DoModuleU
      { id,
        module',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap DoModule DoModuleU where
  unwrap = unwrap_DoModule

data EmptyList = EmptyList {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode EmptyList where
  getDynNode (EmptyList {dynNode}) = dynNode

instance AST.Cast.Cast EmptyList where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "empty_list")
    Prelude.pure (EmptyList {dynNode = dynNode})

data Entity = Entity
  { children :: ((AST.Err.Err (String))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data EntityU = EntityU
  { children :: (String),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Entity :: Api.Node -> Prelude.Maybe Entity
cast_Entity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "entity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Entity
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Entity where
  getDynNode (Entity {dynNode}) = dynNode

instance AST.Cast.Cast Entity where
  cast = cast_Entity

unwrap_Entity :: Entity -> AST.Err.Err EntityU
unwrap_Entity node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    EntityU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Entity EntityU where
  unwrap = unwrap_Entity

data Equation = Equation
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil)))),
    constructors :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ConstructorSynonyms))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypePatterns))),
    synonym :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Pattern))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data EquationU = EquationU
  { children :: AST.Runtime.List ((Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil)),
    constructors :: Prelude.Maybe (ConstructorSynonyms),
    forall' :: Prelude.Maybe ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)),
    pattern' :: Prelude.Maybe ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (TypePatterns),
    synonym :: Prelude.Maybe (Pattern),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Equation :: Api.Node -> Prelude.Maybe Equation
cast_Equation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "equation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructors <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructors" namedMap))
  constructors <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr constructors))
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr forall'))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr pattern'))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  synonym <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "synonym" namedMap))
  synonym <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr synonym))
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Equation
      { children,
        constructors,
        forall',
        name,
        pattern',
        patterns,
        synonym,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Equation where
  getDynNode (Equation {dynNode}) = dynNode

instance AST.Cast.Cast Equation where
  cast = cast_Equation

unwrap_Equation :: Equation -> AST.Err.Err EquationU
unwrap_Equation node = do
  children <- AST.Runtime.unwrapList node.children
  constructors <- AST.Runtime.unwrapMaybe node.constructors
  forall' <- AST.Runtime.unwrapMaybe node.forall'
  name <- AST.Runtime.unwrapMaybe node.name
  pattern' <- AST.Runtime.unwrapMaybe node.pattern'
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  synonym <- AST.Runtime.unwrapMaybe node.synonym
  Prelude.pure
    EquationU
      { children,
        constructors,
        forall',
        name,
        pattern',
        patterns,
        synonym,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Equation EquationU where
  unwrap = unwrap_Equation

data Equations = Equations
  { equation :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Equation))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data EquationsU = EquationsU
  { equation :: AST.Runtime.List (Equation),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Equations :: Api.Node -> Prelude.Maybe Equations
cast_Equations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "equations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  equation <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "equation" namedMap))
  equation <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr equation))
  Prelude.pure
    Equations
      { equation,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Equations where
  getDynNode (Equations {dynNode}) = dynNode

instance AST.Cast.Cast Equations where
  cast = cast_Equations

unwrap_Equations :: Equations -> AST.Err.Err EquationsU
unwrap_Equations node = do
  equation <- AST.Runtime.unwrapList node.equation
  Prelude.pure
    EquationsU
      { equation,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Equations EquationsU where
  unwrap = unwrap_Equations

data Exp = Exp
  { children :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ExpU = ExpU
  { children :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Exp :: Api.Node -> Prelude.Maybe Exp
cast_Exp dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "exp")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Exp
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Exp where
  getDynNode (Exp {dynNode}) = dynNode

instance AST.Cast.Cast Exp where
  cast = cast_Exp

unwrap_Exp :: Exp -> AST.Err.Err ExpU
unwrap_Exp node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    ExpU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Exp ExpU where
  unwrap = unwrap_Exp

data ExplicitType = ExplicitType
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ExplicitTypeU = ExplicitTypeU
  { type' :: (Type),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ExplicitType :: Api.Node -> Prelude.Maybe ExplicitType
cast_ExplicitType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "explicit_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    ExplicitType
      { type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ExplicitType where
  getDynNode (ExplicitType {dynNode}) = dynNode

instance AST.Cast.Cast ExplicitType where
  cast = cast_ExplicitType

unwrap_ExplicitType :: ExplicitType -> AST.Err.Err ExplicitTypeU
unwrap_ExplicitType node = do
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    ExplicitTypeU
      { type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ExplicitType ExplicitTypeU where
  unwrap = unwrap_ExplicitType

data Export = Export
  { children' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Children))),
    namespace :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Namespace))),
    operator :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (PrefixId))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    variable :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ExportU = ExportU
  { children' :: Prelude.Maybe (Children),
    namespace :: Prelude.Maybe (Namespace),
    operator :: Prelude.Maybe (PrefixId),
    type' :: Prelude.Maybe ((Name Sum.:+ Qualified Sum.:+ Sum.Nil)),
    variable :: Prelude.Maybe ((Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Export :: Api.Node -> Prelude.Maybe Export
cast_Export dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children'))
  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr namespace))
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr operator))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  variable <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variable" namedMap))
  variable <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr variable))
  Prelude.pure
    Export
      { children',
        namespace,
        operator,
        type',
        variable,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Export where
  getDynNode (Export {dynNode}) = dynNode

instance AST.Cast.Cast Export where
  cast = cast_Export

unwrap_Export :: Export -> AST.Err.Err ExportU
unwrap_Export node = do
  children' <- AST.Runtime.unwrapMaybe node.children'
  namespace <- AST.Runtime.unwrapMaybe node.namespace
  operator <- AST.Runtime.unwrapMaybe node.operator
  type' <- AST.Runtime.unwrapMaybe node.type'
  variable <- AST.Runtime.unwrapMaybe node.variable
  Prelude.pure
    ExportU
      { children',
        namespace,
        operator,
        type',
        variable,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Export ExportU where
  unwrap = unwrap_Export

data Exports = Exports
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (ModuleExport))),
    export :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Export))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ExportsU = ExportsU
  { children :: AST.Runtime.List (ModuleExport),
    export :: AST.Runtime.List (Export),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Exports :: Api.Node -> Prelude.Maybe Exports
cast_Exports dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "exports")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  export <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "export" namedMap))
  export <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr export))
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Exports
      { children,
        export,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Exports where
  getDynNode (Exports {dynNode}) = dynNode

instance AST.Cast.Cast Exports where
  cast = cast_Exports

unwrap_Exports :: Exports -> AST.Err.Err ExportsU
unwrap_Exports node = do
  children <- AST.Runtime.unwrapList node.children
  export <- AST.Runtime.unwrapList node.export
  Prelude.pure
    ExportsU
      { children,
        export,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Exports ExportsU where
  unwrap = unwrap_Exports

data Field = Field
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Type))),
    name :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (FieldName))),
    parameter :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FieldU = FieldU
  { children :: Prelude.Maybe (Type),
    name :: AST.Runtime.List (FieldName),
    parameter :: Prelude.Maybe ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)),
    type' :: Prelude.Maybe ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Field :: Api.Node -> Prelude.Maybe Field
cast_Field dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr name))
  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr parameter))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Field
      { children,
        name,
        parameter,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Field where
  getDynNode (Field {dynNode}) = dynNode

instance AST.Cast.Cast Field where
  cast = cast_Field

unwrap_Field :: Field -> AST.Err.Err FieldU
unwrap_Field node = do
  children <- AST.Runtime.unwrapMaybe node.children
  name <- AST.Runtime.unwrapList node.name
  parameter <- AST.Runtime.unwrapMaybe node.parameter
  type' <- AST.Runtime.unwrapMaybe node.type'
  Prelude.pure
    FieldU
      { children,
        name,
        parameter,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Field FieldU where
  unwrap = unwrap_Field

data FieldName = FieldName
  { children :: ((AST.Err.Err (Variable))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FieldNameU = FieldNameU
  { children :: (Variable),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_FieldName :: Api.Node -> Prelude.Maybe FieldName
cast_FieldName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    FieldName
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode FieldName where
  getDynNode (FieldName {dynNode}) = dynNode

instance AST.Cast.Cast FieldName where
  cast = cast_FieldName

unwrap_FieldName :: FieldName -> AST.Err.Err FieldNameU
unwrap_FieldName node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    FieldNameU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap FieldName FieldNameU where
  unwrap = unwrap_FieldName

data FieldPath = FieldPath
  { field :: ((AST.Err.Err ((FieldName Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    subfield :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (FieldName))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FieldPathU = FieldPathU
  { field :: ((FieldName Sum.:+ Qualified Sum.:+ Sum.Nil)),
    subfield :: Data.List.NonEmpty.NonEmpty (FieldName),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_FieldPath :: Api.Node -> Prelude.Maybe FieldPath
cast_FieldPath dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_path")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr field))
  subfield <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "subfield" namedMap))
  subfield <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr subfield))
  Prelude.pure
    FieldPath
      { field,
        subfield,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode FieldPath where
  getDynNode (FieldPath {dynNode}) = dynNode

instance AST.Cast.Cast FieldPath where
  cast = cast_FieldPath

unwrap_FieldPath :: FieldPath -> AST.Err.Err FieldPathU
unwrap_FieldPath node = do
  field <- AST.Runtime.unwrapSingle node.field
  subfield <- AST.Runtime.unwrapNonEmpty node.subfield
  Prelude.pure
    FieldPathU
      { field,
        subfield,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap FieldPath FieldPathU where
  unwrap = unwrap_FieldPath

data FieldPattern = FieldPattern
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Wildcard))),
    field :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((FieldName Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FieldPatternU = FieldPatternU
  { children :: Prelude.Maybe (Wildcard),
    field :: Prelude.Maybe ((FieldName Sum.:+ Qualified Sum.:+ Sum.Nil)),
    pattern' :: Prelude.Maybe ((Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_FieldPattern :: Api.Node -> Prelude.Maybe FieldPattern
cast_FieldPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr field))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr pattern'))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    FieldPattern
      { children,
        field,
        pattern',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode FieldPattern where
  getDynNode (FieldPattern {dynNode}) = dynNode

instance AST.Cast.Cast FieldPattern where
  cast = cast_FieldPattern

unwrap_FieldPattern :: FieldPattern -> AST.Err.Err FieldPatternU
unwrap_FieldPattern node = do
  children <- AST.Runtime.unwrapMaybe node.children
  field <- AST.Runtime.unwrapMaybe node.field
  pattern' <- AST.Runtime.unwrapMaybe node.pattern'
  Prelude.pure
    FieldPatternU
      { children,
        field,
        pattern',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap FieldPattern FieldPatternU where
  unwrap = unwrap_FieldPattern

data FieldUpdate = FieldUpdate
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Wildcard))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    field :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((FieldName Sum.:+ FieldPath Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FieldUpdateU = FieldUpdateU
  { children :: Prelude.Maybe (Wildcard),
    expression :: Prelude.Maybe ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    field :: Prelude.Maybe ((FieldName Sum.:+ FieldPath Sum.:+ Qualified Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_FieldUpdate :: Api.Node -> Prelude.Maybe FieldUpdate
cast_FieldUpdate dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_update")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr expression))
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr field))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    FieldUpdate
      { children,
        expression,
        field,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode FieldUpdate where
  getDynNode (FieldUpdate {dynNode}) = dynNode

instance AST.Cast.Cast FieldUpdate where
  cast = cast_FieldUpdate

unwrap_FieldUpdate :: FieldUpdate -> AST.Err.Err FieldUpdateU
unwrap_FieldUpdate node = do
  children <- AST.Runtime.unwrapMaybe node.children
  expression <- AST.Runtime.unwrapMaybe node.expression
  field <- AST.Runtime.unwrapMaybe node.field
  Prelude.pure
    FieldUpdateU
      { children,
        expression,
        field,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap FieldUpdate FieldUpdateU where
  unwrap = unwrap_FieldUpdate

data Fields = Fields
  { field :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Field))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FieldsU = FieldsU
  { field :: AST.Runtime.List (Field),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Fields :: Api.Node -> Prelude.Maybe Fields
cast_Fields dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fields")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr field))
  Prelude.pure
    Fields
      { field,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Fields where
  getDynNode (Fields {dynNode}) = dynNode

instance AST.Cast.Cast Fields where
  cast = cast_Fields

unwrap_Fields :: Fields -> AST.Err.Err FieldsU
unwrap_Fields node = do
  field <- AST.Runtime.unwrapList node.field
  Prelude.pure
    FieldsU
      { field,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Fields FieldsU where
  unwrap = unwrap_Fields

data Fixity = Fixity
  { associativity :: ((AST.Err.Err (((AST.Token.Token "infix") Sum.:+ (AST.Token.Token "infixl") Sum.:+ (AST.Token.Token "infixr") Sum.:+ Sum.Nil)))),
    operator :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (((AST.Token.Token ",") Sum.:+ ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Sum.Nil)))),
    precedence :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Integer))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FixityU = FixityU
  { associativity :: (((AST.Token.Token "infix") Sum.:+ (AST.Token.Token "infixl") Sum.:+ (AST.Token.Token "infixr") Sum.:+ Sum.Nil)),
    operator :: Data.List.NonEmpty.NonEmpty (((AST.Token.Token ",") Sum.:+ ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Sum.Nil)),
    precedence :: Prelude.Maybe (Integer),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Fixity :: Api.Node -> Prelude.Maybe Fixity
cast_Fixity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fixity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  associativity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "associativity" namedMap))
  associativity <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr associativity))
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr operator))
  precedence <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "precedence" namedMap))
  precedence <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr precedence))
  Prelude.pure
    Fixity
      { associativity,
        operator,
        precedence,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Fixity where
  getDynNode (Fixity {dynNode}) = dynNode

instance AST.Cast.Cast Fixity where
  cast = cast_Fixity

unwrap_Fixity :: Fixity -> AST.Err.Err FixityU
unwrap_Fixity node = do
  associativity <- AST.Runtime.unwrapSingle node.associativity
  operator <- AST.Runtime.unwrapNonEmpty node.operator
  precedence <- AST.Runtime.unwrapMaybe node.precedence
  Prelude.pure
    FixityU
      { associativity,
        operator,
        precedence,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Fixity FixityU where
  unwrap = unwrap_Fixity

data Forall = Forall
  { constraint :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Constraints))),
    quantifier :: ((AST.Err.Err (((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    variables :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedVariables))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ForallU = ForallU
  { constraint :: Prelude.Maybe (Constraints),
    quantifier :: (((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)),
    type' :: Prelude.Maybe (QuantifiedType),
    variables :: Prelude.Maybe (QuantifiedVariables),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Forall :: Api.Node -> Prelude.Maybe Forall
cast_Forall dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "forall")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constraint <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constraint" namedMap))
  constraint <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr constraint))
  quantifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quantifier" namedMap))
  quantifier <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr quantifier))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  variables <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variables" namedMap))
  variables <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr variables))
  Prelude.pure
    Forall
      { constraint,
        quantifier,
        type',
        variables,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Forall where
  getDynNode (Forall {dynNode}) = dynNode

instance AST.Cast.Cast Forall where
  cast = cast_Forall

unwrap_Forall :: Forall -> AST.Err.Err ForallU
unwrap_Forall node = do
  constraint <- AST.Runtime.unwrapMaybe node.constraint
  quantifier <- AST.Runtime.unwrapSingle node.quantifier
  type' <- AST.Runtime.unwrapMaybe node.type'
  variables <- AST.Runtime.unwrapMaybe node.variables
  Prelude.pure
    ForallU
      { constraint,
        quantifier,
        type',
        variables,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Forall ForallU where
  unwrap = unwrap_Forall

data ForallRequired = ForallRequired
  { quantifier :: ((AST.Err.Err (((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    variables :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedVariables))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ForallRequiredU = ForallRequiredU
  { quantifier :: (((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)),
    type' :: Prelude.Maybe (QuantifiedType),
    variables :: Prelude.Maybe (QuantifiedVariables),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ForallRequired :: Api.Node -> Prelude.Maybe ForallRequired
cast_ForallRequired dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "forall_required")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  quantifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quantifier" namedMap))
  quantifier <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr quantifier))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  variables <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variables" namedMap))
  variables <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr variables))
  Prelude.pure
    ForallRequired
      { quantifier,
        type',
        variables,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ForallRequired where
  getDynNode (ForallRequired {dynNode}) = dynNode

instance AST.Cast.Cast ForallRequired where
  cast = cast_ForallRequired

unwrap_ForallRequired :: ForallRequired -> AST.Err.Err ForallRequiredU
unwrap_ForallRequired node = do
  quantifier <- AST.Runtime.unwrapSingle node.quantifier
  type' <- AST.Runtime.unwrapMaybe node.type'
  variables <- AST.Runtime.unwrapMaybe node.variables
  Prelude.pure
    ForallRequiredU
      { quantifier,
        type',
        variables,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ForallRequired ForallRequiredU where
  unwrap = unwrap_ForallRequired

data ForeignExport = ForeignExport
  { callingConvention :: ((AST.Err.Err (CallingConvention))),
    entity :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Entity))),
    signature :: ((AST.Err.Err (Signature))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ForeignExportU = ForeignExportU
  { callingConvention :: (CallingConvention),
    entity :: Prelude.Maybe (Entity),
    signature :: (Signature),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ForeignExport :: Api.Node -> Prelude.Maybe ForeignExport
cast_ForeignExport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "foreign_export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  callingConvention <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "calling_convention" namedMap))
  callingConvention <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr callingConvention))
  entity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "entity" namedMap))
  entity <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr entity))
  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr signature))
  Prelude.pure
    ForeignExport
      { callingConvention,
        entity,
        signature,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ForeignExport where
  getDynNode (ForeignExport {dynNode}) = dynNode

instance AST.Cast.Cast ForeignExport where
  cast = cast_ForeignExport

unwrap_ForeignExport :: ForeignExport -> AST.Err.Err ForeignExportU
unwrap_ForeignExport node = do
  callingConvention <- AST.Runtime.unwrapSingle node.callingConvention
  entity <- AST.Runtime.unwrapMaybe node.entity
  signature <- AST.Runtime.unwrapSingle node.signature
  Prelude.pure
    ForeignExportU
      { callingConvention,
        entity,
        signature,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ForeignExport ForeignExportU where
  unwrap = unwrap_ForeignExport

data ForeignImport = ForeignImport
  { callingConvention :: ((AST.Err.Err (CallingConvention))),
    entity :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Entity))),
    safety :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Safety))),
    signature :: ((AST.Err.Err (Signature))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ForeignImportU = ForeignImportU
  { callingConvention :: (CallingConvention),
    entity :: Prelude.Maybe (Entity),
    safety :: Prelude.Maybe (Safety),
    signature :: (Signature),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ForeignImport :: Api.Node -> Prelude.Maybe ForeignImport
cast_ForeignImport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "foreign_import")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  callingConvention <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "calling_convention" namedMap))
  callingConvention <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr callingConvention))
  entity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "entity" namedMap))
  entity <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr entity))
  safety <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "safety" namedMap))
  safety <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr safety))
  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr signature))
  Prelude.pure
    ForeignImport
      { callingConvention,
        entity,
        safety,
        signature,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ForeignImport where
  getDynNode (ForeignImport {dynNode}) = dynNode

instance AST.Cast.Cast ForeignImport where
  cast = cast_ForeignImport

unwrap_ForeignImport :: ForeignImport -> AST.Err.Err ForeignImportU
unwrap_ForeignImport node = do
  callingConvention <- AST.Runtime.unwrapSingle node.callingConvention
  entity <- AST.Runtime.unwrapMaybe node.entity
  safety <- AST.Runtime.unwrapMaybe node.safety
  signature <- AST.Runtime.unwrapSingle node.signature
  Prelude.pure
    ForeignImportU
      { callingConvention,
        entity,
        safety,
        signature,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ForeignImport ForeignImportU where
  unwrap = unwrap_ForeignImport

data Function = Function
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Infix))),
    arrow :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil)))),
    binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    match :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Match))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    parameter :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)))),
    parens :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (FunctionHeadParens))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Patterns))),
    result :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FunctionU = FunctionU
  { children :: Prelude.Maybe (Infix),
    arrow :: Prelude.Maybe (((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil)),
    binds :: Prelude.Maybe (LocalBinds),
    match :: AST.Runtime.List (Match),
    name :: Prelude.Maybe ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)),
    parameter :: Prelude.Maybe ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)),
    parens :: Prelude.Maybe (FunctionHeadParens),
    patterns :: Prelude.Maybe (Patterns),
    result :: Prelude.Maybe (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Function :: Api.Node -> Prelude.Maybe Function
cast_Function dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "function")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr arrow))
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr binds))
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr match))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr parameter))
  parens <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parens" namedMap))
  parens <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr parens))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr result))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Function
      { children,
        arrow,
        binds,
        match,
        name,
        parameter,
        parens,
        patterns,
        result,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Function where
  getDynNode (Function {dynNode}) = dynNode

instance AST.Cast.Cast Function where
  cast = cast_Function

unwrap_Function :: Function -> AST.Err.Err FunctionU
unwrap_Function node = do
  children <- AST.Runtime.unwrapMaybe node.children
  arrow <- AST.Runtime.unwrapMaybe node.arrow
  binds <- AST.Runtime.unwrapMaybe node.binds
  match <- AST.Runtime.unwrapList node.match
  name <- AST.Runtime.unwrapMaybe node.name
  parameter <- AST.Runtime.unwrapMaybe node.parameter
  parens <- AST.Runtime.unwrapMaybe node.parens
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  result <- AST.Runtime.unwrapMaybe node.result
  Prelude.pure
    FunctionU
      { children,
        arrow,
        binds,
        match,
        name,
        parameter,
        parens,
        patterns,
        result,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Function FunctionU where
  unwrap = unwrap_Function

data FunctionHeadParens = FunctionHeadParens
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Infix))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    parens :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (FunctionHeadParens))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Patterns))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FunctionHeadParensU = FunctionHeadParensU
  { children :: Prelude.Maybe (Infix),
    name :: Prelude.Maybe ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)),
    parens :: Prelude.Maybe (FunctionHeadParens),
    patterns :: Prelude.Maybe (Patterns),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_FunctionHeadParens :: Api.Node -> Prelude.Maybe FunctionHeadParens
cast_FunctionHeadParens dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "function_head_parens")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  parens <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parens" namedMap))
  parens <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr parens))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    FunctionHeadParens
      { children,
        name,
        parens,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode FunctionHeadParens where
  getDynNode (FunctionHeadParens {dynNode}) = dynNode

instance AST.Cast.Cast FunctionHeadParens where
  cast = cast_FunctionHeadParens

unwrap_FunctionHeadParens :: FunctionHeadParens -> AST.Err.Err FunctionHeadParensU
unwrap_FunctionHeadParens node = do
  children <- AST.Runtime.unwrapMaybe node.children
  name <- AST.Runtime.unwrapMaybe node.name
  parens <- AST.Runtime.unwrapMaybe node.parens
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    FunctionHeadParensU
      { children,
        name,
        parens,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap FunctionHeadParens FunctionHeadParensU where
  unwrap = unwrap_FunctionHeadParens

data Fundep = Fundep
  { determined :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Variable))),
    matched :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Variable))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FundepU = FundepU
  { determined :: Data.List.NonEmpty.NonEmpty (Variable),
    matched :: Data.List.NonEmpty.NonEmpty (Variable),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Fundep :: Api.Node -> Prelude.Maybe Fundep
cast_Fundep dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fundep")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  determined <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "determined" namedMap))
  determined <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr determined))
  matched <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "matched" namedMap))
  matched <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr matched))
  Prelude.pure
    Fundep
      { determined,
        matched,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Fundep where
  getDynNode (Fundep {dynNode}) = dynNode

instance AST.Cast.Cast Fundep where
  cast = cast_Fundep

unwrap_Fundep :: Fundep -> AST.Err.Err FundepU
unwrap_Fundep node = do
  determined <- AST.Runtime.unwrapNonEmpty node.determined
  matched <- AST.Runtime.unwrapNonEmpty node.matched
  Prelude.pure
    FundepU
      { determined,
        matched,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Fundep FundepU where
  unwrap = unwrap_Fundep

data Fundeps = Fundeps
  { fundep :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Fundep))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data FundepsU = FundepsU
  { fundep :: Data.List.NonEmpty.NonEmpty (Fundep),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Fundeps :: Api.Node -> Prelude.Maybe Fundeps
cast_Fundeps dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fundeps")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  fundep <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fundep" namedMap))
  fundep <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr fundep))
  Prelude.pure
    Fundeps
      { fundep,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Fundeps where
  getDynNode (Fundeps {dynNode}) = dynNode

instance AST.Cast.Cast Fundeps where
  cast = cast_Fundeps

unwrap_Fundeps :: Fundeps -> AST.Err.Err FundepsU
unwrap_Fundeps node = do
  fundep <- AST.Runtime.unwrapNonEmpty node.fundep
  Prelude.pure
    FundepsU
      { fundep,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Fundeps FundepsU where
  unwrap = unwrap_Fundeps

data GadtConstructor = GadtConstructor
  { context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)))),
    names :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (BindingList))),
    type' :: ((AST.Err.Err ((Prefix Sum.:+ Record Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data GadtConstructorU = GadtConstructorU
  { context :: Prelude.Maybe (Context),
    forall' :: Prelude.Maybe ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)),
    name :: Prelude.Maybe ((Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)),
    names :: Prelude.Maybe (BindingList),
    type' :: ((Prefix Sum.:+ Record Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_GadtConstructor :: Api.Node -> Prelude.Maybe GadtConstructor
cast_GadtConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "gadt_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr context))
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr forall'))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  names <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "names" namedMap))
  names <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr names))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    GadtConstructor
      { context,
        forall',
        name,
        names,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode GadtConstructor where
  getDynNode (GadtConstructor {dynNode}) = dynNode

instance AST.Cast.Cast GadtConstructor where
  cast = cast_GadtConstructor

unwrap_GadtConstructor :: GadtConstructor -> AST.Err.Err GadtConstructorU
unwrap_GadtConstructor node = do
  context <- AST.Runtime.unwrapMaybe node.context
  forall' <- AST.Runtime.unwrapMaybe node.forall'
  name <- AST.Runtime.unwrapMaybe node.name
  names <- AST.Runtime.unwrapMaybe node.names
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    GadtConstructorU
      { context,
        forall',
        name,
        names,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap GadtConstructor GadtConstructorU where
  unwrap = unwrap_GadtConstructor

data GadtConstructors = GadtConstructors
  { constructor :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (GadtConstructor))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data GadtConstructorsU = GadtConstructorsU
  { constructor :: AST.Runtime.List (GadtConstructor),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_GadtConstructors :: Api.Node -> Prelude.Maybe GadtConstructors
cast_GadtConstructors dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "gadt_constructors")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr constructor))
  Prelude.pure
    GadtConstructors
      { constructor,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode GadtConstructors where
  getDynNode (GadtConstructors {dynNode}) = dynNode

instance AST.Cast.Cast GadtConstructors where
  cast = cast_GadtConstructors

unwrap_GadtConstructors :: GadtConstructors -> AST.Err.Err GadtConstructorsU
unwrap_GadtConstructors node = do
  constructor <- AST.Runtime.unwrapList node.constructor
  Prelude.pure
    GadtConstructorsU
      { constructor,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap GadtConstructors GadtConstructorsU where
  unwrap = unwrap_GadtConstructors

data Generator = Generator
  { arrow :: ((AST.Err.Err (((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)))),
    expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    pattern' :: ((AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data GeneratorU = GeneratorU
  { arrow :: (((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)),
    expression :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    pattern' :: ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Generator :: Api.Node -> Prelude.Maybe Generator
cast_Generator dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "generator")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr arrow))
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    Generator
      { arrow,
        expression,
        pattern',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Generator where
  getDynNode (Generator {dynNode}) = dynNode

instance AST.Cast.Cast Generator where
  cast = cast_Generator

unwrap_Generator :: Generator -> AST.Err.Err GeneratorU
unwrap_Generator node = do
  arrow <- AST.Runtime.unwrapSingle node.arrow
  expression <- AST.Runtime.unwrapSingle node.expression
  pattern' <- AST.Runtime.unwrapSingle node.pattern'
  Prelude.pure
    GeneratorU
      { arrow,
        expression,
        pattern',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Generator GeneratorU where
  unwrap = unwrap_Generator

data Group = Group
  { classifier :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    key :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data GroupU = GroupU
  { classifier :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    key :: Prelude.Maybe ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Group :: Api.Node -> Prelude.Maybe Group
cast_Group dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "group")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  classifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "classifier" namedMap))
  classifier <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr classifier))
  key <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "key" namedMap))
  key <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr key))
  Prelude.pure
    Group
      { classifier,
        key,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Group where
  getDynNode (Group {dynNode}) = dynNode

instance AST.Cast.Cast Group where
  cast = cast_Group

unwrap_Group :: Group -> AST.Err.Err GroupU
unwrap_Group node = do
  classifier <- AST.Runtime.unwrapSingle node.classifier
  key <- AST.Runtime.unwrapMaybe node.key
  Prelude.pure
    GroupU
      { classifier,
        key,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Group GroupU where
  unwrap = unwrap_Group

data Guards = Guards
  { guard :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Guard))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data GuardsU = GuardsU
  { guard :: Data.List.NonEmpty.NonEmpty (Guard),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Guards :: Api.Node -> Prelude.Maybe Guards
cast_Guards dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "guards")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  guard <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "guard" namedMap))
  guard <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr guard))
  Prelude.pure
    Guards
      { guard,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Guards where
  getDynNode (Guards {dynNode}) = dynNode

instance AST.Cast.Cast Guards where
  cast = cast_Guards

unwrap_Guards :: Guards -> AST.Err.Err GuardsU
unwrap_Guards node = do
  guard <- AST.Runtime.unwrapNonEmpty node.guard
  Prelude.pure
    GuardsU
      { guard,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Guards GuardsU where
  unwrap = unwrap_Guards

data Haskell = Haskell
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Header))),
    declarations :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Declarations))),
    imports :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Imports))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data HaskellU = HaskellU
  { children :: Prelude.Maybe (Header),
    declarations :: Prelude.Maybe (Declarations),
    imports :: Prelude.Maybe (Imports),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Haskell :: Api.Node -> Prelude.Maybe Haskell
cast_Haskell dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "haskell")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr declarations))
  imports <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "imports" namedMap))
  imports <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr imports))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Haskell
      { children,
        declarations,
        imports,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Haskell where
  getDynNode (Haskell {dynNode}) = dynNode

instance AST.Cast.Cast Haskell where
  cast = cast_Haskell

unwrap_Haskell :: Haskell -> AST.Err.Err HaskellU
unwrap_Haskell node = do
  children <- AST.Runtime.unwrapMaybe node.children
  declarations <- AST.Runtime.unwrapMaybe node.declarations
  imports <- AST.Runtime.unwrapMaybe node.imports
  Prelude.pure
    HaskellU
      { children,
        declarations,
        imports,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Haskell HaskellU where
  unwrap = unwrap_Haskell

data Header = Header
  { exports :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Exports))),
    module' :: ((AST.Err.Err (Module))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data HeaderU = HeaderU
  { exports :: Prelude.Maybe (Exports),
    module' :: (Module),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Header :: Api.Node -> Prelude.Maybe Header
cast_Header dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "header")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  exports <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "exports" namedMap))
  exports <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr exports))
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr module'))
  Prelude.pure
    Header
      { exports,
        module',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Header where
  getDynNode (Header {dynNode}) = dynNode

instance AST.Cast.Cast Header where
  cast = cast_Header

unwrap_Header :: Header -> AST.Err.Err HeaderU
unwrap_Header node = do
  exports <- AST.Runtime.unwrapMaybe node.exports
  module' <- AST.Runtime.unwrapSingle node.module'
  Prelude.pure
    HeaderU
      { exports,
        module',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Header HeaderU where
  unwrap = unwrap_Header

data ImplicitParameter = ImplicitParameter
  { name :: ((AST.Err.Err (ImplicitVariable))),
    type' :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ImplicitParameterU = ImplicitParameterU
  { name :: (ImplicitVariable),
    type' :: (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ImplicitParameter :: Api.Node -> Prelude.Maybe ImplicitParameter
cast_ImplicitParameter dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "implicit_parameter")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr name))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    ImplicitParameter
      { name,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ImplicitParameter where
  getDynNode (ImplicitParameter {dynNode}) = dynNode

instance AST.Cast.Cast ImplicitParameter where
  cast = cast_ImplicitParameter

unwrap_ImplicitParameter :: ImplicitParameter -> AST.Err.Err ImplicitParameterU
unwrap_ImplicitParameter node = do
  name <- AST.Runtime.unwrapSingle node.name
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    ImplicitParameterU
      { name,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ImplicitParameter ImplicitParameterU where
  unwrap = unwrap_ImplicitParameter

data Import = Import
  { alias :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Module))),
    module' :: ((AST.Err.Err (Module))),
    names :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ImportList))),
    package :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ImportPackage))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ImportU = ImportU
  { alias :: Prelude.Maybe (Module),
    module' :: (Module),
    names :: Prelude.Maybe (ImportList),
    package :: Prelude.Maybe (ImportPackage),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Import :: Api.Node -> Prelude.Maybe Import
cast_Import dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alias <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alias" namedMap))
  alias <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr alias))
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr module'))
  names <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "names" namedMap))
  names <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr names))
  package <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "package" namedMap))
  package <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr package))
  Prelude.pure
    Import
      { alias,
        module',
        names,
        package,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Import where
  getDynNode (Import {dynNode}) = dynNode

instance AST.Cast.Cast Import where
  cast = cast_Import

unwrap_Import :: Import -> AST.Err.Err ImportU
unwrap_Import node = do
  alias <- AST.Runtime.unwrapMaybe node.alias
  module' <- AST.Runtime.unwrapSingle node.module'
  names <- AST.Runtime.unwrapMaybe node.names
  package <- AST.Runtime.unwrapMaybe node.package
  Prelude.pure
    ImportU
      { alias,
        module',
        names,
        package,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Import ImportU where
  unwrap = unwrap_Import

data ImportList = ImportList
  { name :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (ImportName))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ImportListU = ImportListU
  { name :: AST.Runtime.List (ImportName),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ImportList :: Api.Node -> Prelude.Maybe ImportList
cast_ImportList dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr name))
  Prelude.pure
    ImportList
      { name,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ImportList where
  getDynNode (ImportList {dynNode}) = dynNode

instance AST.Cast.Cast ImportList where
  cast = cast_ImportList

unwrap_ImportList :: ImportList -> AST.Err.Err ImportListU
unwrap_ImportList node = do
  name <- AST.Runtime.unwrapList node.name
  Prelude.pure
    ImportListU
      { name,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ImportList ImportListU where
  unwrap = unwrap_ImportList

data ImportName = ImportName
  { children' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Children))),
    namespace :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Namespace))),
    operator :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (PrefixId))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    variable :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ImportNameU = ImportNameU
  { children' :: Prelude.Maybe (Children),
    namespace :: Prelude.Maybe (Namespace),
    operator :: Prelude.Maybe (PrefixId),
    type' :: Prelude.Maybe ((Name Sum.:+ Qualified Sum.:+ Sum.Nil)),
    variable :: Prelude.Maybe ((Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ImportName :: Api.Node -> Prelude.Maybe ImportName
cast_ImportName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children'))
  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr namespace))
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr operator))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  variable <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variable" namedMap))
  variable <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr variable))
  Prelude.pure
    ImportName
      { children',
        namespace,
        operator,
        type',
        variable,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ImportName where
  getDynNode (ImportName {dynNode}) = dynNode

instance AST.Cast.Cast ImportName where
  cast = cast_ImportName

unwrap_ImportName :: ImportName -> AST.Err.Err ImportNameU
unwrap_ImportName node = do
  children' <- AST.Runtime.unwrapMaybe node.children'
  namespace <- AST.Runtime.unwrapMaybe node.namespace
  operator <- AST.Runtime.unwrapMaybe node.operator
  type' <- AST.Runtime.unwrapMaybe node.type'
  variable <- AST.Runtime.unwrapMaybe node.variable
  Prelude.pure
    ImportNameU
      { children',
        namespace,
        operator,
        type',
        variable,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ImportName ImportNameU where
  unwrap = unwrap_ImportName

data Imports = Imports
  { import' :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Import))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ImportsU = ImportsU
  { import' :: Data.List.NonEmpty.NonEmpty (Import),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Imports :: Api.Node -> Prelude.Maybe Imports
cast_Imports dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "imports")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  import' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "import" namedMap))
  import' <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr import'))
  Prelude.pure
    Imports
      { import',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Imports where
  getDynNode (Imports {dynNode}) = dynNode

instance AST.Cast.Cast Imports where
  cast = cast_Imports

unwrap_Imports :: Imports -> AST.Err.Err ImportsU
unwrap_Imports node = do
  import' <- AST.Runtime.unwrapNonEmpty node.import'
  Prelude.pure
    ImportsU
      { import',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Imports ImportsU where
  unwrap = unwrap_Imports

data Inferred = Inferred
  { children :: ((AST.Err.Err ((Annotated Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data InferredU = InferredU
  { children :: ((Annotated Sum.:+ TypeParam Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Inferred :: Api.Node -> Prelude.Maybe Inferred
cast_Inferred dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "inferred")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Inferred
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Inferred where
  getDynNode (Inferred {dynNode}) = dynNode

instance AST.Cast.Cast Inferred where
  cast = cast_Inferred

unwrap_Inferred :: Inferred -> AST.Err.Err InferredU
unwrap_Inferred node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    InferredU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Inferred InferredU where
  unwrap = unwrap_Inferred

data Infix = Infix
  { leftOperand :: ((AST.Err.Err ((Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    operator :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    rightOperand :: ((AST.Err.Err ((Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data InfixU = InfixU
  { leftOperand :: ((Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil)),
    operator :: Data.List.NonEmpty.NonEmpty ((ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Sum.Nil)),
    rightOperand :: ((Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Infix :: Api.Node -> Prelude.Maybe Infix
cast_Infix dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "infix")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  leftOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "left_operand" namedMap))
  leftOperand <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr leftOperand))
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr operator))
  rightOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "right_operand" namedMap))
  rightOperand <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr rightOperand))
  Prelude.pure
    Infix
      { leftOperand,
        operator,
        rightOperand,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Infix where
  getDynNode (Infix {dynNode}) = dynNode

instance AST.Cast.Cast Infix where
  cast = cast_Infix

unwrap_Infix :: Infix -> AST.Err.Err InfixU
unwrap_Infix node = do
  leftOperand <- AST.Runtime.unwrapSingle node.leftOperand
  operator <- AST.Runtime.unwrapNonEmpty node.operator
  rightOperand <- AST.Runtime.unwrapSingle node.rightOperand
  Prelude.pure
    InfixU
      { leftOperand,
        operator,
        rightOperand,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Infix InfixU where
  unwrap = unwrap_Infix

data InfixId = InfixId
  { children :: ((AST.Err.Err ((Constructor Sum.:+ Name Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data InfixIdU = InfixIdU
  { children :: ((Constructor Sum.:+ Name Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_InfixId :: Api.Node -> Prelude.Maybe InfixId
cast_InfixId dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "infix_id")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    InfixId
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode InfixId where
  getDynNode (InfixId {dynNode}) = dynNode

instance AST.Cast.Cast InfixId where
  cast = cast_InfixId

unwrap_InfixId :: InfixId -> AST.Err.Err InfixIdU
unwrap_InfixId node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    InfixIdU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap InfixId InfixIdU where
  unwrap = unwrap_InfixId

data Instance = Instance
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    declarations :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (InstanceDeclarations))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypePatterns))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data InstanceU = InstanceU
  { children :: Prelude.Maybe ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)),
    context :: Prelude.Maybe (Context),
    declarations :: Prelude.Maybe (InstanceDeclarations),
    forall' :: Prelude.Maybe ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (TypePatterns),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Instance :: Api.Node -> Prelude.Maybe Instance
cast_Instance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr context))
  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr declarations))
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr forall'))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Instance
      { children,
        context,
        declarations,
        forall',
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Instance where
  getDynNode (Instance {dynNode}) = dynNode

instance AST.Cast.Cast Instance where
  cast = cast_Instance

unwrap_Instance :: Instance -> AST.Err.Err InstanceU
unwrap_Instance node = do
  children <- AST.Runtime.unwrapMaybe node.children
  context <- AST.Runtime.unwrapMaybe node.context
  declarations <- AST.Runtime.unwrapMaybe node.declarations
  forall' <- AST.Runtime.unwrapMaybe node.forall'
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    InstanceU
      { children,
        context,
        declarations,
        forall',
        name,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Instance InstanceU where
  unwrap = unwrap_Instance

data InstanceDeclarations = InstanceDeclarations
  { declaration :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (InstanceDecl))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data InstanceDeclarationsU = InstanceDeclarationsU
  { declaration :: AST.Runtime.List (InstanceDecl),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_InstanceDeclarations :: Api.Node -> Prelude.Maybe InstanceDeclarations
cast_InstanceDeclarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "instance_declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr declaration))
  Prelude.pure
    InstanceDeclarations
      { declaration,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode InstanceDeclarations where
  getDynNode (InstanceDeclarations {dynNode}) = dynNode

instance AST.Cast.Cast InstanceDeclarations where
  cast = cast_InstanceDeclarations

unwrap_InstanceDeclarations :: InstanceDeclarations -> AST.Err.Err InstanceDeclarationsU
unwrap_InstanceDeclarations node = do
  declaration <- AST.Runtime.unwrapList node.declaration
  Prelude.pure
    InstanceDeclarationsU
      { declaration,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap InstanceDeclarations InstanceDeclarationsU where
  unwrap = unwrap_InstanceDeclarations

data Integer = Integer {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Integer where
  getDynNode (Integer {dynNode}) = dynNode

instance AST.Cast.Cast Integer where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "integer")
    Prelude.pure (Integer {dynNode = dynNode})

data Invisible = Invisible
  { bind :: ((AST.Err.Err (TypeParam))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data InvisibleU = InvisibleU
  { bind :: (TypeParam),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Invisible :: Api.Node -> Prelude.Maybe Invisible
cast_Invisible dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "invisible")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  bind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "bind" namedMap))
  bind <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr bind))
  Prelude.pure
    Invisible
      { bind,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Invisible where
  getDynNode (Invisible {dynNode}) = dynNode

instance AST.Cast.Cast Invisible where
  cast = cast_Invisible

unwrap_Invisible :: Invisible -> AST.Err.Err InvisibleU
unwrap_Invisible node = do
  bind <- AST.Runtime.unwrapSingle node.bind
  Prelude.pure
    InvisibleU
      { bind,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Invisible InvisibleU where
  unwrap = unwrap_Invisible

data Irrefutable = Irrefutable
  { pattern' :: ((AST.Err.Err (Pattern))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data IrrefutableU = IrrefutableU
  { pattern' :: (Pattern),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Irrefutable :: Api.Node -> Prelude.Maybe Irrefutable
cast_Irrefutable dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "irrefutable")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    Irrefutable
      { pattern',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Irrefutable where
  getDynNode (Irrefutable {dynNode}) = dynNode

instance AST.Cast.Cast Irrefutable where
  cast = cast_Irrefutable

unwrap_Irrefutable :: Irrefutable -> AST.Err.Err IrrefutableU
unwrap_Irrefutable node = do
  pattern' <- AST.Runtime.unwrapSingle node.pattern'
  Prelude.pure
    IrrefutableU
      { pattern',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Irrefutable IrrefutableU where
  unwrap = unwrap_Irrefutable

data KindApplication = KindApplication
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data KindApplicationU = KindApplicationU
  { type' :: (Type),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_KindApplication :: Api.Node -> Prelude.Maybe KindApplication
cast_KindApplication dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "kind_application")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    KindApplication
      { type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode KindApplication where
  getDynNode (KindApplication {dynNode}) = dynNode

instance AST.Cast.Cast KindApplication where
  cast = cast_KindApplication

unwrap_KindApplication :: KindApplication -> AST.Err.Err KindApplicationU
unwrap_KindApplication node = do
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    KindApplicationU
      { type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap KindApplication KindApplicationU where
  unwrap = unwrap_KindApplication

data KindSignature = KindSignature
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    kind :: ((AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data KindSignatureU = KindSignatureU
  { children :: Prelude.Maybe ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)),
    kind :: (QuantifiedType),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (TypeParams),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_KindSignature :: Api.Node -> Prelude.Maybe KindSignature
cast_KindSignature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "kind_signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    KindSignature
      { children,
        kind,
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode KindSignature where
  getDynNode (KindSignature {dynNode}) = dynNode

instance AST.Cast.Cast KindSignature where
  cast = cast_KindSignature

unwrap_KindSignature :: KindSignature -> AST.Err.Err KindSignatureU
unwrap_KindSignature node = do
  children <- AST.Runtime.unwrapMaybe node.children
  kind <- AST.Runtime.unwrapSingle node.kind
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    KindSignatureU
      { children,
        kind,
        name,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap KindSignature KindSignatureU where
  unwrap = unwrap_KindSignature

data Lambda = Lambda
  { expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    patterns :: ((AST.Err.Err (Patterns))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LambdaU = LambdaU
  { expression :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    patterns :: (Patterns),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Lambda :: Api.Node -> Prelude.Maybe Lambda
cast_Lambda dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr patterns))
  Prelude.pure
    Lambda
      { expression,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Lambda where
  getDynNode (Lambda {dynNode}) = dynNode

instance AST.Cast.Cast Lambda where
  cast = cast_Lambda

unwrap_Lambda :: Lambda -> AST.Err.Err LambdaU
unwrap_Lambda node = do
  expression <- AST.Runtime.unwrapSingle node.expression
  patterns <- AST.Runtime.unwrapSingle node.patterns
  Prelude.pure
    LambdaU
      { expression,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Lambda LambdaU where
  unwrap = unwrap_Lambda

data LambdaCase = LambdaCase
  { alternatives :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Alternatives))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LambdaCaseU = LambdaCaseU
  { alternatives :: Prelude.Maybe (Alternatives),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_LambdaCase :: Api.Node -> Prelude.Maybe LambdaCase
cast_LambdaCase dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda_case")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr alternatives))
  Prelude.pure
    LambdaCase
      { alternatives,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode LambdaCase where
  getDynNode (LambdaCase {dynNode}) = dynNode

instance AST.Cast.Cast LambdaCase where
  cast = cast_LambdaCase

unwrap_LambdaCase :: LambdaCase -> AST.Err.Err LambdaCaseU
unwrap_LambdaCase node = do
  alternatives <- AST.Runtime.unwrapMaybe node.alternatives
  Prelude.pure
    LambdaCaseU
      { alternatives,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap LambdaCase LambdaCaseU where
  unwrap = unwrap_LambdaCase

data LambdaCases = LambdaCases
  { alternatives :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Alternatives))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LambdaCasesU = LambdaCasesU
  { alternatives :: Prelude.Maybe (Alternatives),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_LambdaCases :: Api.Node -> Prelude.Maybe LambdaCases
cast_LambdaCases dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda_cases")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr alternatives))
  Prelude.pure
    LambdaCases
      { alternatives,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode LambdaCases where
  getDynNode (LambdaCases {dynNode}) = dynNode

instance AST.Cast.Cast LambdaCases where
  cast = cast_LambdaCases

unwrap_LambdaCases :: LambdaCases -> AST.Err.Err LambdaCasesU
unwrap_LambdaCases node = do
  alternatives <- AST.Runtime.unwrapMaybe node.alternatives
  Prelude.pure
    LambdaCasesU
      { alternatives,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap LambdaCases LambdaCasesU where
  unwrap = unwrap_LambdaCases

data LazyField = LazyField
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LazyFieldU = LazyFieldU
  { type' :: (Type),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_LazyField :: Api.Node -> Prelude.Maybe LazyField
cast_LazyField dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lazy_field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    LazyField
      { type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode LazyField where
  getDynNode (LazyField {dynNode}) = dynNode

instance AST.Cast.Cast LazyField where
  cast = cast_LazyField

unwrap_LazyField :: LazyField -> AST.Err.Err LazyFieldU
unwrap_LazyField node = do
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    LazyFieldU
      { type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap LazyField LazyFieldU where
  unwrap = unwrap_LazyField

data LeftSection = LeftSection
  { leftOperand :: ((AST.Err.Err (Expression))),
    operator :: ((AST.Err.Err ((ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LeftSectionU = LeftSectionU
  { leftOperand :: (Expression),
    operator :: ((ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_LeftSection :: Api.Node -> Prelude.Maybe LeftSection
cast_LeftSection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "left_section")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  leftOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "left_operand" namedMap))
  leftOperand <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr leftOperand))
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr operator))
  Prelude.pure
    LeftSection
      { leftOperand,
        operator,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode LeftSection where
  getDynNode (LeftSection {dynNode}) = dynNode

instance AST.Cast.Cast LeftSection where
  cast = cast_LeftSection

unwrap_LeftSection :: LeftSection -> AST.Err.Err LeftSectionU
unwrap_LeftSection node = do
  leftOperand <- AST.Runtime.unwrapSingle node.leftOperand
  operator <- AST.Runtime.unwrapSingle node.operator
  Prelude.pure
    LeftSectionU
      { leftOperand,
        operator,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap LeftSection LeftSectionU where
  unwrap = unwrap_LeftSection

data Let = Let
  { binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LetU = LetU
  { binds :: Prelude.Maybe (LocalBinds),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Let :: Api.Node -> Prelude.Maybe Let
cast_Let dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "let")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr binds))
  Prelude.pure
    Let
      { binds,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Let where
  getDynNode (Let {dynNode}) = dynNode

instance AST.Cast.Cast Let where
  cast = cast_Let

unwrap_Let :: Let -> AST.Err.Err LetU
unwrap_Let node = do
  binds <- AST.Runtime.unwrapMaybe node.binds
  Prelude.pure
    LetU
      { binds,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Let LetU where
  unwrap = unwrap_Let

data LetIn = LetIn
  { binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LetInU = LetInU
  { binds :: Prelude.Maybe (LocalBinds),
    expression :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_LetIn :: Api.Node -> Prelude.Maybe LetIn
cast_LetIn dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "let_in")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr binds))
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  Prelude.pure
    LetIn
      { binds,
        expression,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode LetIn where
  getDynNode (LetIn {dynNode}) = dynNode

instance AST.Cast.Cast LetIn where
  cast = cast_LetIn

unwrap_LetIn :: LetIn -> AST.Err.Err LetInU
unwrap_LetIn node = do
  binds <- AST.Runtime.unwrapMaybe node.binds
  expression <- AST.Runtime.unwrapSingle node.expression
  Prelude.pure
    LetInU
      { binds,
        expression,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap LetIn LetInU where
  unwrap = unwrap_LetIn

data LinearFunction = LinearFunction
  { arrow :: ((AST.Err.Err (((AST.Token.Token "->") Sum.:+ (AST.Token.Token "->.") Sum.:+ (AST.Token.Token "→") Sum.:+ (AST.Token.Token "⊸") Sum.:+ Sum.Nil)))),
    multiplicity :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Modifier))),
    parameter :: ((AST.Err.Err ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)))),
    result :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LinearFunctionU = LinearFunctionU
  { arrow :: (((AST.Token.Token "->") Sum.:+ (AST.Token.Token "->.") Sum.:+ (AST.Token.Token "→") Sum.:+ (AST.Token.Token "⊸") Sum.:+ Sum.Nil)),
    multiplicity :: Prelude.Maybe (Modifier),
    parameter :: ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)),
    result :: (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_LinearFunction :: Api.Node -> Prelude.Maybe LinearFunction
cast_LinearFunction dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "linear_function")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr arrow))
  multiplicity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "multiplicity" namedMap))
  multiplicity <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr multiplicity))
  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr parameter))
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr result))
  Prelude.pure
    LinearFunction
      { arrow,
        multiplicity,
        parameter,
        result,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode LinearFunction where
  getDynNode (LinearFunction {dynNode}) = dynNode

instance AST.Cast.Cast LinearFunction where
  cast = cast_LinearFunction

unwrap_LinearFunction :: LinearFunction -> AST.Err.Err LinearFunctionU
unwrap_LinearFunction node = do
  arrow <- AST.Runtime.unwrapSingle node.arrow
  multiplicity <- AST.Runtime.unwrapMaybe node.multiplicity
  parameter <- AST.Runtime.unwrapSingle node.parameter
  result <- AST.Runtime.unwrapSingle node.result
  Prelude.pure
    LinearFunctionU
      { arrow,
        multiplicity,
        parameter,
        result,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap LinearFunction LinearFunctionU where
  unwrap = unwrap_LinearFunction

data List = List
  { element :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ListU = ListU
  { element :: AST.Runtime.List ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_List :: Api.Node -> Prelude.Maybe List
cast_List dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr element))
  Prelude.pure
    List
      { element,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode List where
  getDynNode (List {dynNode}) = dynNode

instance AST.Cast.Cast List where
  cast = cast_List

unwrap_List :: List -> AST.Err.Err ListU
unwrap_List node = do
  element <- AST.Runtime.unwrapList node.element
  Prelude.pure
    ListU
      { element,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap List ListU where
  unwrap = unwrap_List

data ListComprehension = ListComprehension
  { expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    qualifiers :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Qualifiers))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ListComprehensionU = ListComprehensionU
  { expression :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    qualifiers :: Data.List.NonEmpty.NonEmpty (Qualifiers),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ListComprehension :: Api.Node -> Prelude.Maybe ListComprehension
cast_ListComprehension dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "list_comprehension")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  qualifiers <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "qualifiers" namedMap))
  qualifiers <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr qualifiers))
  Prelude.pure
    ListComprehension
      { expression,
        qualifiers,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ListComprehension where
  getDynNode (ListComprehension {dynNode}) = dynNode

instance AST.Cast.Cast ListComprehension where
  cast = cast_ListComprehension

unwrap_ListComprehension :: ListComprehension -> AST.Err.Err ListComprehensionU
unwrap_ListComprehension node = do
  expression <- AST.Runtime.unwrapSingle node.expression
  qualifiers <- AST.Runtime.unwrapNonEmpty node.qualifiers
  Prelude.pure
    ListComprehensionU
      { expression,
        qualifiers,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ListComprehension ListComprehensionU where
  unwrap = unwrap_ListComprehension

data Literal = Literal
  { children :: ((AST.Err.Err ((Char Sum.:+ Float Sum.:+ Integer Sum.:+ String Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LiteralU = LiteralU
  { children :: ((Char Sum.:+ Float Sum.:+ Integer Sum.:+ String Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Literal :: Api.Node -> Prelude.Maybe Literal
cast_Literal dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "literal")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Literal
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Literal where
  getDynNode (Literal {dynNode}) = dynNode

instance AST.Cast.Cast Literal where
  cast = cast_Literal

unwrap_Literal :: Literal -> AST.Err.Err LiteralU
unwrap_Literal node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    LiteralU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Literal LiteralU where
  unwrap = unwrap_Literal

data LocalBinds = LocalBinds
  { decl :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Decl Sum.:+ Fixity Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data LocalBindsU = LocalBindsU
  { decl :: AST.Runtime.List ((Decl Sum.:+ Fixity Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_LocalBinds :: Api.Node -> Prelude.Maybe LocalBinds
cast_LocalBinds dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "local_binds")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  decl <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "decl" namedMap))
  decl <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr decl))
  Prelude.pure
    LocalBinds
      { decl,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode LocalBinds where
  getDynNode (LocalBinds {dynNode}) = dynNode

instance AST.Cast.Cast LocalBinds where
  cast = cast_LocalBinds

unwrap_LocalBinds :: LocalBinds -> AST.Err.Err LocalBindsU
unwrap_LocalBinds node = do
  decl <- AST.Runtime.unwrapList node.decl
  Prelude.pure
    LocalBindsU
      { decl,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap LocalBinds LocalBindsU where
  unwrap = unwrap_LocalBinds

data Match = Match
  { expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    guards :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Guards))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data MatchU = MatchU
  { expression :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    guards :: Prelude.Maybe (Guards),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Match :: Api.Node -> Prelude.Maybe Match
cast_Match dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "match")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  guards <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "guards" namedMap))
  guards <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr guards))
  Prelude.pure
    Match
      { expression,
        guards,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Match where
  getDynNode (Match {dynNode}) = dynNode

instance AST.Cast.Cast Match where
  cast = cast_Match

unwrap_Match :: Match -> AST.Err.Err MatchU
unwrap_Match node = do
  expression <- AST.Runtime.unwrapSingle node.expression
  guards <- AST.Runtime.unwrapMaybe node.guards
  Prelude.pure
    MatchU
      { expression,
        guards,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Match MatchU where
  unwrap = unwrap_Match

data Modifier = Modifier
  { children :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ModifierU = ModifierU
  { children :: (Type),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Modifier :: Api.Node -> Prelude.Maybe Modifier
cast_Modifier dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "modifier")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Modifier
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Modifier where
  getDynNode (Modifier {dynNode}) = dynNode

instance AST.Cast.Cast Modifier where
  cast = cast_Modifier

unwrap_Modifier :: Modifier -> AST.Err.Err ModifierU
unwrap_Modifier node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    ModifierU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Modifier ModifierU where
  unwrap = unwrap_Modifier

data Module = Module
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (ModuleId))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ModuleU = ModuleU
  { children :: Data.List.NonEmpty.NonEmpty (ModuleId),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Module :: Api.Node -> Prelude.Maybe Module
cast_Module dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "module")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Module
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Module where
  getDynNode (Module {dynNode}) = dynNode

instance AST.Cast.Cast Module where
  cast = cast_Module

unwrap_Module :: Module -> AST.Err.Err ModuleU
unwrap_Module node = do
  children <- AST.Runtime.unwrapNonEmpty node.children
  Prelude.pure
    ModuleU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Module ModuleU where
  unwrap = unwrap_Module

data ModuleExport = ModuleExport
  { module' :: ((AST.Err.Err (Module))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ModuleExportU = ModuleExportU
  { module' :: (Module),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ModuleExport :: Api.Node -> Prelude.Maybe ModuleExport
cast_ModuleExport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "module_export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr module'))
  Prelude.pure
    ModuleExport
      { module',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ModuleExport where
  getDynNode (ModuleExport {dynNode}) = dynNode

instance AST.Cast.Cast ModuleExport where
  cast = cast_ModuleExport

unwrap_ModuleExport :: ModuleExport -> AST.Err.Err ModuleExportU
unwrap_ModuleExport node = do
  module' <- AST.Runtime.unwrapSingle node.module'
  Prelude.pure
    ModuleExportU
      { module',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ModuleExport ModuleExportU where
  unwrap = unwrap_ModuleExport

data MultiWayIf = MultiWayIf
  { match :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Match))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data MultiWayIfU = MultiWayIfU
  { match :: AST.Runtime.List (Match),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_MultiWayIf :: Api.Node -> Prelude.Maybe MultiWayIf
cast_MultiWayIf dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "multi_way_if")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr match))
  Prelude.pure
    MultiWayIf
      { match,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode MultiWayIf where
  getDynNode (MultiWayIf {dynNode}) = dynNode

instance AST.Cast.Cast MultiWayIf where
  cast = cast_MultiWayIf

unwrap_MultiWayIf :: MultiWayIf -> AST.Err.Err MultiWayIfU
unwrap_MultiWayIf node = do
  match <- AST.Runtime.unwrapList node.match
  Prelude.pure
    MultiWayIfU
      { match,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap MultiWayIf MultiWayIfU where
  unwrap = unwrap_MultiWayIf

data Namespace = Namespace {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Namespace where
  getDynNode (Namespace {dynNode}) = dynNode

instance AST.Cast.Cast Namespace where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "namespace")
    Prelude.pure (Namespace {dynNode = dynNode})

data Negation = Negation
  { expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Expression))),
    minus :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((AST.Token.Token "-")))),
    number :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Float Sum.:+ Integer Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data NegationU = NegationU
  { expression :: Prelude.Maybe (Expression),
    minus :: Prelude.Maybe ((AST.Token.Token "-")),
    number :: Prelude.Maybe ((Float Sum.:+ Integer Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Negation :: Api.Node -> Prelude.Maybe Negation
cast_Negation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "negation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr expression))
  minus <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "minus" namedMap))
  minus <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr minus))
  number <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "number" namedMap))
  number <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr number))
  Prelude.pure
    Negation
      { expression,
        minus,
        number,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Negation where
  getDynNode (Negation {dynNode}) = dynNode

instance AST.Cast.Cast Negation where
  cast = cast_Negation

unwrap_Negation :: Negation -> AST.Err.Err NegationU
unwrap_Negation node = do
  expression <- AST.Runtime.unwrapMaybe node.expression
  minus <- AST.Runtime.unwrapMaybe node.minus
  number <- AST.Runtime.unwrapMaybe node.number
  Prelude.pure
    NegationU
      { expression,
        minus,
        number,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Negation NegationU where
  unwrap = unwrap_Negation

data Newtype = Newtype
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    constructor :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (NewtypeConstructor))),
    constructors :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (GadtConstructors))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    deriving' :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Deriving))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data NewtypeU = NewtypeU
  { children :: Prelude.Maybe ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)),
    constructor :: Prelude.Maybe (NewtypeConstructor),
    constructors :: Prelude.Maybe (GadtConstructors),
    context :: Prelude.Maybe (Context),
    deriving' :: AST.Runtime.List (Deriving),
    forall' :: Prelude.Maybe ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)),
    kind :: Prelude.Maybe (QuantifiedType),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe ((TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Newtype :: Api.Node -> Prelude.Maybe Newtype
cast_Newtype dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "newtype")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr constructor))
  constructors <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructors" namedMap))
  constructors <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr constructors))
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr context))
  deriving' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "deriving" namedMap))
  deriving' <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr deriving'))
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr forall'))
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Newtype
      { children,
        constructor,
        constructors,
        context,
        deriving',
        forall',
        kind,
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Newtype where
  getDynNode (Newtype {dynNode}) = dynNode

instance AST.Cast.Cast Newtype where
  cast = cast_Newtype

unwrap_Newtype :: Newtype -> AST.Err.Err NewtypeU
unwrap_Newtype node = do
  children <- AST.Runtime.unwrapMaybe node.children
  constructor <- AST.Runtime.unwrapMaybe node.constructor
  constructors <- AST.Runtime.unwrapMaybe node.constructors
  context <- AST.Runtime.unwrapMaybe node.context
  deriving' <- AST.Runtime.unwrapList node.deriving'
  forall' <- AST.Runtime.unwrapMaybe node.forall'
  kind <- AST.Runtime.unwrapMaybe node.kind
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    NewtypeU
      { children,
        constructor,
        constructors,
        context,
        deriving',
        forall',
        kind,
        name,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Newtype NewtypeU where
  unwrap = unwrap_Newtype

data NewtypeConstructor = NewtypeConstructor
  { field :: ((AST.Err.Err ((Field Sum.:+ Record Sum.:+ Sum.Nil)))),
    name :: ((AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data NewtypeConstructorU = NewtypeConstructorU
  { field :: ((Field Sum.:+ Record Sum.:+ Sum.Nil)),
    name :: ((Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_NewtypeConstructor :: Api.Node -> Prelude.Maybe NewtypeConstructor
cast_NewtypeConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "newtype_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr field))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr name))
  Prelude.pure
    NewtypeConstructor
      { field,
        name,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode NewtypeConstructor where
  getDynNode (NewtypeConstructor {dynNode}) = dynNode

instance AST.Cast.Cast NewtypeConstructor where
  cast = cast_NewtypeConstructor

unwrap_NewtypeConstructor :: NewtypeConstructor -> AST.Err.Err NewtypeConstructorU
unwrap_NewtypeConstructor node = do
  field <- AST.Runtime.unwrapSingle node.field
  name <- AST.Runtime.unwrapSingle node.name
  Prelude.pure
    NewtypeConstructorU
      { field,
        name,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap NewtypeConstructor NewtypeConstructorU where
  unwrap = unwrap_NewtypeConstructor

data Operator = Operator {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Operator where
  getDynNode (Operator {dynNode}) = dynNode

instance AST.Cast.Cast Operator where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "operator")
    Prelude.pure (Operator {dynNode = dynNode})

data Parens = Parens
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Annotated Sum.:+ Constraints Sum.:+ Infix Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ParensU = ParensU
  { children :: Prelude.Maybe ((Annotated Sum.:+ Constraints Sum.:+ Infix Sum.:+ TypeParam Sum.:+ Sum.Nil)),
    expression :: Prelude.Maybe ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    kind :: Prelude.Maybe (QuantifiedType),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil)),
    pattern' :: Prelude.Maybe ((Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe ((TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)),
    type' :: Prelude.Maybe ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Parens :: Api.Node -> Prelude.Maybe Parens
cast_Parens dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "parens")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr expression))
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr pattern'))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Parens
      { children,
        expression,
        kind,
        name,
        pattern',
        patterns,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Parens where
  getDynNode (Parens {dynNode}) = dynNode

instance AST.Cast.Cast Parens where
  cast = cast_Parens

unwrap_Parens :: Parens -> AST.Err.Err ParensU
unwrap_Parens node = do
  children <- AST.Runtime.unwrapMaybe node.children
  expression <- AST.Runtime.unwrapMaybe node.expression
  kind <- AST.Runtime.unwrapMaybe node.kind
  name <- AST.Runtime.unwrapMaybe node.name
  pattern' <- AST.Runtime.unwrapMaybe node.pattern'
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  type' <- AST.Runtime.unwrapMaybe node.type'
  Prelude.pure
    ParensU
      { children,
        expression,
        kind,
        name,
        pattern',
        patterns,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Parens ParensU where
  unwrap = unwrap_Parens

data PatternGuard = PatternGuard
  { arrow :: ((AST.Err.Err (((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)))),
    expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    pattern' :: ((AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data PatternGuardU = PatternGuardU
  { arrow :: (((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)),
    expression :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    pattern' :: ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_PatternGuard :: Api.Node -> Prelude.Maybe PatternGuard
cast_PatternGuard dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "pattern_guard")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr arrow))
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    PatternGuard
      { arrow,
        expression,
        pattern',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode PatternGuard where
  getDynNode (PatternGuard {dynNode}) = dynNode

instance AST.Cast.Cast PatternGuard where
  cast = cast_PatternGuard

unwrap_PatternGuard :: PatternGuard -> AST.Err.Err PatternGuardU
unwrap_PatternGuard node = do
  arrow <- AST.Runtime.unwrapSingle node.arrow
  expression <- AST.Runtime.unwrapSingle node.expression
  pattern' <- AST.Runtime.unwrapSingle node.pattern'
  Prelude.pure
    PatternGuardU
      { arrow,
        expression,
        pattern',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap PatternGuard PatternGuardU where
  unwrap = unwrap_PatternGuard

data PatternSynonym = PatternSynonym
  { children :: ((AST.Err.Err ((Equation Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data PatternSynonymU = PatternSynonymU
  { children :: ((Equation Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_PatternSynonym :: Api.Node -> Prelude.Maybe PatternSynonym
cast_PatternSynonym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "pattern_synonym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    PatternSynonym
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode PatternSynonym where
  getDynNode (PatternSynonym {dynNode}) = dynNode

instance AST.Cast.Cast PatternSynonym where
  cast = cast_PatternSynonym

unwrap_PatternSynonym :: PatternSynonym -> AST.Err.Err PatternSynonymU
unwrap_PatternSynonym node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    PatternSynonymU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap PatternSynonym PatternSynonymU where
  unwrap = unwrap_PatternSynonym

data Patterns = Patterns
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((ExplicitType Sum.:+ Pattern Sum.:+ TypeBinder Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data PatternsU = PatternsU
  { children :: Data.List.NonEmpty.NonEmpty ((ExplicitType Sum.:+ Pattern Sum.:+ TypeBinder Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Patterns :: Api.Node -> Prelude.Maybe Patterns
cast_Patterns dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "patterns")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Patterns
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Patterns where
  getDynNode (Patterns {dynNode}) = dynNode

instance AST.Cast.Cast Patterns where
  cast = cast_Patterns

unwrap_Patterns :: Patterns -> AST.Err.Err PatternsU
unwrap_Patterns node = do
  children <- AST.Runtime.unwrapNonEmpty node.children
  Prelude.pure
    PatternsU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Patterns PatternsU where
  unwrap = unwrap_Patterns

data Prefix = Prefix
  { field :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((LazyField Sum.:+ StrictField Sum.:+ Type Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data PrefixU = PrefixU
  { field :: AST.Runtime.List ((LazyField Sum.:+ StrictField Sum.:+ Type Sum.:+ Sum.Nil)),
    name :: Prelude.Maybe ((Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)),
    type' :: Prelude.Maybe (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Prefix :: Api.Node -> Prelude.Maybe Prefix
cast_Prefix dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr field))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    Prefix
      { field,
        name,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Prefix where
  getDynNode (Prefix {dynNode}) = dynNode

instance AST.Cast.Cast Prefix where
  cast = cast_Prefix

unwrap_Prefix :: Prefix -> AST.Err.Err PrefixU
unwrap_Prefix node = do
  field <- AST.Runtime.unwrapList node.field
  name <- AST.Runtime.unwrapMaybe node.name
  type' <- AST.Runtime.unwrapMaybe node.type'
  Prelude.pure
    PrefixU
      { field,
        name,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Prefix PrefixU where
  unwrap = unwrap_Prefix

data PrefixId = PrefixId
  { children :: ((AST.Err.Err ((ConstructorOperator Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data PrefixIdU = PrefixIdU
  { children :: ((ConstructorOperator Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_PrefixId :: Api.Node -> Prelude.Maybe PrefixId
cast_PrefixId dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_id")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    PrefixId
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode PrefixId where
  getDynNode (PrefixId {dynNode}) = dynNode

instance AST.Cast.Cast PrefixId where
  cast = cast_PrefixId

unwrap_PrefixId :: PrefixId -> AST.Err.Err PrefixIdU
unwrap_PrefixId node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    PrefixIdU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap PrefixId PrefixIdU where
  unwrap = unwrap_PrefixId

data PrefixList = PrefixList {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode PrefixList where
  getDynNode (PrefixList {dynNode}) = dynNode

instance AST.Cast.Cast PrefixList where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_list")
    Prelude.pure (PrefixList {dynNode = dynNode})

data PrefixTuple = PrefixTuple {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode PrefixTuple where
  getDynNode (PrefixTuple {dynNode}) = dynNode

instance AST.Cast.Cast PrefixTuple where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_tuple")
    Prelude.pure (PrefixTuple {dynNode = dynNode})

data PrefixUnboxedSum = PrefixUnboxedSum {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode PrefixUnboxedSum where
  getDynNode (PrefixUnboxedSum {dynNode}) = dynNode

instance AST.Cast.Cast PrefixUnboxedSum where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_unboxed_sum")
    Prelude.pure (PrefixUnboxedSum {dynNode = dynNode})

data PrefixUnboxedTuple = PrefixUnboxedTuple {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode PrefixUnboxedTuple where
  getDynNode (PrefixUnboxedTuple {dynNode}) = dynNode

instance AST.Cast.Cast PrefixUnboxedTuple where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_unboxed_tuple")
    Prelude.pure (PrefixUnboxedTuple {dynNode = dynNode})

data Projection = Projection
  { expression :: ((AST.Err.Err (Expression))),
    field :: ((AST.Err.Err (FieldName))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ProjectionU = ProjectionU
  { expression :: (Expression),
    field :: (FieldName),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Projection :: Api.Node -> Prelude.Maybe Projection
cast_Projection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "projection")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr field))
  Prelude.pure
    Projection
      { expression,
        field,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Projection where
  getDynNode (Projection {dynNode}) = dynNode

instance AST.Cast.Cast Projection where
  cast = cast_Projection

unwrap_Projection :: Projection -> AST.Err.Err ProjectionU
unwrap_Projection node = do
  expression <- AST.Runtime.unwrapSingle node.expression
  field <- AST.Runtime.unwrapSingle node.field
  Prelude.pure
    ProjectionU
      { expression,
        field,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Projection ProjectionU where
  unwrap = unwrap_Projection

data ProjectionSelector = ProjectionSelector
  { field :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Variable))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ProjectionSelectorU = ProjectionSelectorU
  { field :: Data.List.NonEmpty.NonEmpty (Variable),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ProjectionSelector :: Api.Node -> Prelude.Maybe ProjectionSelector
cast_ProjectionSelector dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "projection_selector")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr field))
  Prelude.pure
    ProjectionSelector
      { field,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ProjectionSelector where
  getDynNode (ProjectionSelector {dynNode}) = dynNode

instance AST.Cast.Cast ProjectionSelector where
  cast = cast_ProjectionSelector

unwrap_ProjectionSelector :: ProjectionSelector -> AST.Err.Err ProjectionSelectorU
unwrap_ProjectionSelector node = do
  field <- AST.Runtime.unwrapNonEmpty node.field
  Prelude.pure
    ProjectionSelectorU
      { field,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ProjectionSelector ProjectionSelectorU where
  unwrap = unwrap_ProjectionSelector

data Promoted = Promoted
  { children :: ((AST.Err.Err ((Constructor Sum.:+ ConstructorOperator Sum.:+ EmptyList Sum.:+ InfixId Sum.:+ List Sum.:+ Operator Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ Qualified Sum.:+ Tuple Sum.:+ Unit Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data PromotedU = PromotedU
  { children :: ((Constructor Sum.:+ ConstructorOperator Sum.:+ EmptyList Sum.:+ InfixId Sum.:+ List Sum.:+ Operator Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ Qualified Sum.:+ Tuple Sum.:+ Unit Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Promoted :: Api.Node -> Prelude.Maybe Promoted
cast_Promoted dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "promoted")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Promoted
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Promoted where
  getDynNode (Promoted {dynNode}) = dynNode

instance AST.Cast.Cast Promoted where
  cast = cast_Promoted

unwrap_Promoted :: Promoted -> AST.Err.Err PromotedU
unwrap_Promoted node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    PromotedU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Promoted PromotedU where
  unwrap = unwrap_Promoted

data Qualified = Qualified
  { id :: ((AST.Err.Err ((Constructor Sum.:+ ConstructorOperator Sum.:+ FieldName Sum.:+ Name Sum.:+ Operator Sum.:+ Variable Sum.:+ Sum.Nil)))),
    module' :: ((AST.Err.Err (Module))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QualifiedU = QualifiedU
  { id :: ((Constructor Sum.:+ ConstructorOperator Sum.:+ FieldName Sum.:+ Name Sum.:+ Operator Sum.:+ Variable Sum.:+ Sum.Nil)),
    module' :: (Module),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Qualified :: Api.Node -> Prelude.Maybe Qualified
cast_Qualified dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "qualified")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  id <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "id" namedMap))
  id <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr id))
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr module'))
  Prelude.pure
    Qualified
      { id,
        module',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Qualified where
  getDynNode (Qualified {dynNode}) = dynNode

instance AST.Cast.Cast Qualified where
  cast = cast_Qualified

unwrap_Qualified :: Qualified -> AST.Err.Err QualifiedU
unwrap_Qualified node = do
  id <- AST.Runtime.unwrapSingle node.id
  module' <- AST.Runtime.unwrapSingle node.module'
  Prelude.pure
    QualifiedU
      { id,
        module',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Qualified QualifiedU where
  unwrap = unwrap_Qualified

data Qualifiers = Qualifiers
  { qualifier :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Qualifier))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QualifiersU = QualifiersU
  { qualifier :: Data.List.NonEmpty.NonEmpty (Qualifier),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Qualifiers :: Api.Node -> Prelude.Maybe Qualifiers
cast_Qualifiers dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "qualifiers")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  qualifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "qualifier" namedMap))
  qualifier <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr qualifier))
  Prelude.pure
    Qualifiers
      { qualifier,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Qualifiers where
  getDynNode (Qualifiers {dynNode}) = dynNode

instance AST.Cast.Cast Qualifiers where
  cast = cast_Qualifiers

unwrap_Qualifiers :: Qualifiers -> AST.Err.Err QualifiersU
unwrap_Qualifiers node = do
  qualifier <- AST.Runtime.unwrapNonEmpty node.qualifier
  Prelude.pure
    QualifiersU
      { qualifier,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Qualifiers QualifiersU where
  unwrap = unwrap_Qualifiers

data QuantifiedVariables = QuantifiedVariables
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Inferred Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QuantifiedVariablesU = QuantifiedVariablesU
  { children :: Data.List.NonEmpty.NonEmpty ((Inferred Sum.:+ TypeParam Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_QuantifiedVariables :: Api.Node -> Prelude.Maybe QuantifiedVariables
cast_QuantifiedVariables dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quantified_variables")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    QuantifiedVariables
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode QuantifiedVariables where
  getDynNode (QuantifiedVariables {dynNode}) = dynNode

instance AST.Cast.Cast QuantifiedVariables where
  cast = cast_QuantifiedVariables

unwrap_QuantifiedVariables :: QuantifiedVariables -> AST.Err.Err QuantifiedVariablesU
unwrap_QuantifiedVariables node = do
  children <- AST.Runtime.unwrapNonEmpty node.children
  Prelude.pure
    QuantifiedVariablesU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap QuantifiedVariables QuantifiedVariablesU where
  unwrap = unwrap_QuantifiedVariables

data Quasiquote = Quasiquote
  { body :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuasiquoteBody))),
    quoter :: ((AST.Err.Err (Quoter))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QuasiquoteU = QuasiquoteU
  { body :: Prelude.Maybe (QuasiquoteBody),
    quoter :: (Quoter),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Quasiquote :: Api.Node -> Prelude.Maybe Quasiquote
cast_Quasiquote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quasiquote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  body <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "body" namedMap))
  body <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr body))
  quoter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quoter" namedMap))
  quoter <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr quoter))
  Prelude.pure
    Quasiquote
      { body,
        quoter,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Quasiquote where
  getDynNode (Quasiquote {dynNode}) = dynNode

instance AST.Cast.Cast Quasiquote where
  cast = cast_Quasiquote

unwrap_Quasiquote :: Quasiquote -> AST.Err.Err QuasiquoteU
unwrap_Quasiquote node = do
  body <- AST.Runtime.unwrapMaybe node.body
  quoter <- AST.Runtime.unwrapSingle node.quoter
  Prelude.pure
    QuasiquoteU
      { body,
        quoter,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Quasiquote QuasiquoteU where
  unwrap = unwrap_Quasiquote

data Quote = Quote
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((QuotedDecls Sum.:+ QuotedExpression Sum.:+ QuotedPattern Sum.:+ QuotedType Sum.:+ Sum.Nil)))),
    quoter :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (((AST.Token.Token "d") Sum.:+ (AST.Token.Token "e") Sum.:+ (AST.Token.Token "p") Sum.:+ (AST.Token.Token "t") Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QuoteU = QuoteU
  { children :: Prelude.Maybe ((QuotedDecls Sum.:+ QuotedExpression Sum.:+ QuotedPattern Sum.:+ QuotedType Sum.:+ Sum.Nil)),
    quoter :: Prelude.Maybe (((AST.Token.Token "d") Sum.:+ (AST.Token.Token "e") Sum.:+ (AST.Token.Token "p") Sum.:+ (AST.Token.Token "t") Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Quote :: Api.Node -> Prelude.Maybe Quote
cast_Quote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  quoter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quoter" namedMap))
  quoter <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr quoter))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Quote
      { children,
        quoter,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Quote where
  getDynNode (Quote {dynNode}) = dynNode

instance AST.Cast.Cast Quote where
  cast = cast_Quote

unwrap_Quote :: Quote -> AST.Err.Err QuoteU
unwrap_Quote node = do
  children <- AST.Runtime.unwrapMaybe node.children
  quoter <- AST.Runtime.unwrapMaybe node.quoter
  Prelude.pure
    QuoteU
      { children,
        quoter,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Quote QuoteU where
  unwrap = unwrap_Quote

data QuotedDecls = QuotedDecls
  { declaration :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Declaration))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QuotedDeclsU = QuotedDeclsU
  { declaration :: AST.Runtime.List (Declaration),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_QuotedDecls :: Api.Node -> Prelude.Maybe QuotedDecls
cast_QuotedDecls dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_decls")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr declaration))
  Prelude.pure
    QuotedDecls
      { declaration,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode QuotedDecls where
  getDynNode (QuotedDecls {dynNode}) = dynNode

instance AST.Cast.Cast QuotedDecls where
  cast = cast_QuotedDecls

unwrap_QuotedDecls :: QuotedDecls -> AST.Err.Err QuotedDeclsU
unwrap_QuotedDecls node = do
  declaration <- AST.Runtime.unwrapList node.declaration
  Prelude.pure
    QuotedDeclsU
      { declaration,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap QuotedDecls QuotedDeclsU where
  unwrap = unwrap_QuotedDecls

data QuotedExpression = QuotedExpression
  { children :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QuotedExpressionU = QuotedExpressionU
  { children :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_QuotedExpression :: Api.Node -> Prelude.Maybe QuotedExpression
cast_QuotedExpression dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_expression")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    QuotedExpression
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode QuotedExpression where
  getDynNode (QuotedExpression {dynNode}) = dynNode

instance AST.Cast.Cast QuotedExpression where
  cast = cast_QuotedExpression

unwrap_QuotedExpression :: QuotedExpression -> AST.Err.Err QuotedExpressionU
unwrap_QuotedExpression node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    QuotedExpressionU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap QuotedExpression QuotedExpressionU where
  unwrap = unwrap_QuotedExpression

data QuotedPattern = QuotedPattern
  { children :: ((AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QuotedPatternU = QuotedPatternU
  { children :: ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_QuotedPattern :: Api.Node -> Prelude.Maybe QuotedPattern
cast_QuotedPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    QuotedPattern
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode QuotedPattern where
  getDynNode (QuotedPattern {dynNode}) = dynNode

instance AST.Cast.Cast QuotedPattern where
  cast = cast_QuotedPattern

unwrap_QuotedPattern :: QuotedPattern -> AST.Err.Err QuotedPatternU
unwrap_QuotedPattern node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    QuotedPatternU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap QuotedPattern QuotedPatternU where
  unwrap = unwrap_QuotedPattern

data QuotedType = QuotedType
  { children :: ((AST.Err.Err ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QuotedTypeU = QuotedTypeU
  { children :: ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_QuotedType :: Api.Node -> Prelude.Maybe QuotedType
cast_QuotedType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    QuotedType
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode QuotedType where
  getDynNode (QuotedType {dynNode}) = dynNode

instance AST.Cast.Cast QuotedType where
  cast = cast_QuotedType

unwrap_QuotedType :: QuotedType -> AST.Err.Err QuotedTypeU
unwrap_QuotedType node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    QuotedTypeU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap QuotedType QuotedTypeU where
  unwrap = unwrap_QuotedType

data Quoter = Quoter
  { children :: ((AST.Err.Err ((Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data QuoterU = QuoterU
  { children :: ((Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Quoter :: Api.Node -> Prelude.Maybe Quoter
cast_Quoter dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoter")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Quoter
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Quoter where
  getDynNode (Quoter {dynNode}) = dynNode

instance AST.Cast.Cast Quoter where
  cast = cast_Quoter

unwrap_Quoter :: Quoter -> AST.Err.Err QuoterU
unwrap_Quoter node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    QuoterU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Quoter QuoterU where
  unwrap = unwrap_Quoter

data Rec = Rec
  { statement :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Statement))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data RecU = RecU
  { statement :: AST.Runtime.List (Statement),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Rec :: Api.Node -> Prelude.Maybe Rec
cast_Rec dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "rec")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  statement <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "statement" namedMap))
  statement <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr statement))
  Prelude.pure
    Rec
      { statement,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Rec where
  getDynNode (Rec {dynNode}) = dynNode

instance AST.Cast.Cast Rec where
  cast = cast_Rec

unwrap_Rec :: Rec -> AST.Err.Err RecU
unwrap_Rec node = do
  statement <- AST.Runtime.unwrapList node.statement
  Prelude.pure
    RecU
      { statement,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Rec RecU where
  unwrap = unwrap_Rec

data Record = Record
  { arrow :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil)))),
    constructor :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Pattern))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Expression))),
    field :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Field Sum.:+ FieldPattern Sum.:+ FieldUpdate Sum.:+ Sum.Nil)))),
    fields :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Fields))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Constructor))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data RecordU = RecordU
  { arrow :: AST.Runtime.List (((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil)),
    constructor :: Prelude.Maybe (Pattern),
    expression :: Prelude.Maybe (Expression),
    field :: AST.Runtime.List ((Field Sum.:+ FieldPattern Sum.:+ FieldUpdate Sum.:+ Sum.Nil)),
    fields :: Prelude.Maybe (Fields),
    name :: Prelude.Maybe (Constructor),
    type' :: Prelude.Maybe (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Record :: Api.Node -> Prelude.Maybe Record
cast_Record dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "record")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr arrow))
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr constructor))
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr expression))
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr field))
  fields <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fields" namedMap))
  fields <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr fields))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    Record
      { arrow,
        constructor,
        expression,
        field,
        fields,
        name,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Record where
  getDynNode (Record {dynNode}) = dynNode

instance AST.Cast.Cast Record where
  cast = cast_Record

unwrap_Record :: Record -> AST.Err.Err RecordU
unwrap_Record node = do
  arrow <- AST.Runtime.unwrapList node.arrow
  constructor <- AST.Runtime.unwrapMaybe node.constructor
  expression <- AST.Runtime.unwrapMaybe node.expression
  field <- AST.Runtime.unwrapList node.field
  fields <- AST.Runtime.unwrapMaybe node.fields
  name <- AST.Runtime.unwrapMaybe node.name
  type' <- AST.Runtime.unwrapMaybe node.type'
  Prelude.pure
    RecordU
      { arrow,
        constructor,
        expression,
        field,
        fields,
        name,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Record RecordU where
  unwrap = unwrap_Record

data RightSection = RightSection
  { children :: ((AST.Err.Err ((ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    rightOperand :: ((AST.Err.Err (Expression))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data RightSectionU = RightSectionU
  { children :: ((ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)),
    rightOperand :: (Expression),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_RightSection :: Api.Node -> Prelude.Maybe RightSection
cast_RightSection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "right_section")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  rightOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "right_operand" namedMap))
  rightOperand <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr rightOperand))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    RightSection
      { children,
        rightOperand,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode RightSection where
  getDynNode (RightSection {dynNode}) = dynNode

instance AST.Cast.Cast RightSection where
  cast = cast_RightSection

unwrap_RightSection :: RightSection -> AST.Err.Err RightSectionU
unwrap_RightSection node = do
  children <- AST.Runtime.unwrapSingle node.children
  rightOperand <- AST.Runtime.unwrapSingle node.rightOperand
  Prelude.pure
    RightSectionU
      { children,
        rightOperand,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap RightSection RightSectionU where
  unwrap = unwrap_RightSection

data RoleAnnotation = RoleAnnotation
  { role :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (TypeRole))),
    type' :: ((AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data RoleAnnotationU = RoleAnnotationU
  { role :: Data.List.NonEmpty.NonEmpty (TypeRole),
    type' :: ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_RoleAnnotation :: Api.Node -> Prelude.Maybe RoleAnnotation
cast_RoleAnnotation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "role_annotation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  role <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "role" namedMap))
  role <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr role))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    RoleAnnotation
      { role,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode RoleAnnotation where
  getDynNode (RoleAnnotation {dynNode}) = dynNode

instance AST.Cast.Cast RoleAnnotation where
  cast = cast_RoleAnnotation

unwrap_RoleAnnotation :: RoleAnnotation -> AST.Err.Err RoleAnnotationU
unwrap_RoleAnnotation node = do
  role <- AST.Runtime.unwrapNonEmpty node.role
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    RoleAnnotationU
      { role,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap RoleAnnotation RoleAnnotationU where
  unwrap = unwrap_RoleAnnotation

data Signature = Signature
  { constraint :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Constraints))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Expression))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    names :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (BindingList))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Pattern))),
    synonym :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((BindingList Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data SignatureU = SignatureU
  { constraint :: Prelude.Maybe (Constraints),
    expression :: Prelude.Maybe (Expression),
    kind :: Prelude.Maybe (QuantifiedType),
    name :: Prelude.Maybe ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)),
    names :: Prelude.Maybe (BindingList),
    pattern' :: Prelude.Maybe (Pattern),
    synonym :: Prelude.Maybe ((BindingList Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)),
    type' :: Prelude.Maybe (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Signature :: Api.Node -> Prelude.Maybe Signature
cast_Signature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constraint <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constraint" namedMap))
  constraint <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr constraint))
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr expression))
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  names <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "names" namedMap))
  names <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr names))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr pattern'))
  synonym <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "synonym" namedMap))
  synonym <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr synonym))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    Signature
      { constraint,
        expression,
        kind,
        name,
        names,
        pattern',
        synonym,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Signature where
  getDynNode (Signature {dynNode}) = dynNode

instance AST.Cast.Cast Signature where
  cast = cast_Signature

unwrap_Signature :: Signature -> AST.Err.Err SignatureU
unwrap_Signature node = do
  constraint <- AST.Runtime.unwrapMaybe node.constraint
  expression <- AST.Runtime.unwrapMaybe node.expression
  kind <- AST.Runtime.unwrapMaybe node.kind
  name <- AST.Runtime.unwrapMaybe node.name
  names <- AST.Runtime.unwrapMaybe node.names
  pattern' <- AST.Runtime.unwrapMaybe node.pattern'
  synonym <- AST.Runtime.unwrapMaybe node.synonym
  type' <- AST.Runtime.unwrapMaybe node.type'
  Prelude.pure
    SignatureU
      { constraint,
        expression,
        kind,
        name,
        names,
        pattern',
        synonym,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Signature SignatureU where
  unwrap = unwrap_Signature

data Special = Special
  { children :: ((AST.Err.Err ((EmptyList Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data SpecialU = SpecialU
  { children :: ((EmptyList Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Special :: Api.Node -> Prelude.Maybe Special
cast_Special dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "special")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Special
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Special where
  getDynNode (Special {dynNode}) = dynNode

instance AST.Cast.Cast Special where
  cast = cast_Special

unwrap_Special :: Special -> AST.Err.Err SpecialU
unwrap_Special node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    SpecialU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Special SpecialU where
  unwrap = unwrap_Special

data Splice = Splice
  { expression :: ((AST.Err.Err ((Constructor Sum.:+ ImplicitVariable Sum.:+ Label Sum.:+ Literal Sum.:+ Parens Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data SpliceU = SpliceU
  { expression :: ((Constructor Sum.:+ ImplicitVariable Sum.:+ Label Sum.:+ Literal Sum.:+ Parens Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Splice :: Api.Node -> Prelude.Maybe Splice
cast_Splice dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "splice")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  Prelude.pure
    Splice
      { expression,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Splice where
  getDynNode (Splice {dynNode}) = dynNode

instance AST.Cast.Cast Splice where
  cast = cast_Splice

unwrap_Splice :: Splice -> AST.Err.Err SpliceU
unwrap_Splice node = do
  expression <- AST.Runtime.unwrapSingle node.expression
  Prelude.pure
    SpliceU
      { expression,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Splice SpliceU where
  unwrap = unwrap_Splice

data Star = Star {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Star where
  getDynNode (Star {dynNode}) = dynNode

instance AST.Cast.Cast Star where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "star")
    Prelude.pure (Star {dynNode = dynNode})

data Strict = Strict
  { pattern' :: ((AST.Err.Err (Pattern))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data StrictU = StrictU
  { pattern' :: (Pattern),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Strict :: Api.Node -> Prelude.Maybe Strict
cast_Strict dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "strict")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    Strict
      { pattern',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Strict where
  getDynNode (Strict {dynNode}) = dynNode

instance AST.Cast.Cast Strict where
  cast = cast_Strict

unwrap_Strict :: Strict -> AST.Err.Err StrictU
unwrap_Strict node = do
  pattern' <- AST.Runtime.unwrapSingle node.pattern'
  Prelude.pure
    StrictU
      { pattern',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Strict StrictU where
  unwrap = unwrap_Strict

data StrictField = StrictField
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data StrictFieldU = StrictFieldU
  { type' :: (Type),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_StrictField :: Api.Node -> Prelude.Maybe StrictField
cast_StrictField dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "strict_field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    StrictField
      { type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode StrictField where
  getDynNode (StrictField {dynNode}) = dynNode

instance AST.Cast.Cast StrictField where
  cast = cast_StrictField

unwrap_StrictField :: StrictField -> AST.Err.Err StrictFieldU
unwrap_StrictField node = do
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    StrictFieldU
      { type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap StrictField StrictFieldU where
  unwrap = unwrap_StrictField

data ThQuotedName = ThQuotedName
  { name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Type))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ThQuotedNameU = ThQuotedNameU
  { name :: Prelude.Maybe ((Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    type' :: Prelude.Maybe (Type),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ThQuotedName :: Api.Node -> Prelude.Maybe ThQuotedName
cast_ThQuotedName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "th_quoted_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    ThQuotedName
      { name,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ThQuotedName where
  getDynNode (ThQuotedName {dynNode}) = dynNode

instance AST.Cast.Cast ThQuotedName where
  cast = cast_ThQuotedName

unwrap_ThQuotedName :: ThQuotedName -> AST.Err.Err ThQuotedNameU
unwrap_ThQuotedName node = do
  name <- AST.Runtime.unwrapMaybe node.name
  type' <- AST.Runtime.unwrapMaybe node.type'
  Prelude.pure
    ThQuotedNameU
      { name,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ThQuotedName ThQuotedNameU where
  unwrap = unwrap_ThQuotedName

data TopSplice = TopSplice
  { children :: ((AST.Err.Err (Expression))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TopSpliceU = TopSpliceU
  { children :: (Expression),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TopSplice :: Api.Node -> Prelude.Maybe TopSplice
cast_TopSplice dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "top_splice")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    TopSplice
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TopSplice where
  getDynNode (TopSplice {dynNode}) = dynNode

instance AST.Cast.Cast TopSplice where
  cast = cast_TopSplice

unwrap_TopSplice :: TopSplice -> AST.Err.Err TopSpliceU
unwrap_TopSplice node = do
  children <- AST.Runtime.unwrapSingle node.children
  Prelude.pure
    TopSpliceU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TopSplice TopSpliceU where
  unwrap = unwrap_TopSplice

data Transform = Transform
  { key :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    transformation :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TransformU = TransformU
  { key :: Prelude.Maybe ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    transformation :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Transform :: Api.Node -> Prelude.Maybe Transform
cast_Transform dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "transform")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  key <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "key" namedMap))
  key <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr key))
  transformation <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "transformation" namedMap))
  transformation <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr transformation))
  Prelude.pure
    Transform
      { key,
        transformation,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Transform where
  getDynNode (Transform {dynNode}) = dynNode

instance AST.Cast.Cast Transform where
  cast = cast_Transform

unwrap_Transform :: Transform -> AST.Err.Err TransformU
unwrap_Transform node = do
  key <- AST.Runtime.unwrapMaybe node.key
  transformation <- AST.Runtime.unwrapSingle node.transformation
  Prelude.pure
    TransformU
      { key,
        transformation,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Transform TransformU where
  unwrap = unwrap_Transform

data Tuple = Tuple
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Constraints))),
    element :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TupleU = TupleU
  { children :: AST.Runtime.List (Constraints),
    element :: AST.Runtime.List ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Tuple :: Api.Node -> Prelude.Maybe Tuple
cast_Tuple dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "tuple")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr element))
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    Tuple
      { children,
        element,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Tuple where
  getDynNode (Tuple {dynNode}) = dynNode

instance AST.Cast.Cast Tuple where
  cast = cast_Tuple

unwrap_Tuple :: Tuple -> AST.Err.Err TupleU
unwrap_Tuple node = do
  children <- AST.Runtime.unwrapList node.children
  element <- AST.Runtime.unwrapList node.element
  Prelude.pure
    TupleU
      { children,
        element,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Tuple TupleU where
  unwrap = unwrap_Tuple

data TypeApplication = TypeApplication
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypeApplicationU = TypeApplicationU
  { type' :: (Type),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypeApplication :: Api.Node -> Prelude.Maybe TypeApplication
cast_TypeApplication dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_application")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    TypeApplication
      { type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypeApplication where
  getDynNode (TypeApplication {dynNode}) = dynNode

instance AST.Cast.Cast TypeApplication where
  cast = cast_TypeApplication

unwrap_TypeApplication :: TypeApplication -> AST.Err.Err TypeApplicationU
unwrap_TypeApplication node = do
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    TypeApplicationU
      { type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypeApplication TypeApplicationU where
  unwrap = unwrap_TypeApplication

data TypeBinder = TypeBinder
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypeBinderU = TypeBinderU
  { type' :: (Type),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypeBinder :: Api.Node -> Prelude.Maybe TypeBinder
cast_TypeBinder dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_binder")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    TypeBinder
      { type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypeBinder where
  getDynNode (TypeBinder {dynNode}) = dynNode

instance AST.Cast.Cast TypeBinder where
  cast = cast_TypeBinder

unwrap_TypeBinder :: TypeBinder -> AST.Err.Err TypeBinderU
unwrap_TypeBinder node = do
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    TypeBinderU
      { type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypeBinder TypeBinderU where
  unwrap = unwrap_TypeBinder

data TypeFamily = TypeFamily
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ TypeFamilyInjectivity Sum.:+ TypeFamilyResult Sum.:+ Sum.Nil)))),
    closedFamily :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((AbstractFamily Sum.:+ Equations Sum.:+ Sum.Nil)))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypeFamilyU = TypeFamilyU
  { children :: AST.Runtime.List ((Infix Sum.:+ Parens Sum.:+ TypeFamilyInjectivity Sum.:+ TypeFamilyResult Sum.:+ Sum.Nil)),
    closedFamily :: Prelude.Maybe ((AbstractFamily Sum.:+ Equations Sum.:+ Sum.Nil)),
    kind :: Prelude.Maybe (QuantifiedType),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (TypeParams),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypeFamily :: Api.Node -> Prelude.Maybe TypeFamily
cast_TypeFamily dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  closedFamily <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "closed_family" namedMap))
  closedFamily <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr closedFamily))
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    TypeFamily
      { children,
        closedFamily,
        kind,
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypeFamily where
  getDynNode (TypeFamily {dynNode}) = dynNode

instance AST.Cast.Cast TypeFamily where
  cast = cast_TypeFamily

unwrap_TypeFamily :: TypeFamily -> AST.Err.Err TypeFamilyU
unwrap_TypeFamily node = do
  children <- AST.Runtime.unwrapList node.children
  closedFamily <- AST.Runtime.unwrapMaybe node.closedFamily
  kind <- AST.Runtime.unwrapMaybe node.kind
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    TypeFamilyU
      { children,
        closedFamily,
        kind,
        name,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypeFamily TypeFamilyU where
  unwrap = unwrap_TypeFamily

data TypeFamilyInjectivity = TypeFamilyInjectivity
  { determined :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Variable))),
    result :: ((AST.Err.Err (Variable))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypeFamilyInjectivityU = TypeFamilyInjectivityU
  { determined :: Data.List.NonEmpty.NonEmpty (Variable),
    result :: (Variable),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypeFamilyInjectivity :: Api.Node -> Prelude.Maybe TypeFamilyInjectivity
cast_TypeFamilyInjectivity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family_injectivity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  determined <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "determined" namedMap))
  determined <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr determined))
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr result))
  Prelude.pure
    TypeFamilyInjectivity
      { determined,
        result,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypeFamilyInjectivity where
  getDynNode (TypeFamilyInjectivity {dynNode}) = dynNode

instance AST.Cast.Cast TypeFamilyInjectivity where
  cast = cast_TypeFamilyInjectivity

unwrap_TypeFamilyInjectivity :: TypeFamilyInjectivity -> AST.Err.Err TypeFamilyInjectivityU
unwrap_TypeFamilyInjectivity node = do
  determined <- AST.Runtime.unwrapNonEmpty node.determined
  result <- AST.Runtime.unwrapSingle node.result
  Prelude.pure
    TypeFamilyInjectivityU
      { determined,
        result,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypeFamilyInjectivity TypeFamilyInjectivityU where
  unwrap = unwrap_TypeFamilyInjectivity

data TypeFamilyResult = TypeFamilyResult
  { result :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypeFamilyResultU = TypeFamilyResultU
  { result :: (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypeFamilyResult :: Api.Node -> Prelude.Maybe TypeFamilyResult
cast_TypeFamilyResult dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family_result")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr result))
  Prelude.pure
    TypeFamilyResult
      { result,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypeFamilyResult where
  getDynNode (TypeFamilyResult {dynNode}) = dynNode

instance AST.Cast.Cast TypeFamilyResult where
  cast = cast_TypeFamilyResult

unwrap_TypeFamilyResult :: TypeFamilyResult -> AST.Err.Err TypeFamilyResultU
unwrap_TypeFamilyResult node = do
  result <- AST.Runtime.unwrapSingle node.result
  Prelude.pure
    TypeFamilyResultU
      { result,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypeFamilyResult TypeFamilyResultU where
  unwrap = unwrap_TypeFamilyResult

data TypeInstance = TypeInstance
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil)))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypePatterns))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypeInstanceU = TypeInstanceU
  { children :: Data.List.NonEmpty.NonEmpty ((Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil)),
    forall' :: Prelude.Maybe ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (TypePatterns),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypeInstance :: Api.Node -> Prelude.Maybe TypeInstance
cast_TypeInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr forall'))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    TypeInstance
      { children,
        forall',
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypeInstance where
  getDynNode (TypeInstance {dynNode}) = dynNode

instance AST.Cast.Cast TypeInstance where
  cast = cast_TypeInstance

unwrap_TypeInstance :: TypeInstance -> AST.Err.Err TypeInstanceU
unwrap_TypeInstance node = do
  children <- AST.Runtime.unwrapNonEmpty node.children
  forall' <- AST.Runtime.unwrapMaybe node.forall'
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  Prelude.pure
    TypeInstanceU
      { children,
        forall',
        name,
        patterns,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypeInstance TypeInstanceU where
  unwrap = unwrap_TypeInstance

data TypeParams = TypeParams
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (TypeParam))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypeParamsU = TypeParamsU
  { children :: Data.List.NonEmpty.NonEmpty (TypeParam),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypeParams :: Api.Node -> Prelude.Maybe TypeParams
cast_TypeParams dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_params")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    TypeParams
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypeParams where
  getDynNode (TypeParams {dynNode}) = dynNode

instance AST.Cast.Cast TypeParams where
  cast = cast_TypeParams

unwrap_TypeParams :: TypeParams -> AST.Err.Err TypeParamsU
unwrap_TypeParams node = do
  children <- AST.Runtime.unwrapNonEmpty node.children
  Prelude.pure
    TypeParamsU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypeParams TypeParamsU where
  unwrap = unwrap_TypeParams

data TypePatterns = TypePatterns
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((KindApplication Sum.:+ Type Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypePatternsU = TypePatternsU
  { children :: Data.List.NonEmpty.NonEmpty ((KindApplication Sum.:+ Type Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypePatterns :: Api.Node -> Prelude.Maybe TypePatterns
cast_TypePatterns dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_patterns")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    TypePatterns
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypePatterns where
  getDynNode (TypePatterns {dynNode}) = dynNode

instance AST.Cast.Cast TypePatterns where
  cast = cast_TypePatterns

unwrap_TypePatterns :: TypePatterns -> AST.Err.Err TypePatternsU
unwrap_TypePatterns node = do
  children <- AST.Runtime.unwrapNonEmpty node.children
  Prelude.pure
    TypePatternsU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypePatterns TypePatternsU where
  unwrap = unwrap_TypePatterns

data TypeRole = TypeRole {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode TypeRole where
  getDynNode (TypeRole {dynNode}) = dynNode

instance AST.Cast.Cast TypeRole where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_role")
    Prelude.pure (TypeRole {dynNode = dynNode})

data TypeSynomym = TypeSynomym
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    type' :: ((AST.Err.Err ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypeSynomymU = TypeSynomymU
  { children :: Prelude.Maybe ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)),
    name :: Prelude.Maybe ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)),
    patterns :: Prelude.Maybe (TypeParams),
    type' :: ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypeSynomym :: Api.Node -> Prelude.Maybe TypeSynomym
cast_TypeSynomym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_synomym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    TypeSynomym
      { children,
        name,
        patterns,
        type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypeSynomym where
  getDynNode (TypeSynomym {dynNode}) = dynNode

instance AST.Cast.Cast TypeSynomym where
  cast = cast_TypeSynomym

unwrap_TypeSynomym :: TypeSynomym -> AST.Err.Err TypeSynomymU
unwrap_TypeSynomym node = do
  children <- AST.Runtime.unwrapMaybe node.children
  name <- AST.Runtime.unwrapMaybe node.name
  patterns <- AST.Runtime.unwrapMaybe node.patterns
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    TypeSynomymU
      { children,
        name,
        patterns,
        type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypeSynomym TypeSynomymU where
  unwrap = unwrap_TypeSynomym

data TypedQuote = TypedQuote
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuotedExpression))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data TypedQuoteU = TypedQuoteU
  { children :: Prelude.Maybe (QuotedExpression),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_TypedQuote :: Api.Node -> Prelude.Maybe TypedQuote
cast_TypedQuote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "typed_quote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr positional))
  Prelude.pure
    TypedQuote
      { children,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode TypedQuote where
  getDynNode (TypedQuote {dynNode}) = dynNode

instance AST.Cast.Cast TypedQuote where
  cast = cast_TypedQuote

unwrap_TypedQuote :: TypedQuote -> AST.Err.Err TypedQuoteU
unwrap_TypedQuote node = do
  children <- AST.Runtime.unwrapMaybe node.children
  Prelude.pure
    TypedQuoteU
      { children,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap TypedQuote TypedQuoteU where
  unwrap = unwrap_TypedQuote

data UnboxedSum = UnboxedSum
  { element :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data UnboxedSumU = UnboxedSumU
  { element :: Data.List.NonEmpty.NonEmpty ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_UnboxedSum :: Api.Node -> Prelude.Maybe UnboxedSum
cast_UnboxedSum dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_sum")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr element))
  Prelude.pure
    UnboxedSum
      { element,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode UnboxedSum where
  getDynNode (UnboxedSum {dynNode}) = dynNode

instance AST.Cast.Cast UnboxedSum where
  cast = cast_UnboxedSum

unwrap_UnboxedSum :: UnboxedSum -> AST.Err.Err UnboxedSumU
unwrap_UnboxedSum node = do
  element <- AST.Runtime.unwrapNonEmpty node.element
  Prelude.pure
    UnboxedSumU
      { element,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap UnboxedSum UnboxedSumU where
  unwrap = unwrap_UnboxedSum

data UnboxedTuple = UnboxedTuple
  { element :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data UnboxedTupleU = UnboxedTupleU
  { element :: Data.List.NonEmpty.NonEmpty ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_UnboxedTuple :: Api.Node -> Prelude.Maybe UnboxedTuple
cast_UnboxedTuple dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_tuple")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr element))
  Prelude.pure
    UnboxedTuple
      { element,
        dynNode = dynNode
      }

instance AST.Node.HasDynNode UnboxedTuple where
  getDynNode (UnboxedTuple {dynNode}) = dynNode

instance AST.Cast.Cast UnboxedTuple where
  cast = cast_UnboxedTuple

unwrap_UnboxedTuple :: UnboxedTuple -> AST.Err.Err UnboxedTupleU
unwrap_UnboxedTuple node = do
  element <- AST.Runtime.unwrapNonEmpty node.element
  Prelude.pure
    UnboxedTupleU
      { element,
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap UnboxedTuple UnboxedTupleU where
  unwrap = unwrap_UnboxedTuple

data UnboxedUnit = UnboxedUnit {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode UnboxedUnit where
  getDynNode (UnboxedUnit {dynNode}) = dynNode

instance AST.Cast.Cast UnboxedUnit where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_unit")
    Prelude.pure (UnboxedUnit {dynNode = dynNode})

data Unit = Unit {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Unit where
  getDynNode (Unit {dynNode}) = dynNode

instance AST.Cast.Cast Unit where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "unit")
    Prelude.pure (Unit {dynNode = dynNode})

data Via = Via
  { type' :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ViaU = ViaU
  { type' :: (QuantifiedType),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_Via :: Api.Node -> Prelude.Maybe Via
cast_Via dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "via")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    Via
      { type',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode Via where
  getDynNode (Via {dynNode}) = dynNode

instance AST.Cast.Cast Via where
  cast = cast_Via

unwrap_Via :: Via -> AST.Err.Err ViaU
unwrap_Via node = do
  type' <- AST.Runtime.unwrapSingle node.type'
  Prelude.pure
    ViaU
      { type',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap Via ViaU where
  unwrap = unwrap_Via

data ViewPattern = ViewPattern
  { expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    pattern' :: ((AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

data ViewPatternU = ViewPatternU
  { expression :: ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    pattern' :: ((Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)),
    dynNode :: AST.Node.DynNode
  }
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

cast_ViewPattern :: Api.Node -> Prelude.Maybe ViewPattern
cast_ViewPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "view_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    ViewPattern
      { expression,
        pattern',
        dynNode = dynNode
      }

instance AST.Node.HasDynNode ViewPattern where
  getDynNode (ViewPattern {dynNode}) = dynNode

instance AST.Cast.Cast ViewPattern where
  cast = cast_ViewPattern

unwrap_ViewPattern :: ViewPattern -> AST.Err.Err ViewPatternU
unwrap_ViewPattern node = do
  expression <- AST.Runtime.unwrapSingle node.expression
  pattern' <- AST.Runtime.unwrapSingle node.pattern'
  Prelude.pure
    ViewPatternU
      { expression,
        pattern',
        dynNode = node.dynNode
      }

instance AST.Unwrap.Unwrap ViewPattern ViewPatternU where
  unwrap = unwrap_ViewPattern

data Wildcard = Wildcard {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Wildcard where
  getDynNode (Wildcard {dynNode}) = dynNode

instance AST.Cast.Cast Wildcard where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "wildcard")
    Prelude.pure (Wildcard {dynNode = dynNode})

data AllNames = AllNames {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode AllNames where
  getDynNode (AllNames {dynNode}) = dynNode

instance AST.Cast.Cast AllNames where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "all_names")
    Prelude.pure (AllNames {dynNode = dynNode})

data CallingConvention = CallingConvention {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode CallingConvention where
  getDynNode (CallingConvention {dynNode}) = dynNode

instance AST.Cast.Cast CallingConvention where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "calling_convention")
    Prelude.pure (CallingConvention {dynNode = dynNode})

data Char = Char {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Char where
  getDynNode (Char {dynNode}) = dynNode

instance AST.Cast.Cast Char where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "char")
    Prelude.pure (Char {dynNode = dynNode})

data Comment = Comment {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Comment where
  getDynNode (Comment {dynNode}) = dynNode

instance AST.Cast.Cast Comment where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "comment")
    Prelude.pure (Comment {dynNode = dynNode})

data Constructor = Constructor {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Constructor where
  getDynNode (Constructor {dynNode}) = dynNode

instance AST.Cast.Cast Constructor where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor")
    Prelude.pure (Constructor {dynNode = dynNode})

data Cpp = Cpp {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Cpp where
  getDynNode (Cpp {dynNode}) = dynNode

instance AST.Cast.Cast Cpp where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "cpp")
    Prelude.pure (Cpp {dynNode = dynNode})

data Float = Float {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Float where
  getDynNode (Float {dynNode}) = dynNode

instance AST.Cast.Cast Float where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "float")
    Prelude.pure (Float {dynNode = dynNode})

data Haddock = Haddock {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Haddock where
  getDynNode (Haddock {dynNode}) = dynNode

instance AST.Cast.Cast Haddock where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "haddock")
    Prelude.pure (Haddock {dynNode = dynNode})

data ImplicitVariable = ImplicitVariable {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode ImplicitVariable where
  getDynNode (ImplicitVariable {dynNode}) = dynNode

instance AST.Cast.Cast ImplicitVariable where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "implicit_variable")
    Prelude.pure (ImplicitVariable {dynNode = dynNode})

data ImportPackage = ImportPackage {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode ImportPackage where
  getDynNode (ImportPackage {dynNode}) = dynNode

instance AST.Cast.Cast ImportPackage where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_package")
    Prelude.pure (ImportPackage {dynNode = dynNode})

data Label = Label {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Label where
  getDynNode (Label {dynNode}) = dynNode

instance AST.Cast.Cast Label where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "label")
    Prelude.pure (Label {dynNode = dynNode})

data ModuleId = ModuleId {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode ModuleId where
  getDynNode (ModuleId {dynNode}) = dynNode

instance AST.Cast.Cast ModuleId where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "module_id")
    Prelude.pure (ModuleId {dynNode = dynNode})

data Name = Name {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Name where
  getDynNode (Name {dynNode}) = dynNode

instance AST.Cast.Cast Name where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "name")
    Prelude.pure (Name {dynNode = dynNode})

data Pragma = Pragma {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Pragma where
  getDynNode (Pragma {dynNode}) = dynNode

instance AST.Cast.Cast Pragma where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "pragma")
    Prelude.pure (Pragma {dynNode = dynNode})

data QuasiquoteBody = QuasiquoteBody {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode QuasiquoteBody where
  getDynNode (QuasiquoteBody {dynNode}) = dynNode

instance AST.Cast.Cast QuasiquoteBody where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "quasiquote_body")
    Prelude.pure (QuasiquoteBody {dynNode = dynNode})

data Safety = Safety {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Safety where
  getDynNode (Safety {dynNode}) = dynNode

instance AST.Cast.Cast Safety where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "safety")
    Prelude.pure (Safety {dynNode = dynNode})

data String = String {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode String where
  getDynNode (String {dynNode}) = dynNode

instance AST.Cast.Cast String where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "string")
    Prelude.pure (String {dynNode = dynNode})

data Variable = Variable {dynNode :: AST.Node.DynNode}
  deriving (Prelude.Show, Prelude.Eq, GHC.Generics.Generic)

instance AST.Node.HasDynNode Variable where
  getDynNode (Variable {dynNode}) = dynNode

instance AST.Cast.Cast Variable where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "variable")
    Prelude.pure (Variable {dynNode = dynNode})
