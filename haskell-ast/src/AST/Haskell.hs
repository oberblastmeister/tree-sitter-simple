{-# LANGUAGE DeriveAnyClass #-}
-- This file was generated! DO NOT EDIT!
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-unused-local-binds #-}

{-# HLINT ignore "Use camelCase" #-}

module AST.Haskell
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
    Alternatives (..),
    Annotated (..),
    Apply (..),
    ArithmeticSequence (..),
    As (..),
    AssociatedType (..),
    Bind (..),
    BindingList (..),
    Boolean (..),
    Case (..),
    Children (..),
    Class (..),
    ClassDeclarations (..),
    Conditional (..),
    ConstructorOperator (..),
    ConstructorSynonym (..),
    ConstructorSynonyms (..),
    Context (..),
    DataConstructor (..),
    DataConstructors (..),
    DataFamily (..),
    DataInstance (..),
    DataType (..),
    Declarations (..),
    DefaultSignature (..),
    DefaultTypes (..),
    Deriving (..),
    DerivingInstance (..),
    DerivingStrategy (..),
    Do (..),
    DoModule (..),
    EmptyList (..),
    Entity (..),
    Equation (..),
    Equations (..),
    Exp (..),
    ExplicitType (..),
    Export (..),
    Exports (..),
    Field (..),
    FieldName (..),
    FieldPath (..),
    FieldPattern (..),
    FieldUpdate (..),
    Fields (..),
    Fixity (..),
    Forall (..),
    ForallRequired (..),
    ForeignExport (..),
    ForeignImport (..),
    Function (..),
    FunctionHeadParens (..),
    Fundep (..),
    Fundeps (..),
    GadtConstructor (..),
    GadtConstructors (..),
    Generator (..),
    Group (..),
    Guards (..),
    Haskell (..),
    Header (..),
    ImplicitParameter (..),
    Import (..),
    ImportList (..),
    ImportName (..),
    Imports (..),
    Inferred (..),
    Infix (..),
    InfixId (..),
    Instance (..),
    InstanceDeclarations (..),
    Integer (..),
    Invisible (..),
    Irrefutable (..),
    KindApplication (..),
    KindSignature (..),
    Lambda (..),
    LambdaCase (..),
    LambdaCases (..),
    LazyField (..),
    LeftSection (..),
    Let (..),
    LetIn (..),
    LinearFunction (..),
    List (..),
    ListComprehension (..),
    Literal (..),
    LocalBinds (..),
    Match (..),
    Modifier (..),
    Module (..),
    ModuleExport (..),
    MultiWayIf (..),
    Namespace (..),
    Negation (..),
    Newtype (..),
    NewtypeConstructor (..),
    Operator (..),
    Parens (..),
    PatternGuard (..),
    PatternSynonym (..),
    Patterns (..),
    Prefix (..),
    PrefixId (..),
    PrefixList (..),
    PrefixTuple (..),
    PrefixUnboxedSum (..),
    PrefixUnboxedTuple (..),
    Projection (..),
    ProjectionSelector (..),
    Promoted (..),
    Qualified (..),
    Qualifiers (..),
    QuantifiedVariables (..),
    Quasiquote (..),
    Quote (..),
    QuotedDecls (..),
    QuotedExpression (..),
    QuotedPattern (..),
    QuotedType (..),
    Quoter (..),
    Rec (..),
    Record (..),
    RightSection (..),
    RoleAnnotation (..),
    Signature (..),
    Special (..),
    Splice (..),
    Star (..),
    Strict (..),
    StrictField (..),
    ThQuotedName (..),
    TopSplice (..),
    Transform (..),
    Tuple (..),
    TypeApplication (..),
    TypeBinder (..),
    TypeFamily (..),
    TypeFamilyInjectivity (..),
    TypeFamilyResult (..),
    TypeInstance (..),
    TypeParams (..),
    TypePatterns (..),
    TypeRole (..),
    TypeSynomym (..),
    TypedQuote (..),
    UnboxedSum (..),
    UnboxedTuple (..),
    UnboxedUnit (..),
    Unit (..),
    Via (..),
    ViewPattern (..),
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
import AST.Node qualified
import AST.Runtime qualified
import AST.Token qualified
import Control.DeepSeq qualified
import Control.Monad qualified
import Data.List.NonEmpty qualified
import Data.Map.Strict qualified
import Data.Sum qualified as Sum
import Data.Text qualified
import GHC.Generics qualified
import TreeSitter.Api qualified as Api
import Prelude qualified

newtype ClassDecl = ClassDecl {getClassDecl :: (DataFamily Sum.:+ Decl Sum.:+ DefaultSignature Sum.:+ Fixity Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ClassDecl where
  cast node = do
    getClassDecl <- AST.Cast.cast node
    Prelude.pure (ClassDecl {getClassDecl})

newtype Constraint = Constraint {getConstraint :: (Apply Sum.:+ Infix Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Tuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Constraint where
  cast node = do
    getConstraint <- AST.Cast.cast node
    Prelude.pure (Constraint {getConstraint})

newtype Constraints = Constraints {getConstraints :: (Constraint Sum.:+ Context Sum.:+ Forall Sum.:+ ImplicitParameter Sum.:+ Signature Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Constraints where
  cast node = do
    getConstraints <- AST.Cast.cast node
    Prelude.pure (Constraints {getConstraints})

newtype Decl = Decl {getDecl :: (Bind Sum.:+ Function Sum.:+ Signature Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Decl where
  cast node = do
    getDecl <- AST.Cast.cast node
    Prelude.pure (Decl {getDecl})

newtype Declaration = Declaration {getDeclaration :: (Class Sum.:+ DataFamily Sum.:+ DataInstance Sum.:+ DataType Sum.:+ Decl Sum.:+ DefaultTypes Sum.:+ DerivingInstance Sum.:+ Fixity Sum.:+ ForeignExport Sum.:+ ForeignImport Sum.:+ Instance Sum.:+ KindSignature Sum.:+ Newtype Sum.:+ PatternSynonym Sum.:+ RoleAnnotation Sum.:+ TopSplice Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ TypeSynomym Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Declaration where
  cast node = do
    getDeclaration <- AST.Cast.cast node
    Prelude.pure (Declaration {getDeclaration})

newtype Expression = Expression {getExpression :: (Apply Sum.:+ ArithmeticSequence Sum.:+ Case Sum.:+ Conditional Sum.:+ Constructor Sum.:+ Do Sum.:+ ImplicitVariable Sum.:+ Infix Sum.:+ Label Sum.:+ Lambda Sum.:+ LambdaCase Sum.:+ LambdaCases Sum.:+ LeftSection Sum.:+ LetIn Sum.:+ List Sum.:+ ListComprehension Sum.:+ Literal Sum.:+ MultiWayIf Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Projection Sum.:+ ProjectionSelector Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Quote Sum.:+ Record Sum.:+ RightSection Sum.:+ Splice Sum.:+ ThQuotedName Sum.:+ Tuple Sum.:+ TypedQuote Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Expression where
  cast node = do
    getExpression <- AST.Cast.cast node
    Prelude.pure (Expression {getExpression})

newtype Guard = Guard {getGuard :: (Boolean Sum.:+ Let Sum.:+ PatternGuard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Guard where
  cast node = do
    getGuard <- AST.Cast.cast node
    Prelude.pure (Guard {getGuard})

newtype InstanceDecl = InstanceDecl {getInstanceDecl :: (DataInstance Sum.:+ Decl Sum.:+ TypeInstance Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast InstanceDecl where
  cast node = do
    getInstanceDecl <- AST.Cast.cast node
    Prelude.pure (InstanceDecl {getInstanceDecl})

newtype Pattern = Pattern {getPattern :: (Apply Sum.:+ As Sum.:+ Constructor Sum.:+ Infix Sum.:+ Irrefutable Sum.:+ List Sum.:+ Literal Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Record Sum.:+ Splice Sum.:+ Strict Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Pattern where
  cast node = do
    getPattern <- AST.Cast.cast node
    Prelude.pure (Pattern {getPattern})

newtype Qualifier = Qualifier {getQualifier :: (Boolean Sum.:+ Generator Sum.:+ Group Sum.:+ Let Sum.:+ Transform Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Qualifier where
  cast node = do
    getQualifier <- AST.Cast.cast node
    Prelude.pure (Qualifier {getQualifier})

newtype QuantifiedType = QuantifiedType {getQuantifiedType :: (Context Sum.:+ Forall Sum.:+ ForallRequired Sum.:+ Function Sum.:+ ImplicitParameter Sum.:+ LinearFunction Sum.:+ Type Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast QuantifiedType where
  cast node = do
    getQuantifiedType <- AST.Cast.cast node
    Prelude.pure (QuantifiedType {getQuantifiedType})

newtype Statement = Statement {getStatement :: (Bind Sum.:+ Exp Sum.:+ Let Sum.:+ Rec Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Statement where
  cast node = do
    getStatement <- AST.Cast.cast node
    Prelude.pure (Statement {getStatement})

newtype Type = Type {getType :: (Apply Sum.:+ Infix Sum.:+ List Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Star Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Type where
  cast node = do
    getType <- AST.Cast.cast node
    Prelude.pure (Type {getType})

newtype TypeParam = TypeParam {getTypeParam :: (Invisible Sum.:+ Parens Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast TypeParam where
  cast node = do
    getTypeParam <- AST.Cast.cast node
    Prelude.pure (TypeParam {getTypeParam})

data AbstractFamily = AbstractFamily
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast AbstractFamily where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "abstract_family")
    Prelude.pure AbstractFamily

data Alternative = Alternative
  { binds :: (Prelude.Maybe (AST.Node.Node LocalBinds)),
    match :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Match)),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node Patterns))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Alternative :: Api.Node -> Prelude.Maybe Alternative
cast_Alternative dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "alternative")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (Prelude.fmap AST.Node.castNode binds)
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (Prelude.fmap AST.Node.castNode match)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  binds <- AST.Runtime.listOptionalSingle binds
  match <- Data.List.NonEmpty.nonEmpty match
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    Alternative
      { binds,
        match,
        pattern',
        patterns
      }

instance AST.Cast.Cast Alternative where
  cast = cast_Alternative

data Alternatives = Alternatives
  { alternative :: ([(AST.Node.Node Alternative)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Alternatives :: Api.Node -> Prelude.Maybe Alternatives
cast_Alternatives dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "alternatives")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alternative <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternative" namedMap))
  alternative <- Prelude.pure (Prelude.fmap AST.Node.castNode alternative)
  Prelude.pure
    Alternatives
      { alternative
      }

instance AST.Cast.Cast Alternatives where
  cast = cast_Alternatives

data Annotated = Annotated
  { children :: (AST.Node.Node TypeParam),
    kind :: (AST.Node.Node QuantifiedType)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Annotated :: Api.Node -> Prelude.Maybe Annotated
cast_Annotated dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "annotated")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (Prelude.fmap AST.Node.castNode kind)
  children <- AST.Runtime.listIsSingle children
  kind <- AST.Runtime.listIsSingle kind
  Prelude.pure
    Annotated
      { children,
        kind
      }

instance AST.Cast.Cast Annotated where
  cast = cast_Annotated

data Apply = Apply
  { argument :: (AST.Node.Node (ExplicitType Sum.:+ Expression Sum.:+ KindApplication Sum.:+ Pattern Sum.:+ Type Sum.:+ TypeApplication Sum.:+ TypeBinder Sum.:+ Sum.Nil)),
    constructor :: (Prelude.Maybe (AST.Node.Node (Constraint Sum.:+ Type Sum.:+ Sum.Nil))),
    function :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Pattern Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Apply :: Api.Node -> Prelude.Maybe Apply
cast_Apply dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "apply")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  argument <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "argument" namedMap))
  argument <- Prelude.pure (Prelude.fmap AST.Node.castNode argument)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (Prelude.fmap AST.Node.castNode constructor)
  function <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "function" namedMap))
  function <- Prelude.pure (Prelude.fmap AST.Node.castNode function)
  argument <- AST.Runtime.listIsSingle argument
  constructor <- AST.Runtime.listOptionalSingle constructor
  function <- AST.Runtime.listOptionalSingle function
  Prelude.pure
    Apply
      { argument,
        constructor,
        function
      }

instance AST.Cast.Cast Apply where
  cast = cast_Apply

data ArithmeticSequence = ArithmeticSequence
  { from :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    step :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    to :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ArithmeticSequence :: Api.Node -> Prelude.Maybe ArithmeticSequence
cast_ArithmeticSequence dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "arithmetic_sequence")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  from <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "from" namedMap))
  from <- Prelude.pure (Prelude.fmap AST.Node.castNode from)
  step <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "step" namedMap))
  step <- Prelude.pure (Prelude.fmap AST.Node.castNode step)
  to <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "to" namedMap))
  to <- Prelude.pure (Prelude.fmap AST.Node.castNode to)
  from <- AST.Runtime.listIsSingle from
  step <- AST.Runtime.listOptionalSingle step
  to <- AST.Runtime.listOptionalSingle to
  Prelude.pure
    ArithmeticSequence
      { from,
        step,
        to
      }

instance AST.Cast.Cast ArithmeticSequence where
  cast = cast_ArithmeticSequence

data As = As
  { bind :: (AST.Node.Node Variable),
    pattern' :: (AST.Node.Node Pattern)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_As :: Api.Node -> Prelude.Maybe As
cast_As dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "as")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  bind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "bind" namedMap))
  bind <- Prelude.pure (Prelude.fmap AST.Node.castNode bind)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  bind <- AST.Runtime.listIsSingle bind
  pattern' <- AST.Runtime.listIsSingle pattern'
  Prelude.pure
    As
      { bind,
        pattern'
      }

instance AST.Cast.Cast As where
  cast = cast_As

data AssociatedType = AssociatedType
  { namespace :: (AST.Node.Node (AST.Token.Token "type")),
    type' :: (AST.Node.Node (Name Sum.:+ Qualified Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_AssociatedType :: Api.Node -> Prelude.Maybe AssociatedType
cast_AssociatedType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "associated_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure (Prelude.fmap AST.Node.castNode namespace)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  namespace <- AST.Runtime.listIsSingle namespace
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    AssociatedType
      { namespace,
        type'
      }

instance AST.Cast.Cast AssociatedType where
  cast = cast_AssociatedType

data Bind = Bind
  { arrow :: (Prelude.Maybe (AST.Node.Node ((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil))),
    binds :: (Prelude.Maybe (AST.Node.Node LocalBinds)),
    expression :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    implicit :: (Prelude.Maybe (AST.Node.Node ImplicitVariable)),
    match :: ([(AST.Node.Node Match)]),
    name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Bind :: Api.Node -> Prelude.Maybe Bind
cast_Bind dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "bind")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (Prelude.fmap AST.Node.castNode arrow)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (Prelude.fmap AST.Node.castNode binds)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  implicit <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "implicit" namedMap))
  implicit <- Prelude.pure (Prelude.fmap AST.Node.castNode implicit)
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (Prelude.fmap AST.Node.castNode match)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  arrow <- AST.Runtime.listOptionalSingle arrow
  binds <- AST.Runtime.listOptionalSingle binds
  expression <- AST.Runtime.listOptionalSingle expression
  implicit <- AST.Runtime.listOptionalSingle implicit
  name <- AST.Runtime.listOptionalSingle name
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  Prelude.pure
    Bind
      { arrow,
        binds,
        expression,
        implicit,
        match,
        name,
        pattern'
      }

instance AST.Cast.Cast Bind where
  cast = cast_Bind

data BindingList = BindingList
  { name :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Constructor Sum.:+ PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_BindingList :: Api.Node -> Prelude.Maybe BindingList
cast_BindingList dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "binding_list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  name <- Data.List.NonEmpty.nonEmpty name
  Prelude.pure
    BindingList
      { name
      }

instance AST.Cast.Cast BindingList where
  cast = cast_BindingList

data Boolean = Boolean
  { children :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Boolean :: Api.Node -> Prelude.Maybe Boolean
cast_Boolean dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "boolean")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    Boolean
      { children
      }

instance AST.Cast.Cast Boolean where
  cast = cast_Boolean

data Case = Case
  { children :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    alternatives :: (Prelude.Maybe (AST.Node.Node Alternatives))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Case :: Api.Node -> Prelude.Maybe Case
cast_Case dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "case")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure (Prelude.fmap AST.Node.castNode alternatives)
  children <- AST.Runtime.listIsSingle children
  alternatives <- AST.Runtime.listOptionalSingle alternatives
  Prelude.pure
    Case
      { children,
        alternatives
      }

instance AST.Cast.Cast Case where
  cast = cast_Case

data Children = Children
  { element :: ([(AST.Node.Node (AllNames Sum.:+ AssociatedType Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Children :: Api.Node -> Prelude.Maybe Children
cast_Children dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "children")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (Prelude.fmap AST.Node.castNode element)
  Prelude.pure
    Children
      { element
      }

instance AST.Cast.Cast Children where
  cast = cast_Children

data Class = Class
  { children :: (Prelude.Maybe (AST.Node.Node (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    context :: (Prelude.Maybe (AST.Node.Node Context)),
    declarations :: (Prelude.Maybe (AST.Node.Node ClassDeclarations)),
    fundeps :: (Prelude.Maybe (AST.Node.Node Fundeps)),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node TypeParams))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Class :: Api.Node -> Prelude.Maybe Class
cast_Class dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "class")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (Prelude.fmap AST.Node.castNode context)
  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure (Prelude.fmap AST.Node.castNode declarations)
  fundeps <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fundeps" namedMap))
  fundeps <- Prelude.pure (Prelude.fmap AST.Node.castNode fundeps)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  children <- AST.Runtime.listOptionalSingle children
  context <- AST.Runtime.listOptionalSingle context
  declarations <- AST.Runtime.listOptionalSingle declarations
  fundeps <- AST.Runtime.listOptionalSingle fundeps
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    Class
      { children,
        context,
        declarations,
        fundeps,
        name,
        patterns
      }

instance AST.Cast.Cast Class where
  cast = cast_Class

data ClassDeclarations = ClassDeclarations
  { declaration :: ([(AST.Node.Node ClassDecl)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ClassDeclarations :: Api.Node -> Prelude.Maybe ClassDeclarations
cast_ClassDeclarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "class_declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure (Prelude.fmap AST.Node.castNode declaration)
  Prelude.pure
    ClassDeclarations
      { declaration
      }

instance AST.Cast.Cast ClassDeclarations where
  cast = cast_ClassDeclarations

data Conditional = Conditional
  { else' :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    if' :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    then' :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Conditional :: Api.Node -> Prelude.Maybe Conditional
cast_Conditional dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "conditional")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  else' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "else" namedMap))
  else' <- Prelude.pure (Prelude.fmap AST.Node.castNode else')
  if' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "if" namedMap))
  if' <- Prelude.pure (Prelude.fmap AST.Node.castNode if')
  then' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "then" namedMap))
  then' <- Prelude.pure (Prelude.fmap AST.Node.castNode then')
  else' <- AST.Runtime.listIsSingle else'
  if' <- AST.Runtime.listIsSingle if'
  then' <- AST.Runtime.listIsSingle then'
  Prelude.pure
    Conditional
      { else',
        if',
        then'
      }

instance AST.Cast.Cast Conditional where
  cast = cast_Conditional

data ConstructorOperator = ConstructorOperator
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ConstructorOperator where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_operator")
    Prelude.pure ConstructorOperator

data ConstructorSynonym = ConstructorSynonym
  { binds :: (Prelude.Maybe (AST.Node.Node LocalBinds)),
    implicit :: (Prelude.Maybe (AST.Node.Node ImplicitVariable)),
    match :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Match)),
    name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ConstructorSynonym :: Api.Node -> Prelude.Maybe ConstructorSynonym
cast_ConstructorSynonym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_synonym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (Prelude.fmap AST.Node.castNode binds)
  implicit <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "implicit" namedMap))
  implicit <- Prelude.pure (Prelude.fmap AST.Node.castNode implicit)
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (Prelude.fmap AST.Node.castNode match)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  binds <- AST.Runtime.listOptionalSingle binds
  implicit <- AST.Runtime.listOptionalSingle implicit
  match <- Data.List.NonEmpty.nonEmpty match
  name <- AST.Runtime.listOptionalSingle name
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  Prelude.pure
    ConstructorSynonym
      { binds,
        implicit,
        match,
        name,
        pattern'
      }

instance AST.Cast.Cast ConstructorSynonym where
  cast = cast_ConstructorSynonym

data ConstructorSynonyms = ConstructorSynonyms
  { children :: ([(AST.Node.Node ConstructorSynonym)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ConstructorSynonyms :: Api.Node -> Prelude.Maybe ConstructorSynonyms
cast_ConstructorSynonyms dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_synonyms")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  Prelude.pure
    ConstructorSynonyms
      { children
      }

instance AST.Cast.Cast ConstructorSynonyms where
  cast = cast_ConstructorSynonyms

data Context = Context
  { arrow :: (AST.Node.Node ((AST.Token.Token "=>") Sum.:+ (AST.Token.Token "⇒") Sum.:+ Sum.Nil)),
    constraint :: (Prelude.Maybe (AST.Node.Node Constraints)),
    context :: (AST.Node.Node Constraint),
    type' :: (Prelude.Maybe (AST.Node.Node QuantifiedType))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Context :: Api.Node -> Prelude.Maybe Context
cast_Context dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "context")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (Prelude.fmap AST.Node.castNode arrow)
  constraint <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constraint" namedMap))
  constraint <- Prelude.pure (Prelude.fmap AST.Node.castNode constraint)
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (Prelude.fmap AST.Node.castNode context)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  arrow <- AST.Runtime.listIsSingle arrow
  constraint <- AST.Runtime.listOptionalSingle constraint
  context <- AST.Runtime.listIsSingle context
  type' <- AST.Runtime.listOptionalSingle type'
  Prelude.pure
    Context
      { arrow,
        constraint,
        context,
        type'
      }

instance AST.Cast.Cast Context where
  cast = cast_Context

data DataConstructor = DataConstructor
  { constructor :: (AST.Node.Node (Infix Sum.:+ Prefix Sum.:+ Record Sum.:+ Special Sum.:+ Sum.Nil)),
    context :: (Prelude.Maybe (AST.Node.Node Context)),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataConstructor :: Api.Node -> Prelude.Maybe DataConstructor
cast_DataConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (Prelude.fmap AST.Node.castNode constructor)
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (Prelude.fmap AST.Node.castNode context)
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (Prelude.fmap AST.Node.castNode forall')
  constructor <- AST.Runtime.listIsSingle constructor
  context <- AST.Runtime.listOptionalSingle context
  forall' <- AST.Runtime.listOptionalSingle forall'
  Prelude.pure
    DataConstructor
      { constructor,
        context,
        forall'
      }

instance AST.Cast.Cast DataConstructor where
  cast = cast_DataConstructor

data DataConstructors = DataConstructors
  { constructor :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node DataConstructor))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataConstructors :: Api.Node -> Prelude.Maybe DataConstructors
cast_DataConstructors dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_constructors")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (Prelude.fmap AST.Node.castNode constructor)
  constructor <- Data.List.NonEmpty.nonEmpty constructor
  Prelude.pure
    DataConstructors
      { constructor
      }

instance AST.Cast.Cast DataConstructors where
  cast = cast_DataConstructors

data DataFamily = DataFamily
  { children :: (Prelude.Maybe (AST.Node.Node (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node QuantifiedType)),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node TypeParams))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataFamily :: Api.Node -> Prelude.Maybe DataFamily
cast_DataFamily dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_family")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (Prelude.fmap AST.Node.castNode kind)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  children <- AST.Runtime.listOptionalSingle children
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    DataFamily
      { children,
        kind,
        name,
        patterns
      }

instance AST.Cast.Cast DataFamily where
  cast = cast_DataFamily

data DataInstance = DataInstance
  { children :: (AST.Node.Node (DataType Sum.:+ Newtype Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataInstance :: Api.Node -> Prelude.Maybe DataInstance
cast_DataInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    DataInstance
      { children
      }

instance AST.Cast.Cast DataInstance where
  cast = cast_DataInstance

data DataType = DataType
  { children :: (Prelude.Maybe (AST.Node.Node (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    constructors :: (Prelude.Maybe (AST.Node.Node (DataConstructors Sum.:+ GadtConstructors Sum.:+ Sum.Nil))),
    context :: (Prelude.Maybe (AST.Node.Node Context)),
    deriving' :: ([(AST.Node.Node Deriving)]),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node QuantifiedType)),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataType :: Api.Node -> Prelude.Maybe DataType
cast_DataType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  constructors <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructors" namedMap))
  constructors <- Prelude.pure (Prelude.fmap AST.Node.castNode constructors)
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (Prelude.fmap AST.Node.castNode context)
  deriving' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "deriving" namedMap))
  deriving' <- Prelude.pure (Prelude.fmap AST.Node.castNode deriving')
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (Prelude.fmap AST.Node.castNode forall')
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (Prelude.fmap AST.Node.castNode kind)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  children <- AST.Runtime.listOptionalSingle children
  constructors <- AST.Runtime.listOptionalSingle constructors
  context <- AST.Runtime.listOptionalSingle context
  forall' <- AST.Runtime.listOptionalSingle forall'
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    DataType
      { children,
        constructors,
        context,
        deriving',
        forall',
        kind,
        name,
        patterns
      }

instance AST.Cast.Cast DataType where
  cast = cast_DataType

data Declarations = Declarations
  { children :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Declaration Sum.:+ Import Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Declarations :: Api.Node -> Prelude.Maybe Declarations
cast_Declarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- Data.List.NonEmpty.nonEmpty children
  Prelude.pure
    Declarations
      { children
      }

instance AST.Cast.Cast Declarations where
  cast = cast_Declarations

data DefaultSignature = DefaultSignature
  { signature :: (AST.Node.Node Signature)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DefaultSignature :: Api.Node -> Prelude.Maybe DefaultSignature
cast_DefaultSignature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "default_signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure (Prelude.fmap AST.Node.castNode signature)
  signature <- AST.Runtime.listIsSingle signature
  Prelude.pure
    DefaultSignature
      { signature
      }

instance AST.Cast.Cast DefaultSignature where
  cast = cast_DefaultSignature

data DefaultTypes = DefaultTypes
  { type' :: ([(AST.Node.Node (QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DefaultTypes :: Api.Node -> Prelude.Maybe DefaultTypes
cast_DefaultTypes dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "default_types")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  Prelude.pure
    DefaultTypes
      { type'
      }

instance AST.Cast.Cast DefaultTypes where
  cast = cast_DefaultTypes

data Deriving = Deriving
  { classes :: (AST.Node.Node Constraint),
    strategy :: (Prelude.Maybe (AST.Node.Node DerivingStrategy)),
    via :: (Prelude.Maybe (AST.Node.Node Via))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Deriving :: Api.Node -> Prelude.Maybe Deriving
cast_Deriving dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  classes <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "classes" namedMap))
  classes <- Prelude.pure (Prelude.fmap AST.Node.castNode classes)
  strategy <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "strategy" namedMap))
  strategy <- Prelude.pure (Prelude.fmap AST.Node.castNode strategy)
  via <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "via" namedMap))
  via <- Prelude.pure (Prelude.fmap AST.Node.castNode via)
  classes <- AST.Runtime.listIsSingle classes
  strategy <- AST.Runtime.listOptionalSingle strategy
  via <- AST.Runtime.listOptionalSingle via
  Prelude.pure
    Deriving
      { classes,
        strategy,
        via
      }

instance AST.Cast.Cast Deriving where
  cast = cast_Deriving

data DerivingInstance = DerivingInstance
  { children :: (Prelude.Maybe (AST.Node.Node (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    context :: (Prelude.Maybe (AST.Node.Node Context)),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node TypePatterns)),
    strategy :: (Prelude.Maybe (AST.Node.Node DerivingStrategy)),
    via :: (Prelude.Maybe (AST.Node.Node Via))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DerivingInstance :: Api.Node -> Prelude.Maybe DerivingInstance
cast_DerivingInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (Prelude.fmap AST.Node.castNode context)
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (Prelude.fmap AST.Node.castNode forall')
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  strategy <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "strategy" namedMap))
  strategy <- Prelude.pure (Prelude.fmap AST.Node.castNode strategy)
  via <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "via" namedMap))
  via <- Prelude.pure (Prelude.fmap AST.Node.castNode via)
  children <- AST.Runtime.listOptionalSingle children
  context <- AST.Runtime.listOptionalSingle context
  forall' <- AST.Runtime.listOptionalSingle forall'
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  strategy <- AST.Runtime.listOptionalSingle strategy
  via <- AST.Runtime.listOptionalSingle via
  Prelude.pure
    DerivingInstance
      { children,
        context,
        forall',
        name,
        patterns,
        strategy,
        via
      }

instance AST.Cast.Cast DerivingInstance where
  cast = cast_DerivingInstance

data DerivingStrategy = DerivingStrategy
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast DerivingStrategy where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving_strategy")
    Prelude.pure DerivingStrategy

data Do = Do
  { children :: (Prelude.Maybe (AST.Node.Node DoModule)),
    statement :: ([(AST.Node.Node Statement)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Do :: Api.Node -> Prelude.Maybe Do
cast_Do dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "do")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  statement <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "statement" namedMap))
  statement <- Prelude.pure (Prelude.fmap AST.Node.castNode statement)
  children <- AST.Runtime.listOptionalSingle children
  Prelude.pure
    Do
      { children,
        statement
      }

instance AST.Cast.Cast Do where
  cast = cast_Do

data DoModule = DoModule
  { id :: (AST.Node.Node ((AST.Token.Token "do") Sum.:+ (AST.Token.Token "mdo") Sum.:+ Sum.Nil)),
    module' :: (AST.Node.Node Module)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DoModule :: Api.Node -> Prelude.Maybe DoModule
cast_DoModule dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "do_module")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  id <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "id" namedMap))
  id <- Prelude.pure (Prelude.fmap AST.Node.castNode id)
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (Prelude.fmap AST.Node.castNode module')
  id <- AST.Runtime.listIsSingle id
  module' <- AST.Runtime.listIsSingle module'
  Prelude.pure
    DoModule
      { id,
        module'
      }

instance AST.Cast.Cast DoModule where
  cast = cast_DoModule

data EmptyList = EmptyList
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast EmptyList where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "empty_list")
    Prelude.pure EmptyList

data Entity = Entity
  { children :: (AST.Node.Node String)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Entity :: Api.Node -> Prelude.Maybe Entity
cast_Entity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "entity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    Entity
      { children
      }

instance AST.Cast.Cast Entity where
  cast = cast_Entity

data Equation = Equation
  { children :: ([(AST.Node.Node (Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil))]),
    constructors :: (Prelude.Maybe (AST.Node.Node ConstructorSynonyms)),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node TypePatterns)),
    synonym :: (Prelude.Maybe (AST.Node.Node Pattern))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Equation :: Api.Node -> Prelude.Maybe Equation
cast_Equation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "equation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  constructors <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructors" namedMap))
  constructors <- Prelude.pure (Prelude.fmap AST.Node.castNode constructors)
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (Prelude.fmap AST.Node.castNode forall')
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  synonym <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "synonym" namedMap))
  synonym <- Prelude.pure (Prelude.fmap AST.Node.castNode synonym)
  constructors <- AST.Runtime.listOptionalSingle constructors
  forall' <- AST.Runtime.listOptionalSingle forall'
  name <- AST.Runtime.listOptionalSingle name
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  patterns <- AST.Runtime.listOptionalSingle patterns
  synonym <- AST.Runtime.listOptionalSingle synonym
  Prelude.pure
    Equation
      { children,
        constructors,
        forall',
        name,
        pattern',
        patterns,
        synonym
      }

instance AST.Cast.Cast Equation where
  cast = cast_Equation

data Equations = Equations
  { equation :: ([(AST.Node.Node Equation)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Equations :: Api.Node -> Prelude.Maybe Equations
cast_Equations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "equations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  equation <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "equation" namedMap))
  equation <- Prelude.pure (Prelude.fmap AST.Node.castNode equation)
  Prelude.pure
    Equations
      { equation
      }

instance AST.Cast.Cast Equations where
  cast = cast_Equations

data Exp = Exp
  { children :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Exp :: Api.Node -> Prelude.Maybe Exp
cast_Exp dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "exp")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    Exp
      { children
      }

instance AST.Cast.Cast Exp where
  cast = cast_Exp

data ExplicitType = ExplicitType
  { type' :: (AST.Node.Node Type)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ExplicitType :: Api.Node -> Prelude.Maybe ExplicitType
cast_ExplicitType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "explicit_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    ExplicitType
      { type'
      }

instance AST.Cast.Cast ExplicitType where
  cast = cast_ExplicitType

data Export = Export
  { childrenSQuote :: (Prelude.Maybe (AST.Node.Node Children)),
    namespace :: (Prelude.Maybe (AST.Node.Node Namespace)),
    operator :: (Prelude.Maybe (AST.Node.Node PrefixId)),
    type' :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ Qualified Sum.:+ Sum.Nil))),
    variable :: (Prelude.Maybe (AST.Node.Node (Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Export :: Api.Node -> Prelude.Maybe Export
cast_Export dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  childrenSQuote <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children'" namedMap))
  childrenSQuote <- Prelude.pure (Prelude.fmap AST.Node.castNode childrenSQuote)
  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure (Prelude.fmap AST.Node.castNode namespace)
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (Prelude.fmap AST.Node.castNode operator)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  variable <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variable" namedMap))
  variable <- Prelude.pure (Prelude.fmap AST.Node.castNode variable)
  childrenSQuote <- AST.Runtime.listOptionalSingle childrenSQuote
  namespace <- AST.Runtime.listOptionalSingle namespace
  operator <- AST.Runtime.listOptionalSingle operator
  type' <- AST.Runtime.listOptionalSingle type'
  variable <- AST.Runtime.listOptionalSingle variable
  Prelude.pure
    Export
      { childrenSQuote,
        namespace,
        operator,
        type',
        variable
      }

instance AST.Cast.Cast Export where
  cast = cast_Export

data Exports = Exports
  { children :: ([(AST.Node.Node ModuleExport)]),
    export :: ([(AST.Node.Node Export)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Exports :: Api.Node -> Prelude.Maybe Exports
cast_Exports dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "exports")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  export <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "export" namedMap))
  export <- Prelude.pure (Prelude.fmap AST.Node.castNode export)
  Prelude.pure
    Exports
      { children,
        export
      }

instance AST.Cast.Cast Exports where
  cast = cast_Exports

data Field = Field
  { children :: (Prelude.Maybe (AST.Node.Node Type)),
    name :: ([(AST.Node.Node FieldName)]),
    parameter :: (Prelude.Maybe (AST.Node.Node (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Field :: Api.Node -> Prelude.Maybe Field
cast_Field dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure (Prelude.fmap AST.Node.castNode parameter)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  children <- AST.Runtime.listOptionalSingle children
  parameter <- AST.Runtime.listOptionalSingle parameter
  type' <- AST.Runtime.listOptionalSingle type'
  Prelude.pure
    Field
      { children,
        name,
        parameter,
        type'
      }

instance AST.Cast.Cast Field where
  cast = cast_Field

data FieldName = FieldName
  { children :: (AST.Node.Node Variable)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldName :: Api.Node -> Prelude.Maybe FieldName
cast_FieldName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    FieldName
      { children
      }

instance AST.Cast.Cast FieldName where
  cast = cast_FieldName

data FieldPath = FieldPath
  { field :: (AST.Node.Node (FieldName Sum.:+ Qualified Sum.:+ Sum.Nil)),
    subfield :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node FieldName))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldPath :: Api.Node -> Prelude.Maybe FieldPath
cast_FieldPath dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_path")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (Prelude.fmap AST.Node.castNode field)
  subfield <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "subfield" namedMap))
  subfield <- Prelude.pure (Prelude.fmap AST.Node.castNode subfield)
  field <- AST.Runtime.listIsSingle field
  subfield <- Data.List.NonEmpty.nonEmpty subfield
  Prelude.pure
    FieldPath
      { field,
        subfield
      }

instance AST.Cast.Cast FieldPath where
  cast = cast_FieldPath

data FieldPattern = FieldPattern
  { children :: (Prelude.Maybe (AST.Node.Node Wildcard)),
    field :: (Prelude.Maybe (AST.Node.Node (FieldName Sum.:+ Qualified Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldPattern :: Api.Node -> Prelude.Maybe FieldPattern
cast_FieldPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (Prelude.fmap AST.Node.castNode field)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  children <- AST.Runtime.listOptionalSingle children
  field <- AST.Runtime.listOptionalSingle field
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  Prelude.pure
    FieldPattern
      { children,
        field,
        pattern'
      }

instance AST.Cast.Cast FieldPattern where
  cast = cast_FieldPattern

data FieldUpdate = FieldUpdate
  { children :: (Prelude.Maybe (AST.Node.Node Wildcard)),
    expression :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    field :: (Prelude.Maybe (AST.Node.Node (FieldName Sum.:+ FieldPath Sum.:+ Qualified Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldUpdate :: Api.Node -> Prelude.Maybe FieldUpdate
cast_FieldUpdate dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_update")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (Prelude.fmap AST.Node.castNode field)
  children <- AST.Runtime.listOptionalSingle children
  expression <- AST.Runtime.listOptionalSingle expression
  field <- AST.Runtime.listOptionalSingle field
  Prelude.pure
    FieldUpdate
      { children,
        expression,
        field
      }

instance AST.Cast.Cast FieldUpdate where
  cast = cast_FieldUpdate

data Fields = Fields
  { field :: ([(AST.Node.Node Field)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fields :: Api.Node -> Prelude.Maybe Fields
cast_Fields dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fields")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (Prelude.fmap AST.Node.castNode field)
  Prelude.pure
    Fields
      { field
      }

instance AST.Cast.Cast Fields where
  cast = cast_Fields

data Fixity = Fixity
  { associativity :: (AST.Node.Node ((AST.Token.Token "infix") Sum.:+ (AST.Token.Token "infixl") Sum.:+ (AST.Token.Token "infixr") Sum.:+ Sum.Nil)),
    operator :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node ((AST.Token.Token ",") Sum.:+ ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Sum.Nil))),
    precedence :: (Prelude.Maybe (AST.Node.Node Integer))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fixity :: Api.Node -> Prelude.Maybe Fixity
cast_Fixity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fixity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  associativity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "associativity" namedMap))
  associativity <- Prelude.pure (Prelude.fmap AST.Node.castNode associativity)
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (Prelude.fmap AST.Node.castNode operator)
  precedence <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "precedence" namedMap))
  precedence <- Prelude.pure (Prelude.fmap AST.Node.castNode precedence)
  associativity <- AST.Runtime.listIsSingle associativity
  operator <- Data.List.NonEmpty.nonEmpty operator
  precedence <- AST.Runtime.listOptionalSingle precedence
  Prelude.pure
    Fixity
      { associativity,
        operator,
        precedence
      }

instance AST.Cast.Cast Fixity where
  cast = cast_Fixity

data Forall = Forall
  { constraint :: (Prelude.Maybe (AST.Node.Node Constraints)),
    quantifier :: (AST.Node.Node ((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)),
    type' :: (Prelude.Maybe (AST.Node.Node QuantifiedType)),
    variables :: (Prelude.Maybe (AST.Node.Node QuantifiedVariables))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Forall :: Api.Node -> Prelude.Maybe Forall
cast_Forall dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "forall")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constraint <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constraint" namedMap))
  constraint <- Prelude.pure (Prelude.fmap AST.Node.castNode constraint)
  quantifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quantifier" namedMap))
  quantifier <- Prelude.pure (Prelude.fmap AST.Node.castNode quantifier)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  variables <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variables" namedMap))
  variables <- Prelude.pure (Prelude.fmap AST.Node.castNode variables)
  constraint <- AST.Runtime.listOptionalSingle constraint
  quantifier <- AST.Runtime.listIsSingle quantifier
  type' <- AST.Runtime.listOptionalSingle type'
  variables <- AST.Runtime.listOptionalSingle variables
  Prelude.pure
    Forall
      { constraint,
        quantifier,
        type',
        variables
      }

instance AST.Cast.Cast Forall where
  cast = cast_Forall

data ForallRequired = ForallRequired
  { quantifier :: (AST.Node.Node ((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)),
    type' :: (Prelude.Maybe (AST.Node.Node QuantifiedType)),
    variables :: (Prelude.Maybe (AST.Node.Node QuantifiedVariables))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ForallRequired :: Api.Node -> Prelude.Maybe ForallRequired
cast_ForallRequired dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "forall_required")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  quantifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quantifier" namedMap))
  quantifier <- Prelude.pure (Prelude.fmap AST.Node.castNode quantifier)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  variables <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variables" namedMap))
  variables <- Prelude.pure (Prelude.fmap AST.Node.castNode variables)
  quantifier <- AST.Runtime.listIsSingle quantifier
  type' <- AST.Runtime.listOptionalSingle type'
  variables <- AST.Runtime.listOptionalSingle variables
  Prelude.pure
    ForallRequired
      { quantifier,
        type',
        variables
      }

instance AST.Cast.Cast ForallRequired where
  cast = cast_ForallRequired

data ForeignExport = ForeignExport
  { callingConvention :: (AST.Node.Node CallingConvention),
    entity :: (Prelude.Maybe (AST.Node.Node Entity)),
    signature :: (AST.Node.Node Signature)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ForeignExport :: Api.Node -> Prelude.Maybe ForeignExport
cast_ForeignExport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "foreign_export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  callingConvention <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "calling_convention" namedMap))
  callingConvention <- Prelude.pure (Prelude.fmap AST.Node.castNode callingConvention)
  entity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "entity" namedMap))
  entity <- Prelude.pure (Prelude.fmap AST.Node.castNode entity)
  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure (Prelude.fmap AST.Node.castNode signature)
  callingConvention <- AST.Runtime.listIsSingle callingConvention
  entity <- AST.Runtime.listOptionalSingle entity
  signature <- AST.Runtime.listIsSingle signature
  Prelude.pure
    ForeignExport
      { callingConvention,
        entity,
        signature
      }

instance AST.Cast.Cast ForeignExport where
  cast = cast_ForeignExport

data ForeignImport = ForeignImport
  { callingConvention :: (AST.Node.Node CallingConvention),
    entity :: (Prelude.Maybe (AST.Node.Node Entity)),
    safety :: (Prelude.Maybe (AST.Node.Node Safety)),
    signature :: (AST.Node.Node Signature)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ForeignImport :: Api.Node -> Prelude.Maybe ForeignImport
cast_ForeignImport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "foreign_import")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  callingConvention <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "calling_convention" namedMap))
  callingConvention <- Prelude.pure (Prelude.fmap AST.Node.castNode callingConvention)
  entity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "entity" namedMap))
  entity <- Prelude.pure (Prelude.fmap AST.Node.castNode entity)
  safety <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "safety" namedMap))
  safety <- Prelude.pure (Prelude.fmap AST.Node.castNode safety)
  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure (Prelude.fmap AST.Node.castNode signature)
  callingConvention <- AST.Runtime.listIsSingle callingConvention
  entity <- AST.Runtime.listOptionalSingle entity
  safety <- AST.Runtime.listOptionalSingle safety
  signature <- AST.Runtime.listIsSingle signature
  Prelude.pure
    ForeignImport
      { callingConvention,
        entity,
        safety,
        signature
      }

instance AST.Cast.Cast ForeignImport where
  cast = cast_ForeignImport

data Function = Function
  { children :: (Prelude.Maybe (AST.Node.Node Infix)),
    arrow :: (Prelude.Maybe (AST.Node.Node ((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil))),
    binds :: (Prelude.Maybe (AST.Node.Node LocalBinds)),
    match :: ([(AST.Node.Node Match)]),
    name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    parameter :: (Prelude.Maybe (AST.Node.Node (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil))),
    parens :: (Prelude.Maybe (AST.Node.Node FunctionHeadParens)),
    patterns :: (Prelude.Maybe (AST.Node.Node Patterns)),
    result :: (Prelude.Maybe (AST.Node.Node QuantifiedType))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Function :: Api.Node -> Prelude.Maybe Function
cast_Function dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "function")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (Prelude.fmap AST.Node.castNode arrow)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (Prelude.fmap AST.Node.castNode binds)
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (Prelude.fmap AST.Node.castNode match)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure (Prelude.fmap AST.Node.castNode parameter)
  parens <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parens" namedMap))
  parens <- Prelude.pure (Prelude.fmap AST.Node.castNode parens)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (Prelude.fmap AST.Node.castNode result)
  children <- AST.Runtime.listOptionalSingle children
  arrow <- AST.Runtime.listOptionalSingle arrow
  binds <- AST.Runtime.listOptionalSingle binds
  name <- AST.Runtime.listOptionalSingle name
  parameter <- AST.Runtime.listOptionalSingle parameter
  parens <- AST.Runtime.listOptionalSingle parens
  patterns <- AST.Runtime.listOptionalSingle patterns
  result <- AST.Runtime.listOptionalSingle result
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
        result
      }

instance AST.Cast.Cast Function where
  cast = cast_Function

data FunctionHeadParens = FunctionHeadParens
  { children :: (Prelude.Maybe (AST.Node.Node Infix)),
    name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    parens :: (Prelude.Maybe (AST.Node.Node FunctionHeadParens)),
    patterns :: (Prelude.Maybe (AST.Node.Node Patterns))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FunctionHeadParens :: Api.Node -> Prelude.Maybe FunctionHeadParens
cast_FunctionHeadParens dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "function_head_parens")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  parens <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parens" namedMap))
  parens <- Prelude.pure (Prelude.fmap AST.Node.castNode parens)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  children <- AST.Runtime.listOptionalSingle children
  name <- AST.Runtime.listOptionalSingle name
  parens <- AST.Runtime.listOptionalSingle parens
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    FunctionHeadParens
      { children,
        name,
        parens,
        patterns
      }

instance AST.Cast.Cast FunctionHeadParens where
  cast = cast_FunctionHeadParens

data Fundep = Fundep
  { determined :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Variable)),
    matched :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Variable))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fundep :: Api.Node -> Prelude.Maybe Fundep
cast_Fundep dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fundep")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  determined <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "determined" namedMap))
  determined <- Prelude.pure (Prelude.fmap AST.Node.castNode determined)
  matched <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "matched" namedMap))
  matched <- Prelude.pure (Prelude.fmap AST.Node.castNode matched)
  determined <- Data.List.NonEmpty.nonEmpty determined
  matched <- Data.List.NonEmpty.nonEmpty matched
  Prelude.pure
    Fundep
      { determined,
        matched
      }

instance AST.Cast.Cast Fundep where
  cast = cast_Fundep

data Fundeps = Fundeps
  { fundep :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Fundep))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fundeps :: Api.Node -> Prelude.Maybe Fundeps
cast_Fundeps dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fundeps")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  fundep <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fundep" namedMap))
  fundep <- Prelude.pure (Prelude.fmap AST.Node.castNode fundep)
  fundep <- Data.List.NonEmpty.nonEmpty fundep
  Prelude.pure
    Fundeps
      { fundep
      }

instance AST.Cast.Cast Fundeps where
  cast = cast_Fundeps

data GadtConstructor = GadtConstructor
  { context :: (Prelude.Maybe (AST.Node.Node Context)),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))),
    names :: (Prelude.Maybe (AST.Node.Node BindingList)),
    type' :: (AST.Node.Node (Prefix Sum.:+ Record Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_GadtConstructor :: Api.Node -> Prelude.Maybe GadtConstructor
cast_GadtConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "gadt_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (Prelude.fmap AST.Node.castNode context)
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (Prelude.fmap AST.Node.castNode forall')
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  names <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "names" namedMap))
  names <- Prelude.pure (Prelude.fmap AST.Node.castNode names)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  context <- AST.Runtime.listOptionalSingle context
  forall' <- AST.Runtime.listOptionalSingle forall'
  name <- AST.Runtime.listOptionalSingle name
  names <- AST.Runtime.listOptionalSingle names
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    GadtConstructor
      { context,
        forall',
        name,
        names,
        type'
      }

instance AST.Cast.Cast GadtConstructor where
  cast = cast_GadtConstructor

data GadtConstructors = GadtConstructors
  { constructor :: ([(AST.Node.Node GadtConstructor)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_GadtConstructors :: Api.Node -> Prelude.Maybe GadtConstructors
cast_GadtConstructors dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "gadt_constructors")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (Prelude.fmap AST.Node.castNode constructor)
  Prelude.pure
    GadtConstructors
      { constructor
      }

instance AST.Cast.Cast GadtConstructors where
  cast = cast_GadtConstructors

data Generator = Generator
  { arrow :: (AST.Node.Node ((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)),
    expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    pattern' :: (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Generator :: Api.Node -> Prelude.Maybe Generator
cast_Generator dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "generator")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (Prelude.fmap AST.Node.castNode arrow)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  arrow <- AST.Runtime.listIsSingle arrow
  expression <- AST.Runtime.listIsSingle expression
  pattern' <- AST.Runtime.listIsSingle pattern'
  Prelude.pure
    Generator
      { arrow,
        expression,
        pattern'
      }

instance AST.Cast.Cast Generator where
  cast = cast_Generator

data Group = Group
  { classifier :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    key :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Group :: Api.Node -> Prelude.Maybe Group
cast_Group dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "group")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  classifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "classifier" namedMap))
  classifier <- Prelude.pure (Prelude.fmap AST.Node.castNode classifier)
  key <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "key" namedMap))
  key <- Prelude.pure (Prelude.fmap AST.Node.castNode key)
  classifier <- AST.Runtime.listIsSingle classifier
  key <- AST.Runtime.listOptionalSingle key
  Prelude.pure
    Group
      { classifier,
        key
      }

instance AST.Cast.Cast Group where
  cast = cast_Group

data Guards = Guards
  { guard :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Guard))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Guards :: Api.Node -> Prelude.Maybe Guards
cast_Guards dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "guards")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  guard <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "guard" namedMap))
  guard <- Prelude.pure (Prelude.fmap AST.Node.castNode guard)
  guard <- Data.List.NonEmpty.nonEmpty guard
  Prelude.pure
    Guards
      { guard
      }

instance AST.Cast.Cast Guards where
  cast = cast_Guards

data Haskell = Haskell
  { children :: (Prelude.Maybe (AST.Node.Node Header)),
    declarations :: (Prelude.Maybe (AST.Node.Node Declarations)),
    imports :: (Prelude.Maybe (AST.Node.Node Imports))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Haskell :: Api.Node -> Prelude.Maybe Haskell
cast_Haskell dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "haskell")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure (Prelude.fmap AST.Node.castNode declarations)
  imports <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "imports" namedMap))
  imports <- Prelude.pure (Prelude.fmap AST.Node.castNode imports)
  children <- AST.Runtime.listOptionalSingle children
  declarations <- AST.Runtime.listOptionalSingle declarations
  imports <- AST.Runtime.listOptionalSingle imports
  Prelude.pure
    Haskell
      { children,
        declarations,
        imports
      }

instance AST.Cast.Cast Haskell where
  cast = cast_Haskell

data Header = Header
  { exports :: (Prelude.Maybe (AST.Node.Node Exports)),
    module' :: (AST.Node.Node Module)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Header :: Api.Node -> Prelude.Maybe Header
cast_Header dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "header")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  exports <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "exports" namedMap))
  exports <- Prelude.pure (Prelude.fmap AST.Node.castNode exports)
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (Prelude.fmap AST.Node.castNode module')
  exports <- AST.Runtime.listOptionalSingle exports
  module' <- AST.Runtime.listIsSingle module'
  Prelude.pure
    Header
      { exports,
        module'
      }

instance AST.Cast.Cast Header where
  cast = cast_Header

data ImplicitParameter = ImplicitParameter
  { name :: (AST.Node.Node ImplicitVariable),
    type' :: (AST.Node.Node QuantifiedType)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ImplicitParameter :: Api.Node -> Prelude.Maybe ImplicitParameter
cast_ImplicitParameter dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "implicit_parameter")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  name <- AST.Runtime.listIsSingle name
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    ImplicitParameter
      { name,
        type'
      }

instance AST.Cast.Cast ImplicitParameter where
  cast = cast_ImplicitParameter

data Import = Import
  { alias :: (Prelude.Maybe (AST.Node.Node Module)),
    module' :: (AST.Node.Node Module),
    names :: (Prelude.Maybe (AST.Node.Node ImportList)),
    package :: (Prelude.Maybe (AST.Node.Node ImportPackage))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Import :: Api.Node -> Prelude.Maybe Import
cast_Import dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alias <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alias" namedMap))
  alias <- Prelude.pure (Prelude.fmap AST.Node.castNode alias)
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (Prelude.fmap AST.Node.castNode module')
  names <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "names" namedMap))
  names <- Prelude.pure (Prelude.fmap AST.Node.castNode names)
  package <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "package" namedMap))
  package <- Prelude.pure (Prelude.fmap AST.Node.castNode package)
  alias <- AST.Runtime.listOptionalSingle alias
  module' <- AST.Runtime.listIsSingle module'
  names <- AST.Runtime.listOptionalSingle names
  package <- AST.Runtime.listOptionalSingle package
  Prelude.pure
    Import
      { alias,
        module',
        names,
        package
      }

instance AST.Cast.Cast Import where
  cast = cast_Import

data ImportList = ImportList
  { name :: ([(AST.Node.Node ImportName)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ImportList :: Api.Node -> Prelude.Maybe ImportList
cast_ImportList dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  Prelude.pure
    ImportList
      { name
      }

instance AST.Cast.Cast ImportList where
  cast = cast_ImportList

data ImportName = ImportName
  { childrenSQuote :: (Prelude.Maybe (AST.Node.Node Children)),
    namespace :: (Prelude.Maybe (AST.Node.Node Namespace)),
    operator :: (Prelude.Maybe (AST.Node.Node PrefixId)),
    type' :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ Qualified Sum.:+ Sum.Nil))),
    variable :: (Prelude.Maybe (AST.Node.Node (Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ImportName :: Api.Node -> Prelude.Maybe ImportName
cast_ImportName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  childrenSQuote <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children'" namedMap))
  childrenSQuote <- Prelude.pure (Prelude.fmap AST.Node.castNode childrenSQuote)
  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure (Prelude.fmap AST.Node.castNode namespace)
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (Prelude.fmap AST.Node.castNode operator)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  variable <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variable" namedMap))
  variable <- Prelude.pure (Prelude.fmap AST.Node.castNode variable)
  childrenSQuote <- AST.Runtime.listOptionalSingle childrenSQuote
  namespace <- AST.Runtime.listOptionalSingle namespace
  operator <- AST.Runtime.listOptionalSingle operator
  type' <- AST.Runtime.listOptionalSingle type'
  variable <- AST.Runtime.listOptionalSingle variable
  Prelude.pure
    ImportName
      { childrenSQuote,
        namespace,
        operator,
        type',
        variable
      }

instance AST.Cast.Cast ImportName where
  cast = cast_ImportName

data Imports = Imports
  { import' :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Import))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Imports :: Api.Node -> Prelude.Maybe Imports
cast_Imports dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "imports")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  import' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "import" namedMap))
  import' <- Prelude.pure (Prelude.fmap AST.Node.castNode import')
  import' <- Data.List.NonEmpty.nonEmpty import'
  Prelude.pure
    Imports
      { import'
      }

instance AST.Cast.Cast Imports where
  cast = cast_Imports

data Inferred = Inferred
  { children :: (AST.Node.Node (Annotated Sum.:+ TypeParam Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Inferred :: Api.Node -> Prelude.Maybe Inferred
cast_Inferred dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "inferred")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    Inferred
      { children
      }

instance AST.Cast.Cast Inferred where
  cast = cast_Inferred

data Infix = Infix
  { leftOperand :: (AST.Node.Node (Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil)),
    operator :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Sum.Nil))),
    rightOperand :: (AST.Node.Node (Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Infix :: Api.Node -> Prelude.Maybe Infix
cast_Infix dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "infix")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  leftOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "left_operand" namedMap))
  leftOperand <- Prelude.pure (Prelude.fmap AST.Node.castNode leftOperand)
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (Prelude.fmap AST.Node.castNode operator)
  rightOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "right_operand" namedMap))
  rightOperand <- Prelude.pure (Prelude.fmap AST.Node.castNode rightOperand)
  leftOperand <- AST.Runtime.listIsSingle leftOperand
  operator <- Data.List.NonEmpty.nonEmpty operator
  rightOperand <- AST.Runtime.listIsSingle rightOperand
  Prelude.pure
    Infix
      { leftOperand,
        operator,
        rightOperand
      }

instance AST.Cast.Cast Infix where
  cast = cast_Infix

data InfixId = InfixId
  { children :: (AST.Node.Node (Constructor Sum.:+ Name Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_InfixId :: Api.Node -> Prelude.Maybe InfixId
cast_InfixId dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "infix_id")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    InfixId
      { children
      }

instance AST.Cast.Cast InfixId where
  cast = cast_InfixId

data Instance = Instance
  { children :: (Prelude.Maybe (AST.Node.Node (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    context :: (Prelude.Maybe (AST.Node.Node Context)),
    declarations :: (Prelude.Maybe (AST.Node.Node InstanceDeclarations)),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node TypePatterns))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Instance :: Api.Node -> Prelude.Maybe Instance
cast_Instance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (Prelude.fmap AST.Node.castNode context)
  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure (Prelude.fmap AST.Node.castNode declarations)
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (Prelude.fmap AST.Node.castNode forall')
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  children <- AST.Runtime.listOptionalSingle children
  context <- AST.Runtime.listOptionalSingle context
  declarations <- AST.Runtime.listOptionalSingle declarations
  forall' <- AST.Runtime.listOptionalSingle forall'
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    Instance
      { children,
        context,
        declarations,
        forall',
        name,
        patterns
      }

instance AST.Cast.Cast Instance where
  cast = cast_Instance

data InstanceDeclarations = InstanceDeclarations
  { declaration :: ([(AST.Node.Node InstanceDecl)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_InstanceDeclarations :: Api.Node -> Prelude.Maybe InstanceDeclarations
cast_InstanceDeclarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "instance_declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure (Prelude.fmap AST.Node.castNode declaration)
  Prelude.pure
    InstanceDeclarations
      { declaration
      }

instance AST.Cast.Cast InstanceDeclarations where
  cast = cast_InstanceDeclarations

data Integer = Integer
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Integer where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "integer")
    Prelude.pure Integer

data Invisible = Invisible
  { bind :: (AST.Node.Node TypeParam)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Invisible :: Api.Node -> Prelude.Maybe Invisible
cast_Invisible dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "invisible")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  bind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "bind" namedMap))
  bind <- Prelude.pure (Prelude.fmap AST.Node.castNode bind)
  bind <- AST.Runtime.listIsSingle bind
  Prelude.pure
    Invisible
      { bind
      }

instance AST.Cast.Cast Invisible where
  cast = cast_Invisible

data Irrefutable = Irrefutable
  { pattern' :: (AST.Node.Node Pattern)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Irrefutable :: Api.Node -> Prelude.Maybe Irrefutable
cast_Irrefutable dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "irrefutable")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  pattern' <- AST.Runtime.listIsSingle pattern'
  Prelude.pure
    Irrefutable
      { pattern'
      }

instance AST.Cast.Cast Irrefutable where
  cast = cast_Irrefutable

data KindApplication = KindApplication
  { type' :: (AST.Node.Node Type)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_KindApplication :: Api.Node -> Prelude.Maybe KindApplication
cast_KindApplication dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "kind_application")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    KindApplication
      { type'
      }

instance AST.Cast.Cast KindApplication where
  cast = cast_KindApplication

data KindSignature = KindSignature
  { children :: (Prelude.Maybe (AST.Node.Node (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    kind :: (AST.Node.Node QuantifiedType),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node TypeParams))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_KindSignature :: Api.Node -> Prelude.Maybe KindSignature
cast_KindSignature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "kind_signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (Prelude.fmap AST.Node.castNode kind)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  children <- AST.Runtime.listOptionalSingle children
  kind <- AST.Runtime.listIsSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    KindSignature
      { children,
        kind,
        name,
        patterns
      }

instance AST.Cast.Cast KindSignature where
  cast = cast_KindSignature

data Lambda = Lambda
  { expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    patterns :: (AST.Node.Node Patterns)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Lambda :: Api.Node -> Prelude.Maybe Lambda
cast_Lambda dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  expression <- AST.Runtime.listIsSingle expression
  patterns <- AST.Runtime.listIsSingle patterns
  Prelude.pure
    Lambda
      { expression,
        patterns
      }

instance AST.Cast.Cast Lambda where
  cast = cast_Lambda

data LambdaCase = LambdaCase
  { alternatives :: (Prelude.Maybe (AST.Node.Node Alternatives))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LambdaCase :: Api.Node -> Prelude.Maybe LambdaCase
cast_LambdaCase dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda_case")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure (Prelude.fmap AST.Node.castNode alternatives)
  alternatives <- AST.Runtime.listOptionalSingle alternatives
  Prelude.pure
    LambdaCase
      { alternatives
      }

instance AST.Cast.Cast LambdaCase where
  cast = cast_LambdaCase

data LambdaCases = LambdaCases
  { alternatives :: (Prelude.Maybe (AST.Node.Node Alternatives))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LambdaCases :: Api.Node -> Prelude.Maybe LambdaCases
cast_LambdaCases dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda_cases")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure (Prelude.fmap AST.Node.castNode alternatives)
  alternatives <- AST.Runtime.listOptionalSingle alternatives
  Prelude.pure
    LambdaCases
      { alternatives
      }

instance AST.Cast.Cast LambdaCases where
  cast = cast_LambdaCases

data LazyField = LazyField
  { type' :: (AST.Node.Node Type)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LazyField :: Api.Node -> Prelude.Maybe LazyField
cast_LazyField dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lazy_field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    LazyField
      { type'
      }

instance AST.Cast.Cast LazyField where
  cast = cast_LazyField

data LeftSection = LeftSection
  { leftOperand :: (AST.Node.Node Expression),
    operator :: (AST.Node.Node (ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LeftSection :: Api.Node -> Prelude.Maybe LeftSection
cast_LeftSection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "left_section")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  leftOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "left_operand" namedMap))
  leftOperand <- Prelude.pure (Prelude.fmap AST.Node.castNode leftOperand)
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (Prelude.fmap AST.Node.castNode operator)
  leftOperand <- AST.Runtime.listIsSingle leftOperand
  operator <- AST.Runtime.listIsSingle operator
  Prelude.pure
    LeftSection
      { leftOperand,
        operator
      }

instance AST.Cast.Cast LeftSection where
  cast = cast_LeftSection

data Let = Let
  { binds :: (Prelude.Maybe (AST.Node.Node LocalBinds))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Let :: Api.Node -> Prelude.Maybe Let
cast_Let dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "let")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (Prelude.fmap AST.Node.castNode binds)
  binds <- AST.Runtime.listOptionalSingle binds
  Prelude.pure
    Let
      { binds
      }

instance AST.Cast.Cast Let where
  cast = cast_Let

data LetIn = LetIn
  { binds :: (Prelude.Maybe (AST.Node.Node LocalBinds)),
    expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LetIn :: Api.Node -> Prelude.Maybe LetIn
cast_LetIn dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "let_in")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (Prelude.fmap AST.Node.castNode binds)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  binds <- AST.Runtime.listOptionalSingle binds
  expression <- AST.Runtime.listIsSingle expression
  Prelude.pure
    LetIn
      { binds,
        expression
      }

instance AST.Cast.Cast LetIn where
  cast = cast_LetIn

data LinearFunction = LinearFunction
  { arrow :: (AST.Node.Node ((AST.Token.Token "->") Sum.:+ (AST.Token.Token "->.") Sum.:+ (AST.Token.Token "→") Sum.:+ (AST.Token.Token "⊸") Sum.:+ Sum.Nil)),
    multiplicity :: (Prelude.Maybe (AST.Node.Node Modifier)),
    parameter :: (AST.Node.Node (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)),
    result :: (AST.Node.Node QuantifiedType)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LinearFunction :: Api.Node -> Prelude.Maybe LinearFunction
cast_LinearFunction dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "linear_function")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (Prelude.fmap AST.Node.castNode arrow)
  multiplicity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "multiplicity" namedMap))
  multiplicity <- Prelude.pure (Prelude.fmap AST.Node.castNode multiplicity)
  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure (Prelude.fmap AST.Node.castNode parameter)
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (Prelude.fmap AST.Node.castNode result)
  arrow <- AST.Runtime.listIsSingle arrow
  multiplicity <- AST.Runtime.listOptionalSingle multiplicity
  parameter <- AST.Runtime.listIsSingle parameter
  result <- AST.Runtime.listIsSingle result
  Prelude.pure
    LinearFunction
      { arrow,
        multiplicity,
        parameter,
        result
      }

instance AST.Cast.Cast LinearFunction where
  cast = cast_LinearFunction

data List = List
  { element :: ([(AST.Node.Node (Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_List :: Api.Node -> Prelude.Maybe List
cast_List dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (Prelude.fmap AST.Node.castNode element)
  Prelude.pure
    List
      { element
      }

instance AST.Cast.Cast List where
  cast = cast_List

data ListComprehension = ListComprehension
  { expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    qualifiers :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Qualifiers))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ListComprehension :: Api.Node -> Prelude.Maybe ListComprehension
cast_ListComprehension dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "list_comprehension")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  qualifiers <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "qualifiers" namedMap))
  qualifiers <- Prelude.pure (Prelude.fmap AST.Node.castNode qualifiers)
  expression <- AST.Runtime.listIsSingle expression
  qualifiers <- Data.List.NonEmpty.nonEmpty qualifiers
  Prelude.pure
    ListComprehension
      { expression,
        qualifiers
      }

instance AST.Cast.Cast ListComprehension where
  cast = cast_ListComprehension

data Literal = Literal
  { children :: (AST.Node.Node (Char Sum.:+ Float Sum.:+ Integer Sum.:+ String Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Literal :: Api.Node -> Prelude.Maybe Literal
cast_Literal dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "literal")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    Literal
      { children
      }

instance AST.Cast.Cast Literal where
  cast = cast_Literal

data LocalBinds = LocalBinds
  { decl :: ([(AST.Node.Node (Decl Sum.:+ Fixity Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LocalBinds :: Api.Node -> Prelude.Maybe LocalBinds
cast_LocalBinds dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "local_binds")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  decl <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "decl" namedMap))
  decl <- Prelude.pure (Prelude.fmap AST.Node.castNode decl)
  Prelude.pure
    LocalBinds
      { decl
      }

instance AST.Cast.Cast LocalBinds where
  cast = cast_LocalBinds

data Match = Match
  { expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    guards :: (Prelude.Maybe (AST.Node.Node Guards))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Match :: Api.Node -> Prelude.Maybe Match
cast_Match dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "match")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  guards <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "guards" namedMap))
  guards <- Prelude.pure (Prelude.fmap AST.Node.castNode guards)
  expression <- AST.Runtime.listIsSingle expression
  guards <- AST.Runtime.listOptionalSingle guards
  Prelude.pure
    Match
      { expression,
        guards
      }

instance AST.Cast.Cast Match where
  cast = cast_Match

data Modifier = Modifier
  { children :: (AST.Node.Node Type)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Modifier :: Api.Node -> Prelude.Maybe Modifier
cast_Modifier dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "modifier")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    Modifier
      { children
      }

instance AST.Cast.Cast Modifier where
  cast = cast_Modifier

data Module = Module
  { children :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node ModuleId))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Module :: Api.Node -> Prelude.Maybe Module
cast_Module dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "module")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- Data.List.NonEmpty.nonEmpty children
  Prelude.pure
    Module
      { children
      }

instance AST.Cast.Cast Module where
  cast = cast_Module

data ModuleExport = ModuleExport
  { module' :: (AST.Node.Node Module)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ModuleExport :: Api.Node -> Prelude.Maybe ModuleExport
cast_ModuleExport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "module_export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (Prelude.fmap AST.Node.castNode module')
  module' <- AST.Runtime.listIsSingle module'
  Prelude.pure
    ModuleExport
      { module'
      }

instance AST.Cast.Cast ModuleExport where
  cast = cast_ModuleExport

data MultiWayIf = MultiWayIf
  { match :: ([(AST.Node.Node Match)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_MultiWayIf :: Api.Node -> Prelude.Maybe MultiWayIf
cast_MultiWayIf dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "multi_way_if")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (Prelude.fmap AST.Node.castNode match)
  Prelude.pure
    MultiWayIf
      { match
      }

instance AST.Cast.Cast MultiWayIf where
  cast = cast_MultiWayIf

data Namespace = Namespace
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Namespace where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "namespace")
    Prelude.pure Namespace

data Negation = Negation
  { expression :: (Prelude.Maybe (AST.Node.Node Expression)),
    minus :: (Prelude.Maybe (AST.Node.Node (AST.Token.Token "-"))),
    number :: (Prelude.Maybe (AST.Node.Node (Float Sum.:+ Integer Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Negation :: Api.Node -> Prelude.Maybe Negation
cast_Negation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "negation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  minus <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "minus" namedMap))
  minus <- Prelude.pure (Prelude.fmap AST.Node.castNode minus)
  number <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "number" namedMap))
  number <- Prelude.pure (Prelude.fmap AST.Node.castNode number)
  expression <- AST.Runtime.listOptionalSingle expression
  minus <- AST.Runtime.listOptionalSingle minus
  number <- AST.Runtime.listOptionalSingle number
  Prelude.pure
    Negation
      { expression,
        minus,
        number
      }

instance AST.Cast.Cast Negation where
  cast = cast_Negation

data Newtype = Newtype
  { children :: (Prelude.Maybe (AST.Node.Node (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    constructor :: (Prelude.Maybe (AST.Node.Node NewtypeConstructor)),
    constructors :: (Prelude.Maybe (AST.Node.Node GadtConstructors)),
    context :: (Prelude.Maybe (AST.Node.Node Context)),
    deriving' :: ([(AST.Node.Node Deriving)]),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node QuantifiedType)),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Newtype :: Api.Node -> Prelude.Maybe Newtype
cast_Newtype dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "newtype")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (Prelude.fmap AST.Node.castNode constructor)
  constructors <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructors" namedMap))
  constructors <- Prelude.pure (Prelude.fmap AST.Node.castNode constructors)
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure (Prelude.fmap AST.Node.castNode context)
  deriving' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "deriving" namedMap))
  deriving' <- Prelude.pure (Prelude.fmap AST.Node.castNode deriving')
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (Prelude.fmap AST.Node.castNode forall')
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (Prelude.fmap AST.Node.castNode kind)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  children <- AST.Runtime.listOptionalSingle children
  constructor <- AST.Runtime.listOptionalSingle constructor
  constructors <- AST.Runtime.listOptionalSingle constructors
  context <- AST.Runtime.listOptionalSingle context
  forall' <- AST.Runtime.listOptionalSingle forall'
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
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
        patterns
      }

instance AST.Cast.Cast Newtype where
  cast = cast_Newtype

data NewtypeConstructor = NewtypeConstructor
  { field :: (AST.Node.Node (Field Sum.:+ Record Sum.:+ Sum.Nil)),
    name :: (AST.Node.Node (Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_NewtypeConstructor :: Api.Node -> Prelude.Maybe NewtypeConstructor
cast_NewtypeConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "newtype_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (Prelude.fmap AST.Node.castNode field)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  field <- AST.Runtime.listIsSingle field
  name <- AST.Runtime.listIsSingle name
  Prelude.pure
    NewtypeConstructor
      { field,
        name
      }

instance AST.Cast.Cast NewtypeConstructor where
  cast = cast_NewtypeConstructor

data Operator = Operator
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Operator where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "operator")
    Prelude.pure Operator

data Parens = Parens
  { children :: (Prelude.Maybe (AST.Node.Node (Annotated Sum.:+ Constraints Sum.:+ Infix Sum.:+ TypeParam Sum.:+ Sum.Nil))),
    expression :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node QuantifiedType)),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Parens :: Api.Node -> Prelude.Maybe Parens
cast_Parens dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "parens")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (Prelude.fmap AST.Node.castNode kind)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  children <- AST.Runtime.listOptionalSingle children
  expression <- AST.Runtime.listOptionalSingle expression
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  patterns <- AST.Runtime.listOptionalSingle patterns
  type' <- AST.Runtime.listOptionalSingle type'
  Prelude.pure
    Parens
      { children,
        expression,
        kind,
        name,
        pattern',
        patterns,
        type'
      }

instance AST.Cast.Cast Parens where
  cast = cast_Parens

data PatternGuard = PatternGuard
  { arrow :: (AST.Node.Node ((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)),
    expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    pattern' :: (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_PatternGuard :: Api.Node -> Prelude.Maybe PatternGuard
cast_PatternGuard dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "pattern_guard")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (Prelude.fmap AST.Node.castNode arrow)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  arrow <- AST.Runtime.listIsSingle arrow
  expression <- AST.Runtime.listIsSingle expression
  pattern' <- AST.Runtime.listIsSingle pattern'
  Prelude.pure
    PatternGuard
      { arrow,
        expression,
        pattern'
      }

instance AST.Cast.Cast PatternGuard where
  cast = cast_PatternGuard

data PatternSynonym = PatternSynonym
  { children :: (AST.Node.Node (Equation Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_PatternSynonym :: Api.Node -> Prelude.Maybe PatternSynonym
cast_PatternSynonym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "pattern_synonym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    PatternSynonym
      { children
      }

instance AST.Cast.Cast PatternSynonym where
  cast = cast_PatternSynonym

data Patterns = Patterns
  { children :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (ExplicitType Sum.:+ Pattern Sum.:+ TypeBinder Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Patterns :: Api.Node -> Prelude.Maybe Patterns
cast_Patterns dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "patterns")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- Data.List.NonEmpty.nonEmpty children
  Prelude.pure
    Patterns
      { children
      }

instance AST.Cast.Cast Patterns where
  cast = cast_Patterns

data Prefix = Prefix
  { field :: ([(AST.Node.Node (LazyField Sum.:+ StrictField Sum.:+ Type Sum.:+ Sum.Nil))]),
    name :: (Prelude.Maybe (AST.Node.Node (Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node QuantifiedType))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Prefix :: Api.Node -> Prelude.Maybe Prefix
cast_Prefix dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (Prelude.fmap AST.Node.castNode field)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  name <- AST.Runtime.listOptionalSingle name
  type' <- AST.Runtime.listOptionalSingle type'
  Prelude.pure
    Prefix
      { field,
        name,
        type'
      }

instance AST.Cast.Cast Prefix where
  cast = cast_Prefix

data PrefixId = PrefixId
  { children :: (AST.Node.Node (ConstructorOperator Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_PrefixId :: Api.Node -> Prelude.Maybe PrefixId
cast_PrefixId dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_id")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    PrefixId
      { children
      }

instance AST.Cast.Cast PrefixId where
  cast = cast_PrefixId

data PrefixList = PrefixList
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixList where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_list")
    Prelude.pure PrefixList

data PrefixTuple = PrefixTuple
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixTuple where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_tuple")
    Prelude.pure PrefixTuple

data PrefixUnboxedSum = PrefixUnboxedSum
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixUnboxedSum where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_unboxed_sum")
    Prelude.pure PrefixUnboxedSum

data PrefixUnboxedTuple = PrefixUnboxedTuple
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixUnboxedTuple where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_unboxed_tuple")
    Prelude.pure PrefixUnboxedTuple

data Projection = Projection
  { expression :: (AST.Node.Node Expression),
    field :: (AST.Node.Node FieldName)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Projection :: Api.Node -> Prelude.Maybe Projection
cast_Projection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "projection")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (Prelude.fmap AST.Node.castNode field)
  expression <- AST.Runtime.listIsSingle expression
  field <- AST.Runtime.listIsSingle field
  Prelude.pure
    Projection
      { expression,
        field
      }

instance AST.Cast.Cast Projection where
  cast = cast_Projection

data ProjectionSelector = ProjectionSelector
  { field :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Variable))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ProjectionSelector :: Api.Node -> Prelude.Maybe ProjectionSelector
cast_ProjectionSelector dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "projection_selector")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (Prelude.fmap AST.Node.castNode field)
  field <- Data.List.NonEmpty.nonEmpty field
  Prelude.pure
    ProjectionSelector
      { field
      }

instance AST.Cast.Cast ProjectionSelector where
  cast = cast_ProjectionSelector

data Promoted = Promoted
  { children :: (AST.Node.Node (Constructor Sum.:+ ConstructorOperator Sum.:+ EmptyList Sum.:+ InfixId Sum.:+ List Sum.:+ Operator Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ Qualified Sum.:+ Tuple Sum.:+ Unit Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Promoted :: Api.Node -> Prelude.Maybe Promoted
cast_Promoted dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "promoted")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    Promoted
      { children
      }

instance AST.Cast.Cast Promoted where
  cast = cast_Promoted

data Qualified = Qualified
  { id :: (AST.Node.Node (Constructor Sum.:+ ConstructorOperator Sum.:+ FieldName Sum.:+ Name Sum.:+ Operator Sum.:+ Variable Sum.:+ Sum.Nil)),
    module' :: (AST.Node.Node Module)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Qualified :: Api.Node -> Prelude.Maybe Qualified
cast_Qualified dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "qualified")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  id <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "id" namedMap))
  id <- Prelude.pure (Prelude.fmap AST.Node.castNode id)
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (Prelude.fmap AST.Node.castNode module')
  id <- AST.Runtime.listIsSingle id
  module' <- AST.Runtime.listIsSingle module'
  Prelude.pure
    Qualified
      { id,
        module'
      }

instance AST.Cast.Cast Qualified where
  cast = cast_Qualified

data Qualifiers = Qualifiers
  { qualifier :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Qualifier))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Qualifiers :: Api.Node -> Prelude.Maybe Qualifiers
cast_Qualifiers dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "qualifiers")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  qualifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "qualifier" namedMap))
  qualifier <- Prelude.pure (Prelude.fmap AST.Node.castNode qualifier)
  qualifier <- Data.List.NonEmpty.nonEmpty qualifier
  Prelude.pure
    Qualifiers
      { qualifier
      }

instance AST.Cast.Cast Qualifiers where
  cast = cast_Qualifiers

data QuantifiedVariables = QuantifiedVariables
  { children :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Inferred Sum.:+ TypeParam Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuantifiedVariables :: Api.Node -> Prelude.Maybe QuantifiedVariables
cast_QuantifiedVariables dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quantified_variables")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- Data.List.NonEmpty.nonEmpty children
  Prelude.pure
    QuantifiedVariables
      { children
      }

instance AST.Cast.Cast QuantifiedVariables where
  cast = cast_QuantifiedVariables

data Quasiquote = Quasiquote
  { body :: (Prelude.Maybe (AST.Node.Node QuasiquoteBody)),
    quoter :: (AST.Node.Node Quoter)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Quasiquote :: Api.Node -> Prelude.Maybe Quasiquote
cast_Quasiquote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quasiquote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  body <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "body" namedMap))
  body <- Prelude.pure (Prelude.fmap AST.Node.castNode body)
  quoter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quoter" namedMap))
  quoter <- Prelude.pure (Prelude.fmap AST.Node.castNode quoter)
  body <- AST.Runtime.listOptionalSingle body
  quoter <- AST.Runtime.listIsSingle quoter
  Prelude.pure
    Quasiquote
      { body,
        quoter
      }

instance AST.Cast.Cast Quasiquote where
  cast = cast_Quasiquote

data Quote = Quote
  { children :: (Prelude.Maybe (AST.Node.Node (QuotedDecls Sum.:+ QuotedExpression Sum.:+ QuotedPattern Sum.:+ QuotedType Sum.:+ Sum.Nil))),
    quoter :: (Prelude.Maybe (AST.Node.Node ((AST.Token.Token "d") Sum.:+ (AST.Token.Token "e") Sum.:+ (AST.Token.Token "p") Sum.:+ (AST.Token.Token "t") Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Quote :: Api.Node -> Prelude.Maybe Quote
cast_Quote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  quoter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quoter" namedMap))
  quoter <- Prelude.pure (Prelude.fmap AST.Node.castNode quoter)
  children <- AST.Runtime.listOptionalSingle children
  quoter <- AST.Runtime.listOptionalSingle quoter
  Prelude.pure
    Quote
      { children,
        quoter
      }

instance AST.Cast.Cast Quote where
  cast = cast_Quote

data QuotedDecls = QuotedDecls
  { declaration :: ([(AST.Node.Node Declaration)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedDecls :: Api.Node -> Prelude.Maybe QuotedDecls
cast_QuotedDecls dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_decls")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure (Prelude.fmap AST.Node.castNode declaration)
  Prelude.pure
    QuotedDecls
      { declaration
      }

instance AST.Cast.Cast QuotedDecls where
  cast = cast_QuotedDecls

data QuotedExpression = QuotedExpression
  { children :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedExpression :: Api.Node -> Prelude.Maybe QuotedExpression
cast_QuotedExpression dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_expression")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    QuotedExpression
      { children
      }

instance AST.Cast.Cast QuotedExpression where
  cast = cast_QuotedExpression

data QuotedPattern = QuotedPattern
  { children :: (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedPattern :: Api.Node -> Prelude.Maybe QuotedPattern
cast_QuotedPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    QuotedPattern
      { children
      }

instance AST.Cast.Cast QuotedPattern where
  cast = cast_QuotedPattern

data QuotedType = QuotedType
  { children :: (AST.Node.Node (QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedType :: Api.Node -> Prelude.Maybe QuotedType
cast_QuotedType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    QuotedType
      { children
      }

instance AST.Cast.Cast QuotedType where
  cast = cast_QuotedType

data Quoter = Quoter
  { children :: (AST.Node.Node (Qualified Sum.:+ Variable Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Quoter :: Api.Node -> Prelude.Maybe Quoter
cast_Quoter dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoter")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    Quoter
      { children
      }

instance AST.Cast.Cast Quoter where
  cast = cast_Quoter

data Rec = Rec
  { statement :: ([(AST.Node.Node Statement)])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Rec :: Api.Node -> Prelude.Maybe Rec
cast_Rec dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "rec")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  statement <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "statement" namedMap))
  statement <- Prelude.pure (Prelude.fmap AST.Node.castNode statement)
  Prelude.pure
    Rec
      { statement
      }

instance AST.Cast.Cast Rec where
  cast = cast_Rec

data Record = Record
  { arrow :: ([(AST.Node.Node ((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil))]),
    constructor :: (Prelude.Maybe (AST.Node.Node Pattern)),
    expression :: (Prelude.Maybe (AST.Node.Node Expression)),
    field :: ([(AST.Node.Node (Field Sum.:+ FieldPattern Sum.:+ FieldUpdate Sum.:+ Sum.Nil))]),
    fields :: (Prelude.Maybe (AST.Node.Node Fields)),
    name :: (Prelude.Maybe (AST.Node.Node Constructor)),
    type' :: (Prelude.Maybe (AST.Node.Node QuantifiedType))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Record :: Api.Node -> Prelude.Maybe Record
cast_Record dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "record")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure (Prelude.fmap AST.Node.castNode arrow)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (Prelude.fmap AST.Node.castNode constructor)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (Prelude.fmap AST.Node.castNode field)
  fields <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fields" namedMap))
  fields <- Prelude.pure (Prelude.fmap AST.Node.castNode fields)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  constructor <- AST.Runtime.listOptionalSingle constructor
  expression <- AST.Runtime.listOptionalSingle expression
  fields <- AST.Runtime.listOptionalSingle fields
  name <- AST.Runtime.listOptionalSingle name
  type' <- AST.Runtime.listOptionalSingle type'
  Prelude.pure
    Record
      { arrow,
        constructor,
        expression,
        field,
        fields,
        name,
        type'
      }

instance AST.Cast.Cast Record where
  cast = cast_Record

data RightSection = RightSection
  { children :: (AST.Node.Node (ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)),
    rightOperand :: (AST.Node.Node Expression)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_RightSection :: Api.Node -> Prelude.Maybe RightSection
cast_RightSection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "right_section")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  rightOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "right_operand" namedMap))
  rightOperand <- Prelude.pure (Prelude.fmap AST.Node.castNode rightOperand)
  children <- AST.Runtime.listIsSingle children
  rightOperand <- AST.Runtime.listIsSingle rightOperand
  Prelude.pure
    RightSection
      { children,
        rightOperand
      }

instance AST.Cast.Cast RightSection where
  cast = cast_RightSection

data RoleAnnotation = RoleAnnotation
  { role :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node TypeRole)),
    type' :: (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_RoleAnnotation :: Api.Node -> Prelude.Maybe RoleAnnotation
cast_RoleAnnotation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "role_annotation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  role <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "role" namedMap))
  role <- Prelude.pure (Prelude.fmap AST.Node.castNode role)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  role <- Data.List.NonEmpty.nonEmpty role
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    RoleAnnotation
      { role,
        type'
      }

instance AST.Cast.Cast RoleAnnotation where
  cast = cast_RoleAnnotation

data Signature = Signature
  { constraint :: (Prelude.Maybe (AST.Node.Node Constraints)),
    expression :: (Prelude.Maybe (AST.Node.Node Expression)),
    kind :: (Prelude.Maybe (AST.Node.Node QuantifiedType)),
    name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    names :: (Prelude.Maybe (AST.Node.Node BindingList)),
    pattern' :: (Prelude.Maybe (AST.Node.Node Pattern)),
    synonym :: (Prelude.Maybe (AST.Node.Node (BindingList Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node QuantifiedType))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Signature :: Api.Node -> Prelude.Maybe Signature
cast_Signature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constraint <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constraint" namedMap))
  constraint <- Prelude.pure (Prelude.fmap AST.Node.castNode constraint)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (Prelude.fmap AST.Node.castNode kind)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  names <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "names" namedMap))
  names <- Prelude.pure (Prelude.fmap AST.Node.castNode names)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  synonym <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "synonym" namedMap))
  synonym <- Prelude.pure (Prelude.fmap AST.Node.castNode synonym)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  constraint <- AST.Runtime.listOptionalSingle constraint
  expression <- AST.Runtime.listOptionalSingle expression
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  names <- AST.Runtime.listOptionalSingle names
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  synonym <- AST.Runtime.listOptionalSingle synonym
  type' <- AST.Runtime.listOptionalSingle type'
  Prelude.pure
    Signature
      { constraint,
        expression,
        kind,
        name,
        names,
        pattern',
        synonym,
        type'
      }

instance AST.Cast.Cast Signature where
  cast = cast_Signature

data Special = Special
  { children :: (AST.Node.Node (EmptyList Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Special :: Api.Node -> Prelude.Maybe Special
cast_Special dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "special")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    Special
      { children
      }

instance AST.Cast.Cast Special where
  cast = cast_Special

data Splice = Splice
  { expression :: (AST.Node.Node (Constructor Sum.:+ ImplicitVariable Sum.:+ Label Sum.:+ Literal Sum.:+ Parens Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Splice :: Api.Node -> Prelude.Maybe Splice
cast_Splice dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "splice")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  expression <- AST.Runtime.listIsSingle expression
  Prelude.pure
    Splice
      { expression
      }

instance AST.Cast.Cast Splice where
  cast = cast_Splice

data Star = Star
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Star where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "star")
    Prelude.pure Star

data Strict = Strict
  { pattern' :: (AST.Node.Node Pattern)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Strict :: Api.Node -> Prelude.Maybe Strict
cast_Strict dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "strict")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  pattern' <- AST.Runtime.listIsSingle pattern'
  Prelude.pure
    Strict
      { pattern'
      }

instance AST.Cast.Cast Strict where
  cast = cast_Strict

data StrictField = StrictField
  { type' :: (AST.Node.Node Type)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_StrictField :: Api.Node -> Prelude.Maybe StrictField
cast_StrictField dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "strict_field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    StrictField
      { type'
      }

instance AST.Cast.Cast StrictField where
  cast = cast_StrictField

data ThQuotedName = ThQuotedName
  { name :: (Prelude.Maybe (AST.Node.Node (Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node Type))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ThQuotedName :: Api.Node -> Prelude.Maybe ThQuotedName
cast_ThQuotedName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "th_quoted_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  name <- AST.Runtime.listOptionalSingle name
  type' <- AST.Runtime.listOptionalSingle type'
  Prelude.pure
    ThQuotedName
      { name,
        type'
      }

instance AST.Cast.Cast ThQuotedName where
  cast = cast_ThQuotedName

data TopSplice = TopSplice
  { children :: (AST.Node.Node Expression)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TopSplice :: Api.Node -> Prelude.Maybe TopSplice
cast_TopSplice dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "top_splice")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listIsSingle children
  Prelude.pure
    TopSplice
      { children
      }

instance AST.Cast.Cast TopSplice where
  cast = cast_TopSplice

data Transform = Transform
  { key :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    transformation :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Transform :: Api.Node -> Prelude.Maybe Transform
cast_Transform dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "transform")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  key <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "key" namedMap))
  key <- Prelude.pure (Prelude.fmap AST.Node.castNode key)
  transformation <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "transformation" namedMap))
  transformation <- Prelude.pure (Prelude.fmap AST.Node.castNode transformation)
  key <- AST.Runtime.listOptionalSingle key
  transformation <- AST.Runtime.listIsSingle transformation
  Prelude.pure
    Transform
      { key,
        transformation
      }

instance AST.Cast.Cast Transform where
  cast = cast_Transform

data Tuple = Tuple
  { children :: ([(AST.Node.Node Constraints)]),
    element :: ([(AST.Node.Node (Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Tuple :: Api.Node -> Prelude.Maybe Tuple
cast_Tuple dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "tuple")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (Prelude.fmap AST.Node.castNode element)
  Prelude.pure
    Tuple
      { children,
        element
      }

instance AST.Cast.Cast Tuple where
  cast = cast_Tuple

data TypeApplication = TypeApplication
  { type' :: (AST.Node.Node Type)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeApplication :: Api.Node -> Prelude.Maybe TypeApplication
cast_TypeApplication dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_application")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    TypeApplication
      { type'
      }

instance AST.Cast.Cast TypeApplication where
  cast = cast_TypeApplication

data TypeBinder = TypeBinder
  { type' :: (AST.Node.Node Type)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeBinder :: Api.Node -> Prelude.Maybe TypeBinder
cast_TypeBinder dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_binder")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    TypeBinder
      { type'
      }

instance AST.Cast.Cast TypeBinder where
  cast = cast_TypeBinder

data TypeFamily = TypeFamily
  { children :: ([(AST.Node.Node (Infix Sum.:+ Parens Sum.:+ TypeFamilyInjectivity Sum.:+ TypeFamilyResult Sum.:+ Sum.Nil))]),
    closedFamily :: (Prelude.Maybe (AST.Node.Node (AbstractFamily Sum.:+ Equations Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node QuantifiedType)),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node TypeParams))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeFamily :: Api.Node -> Prelude.Maybe TypeFamily
cast_TypeFamily dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  closedFamily <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "closed_family" namedMap))
  closedFamily <- Prelude.pure (Prelude.fmap AST.Node.castNode closedFamily)
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (Prelude.fmap AST.Node.castNode kind)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  closedFamily <- AST.Runtime.listOptionalSingle closedFamily
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    TypeFamily
      { children,
        closedFamily,
        kind,
        name,
        patterns
      }

instance AST.Cast.Cast TypeFamily where
  cast = cast_TypeFamily

data TypeFamilyInjectivity = TypeFamilyInjectivity
  { determined :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node Variable)),
    result :: (AST.Node.Node Variable)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeFamilyInjectivity :: Api.Node -> Prelude.Maybe TypeFamilyInjectivity
cast_TypeFamilyInjectivity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family_injectivity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  determined <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "determined" namedMap))
  determined <- Prelude.pure (Prelude.fmap AST.Node.castNode determined)
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (Prelude.fmap AST.Node.castNode result)
  determined <- Data.List.NonEmpty.nonEmpty determined
  result <- AST.Runtime.listIsSingle result
  Prelude.pure
    TypeFamilyInjectivity
      { determined,
        result
      }

instance AST.Cast.Cast TypeFamilyInjectivity where
  cast = cast_TypeFamilyInjectivity

data TypeFamilyResult = TypeFamilyResult
  { result :: (AST.Node.Node QuantifiedType)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeFamilyResult :: Api.Node -> Prelude.Maybe TypeFamilyResult
cast_TypeFamilyResult dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family_result")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (Prelude.fmap AST.Node.castNode result)
  result <- AST.Runtime.listIsSingle result
  Prelude.pure
    TypeFamilyResult
      { result
      }

instance AST.Cast.Cast TypeFamilyResult where
  cast = cast_TypeFamilyResult

data TypeInstance = TypeInstance
  { children :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil))),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node TypePatterns))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeInstance :: Api.Node -> Prelude.Maybe TypeInstance
cast_TypeInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (Prelude.fmap AST.Node.castNode forall')
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  children <- Data.List.NonEmpty.nonEmpty children
  forall' <- AST.Runtime.listOptionalSingle forall'
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    TypeInstance
      { children,
        forall',
        name,
        patterns
      }

instance AST.Cast.Cast TypeInstance where
  cast = cast_TypeInstance

data TypeParams = TypeParams
  { children :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node TypeParam))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeParams :: Api.Node -> Prelude.Maybe TypeParams
cast_TypeParams dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_params")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- Data.List.NonEmpty.nonEmpty children
  Prelude.pure
    TypeParams
      { children
      }

instance AST.Cast.Cast TypeParams where
  cast = cast_TypeParams

data TypePatterns = TypePatterns
  { children :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (KindApplication Sum.:+ Type Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypePatterns :: Api.Node -> Prelude.Maybe TypePatterns
cast_TypePatterns dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_patterns")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- Data.List.NonEmpty.nonEmpty children
  Prelude.pure
    TypePatterns
      { children
      }

instance AST.Cast.Cast TypePatterns where
  cast = cast_TypePatterns

data TypeRole = TypeRole
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast TypeRole where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_role")
    Prelude.pure TypeRole

data TypeSynomym = TypeSynomym
  { children :: (Prelude.Maybe (AST.Node.Node (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node TypeParams)),
    type' :: (AST.Node.Node (QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeSynomym :: Api.Node -> Prelude.Maybe TypeSynomym
cast_TypeSynomym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_synomym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (Prelude.fmap AST.Node.castNode name)
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (Prelude.fmap AST.Node.castNode patterns)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  children <- AST.Runtime.listOptionalSingle children
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    TypeSynomym
      { children,
        name,
        patterns,
        type'
      }

instance AST.Cast.Cast TypeSynomym where
  cast = cast_TypeSynomym

data TypedQuote = TypedQuote
  { children :: (Prelude.Maybe (AST.Node.Node QuotedExpression))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypedQuote :: Api.Node -> Prelude.Maybe TypedQuote
cast_TypedQuote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "typed_quote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (Prelude.fmap AST.Node.castNode children)
  children <- AST.Runtime.listOptionalSingle children
  Prelude.pure
    TypedQuote
      { children
      }

instance AST.Cast.Cast TypedQuote where
  cast = cast_TypedQuote

data UnboxedSum = UnboxedSum
  { element :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_UnboxedSum :: Api.Node -> Prelude.Maybe UnboxedSum
cast_UnboxedSum dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_sum")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (Prelude.fmap AST.Node.castNode element)
  element <- Data.List.NonEmpty.nonEmpty element
  Prelude.pure
    UnboxedSum
      { element
      }

instance AST.Cast.Cast UnboxedSum where
  cast = cast_UnboxedSum

data UnboxedTuple = UnboxedTuple
  { element :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_UnboxedTuple :: Api.Node -> Prelude.Maybe UnboxedTuple
cast_UnboxedTuple dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_tuple")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (Prelude.fmap AST.Node.castNode element)
  element <- Data.List.NonEmpty.nonEmpty element
  Prelude.pure
    UnboxedTuple
      { element
      }

instance AST.Cast.Cast UnboxedTuple where
  cast = cast_UnboxedTuple

data UnboxedUnit = UnboxedUnit
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast UnboxedUnit where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_unit")
    Prelude.pure UnboxedUnit

data Unit = Unit
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Unit where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "unit")
    Prelude.pure Unit

data Via = Via
  { type' :: (AST.Node.Node QuantifiedType)
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Via :: Api.Node -> Prelude.Maybe Via
cast_Via dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "via")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (Prelude.fmap AST.Node.castNode type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    Via
      { type'
      }

instance AST.Cast.Cast Via where
  cast = cast_Via

data ViewPattern = ViewPattern
  { expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    pattern' :: (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ViewPattern :: Api.Node -> Prelude.Maybe ViewPattern
cast_ViewPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "view_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (Prelude.fmap AST.Node.castNode expression)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (Prelude.fmap AST.Node.castNode pattern')
  expression <- AST.Runtime.listIsSingle expression
  pattern' <- AST.Runtime.listIsSingle pattern'
  Prelude.pure
    ViewPattern
      { expression,
        pattern'
      }

instance AST.Cast.Cast ViewPattern where
  cast = cast_ViewPattern

data Wildcard = Wildcard
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Wildcard where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "wildcard")
    Prelude.pure Wildcard

data AllNames = AllNames
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast AllNames where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "all_names")
    Prelude.pure AllNames

data CallingConvention = CallingConvention
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast CallingConvention where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "calling_convention")
    Prelude.pure CallingConvention

data Char = Char
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Char where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "char")
    Prelude.pure Char

data Comment = Comment
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Comment where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "comment")
    Prelude.pure Comment

data Constructor = Constructor
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Constructor where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor")
    Prelude.pure Constructor

data Cpp = Cpp
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Cpp where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "cpp")
    Prelude.pure Cpp

data Float = Float
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Float where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "float")
    Prelude.pure Float

data Haddock = Haddock
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Haddock where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "haddock")
    Prelude.pure Haddock

data ImplicitVariable = ImplicitVariable
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ImplicitVariable where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "implicit_variable")
    Prelude.pure ImplicitVariable

data ImportPackage = ImportPackage
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ImportPackage where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_package")
    Prelude.pure ImportPackage

data Label = Label
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Label where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "label")
    Prelude.pure Label

data ModuleId = ModuleId
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ModuleId where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "module_id")
    Prelude.pure ModuleId

data Name = Name
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Name where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "name")
    Prelude.pure Name

data Pragma = Pragma
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Pragma where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "pragma")
    Prelude.pure Pragma

data QuasiquoteBody = QuasiquoteBody
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast QuasiquoteBody where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "quasiquote_body")
    Prelude.pure QuasiquoteBody

data Safety = Safety
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Safety where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "safety")
    Prelude.pure Safety

data String = String
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast String where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "string")
    Prelude.pure String

data Variable = Variable
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Variable where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "variable")
    Prelude.pure Variable
