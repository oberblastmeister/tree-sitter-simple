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
import AST.Err qualified
import AST.Node qualified
import AST.Runtime qualified
import AST.Sum qualified as Sum
import AST.Token qualified
import Control.DeepSeq qualified
import Control.Monad qualified
import Data.List.NonEmpty qualified
import Data.Map.Strict qualified
import Data.Text qualified
import GHC.Generics qualified
import TreeSitter.Api qualified as Api
import Prelude qualified

data ClassDecl = ClassDecl {dynNode :: AST.Node.WrappedDynNode, getClassDecl :: (DataFamily Sum.:+ Decl Sum.:+ DefaultSignature Sum.:+ Fixity Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast ClassDecl where
  cast dynNode = do
    getClassDecl <- AST.Cast.cast dynNode
    Prelude.pure (ClassDecl {dynNode = AST.Node.WrappedDynNode dynNode, getClassDecl})

instance AST.Node.HasDynNode ClassDecl where
  getDynNode (ClassDecl {dynNode}) = AST.Node.unDynNode dynNode

data Constraint = Constraint {dynNode :: AST.Node.WrappedDynNode, getConstraint :: (Apply Sum.:+ Infix Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Tuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Constraint where
  cast dynNode = do
    getConstraint <- AST.Cast.cast dynNode
    Prelude.pure (Constraint {dynNode = AST.Node.WrappedDynNode dynNode, getConstraint})

instance AST.Node.HasDynNode Constraint where
  getDynNode (Constraint {dynNode}) = AST.Node.unDynNode dynNode

data Constraints = Constraints {dynNode :: AST.Node.WrappedDynNode, getConstraints :: (Constraint Sum.:+ Context Sum.:+ Forall Sum.:+ ImplicitParameter Sum.:+ Signature Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Constraints where
  cast dynNode = do
    getConstraints <- AST.Cast.cast dynNode
    Prelude.pure (Constraints {dynNode = AST.Node.WrappedDynNode dynNode, getConstraints})

instance AST.Node.HasDynNode Constraints where
  getDynNode (Constraints {dynNode}) = AST.Node.unDynNode dynNode

data Decl = Decl {dynNode :: AST.Node.WrappedDynNode, getDecl :: (Bind Sum.:+ Function Sum.:+ Signature Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Decl where
  cast dynNode = do
    getDecl <- AST.Cast.cast dynNode
    Prelude.pure (Decl {dynNode = AST.Node.WrappedDynNode dynNode, getDecl})

instance AST.Node.HasDynNode Decl where
  getDynNode (Decl {dynNode}) = AST.Node.unDynNode dynNode

data Declaration = Declaration {dynNode :: AST.Node.WrappedDynNode, getDeclaration :: (Class Sum.:+ DataFamily Sum.:+ DataInstance Sum.:+ DataType Sum.:+ Decl Sum.:+ DefaultTypes Sum.:+ DerivingInstance Sum.:+ Fixity Sum.:+ ForeignExport Sum.:+ ForeignImport Sum.:+ Instance Sum.:+ KindSignature Sum.:+ Newtype Sum.:+ PatternSynonym Sum.:+ RoleAnnotation Sum.:+ TopSplice Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ TypeSynomym Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Declaration where
  cast dynNode = do
    getDeclaration <- AST.Cast.cast dynNode
    Prelude.pure (Declaration {dynNode = AST.Node.WrappedDynNode dynNode, getDeclaration})

instance AST.Node.HasDynNode Declaration where
  getDynNode (Declaration {dynNode}) = AST.Node.unDynNode dynNode

data Expression = Expression {dynNode :: AST.Node.WrappedDynNode, getExpression :: (Apply Sum.:+ ArithmeticSequence Sum.:+ Case Sum.:+ Conditional Sum.:+ Constructor Sum.:+ Do Sum.:+ ImplicitVariable Sum.:+ Infix Sum.:+ Label Sum.:+ Lambda Sum.:+ LambdaCase Sum.:+ LambdaCases Sum.:+ LeftSection Sum.:+ LetIn Sum.:+ List Sum.:+ ListComprehension Sum.:+ Literal Sum.:+ MultiWayIf Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Projection Sum.:+ ProjectionSelector Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Quote Sum.:+ Record Sum.:+ RightSection Sum.:+ Splice Sum.:+ ThQuotedName Sum.:+ Tuple Sum.:+ TypedQuote Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Expression where
  cast dynNode = do
    getExpression <- AST.Cast.cast dynNode
    Prelude.pure (Expression {dynNode = AST.Node.WrappedDynNode dynNode, getExpression})

instance AST.Node.HasDynNode Expression where
  getDynNode (Expression {dynNode}) = AST.Node.unDynNode dynNode

data Guard = Guard {dynNode :: AST.Node.WrappedDynNode, getGuard :: (Boolean Sum.:+ Let Sum.:+ PatternGuard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Guard where
  cast dynNode = do
    getGuard <- AST.Cast.cast dynNode
    Prelude.pure (Guard {dynNode = AST.Node.WrappedDynNode dynNode, getGuard})

instance AST.Node.HasDynNode Guard where
  getDynNode (Guard {dynNode}) = AST.Node.unDynNode dynNode

data InstanceDecl = InstanceDecl {dynNode :: AST.Node.WrappedDynNode, getInstanceDecl :: (DataInstance Sum.:+ Decl Sum.:+ TypeInstance Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast InstanceDecl where
  cast dynNode = do
    getInstanceDecl <- AST.Cast.cast dynNode
    Prelude.pure (InstanceDecl {dynNode = AST.Node.WrappedDynNode dynNode, getInstanceDecl})

instance AST.Node.HasDynNode InstanceDecl where
  getDynNode (InstanceDecl {dynNode}) = AST.Node.unDynNode dynNode

data Pattern = Pattern {dynNode :: AST.Node.WrappedDynNode, getPattern :: (Apply Sum.:+ As Sum.:+ Constructor Sum.:+ Infix Sum.:+ Irrefutable Sum.:+ List Sum.:+ Literal Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Record Sum.:+ Splice Sum.:+ Strict Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Pattern where
  cast dynNode = do
    getPattern <- AST.Cast.cast dynNode
    Prelude.pure (Pattern {dynNode = AST.Node.WrappedDynNode dynNode, getPattern})

instance AST.Node.HasDynNode Pattern where
  getDynNode (Pattern {dynNode}) = AST.Node.unDynNode dynNode

data Qualifier = Qualifier {dynNode :: AST.Node.WrappedDynNode, getQualifier :: (Boolean Sum.:+ Generator Sum.:+ Group Sum.:+ Let Sum.:+ Transform Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Qualifier where
  cast dynNode = do
    getQualifier <- AST.Cast.cast dynNode
    Prelude.pure (Qualifier {dynNode = AST.Node.WrappedDynNode dynNode, getQualifier})

instance AST.Node.HasDynNode Qualifier where
  getDynNode (Qualifier {dynNode}) = AST.Node.unDynNode dynNode

data QuantifiedType = QuantifiedType {dynNode :: AST.Node.WrappedDynNode, getQuantifiedType :: (Context Sum.:+ Forall Sum.:+ ForallRequired Sum.:+ Function Sum.:+ ImplicitParameter Sum.:+ LinearFunction Sum.:+ Type Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast QuantifiedType where
  cast dynNode = do
    getQuantifiedType <- AST.Cast.cast dynNode
    Prelude.pure (QuantifiedType {dynNode = AST.Node.WrappedDynNode dynNode, getQuantifiedType})

instance AST.Node.HasDynNode QuantifiedType where
  getDynNode (QuantifiedType {dynNode}) = AST.Node.unDynNode dynNode

data Statement = Statement {dynNode :: AST.Node.WrappedDynNode, getStatement :: (Bind Sum.:+ Exp Sum.:+ Let Sum.:+ Rec Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Statement where
  cast dynNode = do
    getStatement <- AST.Cast.cast dynNode
    Prelude.pure (Statement {dynNode = AST.Node.WrappedDynNode dynNode, getStatement})

instance AST.Node.HasDynNode Statement where
  getDynNode (Statement {dynNode}) = AST.Node.unDynNode dynNode

data Type = Type {dynNode :: AST.Node.WrappedDynNode, getType :: (Apply Sum.:+ Infix Sum.:+ List Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Star Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast Type where
  cast dynNode = do
    getType <- AST.Cast.cast dynNode
    Prelude.pure (Type {dynNode = AST.Node.WrappedDynNode dynNode, getType})

instance AST.Node.HasDynNode Type where
  getDynNode (Type {dynNode}) = AST.Node.unDynNode dynNode

data TypeParam = TypeParam {dynNode :: AST.Node.WrappedDynNode, getTypeParam :: (Invisible Sum.:+ Parens Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Cast.Cast TypeParam where
  cast dynNode = do
    getTypeParam <- AST.Cast.cast dynNode
    Prelude.pure (TypeParam {dynNode = AST.Node.WrappedDynNode dynNode, getTypeParam})

instance AST.Node.HasDynNode TypeParam where
  getDynNode (TypeParam {dynNode}) = AST.Node.unDynNode dynNode

data AbstractFamily = AbstractFamily {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode AbstractFamily where
  getDynNode (AbstractFamily {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast AbstractFamily where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "abstract_family")
    Prelude.pure (AbstractFamily {dynNode = AST.Node.WrappedDynNode dynNode})

data Alternative = Alternative
  { binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    match :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Match))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Patterns))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Alternative :: Api.Node -> Prelude.Maybe Alternative
cast_Alternative dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "alternative")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Alternative where
  getDynNode (Alternative {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Alternative where
  cast = cast_Alternative

data Alternatives = Alternatives
  { alternative :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Alternative))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Alternatives :: Api.Node -> Prelude.Maybe Alternatives
cast_Alternatives dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "alternatives")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alternative <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternative" namedMap))
  alternative <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr alternative))
  Prelude.pure
    Alternatives
      { alternative,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Alternatives where
  getDynNode (Alternatives {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Alternatives where
  cast = cast_Alternatives

data Annotated = Annotated
  { children :: ((AST.Err.Err (TypeParam))),
    kind :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Annotated :: Api.Node -> Prelude.Maybe Annotated
cast_Annotated dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "annotated")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr kind))
  Prelude.pure
    Annotated
      { children,
        kind,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Annotated where
  getDynNode (Annotated {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Annotated where
  cast = cast_Annotated

data Apply = Apply
  { argument :: ((AST.Err.Err ((ExplicitType Sum.:+ Expression Sum.:+ KindApplication Sum.:+ Pattern Sum.:+ Type Sum.:+ TypeApplication Sum.:+ TypeBinder Sum.:+ Sum.Nil)))),
    constructor :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Constraint Sum.:+ Type Sum.:+ Sum.Nil)))),
    function :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Apply :: Api.Node -> Prelude.Maybe Apply
cast_Apply dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "apply")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Apply where
  getDynNode (Apply {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Apply where
  cast = cast_Apply

data ArithmeticSequence = ArithmeticSequence
  { from :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    step :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    to :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ArithmeticSequence :: Api.Node -> Prelude.Maybe ArithmeticSequence
cast_ArithmeticSequence dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "arithmetic_sequence")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ArithmeticSequence where
  getDynNode (ArithmeticSequence {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ArithmeticSequence where
  cast = cast_ArithmeticSequence

data As = As
  { bind :: ((AST.Err.Err (Variable))),
    pattern' :: ((AST.Err.Err (Pattern))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_As :: Api.Node -> Prelude.Maybe As
cast_As dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "as")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  bind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "bind" namedMap))
  bind <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr bind))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    As
      { bind,
        pattern',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode As where
  getDynNode (As {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast As where
  cast = cast_As

data AssociatedType = AssociatedType
  { namespace :: ((AST.Err.Err ((AST.Token.Token "type")))),
    type' :: ((AST.Err.Err ((Name Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_AssociatedType :: Api.Node -> Prelude.Maybe AssociatedType
cast_AssociatedType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "associated_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr namespace))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    AssociatedType
      { namespace,
        type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode AssociatedType where
  getDynNode (AssociatedType {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast AssociatedType where
  cast = cast_AssociatedType

data Bind = Bind
  { arrow :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)))),
    binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    implicit :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ImplicitVariable))),
    match :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Match))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Bind :: Api.Node -> Prelude.Maybe Bind
cast_Bind dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "bind")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Bind where
  getDynNode (Bind {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Bind where
  cast = cast_Bind

data BindingList = BindingList
  { name :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_BindingList :: Api.Node -> Prelude.Maybe BindingList
cast_BindingList dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "binding_list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr name))
  Prelude.pure
    BindingList
      { name,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode BindingList where
  getDynNode (BindingList {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast BindingList where
  cast = cast_BindingList

data Boolean = Boolean
  { children :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Boolean :: Api.Node -> Prelude.Maybe Boolean
cast_Boolean dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "boolean")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Boolean
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Boolean where
  getDynNode (Boolean {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Boolean where
  cast = cast_Boolean

data Case = Case
  { children :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    alternatives :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Alternatives))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Case :: Api.Node -> Prelude.Maybe Case
cast_Case dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "case")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr alternatives))
  Prelude.pure
    Case
      { children,
        alternatives,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Case where
  getDynNode (Case {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Case where
  cast = cast_Case

data Children = Children
  { element :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((AllNames Sum.:+ AssociatedType Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Children :: Api.Node -> Prelude.Maybe Children
cast_Children dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "children")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr element))
  Prelude.pure
    Children
      { element,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Children where
  getDynNode (Children {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Children where
  cast = cast_Children

data Class = Class
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    declarations :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ClassDeclarations))),
    fundeps :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Fundeps))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Class :: Api.Node -> Prelude.Maybe Class
cast_Class dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "class")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
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
  Prelude.pure
    Class
      { children,
        context,
        declarations,
        fundeps,
        name,
        patterns,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Class where
  getDynNode (Class {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Class where
  cast = cast_Class

data ClassDeclarations = ClassDeclarations
  { declaration :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (ClassDecl))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ClassDeclarations :: Api.Node -> Prelude.Maybe ClassDeclarations
cast_ClassDeclarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "class_declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr declaration))
  Prelude.pure
    ClassDeclarations
      { declaration,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ClassDeclarations where
  getDynNode (ClassDeclarations {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ClassDeclarations where
  cast = cast_ClassDeclarations

data Conditional = Conditional
  { else' :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    if' :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    then' :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Conditional :: Api.Node -> Prelude.Maybe Conditional
cast_Conditional dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "conditional")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Conditional where
  getDynNode (Conditional {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Conditional where
  cast = cast_Conditional

data ConstructorOperator = ConstructorOperator {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode ConstructorOperator where
  getDynNode (ConstructorOperator {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ConstructorOperator where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_operator")
    Prelude.pure (ConstructorOperator {dynNode = AST.Node.WrappedDynNode dynNode})

data ConstructorSynonym = ConstructorSynonym
  { binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    implicit :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ImplicitVariable))),
    match :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Match))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ConstructorSynonym :: Api.Node -> Prelude.Maybe ConstructorSynonym
cast_ConstructorSynonym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_synonym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ConstructorSynonym where
  getDynNode (ConstructorSynonym {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ConstructorSynonym where
  cast = cast_ConstructorSynonym

data ConstructorSynonyms = ConstructorSynonyms
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (ConstructorSynonym))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ConstructorSynonyms :: Api.Node -> Prelude.Maybe ConstructorSynonyms
cast_ConstructorSynonyms dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_synonyms")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    ConstructorSynonyms
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ConstructorSynonyms where
  getDynNode (ConstructorSynonyms {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ConstructorSynonyms where
  cast = cast_ConstructorSynonyms

data Context = Context
  { arrow :: ((AST.Err.Err (((AST.Token.Token "=>") Sum.:+ (AST.Token.Token "⇒") Sum.:+ Sum.Nil)))),
    constraint :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Constraints))),
    context :: ((AST.Err.Err (Constraint))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Context :: Api.Node -> Prelude.Maybe Context
cast_Context dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "context")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Context where
  getDynNode (Context {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Context where
  cast = cast_Context

data DataConstructor = DataConstructor
  { constructor :: ((AST.Err.Err ((Infix Sum.:+ Prefix Sum.:+ Record Sum.:+ Special Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_DataConstructor :: Api.Node -> Prelude.Maybe DataConstructor
cast_DataConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode DataConstructor where
  getDynNode (DataConstructor {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DataConstructor where
  cast = cast_DataConstructor

data DataConstructors = DataConstructors
  { constructor :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (DataConstructor))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_DataConstructors :: Api.Node -> Prelude.Maybe DataConstructors
cast_DataConstructors dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_constructors")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr constructor))
  Prelude.pure
    DataConstructors
      { constructor,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode DataConstructors where
  getDynNode (DataConstructors {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DataConstructors where
  cast = cast_DataConstructors

data DataFamily = DataFamily
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_DataFamily :: Api.Node -> Prelude.Maybe DataFamily
cast_DataFamily dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_family")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  Prelude.pure
    DataFamily
      { children,
        kind,
        name,
        patterns,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode DataFamily where
  getDynNode (DataFamily {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DataFamily where
  cast = cast_DataFamily

data DataInstance = DataInstance
  { children :: ((AST.Err.Err ((DataType Sum.:+ Newtype Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_DataInstance :: Api.Node -> Prelude.Maybe DataInstance
cast_DataInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    DataInstance
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode DataInstance where
  getDynNode (DataInstance {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DataInstance where
  cast = cast_DataInstance

data DataType = DataType
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    constructors :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((DataConstructors Sum.:+ GadtConstructors Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    deriving' :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Deriving))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_DataType :: Api.Node -> Prelude.Maybe DataType
cast_DataType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode DataType where
  getDynNode (DataType {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DataType where
  cast = cast_DataType

data Declarations = Declarations
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Declaration Sum.:+ Import Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Declarations :: Api.Node -> Prelude.Maybe Declarations
cast_Declarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Declarations
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Declarations where
  getDynNode (Declarations {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Declarations where
  cast = cast_Declarations

data DefaultSignature = DefaultSignature
  { signature :: ((AST.Err.Err (Signature))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_DefaultSignature :: Api.Node -> Prelude.Maybe DefaultSignature
cast_DefaultSignature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "default_signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr signature))
  Prelude.pure
    DefaultSignature
      { signature,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode DefaultSignature where
  getDynNode (DefaultSignature {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DefaultSignature where
  cast = cast_DefaultSignature

data DefaultTypes = DefaultTypes
  { type' :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_DefaultTypes :: Api.Node -> Prelude.Maybe DefaultTypes
cast_DefaultTypes dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "default_types")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    DefaultTypes
      { type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode DefaultTypes where
  getDynNode (DefaultTypes {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DefaultTypes where
  cast = cast_DefaultTypes

data Deriving = Deriving
  { classes :: ((AST.Err.Err (Constraint))),
    strategy :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (DerivingStrategy))),
    via :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Via))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Deriving :: Api.Node -> Prelude.Maybe Deriving
cast_Deriving dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Deriving where
  getDynNode (Deriving {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Deriving where
  cast = cast_Deriving

data DerivingInstance = DerivingInstance
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypePatterns))),
    strategy :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (DerivingStrategy))),
    via :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Via))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_DerivingInstance :: Api.Node -> Prelude.Maybe DerivingInstance
cast_DerivingInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
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
  Prelude.pure
    DerivingInstance
      { children,
        context,
        forall',
        name,
        patterns,
        strategy,
        via,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode DerivingInstance where
  getDynNode (DerivingInstance {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DerivingInstance where
  cast = cast_DerivingInstance

data DerivingStrategy = DerivingStrategy {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode DerivingStrategy where
  getDynNode (DerivingStrategy {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DerivingStrategy where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving_strategy")
    Prelude.pure (DerivingStrategy {dynNode = AST.Node.WrappedDynNode dynNode})

data Do = Do
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (DoModule))),
    statement :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Statement))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Do :: Api.Node -> Prelude.Maybe Do
cast_Do dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "do")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  statement <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "statement" namedMap))
  statement <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr statement))
  Prelude.pure
    Do
      { children,
        statement,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Do where
  getDynNode (Do {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Do where
  cast = cast_Do

data DoModule = DoModule
  { id :: ((AST.Err.Err (((AST.Token.Token "do") Sum.:+ (AST.Token.Token "mdo") Sum.:+ Sum.Nil)))),
    module' :: ((AST.Err.Err (Module))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_DoModule :: Api.Node -> Prelude.Maybe DoModule
cast_DoModule dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "do_module")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  id <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "id" namedMap))
  id <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr id))
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr module'))
  Prelude.pure
    DoModule
      { id,
        module',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode DoModule where
  getDynNode (DoModule {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast DoModule where
  cast = cast_DoModule

data EmptyList = EmptyList {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode EmptyList where
  getDynNode (EmptyList {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast EmptyList where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "empty_list")
    Prelude.pure (EmptyList {dynNode = AST.Node.WrappedDynNode dynNode})

data Entity = Entity
  { children :: ((AST.Err.Err (String))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Entity :: Api.Node -> Prelude.Maybe Entity
cast_Entity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "entity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Entity
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Entity where
  getDynNode (Entity {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Entity where
  cast = cast_Entity

data Equation = Equation
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil)))),
    constructors :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ConstructorSynonyms))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypePatterns))),
    synonym :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Pattern))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Equation :: Api.Node -> Prelude.Maybe Equation
cast_Equation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "equation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr children))
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
  Prelude.pure
    Equation
      { children,
        constructors,
        forall',
        name,
        pattern',
        patterns,
        synonym,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Equation where
  getDynNode (Equation {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Equation where
  cast = cast_Equation

data Equations = Equations
  { equation :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Equation))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Equations :: Api.Node -> Prelude.Maybe Equations
cast_Equations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "equations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  equation <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "equation" namedMap))
  equation <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr equation))
  Prelude.pure
    Equations
      { equation,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Equations where
  getDynNode (Equations {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Equations where
  cast = cast_Equations

data Exp = Exp
  { children :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Exp :: Api.Node -> Prelude.Maybe Exp
cast_Exp dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "exp")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Exp
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Exp where
  getDynNode (Exp {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Exp where
  cast = cast_Exp

data ExplicitType = ExplicitType
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ExplicitType :: Api.Node -> Prelude.Maybe ExplicitType
cast_ExplicitType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "explicit_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    ExplicitType
      { type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ExplicitType where
  getDynNode (ExplicitType {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ExplicitType where
  cast = cast_ExplicitType

data Export = Export
  { children' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Children))),
    namespace :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Namespace))),
    operator :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (PrefixId))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    variable :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Export :: Api.Node -> Prelude.Maybe Export
cast_Export dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children'" namedMap))
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Export where
  getDynNode (Export {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Export where
  cast = cast_Export

data Exports = Exports
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (ModuleExport))),
    export :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Export))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Exports :: Api.Node -> Prelude.Maybe Exports
cast_Exports dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "exports")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr children))
  export <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "export" namedMap))
  export <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr export))
  Prelude.pure
    Exports
      { children,
        export,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Exports where
  getDynNode (Exports {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Exports where
  cast = cast_Exports

data Field = Field
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Type))),
    name :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (FieldName))),
    parameter :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Field :: Api.Node -> Prelude.Maybe Field
cast_Field dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr name))
  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr parameter))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    Field
      { children,
        name,
        parameter,
        type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Field where
  getDynNode (Field {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Field where
  cast = cast_Field

data FieldName = FieldName
  { children :: ((AST.Err.Err (Variable))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_FieldName :: Api.Node -> Prelude.Maybe FieldName
cast_FieldName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    FieldName
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode FieldName where
  getDynNode (FieldName {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast FieldName where
  cast = cast_FieldName

data FieldPath = FieldPath
  { field :: ((AST.Err.Err ((FieldName Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    subfield :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (FieldName))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_FieldPath :: Api.Node -> Prelude.Maybe FieldPath
cast_FieldPath dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_path")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr field))
  subfield <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "subfield" namedMap))
  subfield <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr subfield))
  Prelude.pure
    FieldPath
      { field,
        subfield,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode FieldPath where
  getDynNode (FieldPath {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast FieldPath where
  cast = cast_FieldPath

data FieldPattern = FieldPattern
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Wildcard))),
    field :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((FieldName Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_FieldPattern :: Api.Node -> Prelude.Maybe FieldPattern
cast_FieldPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr field))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    FieldPattern
      { children,
        field,
        pattern',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode FieldPattern where
  getDynNode (FieldPattern {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast FieldPattern where
  cast = cast_FieldPattern

data FieldUpdate = FieldUpdate
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Wildcard))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    field :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((FieldName Sum.:+ FieldPath Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_FieldUpdate :: Api.Node -> Prelude.Maybe FieldUpdate
cast_FieldUpdate dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_update")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr expression))
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr field))
  Prelude.pure
    FieldUpdate
      { children,
        expression,
        field,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode FieldUpdate where
  getDynNode (FieldUpdate {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast FieldUpdate where
  cast = cast_FieldUpdate

data Fields = Fields
  { field :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Field))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Fields :: Api.Node -> Prelude.Maybe Fields
cast_Fields dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fields")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr field))
  Prelude.pure
    Fields
      { field,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Fields where
  getDynNode (Fields {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Fields where
  cast = cast_Fields

data Fixity = Fixity
  { associativity :: ((AST.Err.Err (((AST.Token.Token "infix") Sum.:+ (AST.Token.Token "infixl") Sum.:+ (AST.Token.Token "infixr") Sum.:+ Sum.Nil)))),
    operator :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (((AST.Token.Token ",") Sum.:+ ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Sum.Nil)))),
    precedence :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Integer))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Fixity :: Api.Node -> Prelude.Maybe Fixity
cast_Fixity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fixity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Fixity where
  getDynNode (Fixity {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Fixity where
  cast = cast_Fixity

data Forall = Forall
  { constraint :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Constraints))),
    quantifier :: ((AST.Err.Err (((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    variables :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedVariables))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Forall :: Api.Node -> Prelude.Maybe Forall
cast_Forall dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "forall")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Forall where
  getDynNode (Forall {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Forall where
  cast = cast_Forall

data ForallRequired = ForallRequired
  { quantifier :: ((AST.Err.Err (((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    variables :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedVariables))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ForallRequired :: Api.Node -> Prelude.Maybe ForallRequired
cast_ForallRequired dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "forall_required")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ForallRequired where
  getDynNode (ForallRequired {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ForallRequired where
  cast = cast_ForallRequired

data ForeignExport = ForeignExport
  { callingConvention :: ((AST.Err.Err (CallingConvention))),
    entity :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Entity))),
    signature :: ((AST.Err.Err (Signature))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ForeignExport :: Api.Node -> Prelude.Maybe ForeignExport
cast_ForeignExport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "foreign_export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ForeignExport where
  getDynNode (ForeignExport {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ForeignExport where
  cast = cast_ForeignExport

data ForeignImport = ForeignImport
  { callingConvention :: ((AST.Err.Err (CallingConvention))),
    entity :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Entity))),
    safety :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Safety))),
    signature :: ((AST.Err.Err (Signature))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ForeignImport :: Api.Node -> Prelude.Maybe ForeignImport
cast_ForeignImport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "foreign_import")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ForeignImport where
  getDynNode (ForeignImport {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ForeignImport where
  cast = cast_ForeignImport

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
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Function :: Api.Node -> Prelude.Maybe Function
cast_Function dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "function")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Function where
  getDynNode (Function {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Function where
  cast = cast_Function

data FunctionHeadParens = FunctionHeadParens
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Infix))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    parens :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (FunctionHeadParens))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Patterns))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_FunctionHeadParens :: Api.Node -> Prelude.Maybe FunctionHeadParens
cast_FunctionHeadParens dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "function_head_parens")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  parens <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parens" namedMap))
  parens <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr parens))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  Prelude.pure
    FunctionHeadParens
      { children,
        name,
        parens,
        patterns,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode FunctionHeadParens where
  getDynNode (FunctionHeadParens {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast FunctionHeadParens where
  cast = cast_FunctionHeadParens

data Fundep = Fundep
  { determined :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Variable))),
    matched :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Variable))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Fundep :: Api.Node -> Prelude.Maybe Fundep
cast_Fundep dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fundep")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  determined <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "determined" namedMap))
  determined <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr determined))
  matched <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "matched" namedMap))
  matched <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr matched))
  Prelude.pure
    Fundep
      { determined,
        matched,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Fundep where
  getDynNode (Fundep {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Fundep where
  cast = cast_Fundep

data Fundeps = Fundeps
  { fundep :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Fundep))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Fundeps :: Api.Node -> Prelude.Maybe Fundeps
cast_Fundeps dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fundeps")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  fundep <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fundep" namedMap))
  fundep <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr fundep))
  Prelude.pure
    Fundeps
      { fundep,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Fundeps where
  getDynNode (Fundeps {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Fundeps where
  cast = cast_Fundeps

data GadtConstructor = GadtConstructor
  { context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)))),
    names :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (BindingList))),
    type' :: ((AST.Err.Err ((Prefix Sum.:+ Record Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_GadtConstructor :: Api.Node -> Prelude.Maybe GadtConstructor
cast_GadtConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "gadt_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode GadtConstructor where
  getDynNode (GadtConstructor {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast GadtConstructor where
  cast = cast_GadtConstructor

data GadtConstructors = GadtConstructors
  { constructor :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (GadtConstructor))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_GadtConstructors :: Api.Node -> Prelude.Maybe GadtConstructors
cast_GadtConstructors dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "gadt_constructors")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr constructor))
  Prelude.pure
    GadtConstructors
      { constructor,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode GadtConstructors where
  getDynNode (GadtConstructors {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast GadtConstructors where
  cast = cast_GadtConstructors

data Generator = Generator
  { arrow :: ((AST.Err.Err (((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)))),
    expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    pattern' :: ((AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Generator :: Api.Node -> Prelude.Maybe Generator
cast_Generator dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "generator")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Generator where
  getDynNode (Generator {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Generator where
  cast = cast_Generator

data Group = Group
  { classifier :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    key :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Group :: Api.Node -> Prelude.Maybe Group
cast_Group dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "group")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  classifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "classifier" namedMap))
  classifier <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr classifier))
  key <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "key" namedMap))
  key <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr key))
  Prelude.pure
    Group
      { classifier,
        key,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Group where
  getDynNode (Group {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Group where
  cast = cast_Group

data Guards = Guards
  { guard :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Guard))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Guards :: Api.Node -> Prelude.Maybe Guards
cast_Guards dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "guards")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  guard <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "guard" namedMap))
  guard <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr guard))
  Prelude.pure
    Guards
      { guard,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Guards where
  getDynNode (Guards {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Guards where
  cast = cast_Guards

data Haskell = Haskell
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Header))),
    declarations :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Declarations))),
    imports :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Imports))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Haskell :: Api.Node -> Prelude.Maybe Haskell
cast_Haskell dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "haskell")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr declarations))
  imports <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "imports" namedMap))
  imports <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr imports))
  Prelude.pure
    Haskell
      { children,
        declarations,
        imports,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Haskell where
  getDynNode (Haskell {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Haskell where
  cast = cast_Haskell

data Header = Header
  { exports :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Exports))),
    module' :: ((AST.Err.Err (Module))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Header :: Api.Node -> Prelude.Maybe Header
cast_Header dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "header")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  exports <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "exports" namedMap))
  exports <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr exports))
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr module'))
  Prelude.pure
    Header
      { exports,
        module',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Header where
  getDynNode (Header {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Header where
  cast = cast_Header

data ImplicitParameter = ImplicitParameter
  { name :: ((AST.Err.Err (ImplicitVariable))),
    type' :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ImplicitParameter :: Api.Node -> Prelude.Maybe ImplicitParameter
cast_ImplicitParameter dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "implicit_parameter")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr name))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    ImplicitParameter
      { name,
        type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ImplicitParameter where
  getDynNode (ImplicitParameter {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ImplicitParameter where
  cast = cast_ImplicitParameter

data Import = Import
  { alias :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Module))),
    module' :: ((AST.Err.Err (Module))),
    names :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ImportList))),
    package :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (ImportPackage))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Import :: Api.Node -> Prelude.Maybe Import
cast_Import dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Import where
  getDynNode (Import {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Import where
  cast = cast_Import

data ImportList = ImportList
  { name :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (ImportName))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ImportList :: Api.Node -> Prelude.Maybe ImportList
cast_ImportList dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr name))
  Prelude.pure
    ImportList
      { name,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ImportList where
  getDynNode (ImportList {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ImportList where
  cast = cast_ImportList

data ImportName = ImportName
  { children' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Children))),
    namespace :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Namespace))),
    operator :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (PrefixId))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    variable :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ImportName :: Api.Node -> Prelude.Maybe ImportName
cast_ImportName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children'" namedMap))
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ImportName where
  getDynNode (ImportName {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ImportName where
  cast = cast_ImportName

data Imports = Imports
  { import' :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Import))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Imports :: Api.Node -> Prelude.Maybe Imports
cast_Imports dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "imports")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  import' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "import" namedMap))
  import' <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr import'))
  Prelude.pure
    Imports
      { import',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Imports where
  getDynNode (Imports {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Imports where
  cast = cast_Imports

data Inferred = Inferred
  { children :: ((AST.Err.Err ((Annotated Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Inferred :: Api.Node -> Prelude.Maybe Inferred
cast_Inferred dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "inferred")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Inferred
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Inferred where
  getDynNode (Inferred {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Inferred where
  cast = cast_Inferred

data Infix = Infix
  { leftOperand :: ((AST.Err.Err ((Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    operator :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    rightOperand :: ((AST.Err.Err ((Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Infix :: Api.Node -> Prelude.Maybe Infix
cast_Infix dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "infix")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Infix where
  getDynNode (Infix {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Infix where
  cast = cast_Infix

data InfixId = InfixId
  { children :: ((AST.Err.Err ((Constructor Sum.:+ Name Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_InfixId :: Api.Node -> Prelude.Maybe InfixId
cast_InfixId dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "infix_id")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    InfixId
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode InfixId where
  getDynNode (InfixId {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast InfixId where
  cast = cast_InfixId

data Instance = Instance
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    context :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Context))),
    declarations :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (InstanceDeclarations))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypePatterns))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Instance :: Api.Node -> Prelude.Maybe Instance
cast_Instance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
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
  Prelude.pure
    Instance
      { children,
        context,
        declarations,
        forall',
        name,
        patterns,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Instance where
  getDynNode (Instance {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Instance where
  cast = cast_Instance

data InstanceDeclarations = InstanceDeclarations
  { declaration :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (InstanceDecl))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_InstanceDeclarations :: Api.Node -> Prelude.Maybe InstanceDeclarations
cast_InstanceDeclarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "instance_declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr declaration))
  Prelude.pure
    InstanceDeclarations
      { declaration,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode InstanceDeclarations where
  getDynNode (InstanceDeclarations {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast InstanceDeclarations where
  cast = cast_InstanceDeclarations

data Integer = Integer {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Integer where
  getDynNode (Integer {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Integer where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "integer")
    Prelude.pure (Integer {dynNode = AST.Node.WrappedDynNode dynNode})

data Invisible = Invisible
  { bind :: ((AST.Err.Err (TypeParam))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Invisible :: Api.Node -> Prelude.Maybe Invisible
cast_Invisible dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "invisible")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  bind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "bind" namedMap))
  bind <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr bind))
  Prelude.pure
    Invisible
      { bind,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Invisible where
  getDynNode (Invisible {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Invisible where
  cast = cast_Invisible

data Irrefutable = Irrefutable
  { pattern' :: ((AST.Err.Err (Pattern))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Irrefutable :: Api.Node -> Prelude.Maybe Irrefutable
cast_Irrefutable dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "irrefutable")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    Irrefutable
      { pattern',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Irrefutable where
  getDynNode (Irrefutable {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Irrefutable where
  cast = cast_Irrefutable

data KindApplication = KindApplication
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_KindApplication :: Api.Node -> Prelude.Maybe KindApplication
cast_KindApplication dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "kind_application")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    KindApplication
      { type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode KindApplication where
  getDynNode (KindApplication {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast KindApplication where
  cast = cast_KindApplication

data KindSignature = KindSignature
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    kind :: ((AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_KindSignature :: Api.Node -> Prelude.Maybe KindSignature
cast_KindSignature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "kind_signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  Prelude.pure
    KindSignature
      { children,
        kind,
        name,
        patterns,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode KindSignature where
  getDynNode (KindSignature {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast KindSignature where
  cast = cast_KindSignature

data Lambda = Lambda
  { expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    patterns :: ((AST.Err.Err (Patterns))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Lambda :: Api.Node -> Prelude.Maybe Lambda
cast_Lambda dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr patterns))
  Prelude.pure
    Lambda
      { expression,
        patterns,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Lambda where
  getDynNode (Lambda {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Lambda where
  cast = cast_Lambda

data LambdaCase = LambdaCase
  { alternatives :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Alternatives))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_LambdaCase :: Api.Node -> Prelude.Maybe LambdaCase
cast_LambdaCase dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda_case")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr alternatives))
  Prelude.pure
    LambdaCase
      { alternatives,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode LambdaCase where
  getDynNode (LambdaCase {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast LambdaCase where
  cast = cast_LambdaCase

data LambdaCases = LambdaCases
  { alternatives :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Alternatives))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_LambdaCases :: Api.Node -> Prelude.Maybe LambdaCases
cast_LambdaCases dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda_cases")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr alternatives))
  Prelude.pure
    LambdaCases
      { alternatives,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode LambdaCases where
  getDynNode (LambdaCases {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast LambdaCases where
  cast = cast_LambdaCases

data LazyField = LazyField
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_LazyField :: Api.Node -> Prelude.Maybe LazyField
cast_LazyField dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lazy_field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    LazyField
      { type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode LazyField where
  getDynNode (LazyField {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast LazyField where
  cast = cast_LazyField

data LeftSection = LeftSection
  { leftOperand :: ((AST.Err.Err (Expression))),
    operator :: ((AST.Err.Err ((ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_LeftSection :: Api.Node -> Prelude.Maybe LeftSection
cast_LeftSection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "left_section")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  leftOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "left_operand" namedMap))
  leftOperand <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr leftOperand))
  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr operator))
  Prelude.pure
    LeftSection
      { leftOperand,
        operator,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode LeftSection where
  getDynNode (LeftSection {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast LeftSection where
  cast = cast_LeftSection

data Let = Let
  { binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Let :: Api.Node -> Prelude.Maybe Let
cast_Let dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "let")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr binds))
  Prelude.pure
    Let
      { binds,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Let where
  getDynNode (Let {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Let where
  cast = cast_Let

data LetIn = LetIn
  { binds :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (LocalBinds))),
    expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_LetIn :: Api.Node -> Prelude.Maybe LetIn
cast_LetIn dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "let_in")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr binds))
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  Prelude.pure
    LetIn
      { binds,
        expression,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode LetIn where
  getDynNode (LetIn {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast LetIn where
  cast = cast_LetIn

data LinearFunction = LinearFunction
  { arrow :: ((AST.Err.Err (((AST.Token.Token "->") Sum.:+ (AST.Token.Token "->.") Sum.:+ (AST.Token.Token "→") Sum.:+ (AST.Token.Token "⊸") Sum.:+ Sum.Nil)))),
    multiplicity :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Modifier))),
    parameter :: ((AST.Err.Err ((LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)))),
    result :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_LinearFunction :: Api.Node -> Prelude.Maybe LinearFunction
cast_LinearFunction dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "linear_function")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode LinearFunction where
  getDynNode (LinearFunction {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast LinearFunction where
  cast = cast_LinearFunction

data List = List
  { element :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_List :: Api.Node -> Prelude.Maybe List
cast_List dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr element))
  Prelude.pure
    List
      { element,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode List where
  getDynNode (List {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast List where
  cast = cast_List

data ListComprehension = ListComprehension
  { expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    qualifiers :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Qualifiers))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ListComprehension :: Api.Node -> Prelude.Maybe ListComprehension
cast_ListComprehension dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "list_comprehension")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  qualifiers <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "qualifiers" namedMap))
  qualifiers <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr qualifiers))
  Prelude.pure
    ListComprehension
      { expression,
        qualifiers,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ListComprehension where
  getDynNode (ListComprehension {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ListComprehension where
  cast = cast_ListComprehension

data Literal = Literal
  { children :: ((AST.Err.Err ((Char Sum.:+ Float Sum.:+ Integer Sum.:+ String Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Literal :: Api.Node -> Prelude.Maybe Literal
cast_Literal dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "literal")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Literal
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Literal where
  getDynNode (Literal {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Literal where
  cast = cast_Literal

data LocalBinds = LocalBinds
  { decl :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Decl Sum.:+ Fixity Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_LocalBinds :: Api.Node -> Prelude.Maybe LocalBinds
cast_LocalBinds dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "local_binds")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  decl <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "decl" namedMap))
  decl <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr decl))
  Prelude.pure
    LocalBinds
      { decl,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode LocalBinds where
  getDynNode (LocalBinds {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast LocalBinds where
  cast = cast_LocalBinds

data Match = Match
  { expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    guards :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Guards))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Match :: Api.Node -> Prelude.Maybe Match
cast_Match dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "match")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  guards <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "guards" namedMap))
  guards <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr guards))
  Prelude.pure
    Match
      { expression,
        guards,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Match where
  getDynNode (Match {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Match where
  cast = cast_Match

data Modifier = Modifier
  { children :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Modifier :: Api.Node -> Prelude.Maybe Modifier
cast_Modifier dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "modifier")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Modifier
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Modifier where
  getDynNode (Modifier {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Modifier where
  cast = cast_Modifier

data Module = Module
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (ModuleId))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Module :: Api.Node -> Prelude.Maybe Module
cast_Module dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "module")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Module
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Module where
  getDynNode (Module {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Module where
  cast = cast_Module

data ModuleExport = ModuleExport
  { module' :: ((AST.Err.Err (Module))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ModuleExport :: Api.Node -> Prelude.Maybe ModuleExport
cast_ModuleExport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "module_export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr module'))
  Prelude.pure
    ModuleExport
      { module',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ModuleExport where
  getDynNode (ModuleExport {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ModuleExport where
  cast = cast_ModuleExport

data MultiWayIf = MultiWayIf
  { match :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Match))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_MultiWayIf :: Api.Node -> Prelude.Maybe MultiWayIf
cast_MultiWayIf dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "multi_way_if")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr match))
  Prelude.pure
    MultiWayIf
      { match,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode MultiWayIf where
  getDynNode (MultiWayIf {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast MultiWayIf where
  cast = cast_MultiWayIf

data Namespace = Namespace {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Namespace where
  getDynNode (Namespace {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Namespace where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "namespace")
    Prelude.pure (Namespace {dynNode = AST.Node.WrappedDynNode dynNode})

data Negation = Negation
  { expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Expression))),
    minus :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((AST.Token.Token "-")))),
    number :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Float Sum.:+ Integer Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Negation :: Api.Node -> Prelude.Maybe Negation
cast_Negation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "negation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Negation where
  getDynNode (Negation {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Negation where
  cast = cast_Negation

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
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Newtype :: Api.Node -> Prelude.Maybe Newtype
cast_Newtype dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "newtype")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Newtype where
  getDynNode (Newtype {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Newtype where
  cast = cast_Newtype

data NewtypeConstructor = NewtypeConstructor
  { field :: ((AST.Err.Err ((Field Sum.:+ Record Sum.:+ Sum.Nil)))),
    name :: ((AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_NewtypeConstructor :: Api.Node -> Prelude.Maybe NewtypeConstructor
cast_NewtypeConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "newtype_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr field))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr name))
  Prelude.pure
    NewtypeConstructor
      { field,
        name,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode NewtypeConstructor where
  getDynNode (NewtypeConstructor {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast NewtypeConstructor where
  cast = cast_NewtypeConstructor

data Operator = Operator {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Operator where
  getDynNode (Operator {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Operator where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "operator")
    Prelude.pure (Operator {dynNode = AST.Node.WrappedDynNode dynNode})

data Parens = Parens
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Annotated Sum.:+ Constraints Sum.:+ Infix Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil)))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Parens :: Api.Node -> Prelude.Maybe Parens
cast_Parens dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "parens")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
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
  Prelude.pure
    Parens
      { children,
        expression,
        kind,
        name,
        pattern',
        patterns,
        type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Parens where
  getDynNode (Parens {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Parens where
  cast = cast_Parens

data PatternGuard = PatternGuard
  { arrow :: ((AST.Err.Err (((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)))),
    expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    pattern' :: ((AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_PatternGuard :: Api.Node -> Prelude.Maybe PatternGuard
cast_PatternGuard dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "pattern_guard")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode PatternGuard where
  getDynNode (PatternGuard {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast PatternGuard where
  cast = cast_PatternGuard

data PatternSynonym = PatternSynonym
  { children :: ((AST.Err.Err ((Equation Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_PatternSynonym :: Api.Node -> Prelude.Maybe PatternSynonym
cast_PatternSynonym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "pattern_synonym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    PatternSynonym
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode PatternSynonym where
  getDynNode (PatternSynonym {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast PatternSynonym where
  cast = cast_PatternSynonym

data Patterns = Patterns
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((ExplicitType Sum.:+ Pattern Sum.:+ TypeBinder Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Patterns :: Api.Node -> Prelude.Maybe Patterns
cast_Patterns dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "patterns")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Patterns
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Patterns where
  getDynNode (Patterns {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Patterns where
  cast = cast_Patterns

data Prefix = Prefix
  { field :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((LazyField Sum.:+ StrictField Sum.:+ Type Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Prefix :: Api.Node -> Prelude.Maybe Prefix
cast_Prefix dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Prefix where
  getDynNode (Prefix {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Prefix where
  cast = cast_Prefix

data PrefixId = PrefixId
  { children :: ((AST.Err.Err ((ConstructorOperator Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_PrefixId :: Api.Node -> Prelude.Maybe PrefixId
cast_PrefixId dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_id")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    PrefixId
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode PrefixId where
  getDynNode (PrefixId {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast PrefixId where
  cast = cast_PrefixId

data PrefixList = PrefixList {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode PrefixList where
  getDynNode (PrefixList {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast PrefixList where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_list")
    Prelude.pure (PrefixList {dynNode = AST.Node.WrappedDynNode dynNode})

data PrefixTuple = PrefixTuple {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode PrefixTuple where
  getDynNode (PrefixTuple {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast PrefixTuple where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_tuple")
    Prelude.pure (PrefixTuple {dynNode = AST.Node.WrappedDynNode dynNode})

data PrefixUnboxedSum = PrefixUnboxedSum {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode PrefixUnboxedSum where
  getDynNode (PrefixUnboxedSum {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast PrefixUnboxedSum where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_unboxed_sum")
    Prelude.pure (PrefixUnboxedSum {dynNode = AST.Node.WrappedDynNode dynNode})

data PrefixUnboxedTuple = PrefixUnboxedTuple {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode PrefixUnboxedTuple where
  getDynNode (PrefixUnboxedTuple {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast PrefixUnboxedTuple where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_unboxed_tuple")
    Prelude.pure (PrefixUnboxedTuple {dynNode = AST.Node.WrappedDynNode dynNode})

data Projection = Projection
  { expression :: ((AST.Err.Err (Expression))),
    field :: ((AST.Err.Err (FieldName))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Projection :: Api.Node -> Prelude.Maybe Projection
cast_Projection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "projection")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr field))
  Prelude.pure
    Projection
      { expression,
        field,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Projection where
  getDynNode (Projection {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Projection where
  cast = cast_Projection

data ProjectionSelector = ProjectionSelector
  { field :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Variable))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ProjectionSelector :: Api.Node -> Prelude.Maybe ProjectionSelector
cast_ProjectionSelector dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "projection_selector")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr field))
  Prelude.pure
    ProjectionSelector
      { field,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ProjectionSelector where
  getDynNode (ProjectionSelector {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ProjectionSelector where
  cast = cast_ProjectionSelector

data Promoted = Promoted
  { children :: ((AST.Err.Err ((Constructor Sum.:+ ConstructorOperator Sum.:+ EmptyList Sum.:+ InfixId Sum.:+ List Sum.:+ Operator Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ Qualified Sum.:+ Tuple Sum.:+ Unit Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Promoted :: Api.Node -> Prelude.Maybe Promoted
cast_Promoted dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "promoted")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Promoted
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Promoted where
  getDynNode (Promoted {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Promoted where
  cast = cast_Promoted

data Qualified = Qualified
  { id :: ((AST.Err.Err ((Constructor Sum.:+ ConstructorOperator Sum.:+ FieldName Sum.:+ Name Sum.:+ Operator Sum.:+ Variable Sum.:+ Sum.Nil)))),
    module' :: ((AST.Err.Err (Module))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Qualified :: Api.Node -> Prelude.Maybe Qualified
cast_Qualified dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "qualified")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  id <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "id" namedMap))
  id <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr id))
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr module'))
  Prelude.pure
    Qualified
      { id,
        module',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Qualified where
  getDynNode (Qualified {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Qualified where
  cast = cast_Qualified

data Qualifiers = Qualifiers
  { qualifier :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Qualifier))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Qualifiers :: Api.Node -> Prelude.Maybe Qualifiers
cast_Qualifiers dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "qualifiers")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  qualifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "qualifier" namedMap))
  qualifier <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr qualifier))
  Prelude.pure
    Qualifiers
      { qualifier,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Qualifiers where
  getDynNode (Qualifiers {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Qualifiers where
  cast = cast_Qualifiers

data QuantifiedVariables = QuantifiedVariables
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Inferred Sum.:+ TypeParam Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_QuantifiedVariables :: Api.Node -> Prelude.Maybe QuantifiedVariables
cast_QuantifiedVariables dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quantified_variables")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    QuantifiedVariables
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode QuantifiedVariables where
  getDynNode (QuantifiedVariables {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast QuantifiedVariables where
  cast = cast_QuantifiedVariables

data Quasiquote = Quasiquote
  { body :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuasiquoteBody))),
    quoter :: ((AST.Err.Err (Quoter))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Quasiquote :: Api.Node -> Prelude.Maybe Quasiquote
cast_Quasiquote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quasiquote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  body <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "body" namedMap))
  body <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr body))
  quoter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quoter" namedMap))
  quoter <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr quoter))
  Prelude.pure
    Quasiquote
      { body,
        quoter,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Quasiquote where
  getDynNode (Quasiquote {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Quasiquote where
  cast = cast_Quasiquote

data Quote = Quote
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((QuotedDecls Sum.:+ QuotedExpression Sum.:+ QuotedPattern Sum.:+ QuotedType Sum.:+ Sum.Nil)))),
    quoter :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (((AST.Token.Token "d") Sum.:+ (AST.Token.Token "e") Sum.:+ (AST.Token.Token "p") Sum.:+ (AST.Token.Token "t") Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Quote :: Api.Node -> Prelude.Maybe Quote
cast_Quote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  quoter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quoter" namedMap))
  quoter <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr quoter))
  Prelude.pure
    Quote
      { children,
        quoter,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Quote where
  getDynNode (Quote {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Quote where
  cast = cast_Quote

data QuotedDecls = QuotedDecls
  { declaration :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Declaration))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_QuotedDecls :: Api.Node -> Prelude.Maybe QuotedDecls
cast_QuotedDecls dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_decls")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr declaration))
  Prelude.pure
    QuotedDecls
      { declaration,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode QuotedDecls where
  getDynNode (QuotedDecls {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast QuotedDecls where
  cast = cast_QuotedDecls

data QuotedExpression = QuotedExpression
  { children :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_QuotedExpression :: Api.Node -> Prelude.Maybe QuotedExpression
cast_QuotedExpression dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_expression")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    QuotedExpression
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode QuotedExpression where
  getDynNode (QuotedExpression {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast QuotedExpression where
  cast = cast_QuotedExpression

data QuotedPattern = QuotedPattern
  { children :: ((AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_QuotedPattern :: Api.Node -> Prelude.Maybe QuotedPattern
cast_QuotedPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    QuotedPattern
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode QuotedPattern where
  getDynNode (QuotedPattern {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast QuotedPattern where
  cast = cast_QuotedPattern

data QuotedType = QuotedType
  { children :: ((AST.Err.Err ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_QuotedType :: Api.Node -> Prelude.Maybe QuotedType
cast_QuotedType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    QuotedType
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode QuotedType where
  getDynNode (QuotedType {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast QuotedType where
  cast = cast_QuotedType

data Quoter = Quoter
  { children :: ((AST.Err.Err ((Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Quoter :: Api.Node -> Prelude.Maybe Quoter
cast_Quoter dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoter")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Quoter
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Quoter where
  getDynNode (Quoter {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Quoter where
  cast = cast_Quoter

data Rec = Rec
  { statement :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Statement))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Rec :: Api.Node -> Prelude.Maybe Rec
cast_Rec dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "rec")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  statement <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "statement" namedMap))
  statement <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr statement))
  Prelude.pure
    Rec
      { statement,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Rec where
  getDynNode (Rec {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Rec where
  cast = cast_Rec

data Record = Record
  { arrow :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil)))),
    constructor :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Pattern))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Expression))),
    field :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Field Sum.:+ FieldPattern Sum.:+ FieldUpdate Sum.:+ Sum.Nil)))),
    fields :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Fields))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Constructor))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Record :: Api.Node -> Prelude.Maybe Record
cast_Record dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "record")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Record where
  getDynNode (Record {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Record where
  cast = cast_Record

data RightSection = RightSection
  { children :: ((AST.Err.Err ((ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    rightOperand :: ((AST.Err.Err (Expression))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_RightSection :: Api.Node -> Prelude.Maybe RightSection
cast_RightSection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "right_section")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  rightOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "right_operand" namedMap))
  rightOperand <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr rightOperand))
  Prelude.pure
    RightSection
      { children,
        rightOperand,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode RightSection where
  getDynNode (RightSection {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast RightSection where
  cast = cast_RightSection

data RoleAnnotation = RoleAnnotation
  { role :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (TypeRole))),
    type' :: ((AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_RoleAnnotation :: Api.Node -> Prelude.Maybe RoleAnnotation
cast_RoleAnnotation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "role_annotation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  role <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "role" namedMap))
  role <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr role))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    RoleAnnotation
      { role,
        type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode RoleAnnotation where
  getDynNode (RoleAnnotation {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast RoleAnnotation where
  cast = cast_RoleAnnotation

data Signature = Signature
  { constraint :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Constraints))),
    expression :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Expression))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((PrefixId Sum.:+ Variable Sum.:+ Sum.Nil)))),
    names :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (BindingList))),
    pattern' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Pattern))),
    synonym :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((BindingList Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Signature :: Api.Node -> Prelude.Maybe Signature
cast_Signature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
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
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Signature where
  getDynNode (Signature {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Signature where
  cast = cast_Signature

data Special = Special
  { children :: ((AST.Err.Err ((EmptyList Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Special :: Api.Node -> Prelude.Maybe Special
cast_Special dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "special")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    Special
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Special where
  getDynNode (Special {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Special where
  cast = cast_Special

data Splice = Splice
  { expression :: ((AST.Err.Err ((Constructor Sum.:+ ImplicitVariable Sum.:+ Label Sum.:+ Literal Sum.:+ Parens Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Splice :: Api.Node -> Prelude.Maybe Splice
cast_Splice dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "splice")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  Prelude.pure
    Splice
      { expression,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Splice where
  getDynNode (Splice {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Splice where
  cast = cast_Splice

data Star = Star {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Star where
  getDynNode (Star {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Star where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "star")
    Prelude.pure (Star {dynNode = AST.Node.WrappedDynNode dynNode})

data Strict = Strict
  { pattern' :: ((AST.Err.Err (Pattern))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Strict :: Api.Node -> Prelude.Maybe Strict
cast_Strict dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "strict")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    Strict
      { pattern',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Strict where
  getDynNode (Strict {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Strict where
  cast = cast_Strict

data StrictField = StrictField
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_StrictField :: Api.Node -> Prelude.Maybe StrictField
cast_StrictField dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "strict_field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    StrictField
      { type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode StrictField where
  getDynNode (StrictField {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast StrictField where
  cast = cast_StrictField

data ThQuotedName = ThQuotedName
  { name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))),
    type' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (Type))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ThQuotedName :: Api.Node -> Prelude.Maybe ThQuotedName
cast_ThQuotedName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "th_quoted_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    ThQuotedName
      { name,
        type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ThQuotedName where
  getDynNode (ThQuotedName {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ThQuotedName where
  cast = cast_ThQuotedName

data TopSplice = TopSplice
  { children :: ((AST.Err.Err (Expression))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TopSplice :: Api.Node -> Prelude.Maybe TopSplice
cast_TopSplice dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "top_splice")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    TopSplice
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TopSplice where
  getDynNode (TopSplice {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TopSplice where
  cast = cast_TopSplice

data Transform = Transform
  { key :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    transformation :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Transform :: Api.Node -> Prelude.Maybe Transform
cast_Transform dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "transform")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  key <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "key" namedMap))
  key <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr key))
  transformation <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "transformation" namedMap))
  transformation <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr transformation))
  Prelude.pure
    Transform
      { key,
        transformation,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Transform where
  getDynNode (Transform {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Transform where
  cast = cast_Transform

data Tuple = Tuple
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err (Constraints))),
    element :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Tuple :: Api.Node -> Prelude.Maybe Tuple
cast_Tuple dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "tuple")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr children))
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr element))
  Prelude.pure
    Tuple
      { children,
        element,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Tuple where
  getDynNode (Tuple {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Tuple where
  cast = cast_Tuple

data TypeApplication = TypeApplication
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypeApplication :: Api.Node -> Prelude.Maybe TypeApplication
cast_TypeApplication dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_application")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    TypeApplication
      { type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypeApplication where
  getDynNode (TypeApplication {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypeApplication where
  cast = cast_TypeApplication

data TypeBinder = TypeBinder
  { type' :: ((AST.Err.Err (Type))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypeBinder :: Api.Node -> Prelude.Maybe TypeBinder
cast_TypeBinder dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_binder")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    TypeBinder
      { type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypeBinder where
  getDynNode (TypeBinder {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypeBinder where
  cast = cast_TypeBinder

data TypeFamily = TypeFamily
  { children :: AST.Err.Err (AST.Runtime.List (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ TypeFamilyInjectivity Sum.:+ TypeFamilyResult Sum.:+ Sum.Nil)))),
    closedFamily :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((AbstractFamily Sum.:+ Equations Sum.:+ Sum.Nil)))),
    kind :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuantifiedType))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypeFamily :: Api.Node -> Prelude.Maybe TypeFamily
cast_TypeFamily dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToList (Prelude.fmap AST.Cast.castErr children))
  closedFamily <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "closed_family" namedMap))
  closedFamily <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr closedFamily))
  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr kind))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  Prelude.pure
    TypeFamily
      { children,
        closedFamily,
        kind,
        name,
        patterns,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypeFamily where
  getDynNode (TypeFamily {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypeFamily where
  cast = cast_TypeFamily

data TypeFamilyInjectivity = TypeFamilyInjectivity
  { determined :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (Variable))),
    result :: ((AST.Err.Err (Variable))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypeFamilyInjectivity :: Api.Node -> Prelude.Maybe TypeFamilyInjectivity
cast_TypeFamilyInjectivity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family_injectivity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  determined <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "determined" namedMap))
  determined <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr determined))
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr result))
  Prelude.pure
    TypeFamilyInjectivity
      { determined,
        result,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypeFamilyInjectivity where
  getDynNode (TypeFamilyInjectivity {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypeFamilyInjectivity where
  cast = cast_TypeFamilyInjectivity

data TypeFamilyResult = TypeFamilyResult
  { result :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypeFamilyResult :: Api.Node -> Prelude.Maybe TypeFamilyResult
cast_TypeFamilyResult dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family_result")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr result))
  Prelude.pure
    TypeFamilyResult
      { result,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypeFamilyResult where
  getDynNode (TypeFamilyResult {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypeFamilyResult where
  cast = cast_TypeFamilyResult

data TypeInstance = TypeInstance
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil)))),
    forall' :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypePatterns))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypeInstance :: Api.Node -> Prelude.Maybe TypeInstance
cast_TypeInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr children))
  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr forall'))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  Prelude.pure
    TypeInstance
      { children,
        forall',
        name,
        patterns,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypeInstance where
  getDynNode (TypeInstance {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypeInstance where
  cast = cast_TypeInstance

data TypeParams = TypeParams
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err (TypeParam))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypeParams :: Api.Node -> Prelude.Maybe TypeParams
cast_TypeParams dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_params")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    TypeParams
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypeParams where
  getDynNode (TypeParams {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypeParams where
  cast = cast_TypeParams

data TypePatterns = TypePatterns
  { children :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((KindApplication Sum.:+ Type Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypePatterns :: Api.Node -> Prelude.Maybe TypePatterns
cast_TypePatterns dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_patterns")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    TypePatterns
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypePatterns where
  getDynNode (TypePatterns {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypePatterns where
  cast = cast_TypePatterns

data TypeRole = TypeRole {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode TypeRole where
  getDynNode (TypeRole {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypeRole where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_role")
    Prelude.pure (TypeRole {dynNode = AST.Node.WrappedDynNode dynNode})

data TypeSynomym = TypeSynomym
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Infix Sum.:+ Parens Sum.:+ Sum.Nil)))),
    name :: AST.Err.Err (Prelude.Maybe (AST.Err.Err ((Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil)))),
    patterns :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (TypeParams))),
    type' :: ((AST.Err.Err ((QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypeSynomym :: Api.Node -> Prelude.Maybe TypeSynomym
cast_TypeSynomym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_synomym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr name))
  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr patterns))
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    TypeSynomym
      { children,
        name,
        patterns,
        type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypeSynomym where
  getDynNode (TypeSynomym {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypeSynomym where
  cast = cast_TypeSynomym

data TypedQuote = TypedQuote
  { children :: AST.Err.Err (Prelude.Maybe (AST.Err.Err (QuotedExpression))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_TypedQuote :: Api.Node -> Prelude.Maybe TypedQuote
cast_TypedQuote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "typed_quote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure (AST.Runtime.castManyToMaybe (Prelude.fmap AST.Cast.castErr children))
  Prelude.pure
    TypedQuote
      { children,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode TypedQuote where
  getDynNode (TypedQuote {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast TypedQuote where
  cast = cast_TypedQuote

data UnboxedSum = UnboxedSum
  { element :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_UnboxedSum :: Api.Node -> Prelude.Maybe UnboxedSum
cast_UnboxedSum dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_sum")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr element))
  Prelude.pure
    UnboxedSum
      { element,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode UnboxedSum where
  getDynNode (UnboxedSum {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast UnboxedSum where
  cast = cast_UnboxedSum

data UnboxedTuple = UnboxedTuple
  { element :: AST.Err.Err (Data.List.NonEmpty.NonEmpty (AST.Err.Err ((Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_UnboxedTuple :: Api.Node -> Prelude.Maybe UnboxedTuple
cast_UnboxedTuple dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_tuple")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure (AST.Runtime.castManyToNonEmpty (Prelude.fmap AST.Cast.castErr element))
  Prelude.pure
    UnboxedTuple
      { element,
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode UnboxedTuple where
  getDynNode (UnboxedTuple {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast UnboxedTuple where
  cast = cast_UnboxedTuple

data UnboxedUnit = UnboxedUnit {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode UnboxedUnit where
  getDynNode (UnboxedUnit {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast UnboxedUnit where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_unit")
    Prelude.pure (UnboxedUnit {dynNode = AST.Node.WrappedDynNode dynNode})

data Unit = Unit {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Unit where
  getDynNode (Unit {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Unit where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "unit")
    Prelude.pure (Unit {dynNode = AST.Node.WrappedDynNode dynNode})

data Via = Via
  { type' :: ((AST.Err.Err (QuantifiedType))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_Via :: Api.Node -> Prelude.Maybe Via
cast_Via dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "via")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr type'))
  Prelude.pure
    Via
      { type',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode Via where
  getDynNode (Via {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Via where
  cast = cast_Via

data ViewPattern = ViewPattern
  { expression :: ((AST.Err.Err ((Expression Sum.:+ Signature Sum.:+ Sum.Nil)))),
    pattern' :: ((AST.Err.Err ((Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))),
    dynNode :: AST.Node.WrappedDynNode
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

cast_ViewPattern :: Api.Node -> Prelude.Maybe ViewPattern
cast_ViewPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "view_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr expression))
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure (AST.Runtime.castManyToSingle (Prelude.fmap AST.Cast.castErr pattern'))
  Prelude.pure
    ViewPattern
      { expression,
        pattern',
        dynNode = AST.Node.WrappedDynNode dynNode
      }

instance AST.Node.HasDynNode ViewPattern where
  getDynNode (ViewPattern {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ViewPattern where
  cast = cast_ViewPattern

data Wildcard = Wildcard {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Wildcard where
  getDynNode (Wildcard {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Wildcard where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "wildcard")
    Prelude.pure (Wildcard {dynNode = AST.Node.WrappedDynNode dynNode})

data AllNames = AllNames {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode AllNames where
  getDynNode (AllNames {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast AllNames where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "all_names")
    Prelude.pure (AllNames {dynNode = AST.Node.WrappedDynNode dynNode})

data CallingConvention = CallingConvention {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode CallingConvention where
  getDynNode (CallingConvention {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast CallingConvention where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "calling_convention")
    Prelude.pure (CallingConvention {dynNode = AST.Node.WrappedDynNode dynNode})

data Char = Char {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Char where
  getDynNode (Char {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Char where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "char")
    Prelude.pure (Char {dynNode = AST.Node.WrappedDynNode dynNode})

data Comment = Comment {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Comment where
  getDynNode (Comment {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Comment where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "comment")
    Prelude.pure (Comment {dynNode = AST.Node.WrappedDynNode dynNode})

data Constructor = Constructor {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Constructor where
  getDynNode (Constructor {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Constructor where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor")
    Prelude.pure (Constructor {dynNode = AST.Node.WrappedDynNode dynNode})

data Cpp = Cpp {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Cpp where
  getDynNode (Cpp {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Cpp where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "cpp")
    Prelude.pure (Cpp {dynNode = AST.Node.WrappedDynNode dynNode})

data Float = Float {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Float where
  getDynNode (Float {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Float where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "float")
    Prelude.pure (Float {dynNode = AST.Node.WrappedDynNode dynNode})

data Haddock = Haddock {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Haddock where
  getDynNode (Haddock {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Haddock where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "haddock")
    Prelude.pure (Haddock {dynNode = AST.Node.WrappedDynNode dynNode})

data ImplicitVariable = ImplicitVariable {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode ImplicitVariable where
  getDynNode (ImplicitVariable {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ImplicitVariable where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "implicit_variable")
    Prelude.pure (ImplicitVariable {dynNode = AST.Node.WrappedDynNode dynNode})

data ImportPackage = ImportPackage {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode ImportPackage where
  getDynNode (ImportPackage {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ImportPackage where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_package")
    Prelude.pure (ImportPackage {dynNode = AST.Node.WrappedDynNode dynNode})

data Label = Label {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Label where
  getDynNode (Label {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Label where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "label")
    Prelude.pure (Label {dynNode = AST.Node.WrappedDynNode dynNode})

data ModuleId = ModuleId {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode ModuleId where
  getDynNode (ModuleId {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast ModuleId where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "module_id")
    Prelude.pure (ModuleId {dynNode = AST.Node.WrappedDynNode dynNode})

data Name = Name {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Name where
  getDynNode (Name {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Name where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "name")
    Prelude.pure (Name {dynNode = AST.Node.WrappedDynNode dynNode})

data Pragma = Pragma {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Pragma where
  getDynNode (Pragma {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Pragma where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "pragma")
    Prelude.pure (Pragma {dynNode = AST.Node.WrappedDynNode dynNode})

data QuasiquoteBody = QuasiquoteBody {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode QuasiquoteBody where
  getDynNode (QuasiquoteBody {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast QuasiquoteBody where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "quasiquote_body")
    Prelude.pure (QuasiquoteBody {dynNode = AST.Node.WrappedDynNode dynNode})

data Safety = Safety {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Safety where
  getDynNode (Safety {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Safety where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "safety")
    Prelude.pure (Safety {dynNode = AST.Node.WrappedDynNode dynNode})

data String = String {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode String where
  getDynNode (String {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast String where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "string")
    Prelude.pure (String {dynNode = AST.Node.WrappedDynNode dynNode})

data Variable = Variable {dynNode :: AST.Node.WrappedDynNode}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic)

instance AST.Node.HasDynNode Variable where
  getDynNode (Variable {dynNode}) = AST.Node.unDynNode dynNode

instance AST.Cast.Cast Variable where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "variable")
    Prelude.pure (Variable {dynNode = AST.Node.WrappedDynNode dynNode})
