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
import AST.Err qualified
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

data ClassDecl = ClassDecl {dynNode :: Api.Node, getClassDecl :: (DataFamily Sum.:+ Decl Sum.:+ DefaultSignature Sum.:+ Fixity Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ClassDecl where
  cast dynNode = do
    getClassDecl <- AST.Cast.cast dynNode
    Prelude.pure (ClassDecl {dynNode = dynNode, getClassDecl})

data Constraint = Constraint {dynNode :: Api.Node, getConstraint :: (Apply Sum.:+ Infix Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Tuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Constraint where
  cast dynNode = do
    getConstraint <- AST.Cast.cast dynNode
    Prelude.pure (Constraint {dynNode = dynNode, getConstraint})

data Constraints = Constraints {dynNode :: Api.Node, getConstraints :: (Constraint Sum.:+ Context Sum.:+ Forall Sum.:+ ImplicitParameter Sum.:+ Signature Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Constraints where
  cast dynNode = do
    getConstraints <- AST.Cast.cast dynNode
    Prelude.pure (Constraints {dynNode = dynNode, getConstraints})

data Decl = Decl {dynNode :: Api.Node, getDecl :: (Bind Sum.:+ Function Sum.:+ Signature Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Decl where
  cast dynNode = do
    getDecl <- AST.Cast.cast dynNode
    Prelude.pure (Decl {dynNode = dynNode, getDecl})

data Declaration = Declaration {dynNode :: Api.Node, getDeclaration :: (Class Sum.:+ DataFamily Sum.:+ DataInstance Sum.:+ DataType Sum.:+ Decl Sum.:+ DefaultTypes Sum.:+ DerivingInstance Sum.:+ Fixity Sum.:+ ForeignExport Sum.:+ ForeignImport Sum.:+ Instance Sum.:+ KindSignature Sum.:+ Newtype Sum.:+ PatternSynonym Sum.:+ RoleAnnotation Sum.:+ TopSplice Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ TypeSynomym Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Declaration where
  cast dynNode = do
    getDeclaration <- AST.Cast.cast dynNode
    Prelude.pure (Declaration {dynNode = dynNode, getDeclaration})

data Expression = Expression {dynNode :: Api.Node, getExpression :: (Apply Sum.:+ ArithmeticSequence Sum.:+ Case Sum.:+ Conditional Sum.:+ Constructor Sum.:+ Do Sum.:+ ImplicitVariable Sum.:+ Infix Sum.:+ Label Sum.:+ Lambda Sum.:+ LambdaCase Sum.:+ LambdaCases Sum.:+ LeftSection Sum.:+ LetIn Sum.:+ List Sum.:+ ListComprehension Sum.:+ Literal Sum.:+ MultiWayIf Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Projection Sum.:+ ProjectionSelector Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Quote Sum.:+ Record Sum.:+ RightSection Sum.:+ Splice Sum.:+ ThQuotedName Sum.:+ Tuple Sum.:+ TypedQuote Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Expression where
  cast dynNode = do
    getExpression <- AST.Cast.cast dynNode
    Prelude.pure (Expression {dynNode = dynNode, getExpression})

data Guard = Guard {dynNode :: Api.Node, getGuard :: (Boolean Sum.:+ Let Sum.:+ PatternGuard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Guard where
  cast dynNode = do
    getGuard <- AST.Cast.cast dynNode
    Prelude.pure (Guard {dynNode = dynNode, getGuard})

data InstanceDecl = InstanceDecl {dynNode :: Api.Node, getInstanceDecl :: (DataInstance Sum.:+ Decl Sum.:+ TypeInstance Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast InstanceDecl where
  cast dynNode = do
    getInstanceDecl <- AST.Cast.cast dynNode
    Prelude.pure (InstanceDecl {dynNode = dynNode, getInstanceDecl})

data Pattern = Pattern {dynNode :: Api.Node, getPattern :: (Apply Sum.:+ As Sum.:+ Constructor Sum.:+ Infix Sum.:+ Irrefutable Sum.:+ List Sum.:+ Literal Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Record Sum.:+ Splice Sum.:+ Strict Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Pattern where
  cast dynNode = do
    getPattern <- AST.Cast.cast dynNode
    Prelude.pure (Pattern {dynNode = dynNode, getPattern})

data Qualifier = Qualifier {dynNode :: Api.Node, getQualifier :: (Boolean Sum.:+ Generator Sum.:+ Group Sum.:+ Let Sum.:+ Transform Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Qualifier where
  cast dynNode = do
    getQualifier <- AST.Cast.cast dynNode
    Prelude.pure (Qualifier {dynNode = dynNode, getQualifier})

data QuantifiedType = QuantifiedType {dynNode :: Api.Node, getQuantifiedType :: (Context Sum.:+ Forall Sum.:+ ForallRequired Sum.:+ Function Sum.:+ ImplicitParameter Sum.:+ LinearFunction Sum.:+ Type Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast QuantifiedType where
  cast dynNode = do
    getQuantifiedType <- AST.Cast.cast dynNode
    Prelude.pure (QuantifiedType {dynNode = dynNode, getQuantifiedType})

data Statement = Statement {dynNode :: Api.Node, getStatement :: (Bind Sum.:+ Exp Sum.:+ Let Sum.:+ Rec Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Statement where
  cast dynNode = do
    getStatement <- AST.Cast.cast dynNode
    Prelude.pure (Statement {dynNode = dynNode, getStatement})

data Type = Type {dynNode :: Api.Node, getType :: (Apply Sum.:+ Infix Sum.:+ List Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Star Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Type where
  cast dynNode = do
    getType <- AST.Cast.cast dynNode
    Prelude.pure (Type {dynNode = dynNode, getType})

data TypeParam = TypeParam {dynNode :: Api.Node, getTypeParam :: (Invisible Sum.:+ Parens Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil)}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast TypeParam where
  cast dynNode = do
    getTypeParam <- AST.Cast.cast dynNode
    Prelude.pure (TypeParam {dynNode = dynNode, getTypeParam})

data AbstractFamily = AbstractFamily {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast AbstractFamily where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "abstract_family")
    Prelude.pure (AbstractFamily {dynNode = dynNode})

data Alternative = Alternative
  { binds :: (AST.Err.Err (Prelude.Maybe LocalBinds)),
    match :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Match)),
    pattern' :: (AST.Err.Err (Prelude.Maybe (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe Patterns)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Alternative :: Api.Node -> Prelude.Maybe Alternative
cast_Alternative dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "alternative")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure Prelude.$ do
    binds <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast binds)
    binds <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle binds)
    Prelude.pure binds

  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure Prelude.$ do
    match <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast match)
    match <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty match)
    Prelude.pure match

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle pattern')
    Prelude.pure pattern'

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  Prelude.pure
    Alternative
      { binds,
        match,
        pattern',
        patterns,
        dynNode = dynNode
      }

instance AST.Cast.Cast Alternative where
  cast = cast_Alternative

data Alternatives = Alternatives
  { alternative :: (AST.Err.Err ([Alternative])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Alternatives :: Api.Node -> Prelude.Maybe Alternatives
cast_Alternatives dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "alternatives")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alternative <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternative" namedMap))
  alternative <- Prelude.pure Prelude.$ do
    alternative <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast alternative)
    Prelude.pure alternative

  Prelude.pure
    Alternatives
      { alternative,
        dynNode = dynNode
      }

instance AST.Cast.Cast Alternatives where
  cast = cast_Alternatives

data Annotated = Annotated
  { children :: (AST.Err.Err TypeParam),
    kind :: (AST.Err.Err QuantifiedType),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Annotated :: Api.Node -> Prelude.Maybe Annotated
cast_Annotated dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "annotated")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure Prelude.$ do
    kind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast kind)
    kind <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle kind)
    Prelude.pure kind

  Prelude.pure
    Annotated
      { children,
        kind,
        dynNode = dynNode
      }

instance AST.Cast.Cast Annotated where
  cast = cast_Annotated

data Apply = Apply
  { argument :: (AST.Err.Err (ExplicitType Sum.:+ Expression Sum.:+ KindApplication Sum.:+ Pattern Sum.:+ Type Sum.:+ TypeApplication Sum.:+ TypeBinder Sum.:+ Sum.Nil)),
    constructor :: (AST.Err.Err (Prelude.Maybe (Constraint Sum.:+ Type Sum.:+ Sum.Nil))),
    function :: (AST.Err.Err (Prelude.Maybe (Expression Sum.:+ Pattern Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Apply :: Api.Node -> Prelude.Maybe Apply
cast_Apply dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "apply")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  argument <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "argument" namedMap))
  argument <- Prelude.pure Prelude.$ do
    argument <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast argument)
    argument <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle argument)
    Prelude.pure argument

  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure Prelude.$ do
    constructor <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constructor)
    constructor <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle constructor)
    Prelude.pure constructor

  function <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "function" namedMap))
  function <- Prelude.pure Prelude.$ do
    function <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast function)
    function <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle function)
    Prelude.pure function

  Prelude.pure
    Apply
      { argument,
        constructor,
        function,
        dynNode = dynNode
      }

instance AST.Cast.Cast Apply where
  cast = cast_Apply

data ArithmeticSequence = ArithmeticSequence
  { from :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    step :: (AST.Err.Err (Prelude.Maybe (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    to :: (AST.Err.Err (Prelude.Maybe (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ArithmeticSequence :: Api.Node -> Prelude.Maybe ArithmeticSequence
cast_ArithmeticSequence dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "arithmetic_sequence")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  from <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "from" namedMap))
  from <- Prelude.pure Prelude.$ do
    from <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast from)
    from <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle from)
    Prelude.pure from

  step <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "step" namedMap))
  step <- Prelude.pure Prelude.$ do
    step <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast step)
    step <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle step)
    Prelude.pure step

  to <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "to" namedMap))
  to <- Prelude.pure Prelude.$ do
    to <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast to)
    to <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle to)
    Prelude.pure to

  Prelude.pure
    ArithmeticSequence
      { from,
        step,
        to,
        dynNode = dynNode
      }

instance AST.Cast.Cast ArithmeticSequence where
  cast = cast_ArithmeticSequence

data As = As
  { bind :: (AST.Err.Err Variable),
    pattern' :: (AST.Err.Err Pattern),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_As :: Api.Node -> Prelude.Maybe As
cast_As dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "as")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  bind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "bind" namedMap))
  bind <- Prelude.pure Prelude.$ do
    bind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast bind)
    bind <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle bind)
    Prelude.pure bind

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle pattern')
    Prelude.pure pattern'

  Prelude.pure
    As
      { bind,
        pattern',
        dynNode = dynNode
      }

instance AST.Cast.Cast As where
  cast = cast_As

data AssociatedType = AssociatedType
  { namespace :: (AST.Err.Err (AST.Token.Token "type")),
    type' :: (AST.Err.Err (Name Sum.:+ Qualified Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_AssociatedType :: Api.Node -> Prelude.Maybe AssociatedType
cast_AssociatedType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "associated_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure Prelude.$ do
    namespace <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast namespace)
    namespace <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle namespace)
    Prelude.pure namespace

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    AssociatedType
      { namespace,
        type',
        dynNode = dynNode
      }

instance AST.Cast.Cast AssociatedType where
  cast = cast_AssociatedType

data Bind = Bind
  { arrow :: (AST.Err.Err (Prelude.Maybe ((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil))),
    binds :: (AST.Err.Err (Prelude.Maybe LocalBinds)),
    expression :: (AST.Err.Err (Prelude.Maybe (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    implicit :: (AST.Err.Err (Prelude.Maybe ImplicitVariable)),
    match :: (AST.Err.Err ([Match])),
    name :: (AST.Err.Err (Prelude.Maybe (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    pattern' :: (AST.Err.Err (Prelude.Maybe (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Bind :: Api.Node -> Prelude.Maybe Bind
cast_Bind dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "bind")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure Prelude.$ do
    arrow <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast arrow)
    arrow <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle arrow)
    Prelude.pure arrow

  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure Prelude.$ do
    binds <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast binds)
    binds <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle binds)
    Prelude.pure binds

  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle expression)
    Prelude.pure expression

  implicit <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "implicit" namedMap))
  implicit <- Prelude.pure Prelude.$ do
    implicit <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast implicit)
    implicit <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle implicit)
    Prelude.pure implicit

  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure Prelude.$ do
    match <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast match)
    Prelude.pure match

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle pattern')
    Prelude.pure pattern'

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

instance AST.Cast.Cast Bind where
  cast = cast_Bind

data BindingList = BindingList
  { name :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty (Constructor Sum.:+ PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_BindingList :: Api.Node -> Prelude.Maybe BindingList
cast_BindingList dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "binding_list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty name)
    Prelude.pure name

  Prelude.pure
    BindingList
      { name,
        dynNode = dynNode
      }

instance AST.Cast.Cast BindingList where
  cast = cast_BindingList

data Boolean = Boolean
  { children :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Boolean :: Api.Node -> Prelude.Maybe Boolean
cast_Boolean dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "boolean")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    Boolean
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Boolean where
  cast = cast_Boolean

data Case = Case
  { children :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    alternatives :: (AST.Err.Err (Prelude.Maybe Alternatives)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Case :: Api.Node -> Prelude.Maybe Case
cast_Case dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "case")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure Prelude.$ do
    alternatives <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast alternatives)
    alternatives <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle alternatives)
    Prelude.pure alternatives

  Prelude.pure
    Case
      { children,
        alternatives,
        dynNode = dynNode
      }

instance AST.Cast.Cast Case where
  cast = cast_Case

data Children = Children
  { element :: (AST.Err.Err ([(AllNames Sum.:+ AssociatedType Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Children :: Api.Node -> Prelude.Maybe Children
cast_Children dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "children")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure Prelude.$ do
    element <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast element)
    Prelude.pure element

  Prelude.pure
    Children
      { element,
        dynNode = dynNode
      }

instance AST.Cast.Cast Children where
  cast = cast_Children

data Class = Class
  { children :: (AST.Err.Err (Prelude.Maybe (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    context :: (AST.Err.Err (Prelude.Maybe Context)),
    declarations :: (AST.Err.Err (Prelude.Maybe ClassDeclarations)),
    fundeps :: (AST.Err.Err (Prelude.Maybe Fundeps)),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe TypeParams)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Class :: Api.Node -> Prelude.Maybe Class
cast_Class dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "class")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure Prelude.$ do
    context <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast context)
    context <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle context)
    Prelude.pure context

  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure Prelude.$ do
    declarations <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast declarations)
    declarations <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle declarations)
    Prelude.pure declarations

  fundeps <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fundeps" namedMap))
  fundeps <- Prelude.pure Prelude.$ do
    fundeps <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast fundeps)
    fundeps <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle fundeps)
    Prelude.pure fundeps

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

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

instance AST.Cast.Cast Class where
  cast = cast_Class

data ClassDeclarations = ClassDeclarations
  { declaration :: (AST.Err.Err ([ClassDecl])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ClassDeclarations :: Api.Node -> Prelude.Maybe ClassDeclarations
cast_ClassDeclarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "class_declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure Prelude.$ do
    declaration <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast declaration)
    Prelude.pure declaration

  Prelude.pure
    ClassDeclarations
      { declaration,
        dynNode = dynNode
      }

instance AST.Cast.Cast ClassDeclarations where
  cast = cast_ClassDeclarations

data Conditional = Conditional
  { else' :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    if' :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    then' :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Conditional :: Api.Node -> Prelude.Maybe Conditional
cast_Conditional dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "conditional")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  else' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "else" namedMap))
  else' <- Prelude.pure Prelude.$ do
    else' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast else')
    else' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle else')
    Prelude.pure else'

  if' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "if" namedMap))
  if' <- Prelude.pure Prelude.$ do
    if' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast if')
    if' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle if')
    Prelude.pure if'

  then' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "then" namedMap))
  then' <- Prelude.pure Prelude.$ do
    then' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast then')
    then' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle then')
    Prelude.pure then'

  Prelude.pure
    Conditional
      { else',
        if',
        then',
        dynNode = dynNode
      }

instance AST.Cast.Cast Conditional where
  cast = cast_Conditional

data ConstructorOperator = ConstructorOperator {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ConstructorOperator where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_operator")
    Prelude.pure (ConstructorOperator {dynNode = dynNode})

data ConstructorSynonym = ConstructorSynonym
  { binds :: (AST.Err.Err (Prelude.Maybe LocalBinds)),
    implicit :: (AST.Err.Err (Prelude.Maybe ImplicitVariable)),
    match :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Match)),
    name :: (AST.Err.Err (Prelude.Maybe (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    pattern' :: (AST.Err.Err (Prelude.Maybe (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ConstructorSynonym :: Api.Node -> Prelude.Maybe ConstructorSynonym
cast_ConstructorSynonym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_synonym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure Prelude.$ do
    binds <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast binds)
    binds <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle binds)
    Prelude.pure binds

  implicit <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "implicit" namedMap))
  implicit <- Prelude.pure Prelude.$ do
    implicit <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast implicit)
    implicit <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle implicit)
    Prelude.pure implicit

  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure Prelude.$ do
    match <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast match)
    match <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty match)
    Prelude.pure match

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle pattern')
    Prelude.pure pattern'

  Prelude.pure
    ConstructorSynonym
      { binds,
        implicit,
        match,
        name,
        pattern',
        dynNode = dynNode
      }

instance AST.Cast.Cast ConstructorSynonym where
  cast = cast_ConstructorSynonym

data ConstructorSynonyms = ConstructorSynonyms
  { children :: (AST.Err.Err ([ConstructorSynonym])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ConstructorSynonyms :: Api.Node -> Prelude.Maybe ConstructorSynonyms
cast_ConstructorSynonyms dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor_synonyms")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    Prelude.pure children

  Prelude.pure
    ConstructorSynonyms
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast ConstructorSynonyms where
  cast = cast_ConstructorSynonyms

data Context = Context
  { arrow :: (AST.Err.Err ((AST.Token.Token "=>") Sum.:+ (AST.Token.Token "⇒") Sum.:+ Sum.Nil)),
    constraint :: (AST.Err.Err (Prelude.Maybe Constraints)),
    context :: (AST.Err.Err Constraint),
    type' :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Context :: Api.Node -> Prelude.Maybe Context
cast_Context dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "context")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure Prelude.$ do
    arrow <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast arrow)
    arrow <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle arrow)
    Prelude.pure arrow

  constraint <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constraint" namedMap))
  constraint <- Prelude.pure Prelude.$ do
    constraint <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constraint)
    constraint <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle constraint)
    Prelude.pure constraint

  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure Prelude.$ do
    context <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast context)
    context <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle context)
    Prelude.pure context

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

  Prelude.pure
    Context
      { arrow,
        constraint,
        context,
        type',
        dynNode = dynNode
      }

instance AST.Cast.Cast Context where
  cast = cast_Context

data DataConstructor = DataConstructor
  { constructor :: (AST.Err.Err (Infix Sum.:+ Prefix Sum.:+ Record Sum.:+ Special Sum.:+ Sum.Nil)),
    context :: (AST.Err.Err (Prelude.Maybe Context)),
    forall' :: (AST.Err.Err (Prelude.Maybe (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataConstructor :: Api.Node -> Prelude.Maybe DataConstructor
cast_DataConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure Prelude.$ do
    constructor <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constructor)
    constructor <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle constructor)
    Prelude.pure constructor

  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure Prelude.$ do
    context <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast context)
    context <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle context)
    Prelude.pure context

  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure Prelude.$ do
    forall' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast forall')
    forall' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle forall')
    Prelude.pure forall'

  Prelude.pure
    DataConstructor
      { constructor,
        context,
        forall',
        dynNode = dynNode
      }

instance AST.Cast.Cast DataConstructor where
  cast = cast_DataConstructor

data DataConstructors = DataConstructors
  { constructor :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty DataConstructor)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataConstructors :: Api.Node -> Prelude.Maybe DataConstructors
cast_DataConstructors dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_constructors")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure Prelude.$ do
    constructor <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constructor)
    constructor <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty constructor)
    Prelude.pure constructor

  Prelude.pure
    DataConstructors
      { constructor,
        dynNode = dynNode
      }

instance AST.Cast.Cast DataConstructors where
  cast = cast_DataConstructors

data DataFamily = DataFamily
  { children :: (AST.Err.Err (Prelude.Maybe (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    kind :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe TypeParams)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataFamily :: Api.Node -> Prelude.Maybe DataFamily
cast_DataFamily dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_family")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure Prelude.$ do
    kind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast kind)
    kind <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle kind)
    Prelude.pure kind

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  Prelude.pure
    DataFamily
      { children,
        kind,
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Cast.Cast DataFamily where
  cast = cast_DataFamily

data DataInstance = DataInstance
  { children :: (AST.Err.Err (DataType Sum.:+ Newtype Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataInstance :: Api.Node -> Prelude.Maybe DataInstance
cast_DataInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    DataInstance
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast DataInstance where
  cast = cast_DataInstance

data DataType = DataType
  { children :: (AST.Err.Err (Prelude.Maybe (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    constructors :: (AST.Err.Err (Prelude.Maybe (DataConstructors Sum.:+ GadtConstructors Sum.:+ Sum.Nil))),
    context :: (AST.Err.Err (Prelude.Maybe Context)),
    deriving' :: (AST.Err.Err ([Deriving])),
    forall' :: (AST.Err.Err (Prelude.Maybe (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    kind :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe (TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataType :: Api.Node -> Prelude.Maybe DataType
cast_DataType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "data_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  constructors <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructors" namedMap))
  constructors <- Prelude.pure Prelude.$ do
    constructors <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constructors)
    constructors <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle constructors)
    Prelude.pure constructors

  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure Prelude.$ do
    context <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast context)
    context <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle context)
    Prelude.pure context

  deriving' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "deriving" namedMap))
  deriving' <- Prelude.pure Prelude.$ do
    deriving' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast deriving')
    Prelude.pure deriving'

  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure Prelude.$ do
    forall' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast forall')
    forall' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle forall')
    Prelude.pure forall'

  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure Prelude.$ do
    kind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast kind)
    kind <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle kind)
    Prelude.pure kind

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

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

instance AST.Cast.Cast DataType where
  cast = cast_DataType

data Declarations = Declarations
  { children :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty (Declaration Sum.:+ Import Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Declarations :: Api.Node -> Prelude.Maybe Declarations
cast_Declarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty children)
    Prelude.pure children

  Prelude.pure
    Declarations
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Declarations where
  cast = cast_Declarations

data DefaultSignature = DefaultSignature
  { signature :: (AST.Err.Err Signature),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DefaultSignature :: Api.Node -> Prelude.Maybe DefaultSignature
cast_DefaultSignature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "default_signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure Prelude.$ do
    signature <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast signature)
    signature <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle signature)
    Prelude.pure signature

  Prelude.pure
    DefaultSignature
      { signature,
        dynNode = dynNode
      }

instance AST.Cast.Cast DefaultSignature where
  cast = cast_DefaultSignature

data DefaultTypes = DefaultTypes
  { type' :: (AST.Err.Err ([(QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DefaultTypes :: Api.Node -> Prelude.Maybe DefaultTypes
cast_DefaultTypes dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "default_types")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    Prelude.pure type'

  Prelude.pure
    DefaultTypes
      { type',
        dynNode = dynNode
      }

instance AST.Cast.Cast DefaultTypes where
  cast = cast_DefaultTypes

data Deriving = Deriving
  { classes :: (AST.Err.Err Constraint),
    strategy :: (AST.Err.Err (Prelude.Maybe DerivingStrategy)),
    via :: (AST.Err.Err (Prelude.Maybe Via)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Deriving :: Api.Node -> Prelude.Maybe Deriving
cast_Deriving dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  classes <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "classes" namedMap))
  classes <- Prelude.pure Prelude.$ do
    classes <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast classes)
    classes <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle classes)
    Prelude.pure classes

  strategy <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "strategy" namedMap))
  strategy <- Prelude.pure Prelude.$ do
    strategy <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast strategy)
    strategy <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle strategy)
    Prelude.pure strategy

  via <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "via" namedMap))
  via <- Prelude.pure Prelude.$ do
    via <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast via)
    via <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle via)
    Prelude.pure via

  Prelude.pure
    Deriving
      { classes,
        strategy,
        via,
        dynNode = dynNode
      }

instance AST.Cast.Cast Deriving where
  cast = cast_Deriving

data DerivingInstance = DerivingInstance
  { children :: (AST.Err.Err (Prelude.Maybe (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    context :: (AST.Err.Err (Prelude.Maybe Context)),
    forall' :: (AST.Err.Err (Prelude.Maybe (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe TypePatterns)),
    strategy :: (AST.Err.Err (Prelude.Maybe DerivingStrategy)),
    via :: (AST.Err.Err (Prelude.Maybe Via)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DerivingInstance :: Api.Node -> Prelude.Maybe DerivingInstance
cast_DerivingInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure Prelude.$ do
    context <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast context)
    context <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle context)
    Prelude.pure context

  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure Prelude.$ do
    forall' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast forall')
    forall' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle forall')
    Prelude.pure forall'

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  strategy <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "strategy" namedMap))
  strategy <- Prelude.pure Prelude.$ do
    strategy <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast strategy)
    strategy <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle strategy)
    Prelude.pure strategy

  via <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "via" namedMap))
  via <- Prelude.pure Prelude.$ do
    via <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast via)
    via <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle via)
    Prelude.pure via

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

instance AST.Cast.Cast DerivingInstance where
  cast = cast_DerivingInstance

data DerivingStrategy = DerivingStrategy {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast DerivingStrategy where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "deriving_strategy")
    Prelude.pure (DerivingStrategy {dynNode = dynNode})

data Do = Do
  { children :: (AST.Err.Err (Prelude.Maybe DoModule)),
    statement :: (AST.Err.Err ([Statement])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Do :: Api.Node -> Prelude.Maybe Do
cast_Do dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "do")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  statement <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "statement" namedMap))
  statement <- Prelude.pure Prelude.$ do
    statement <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast statement)
    Prelude.pure statement

  Prelude.pure
    Do
      { children,
        statement,
        dynNode = dynNode
      }

instance AST.Cast.Cast Do where
  cast = cast_Do

data DoModule = DoModule
  { id :: (AST.Err.Err ((AST.Token.Token "do") Sum.:+ (AST.Token.Token "mdo") Sum.:+ Sum.Nil)),
    module' :: (AST.Err.Err Module),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DoModule :: Api.Node -> Prelude.Maybe DoModule
cast_DoModule dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "do_module")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  id <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "id" namedMap))
  id <- Prelude.pure Prelude.$ do
    id <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast id)
    id <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle id)
    Prelude.pure id

  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure Prelude.$ do
    module' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast module')
    module' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle module')
    Prelude.pure module'

  Prelude.pure
    DoModule
      { id,
        module',
        dynNode = dynNode
      }

instance AST.Cast.Cast DoModule where
  cast = cast_DoModule

data EmptyList = EmptyList {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast EmptyList where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "empty_list")
    Prelude.pure (EmptyList {dynNode = dynNode})

data Entity = Entity
  { children :: (AST.Err.Err String),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Entity :: Api.Node -> Prelude.Maybe Entity
cast_Entity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "entity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    Entity
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Entity where
  cast = cast_Entity

data Equation = Equation
  { children :: (AST.Err.Err ([(Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil)])),
    constructors :: (AST.Err.Err (Prelude.Maybe ConstructorSynonyms)),
    forall' :: (AST.Err.Err (Prelude.Maybe (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    pattern' :: (AST.Err.Err (Prelude.Maybe (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe TypePatterns)),
    synonym :: (AST.Err.Err (Prelude.Maybe Pattern)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Equation :: Api.Node -> Prelude.Maybe Equation
cast_Equation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "equation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    Prelude.pure children

  constructors <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructors" namedMap))
  constructors <- Prelude.pure Prelude.$ do
    constructors <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constructors)
    constructors <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle constructors)
    Prelude.pure constructors

  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure Prelude.$ do
    forall' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast forall')
    forall' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle forall')
    Prelude.pure forall'

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle pattern')
    Prelude.pure pattern'

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  synonym <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "synonym" namedMap))
  synonym <- Prelude.pure Prelude.$ do
    synonym <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast synonym)
    synonym <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle synonym)
    Prelude.pure synonym

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

instance AST.Cast.Cast Equation where
  cast = cast_Equation

data Equations = Equations
  { equation :: (AST.Err.Err ([Equation])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Equations :: Api.Node -> Prelude.Maybe Equations
cast_Equations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "equations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  equation <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "equation" namedMap))
  equation <- Prelude.pure Prelude.$ do
    equation <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast equation)
    Prelude.pure equation

  Prelude.pure
    Equations
      { equation,
        dynNode = dynNode
      }

instance AST.Cast.Cast Equations where
  cast = cast_Equations

data Exp = Exp
  { children :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Exp :: Api.Node -> Prelude.Maybe Exp
cast_Exp dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "exp")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    Exp
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Exp where
  cast = cast_Exp

data ExplicitType = ExplicitType
  { type' :: (AST.Err.Err Type),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ExplicitType :: Api.Node -> Prelude.Maybe ExplicitType
cast_ExplicitType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "explicit_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    ExplicitType
      { type',
        dynNode = dynNode
      }

instance AST.Cast.Cast ExplicitType where
  cast = cast_ExplicitType

data Export = Export
  { childrenSQuote :: (AST.Err.Err (Prelude.Maybe Children)),
    namespace :: (AST.Err.Err (Prelude.Maybe Namespace)),
    operator :: (AST.Err.Err (Prelude.Maybe PrefixId)),
    type' :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ Qualified Sum.:+ Sum.Nil))),
    variable :: (AST.Err.Err (Prelude.Maybe (Qualified Sum.:+ Variable Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Export :: Api.Node -> Prelude.Maybe Export
cast_Export dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  childrenSQuote <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children'" namedMap))
  childrenSQuote <- Prelude.pure Prelude.$ do
    childrenSQuote <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast childrenSQuote)
    childrenSQuote <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle childrenSQuote)
    Prelude.pure childrenSQuote

  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure Prelude.$ do
    namespace <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast namespace)
    namespace <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle namespace)
    Prelude.pure namespace

  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure Prelude.$ do
    operator <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast operator)
    operator <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle operator)
    Prelude.pure operator

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

  variable <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variable" namedMap))
  variable <- Prelude.pure Prelude.$ do
    variable <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast variable)
    variable <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle variable)
    Prelude.pure variable

  Prelude.pure
    Export
      { childrenSQuote,
        namespace,
        operator,
        type',
        variable,
        dynNode = dynNode
      }

instance AST.Cast.Cast Export where
  cast = cast_Export

data Exports = Exports
  { children :: (AST.Err.Err ([ModuleExport])),
    export :: (AST.Err.Err ([Export])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Exports :: Api.Node -> Prelude.Maybe Exports
cast_Exports dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "exports")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    Prelude.pure children

  export <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "export" namedMap))
  export <- Prelude.pure Prelude.$ do
    export <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast export)
    Prelude.pure export

  Prelude.pure
    Exports
      { children,
        export,
        dynNode = dynNode
      }

instance AST.Cast.Cast Exports where
  cast = cast_Exports

data Field = Field
  { children :: (AST.Err.Err (Prelude.Maybe Type)),
    name :: (AST.Err.Err ([FieldName])),
    parameter :: (AST.Err.Err (Prelude.Maybe (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil))),
    type' :: (AST.Err.Err (Prelude.Maybe (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Field :: Api.Node -> Prelude.Maybe Field
cast_Field dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    Prelude.pure name

  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure Prelude.$ do
    parameter <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast parameter)
    parameter <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle parameter)
    Prelude.pure parameter

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

  Prelude.pure
    Field
      { children,
        name,
        parameter,
        type',
        dynNode = dynNode
      }

instance AST.Cast.Cast Field where
  cast = cast_Field

data FieldName = FieldName
  { children :: (AST.Err.Err Variable),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldName :: Api.Node -> Prelude.Maybe FieldName
cast_FieldName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    FieldName
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast FieldName where
  cast = cast_FieldName

data FieldPath = FieldPath
  { field :: (AST.Err.Err (FieldName Sum.:+ Qualified Sum.:+ Sum.Nil)),
    subfield :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty FieldName)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldPath :: Api.Node -> Prelude.Maybe FieldPath
cast_FieldPath dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_path")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure Prelude.$ do
    field <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast field)
    field <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle field)
    Prelude.pure field

  subfield <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "subfield" namedMap))
  subfield <- Prelude.pure Prelude.$ do
    subfield <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast subfield)
    subfield <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty subfield)
    Prelude.pure subfield

  Prelude.pure
    FieldPath
      { field,
        subfield,
        dynNode = dynNode
      }

instance AST.Cast.Cast FieldPath where
  cast = cast_FieldPath

data FieldPattern = FieldPattern
  { children :: (AST.Err.Err (Prelude.Maybe Wildcard)),
    field :: (AST.Err.Err (Prelude.Maybe (FieldName Sum.:+ Qualified Sum.:+ Sum.Nil))),
    pattern' :: (AST.Err.Err (Prelude.Maybe (Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldPattern :: Api.Node -> Prelude.Maybe FieldPattern
cast_FieldPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure Prelude.$ do
    field <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast field)
    field <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle field)
    Prelude.pure field

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle pattern')
    Prelude.pure pattern'

  Prelude.pure
    FieldPattern
      { children,
        field,
        pattern',
        dynNode = dynNode
      }

instance AST.Cast.Cast FieldPattern where
  cast = cast_FieldPattern

data FieldUpdate = FieldUpdate
  { children :: (AST.Err.Err (Prelude.Maybe Wildcard)),
    expression :: (AST.Err.Err (Prelude.Maybe (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    field :: (AST.Err.Err (Prelude.Maybe (FieldName Sum.:+ FieldPath Sum.:+ Qualified Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldUpdate :: Api.Node -> Prelude.Maybe FieldUpdate
cast_FieldUpdate dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "field_update")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle expression)
    Prelude.pure expression

  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure Prelude.$ do
    field <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast field)
    field <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle field)
    Prelude.pure field

  Prelude.pure
    FieldUpdate
      { children,
        expression,
        field,
        dynNode = dynNode
      }

instance AST.Cast.Cast FieldUpdate where
  cast = cast_FieldUpdate

data Fields = Fields
  { field :: (AST.Err.Err ([Field])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fields :: Api.Node -> Prelude.Maybe Fields
cast_Fields dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fields")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure Prelude.$ do
    field <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast field)
    Prelude.pure field

  Prelude.pure
    Fields
      { field,
        dynNode = dynNode
      }

instance AST.Cast.Cast Fields where
  cast = cast_Fields

data Fixity = Fixity
  { associativity :: (AST.Err.Err ((AST.Token.Token "infix") Sum.:+ (AST.Token.Token "infixl") Sum.:+ (AST.Token.Token "infixr") Sum.:+ Sum.Nil)),
    operator :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty ((AST.Token.Token ",") Sum.:+ ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Sum.Nil))),
    precedence :: (AST.Err.Err (Prelude.Maybe Integer)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fixity :: Api.Node -> Prelude.Maybe Fixity
cast_Fixity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fixity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  associativity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "associativity" namedMap))
  associativity <- Prelude.pure Prelude.$ do
    associativity <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast associativity)
    associativity <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle associativity)
    Prelude.pure associativity

  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure Prelude.$ do
    operator <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast operator)
    operator <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty operator)
    Prelude.pure operator

  precedence <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "precedence" namedMap))
  precedence <- Prelude.pure Prelude.$ do
    precedence <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast precedence)
    precedence <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle precedence)
    Prelude.pure precedence

  Prelude.pure
    Fixity
      { associativity,
        operator,
        precedence,
        dynNode = dynNode
      }

instance AST.Cast.Cast Fixity where
  cast = cast_Fixity

data Forall = Forall
  { constraint :: (AST.Err.Err (Prelude.Maybe Constraints)),
    quantifier :: (AST.Err.Err ((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)),
    type' :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    variables :: (AST.Err.Err (Prelude.Maybe QuantifiedVariables)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Forall :: Api.Node -> Prelude.Maybe Forall
cast_Forall dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "forall")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constraint <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constraint" namedMap))
  constraint <- Prelude.pure Prelude.$ do
    constraint <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constraint)
    constraint <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle constraint)
    Prelude.pure constraint

  quantifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quantifier" namedMap))
  quantifier <- Prelude.pure Prelude.$ do
    quantifier <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast quantifier)
    quantifier <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle quantifier)
    Prelude.pure quantifier

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

  variables <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variables" namedMap))
  variables <- Prelude.pure Prelude.$ do
    variables <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast variables)
    variables <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle variables)
    Prelude.pure variables

  Prelude.pure
    Forall
      { constraint,
        quantifier,
        type',
        variables,
        dynNode = dynNode
      }

instance AST.Cast.Cast Forall where
  cast = cast_Forall

data ForallRequired = ForallRequired
  { quantifier :: (AST.Err.Err ((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)),
    type' :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    variables :: (AST.Err.Err (Prelude.Maybe QuantifiedVariables)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ForallRequired :: Api.Node -> Prelude.Maybe ForallRequired
cast_ForallRequired dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "forall_required")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  quantifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quantifier" namedMap))
  quantifier <- Prelude.pure Prelude.$ do
    quantifier <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast quantifier)
    quantifier <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle quantifier)
    Prelude.pure quantifier

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

  variables <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variables" namedMap))
  variables <- Prelude.pure Prelude.$ do
    variables <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast variables)
    variables <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle variables)
    Prelude.pure variables

  Prelude.pure
    ForallRequired
      { quantifier,
        type',
        variables,
        dynNode = dynNode
      }

instance AST.Cast.Cast ForallRequired where
  cast = cast_ForallRequired

data ForeignExport = ForeignExport
  { callingConvention :: (AST.Err.Err CallingConvention),
    entity :: (AST.Err.Err (Prelude.Maybe Entity)),
    signature :: (AST.Err.Err Signature),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ForeignExport :: Api.Node -> Prelude.Maybe ForeignExport
cast_ForeignExport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "foreign_export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  callingConvention <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "calling_convention" namedMap))
  callingConvention <- Prelude.pure Prelude.$ do
    callingConvention <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast callingConvention)
    callingConvention <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle callingConvention)
    Prelude.pure callingConvention

  entity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "entity" namedMap))
  entity <- Prelude.pure Prelude.$ do
    entity <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast entity)
    entity <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle entity)
    Prelude.pure entity

  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure Prelude.$ do
    signature <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast signature)
    signature <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle signature)
    Prelude.pure signature

  Prelude.pure
    ForeignExport
      { callingConvention,
        entity,
        signature,
        dynNode = dynNode
      }

instance AST.Cast.Cast ForeignExport where
  cast = cast_ForeignExport

data ForeignImport = ForeignImport
  { callingConvention :: (AST.Err.Err CallingConvention),
    entity :: (AST.Err.Err (Prelude.Maybe Entity)),
    safety :: (AST.Err.Err (Prelude.Maybe Safety)),
    signature :: (AST.Err.Err Signature),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ForeignImport :: Api.Node -> Prelude.Maybe ForeignImport
cast_ForeignImport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "foreign_import")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  callingConvention <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "calling_convention" namedMap))
  callingConvention <- Prelude.pure Prelude.$ do
    callingConvention <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast callingConvention)
    callingConvention <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle callingConvention)
    Prelude.pure callingConvention

  entity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "entity" namedMap))
  entity <- Prelude.pure Prelude.$ do
    entity <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast entity)
    entity <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle entity)
    Prelude.pure entity

  safety <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "safety" namedMap))
  safety <- Prelude.pure Prelude.$ do
    safety <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast safety)
    safety <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle safety)
    Prelude.pure safety

  signature <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "signature" namedMap))
  signature <- Prelude.pure Prelude.$ do
    signature <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast signature)
    signature <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle signature)
    Prelude.pure signature

  Prelude.pure
    ForeignImport
      { callingConvention,
        entity,
        safety,
        signature,
        dynNode = dynNode
      }

instance AST.Cast.Cast ForeignImport where
  cast = cast_ForeignImport

data Function = Function
  { children :: (AST.Err.Err (Prelude.Maybe Infix)),
    arrow :: (AST.Err.Err (Prelude.Maybe ((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil))),
    binds :: (AST.Err.Err (Prelude.Maybe LocalBinds)),
    match :: (AST.Err.Err ([Match])),
    name :: (AST.Err.Err (Prelude.Maybe (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    parameter :: (AST.Err.Err (Prelude.Maybe (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil))),
    parens :: (AST.Err.Err (Prelude.Maybe FunctionHeadParens)),
    patterns :: (AST.Err.Err (Prelude.Maybe Patterns)),
    result :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Function :: Api.Node -> Prelude.Maybe Function
cast_Function dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "function")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure Prelude.$ do
    arrow <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast arrow)
    arrow <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle arrow)
    Prelude.pure arrow

  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure Prelude.$ do
    binds <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast binds)
    binds <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle binds)
    Prelude.pure binds

  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure Prelude.$ do
    match <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast match)
    Prelude.pure match

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure Prelude.$ do
    parameter <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast parameter)
    parameter <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle parameter)
    Prelude.pure parameter

  parens <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parens" namedMap))
  parens <- Prelude.pure Prelude.$ do
    parens <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast parens)
    parens <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle parens)
    Prelude.pure parens

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure Prelude.$ do
    result <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast result)
    result <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle result)
    Prelude.pure result

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

instance AST.Cast.Cast Function where
  cast = cast_Function

data FunctionHeadParens = FunctionHeadParens
  { children :: (AST.Err.Err (Prelude.Maybe Infix)),
    name :: (AST.Err.Err (Prelude.Maybe (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    parens :: (AST.Err.Err (Prelude.Maybe FunctionHeadParens)),
    patterns :: (AST.Err.Err (Prelude.Maybe Patterns)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FunctionHeadParens :: Api.Node -> Prelude.Maybe FunctionHeadParens
cast_FunctionHeadParens dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "function_head_parens")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  parens <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parens" namedMap))
  parens <- Prelude.pure Prelude.$ do
    parens <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast parens)
    parens <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle parens)
    Prelude.pure parens

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  Prelude.pure
    FunctionHeadParens
      { children,
        name,
        parens,
        patterns,
        dynNode = dynNode
      }

instance AST.Cast.Cast FunctionHeadParens where
  cast = cast_FunctionHeadParens

data Fundep = Fundep
  { determined :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Variable)),
    matched :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Variable)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fundep :: Api.Node -> Prelude.Maybe Fundep
cast_Fundep dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fundep")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  determined <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "determined" namedMap))
  determined <- Prelude.pure Prelude.$ do
    determined <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast determined)
    determined <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty determined)
    Prelude.pure determined

  matched <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "matched" namedMap))
  matched <- Prelude.pure Prelude.$ do
    matched <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast matched)
    matched <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty matched)
    Prelude.pure matched

  Prelude.pure
    Fundep
      { determined,
        matched,
        dynNode = dynNode
      }

instance AST.Cast.Cast Fundep where
  cast = cast_Fundep

data Fundeps = Fundeps
  { fundep :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Fundep)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fundeps :: Api.Node -> Prelude.Maybe Fundeps
cast_Fundeps dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "fundeps")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  fundep <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fundep" namedMap))
  fundep <- Prelude.pure Prelude.$ do
    fundep <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast fundep)
    fundep <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty fundep)
    Prelude.pure fundep

  Prelude.pure
    Fundeps
      { fundep,
        dynNode = dynNode
      }

instance AST.Cast.Cast Fundeps where
  cast = cast_Fundeps

data GadtConstructor = GadtConstructor
  { context :: (AST.Err.Err (Prelude.Maybe Context)),
    forall' :: (AST.Err.Err (Prelude.Maybe (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (AST.Err.Err (Prelude.Maybe (Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))),
    names :: (AST.Err.Err (Prelude.Maybe BindingList)),
    type' :: (AST.Err.Err (Prefix Sum.:+ Record Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_GadtConstructor :: Api.Node -> Prelude.Maybe GadtConstructor
cast_GadtConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "gadt_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure Prelude.$ do
    context <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast context)
    context <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle context)
    Prelude.pure context

  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure Prelude.$ do
    forall' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast forall')
    forall' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle forall')
    Prelude.pure forall'

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  names <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "names" namedMap))
  names <- Prelude.pure Prelude.$ do
    names <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast names)
    names <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle names)
    Prelude.pure names

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    GadtConstructor
      { context,
        forall',
        name,
        names,
        type',
        dynNode = dynNode
      }

instance AST.Cast.Cast GadtConstructor where
  cast = cast_GadtConstructor

data GadtConstructors = GadtConstructors
  { constructor :: (AST.Err.Err ([GadtConstructor])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_GadtConstructors :: Api.Node -> Prelude.Maybe GadtConstructors
cast_GadtConstructors dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "gadt_constructors")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure Prelude.$ do
    constructor <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constructor)
    Prelude.pure constructor

  Prelude.pure
    GadtConstructors
      { constructor,
        dynNode = dynNode
      }

instance AST.Cast.Cast GadtConstructors where
  cast = cast_GadtConstructors

data Generator = Generator
  { arrow :: (AST.Err.Err ((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)),
    expression :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    pattern' :: (AST.Err.Err (Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Generator :: Api.Node -> Prelude.Maybe Generator
cast_Generator dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "generator")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure Prelude.$ do
    arrow <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast arrow)
    arrow <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle arrow)
    Prelude.pure arrow

  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle expression)
    Prelude.pure expression

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle pattern')
    Prelude.pure pattern'

  Prelude.pure
    Generator
      { arrow,
        expression,
        pattern',
        dynNode = dynNode
      }

instance AST.Cast.Cast Generator where
  cast = cast_Generator

data Group = Group
  { classifier :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    key :: (AST.Err.Err (Prelude.Maybe (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Group :: Api.Node -> Prelude.Maybe Group
cast_Group dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "group")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  classifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "classifier" namedMap))
  classifier <- Prelude.pure Prelude.$ do
    classifier <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast classifier)
    classifier <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle classifier)
    Prelude.pure classifier

  key <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "key" namedMap))
  key <- Prelude.pure Prelude.$ do
    key <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast key)
    key <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle key)
    Prelude.pure key

  Prelude.pure
    Group
      { classifier,
        key,
        dynNode = dynNode
      }

instance AST.Cast.Cast Group where
  cast = cast_Group

data Guards = Guards
  { guard :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Guard)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Guards :: Api.Node -> Prelude.Maybe Guards
cast_Guards dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "guards")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  guard <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "guard" namedMap))
  guard <- Prelude.pure Prelude.$ do
    guard <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast guard)
    guard <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty guard)
    Prelude.pure guard

  Prelude.pure
    Guards
      { guard,
        dynNode = dynNode
      }

instance AST.Cast.Cast Guards where
  cast = cast_Guards

data Haskell = Haskell
  { children :: (AST.Err.Err (Prelude.Maybe Header)),
    declarations :: (AST.Err.Err (Prelude.Maybe Declarations)),
    imports :: (AST.Err.Err (Prelude.Maybe Imports)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Haskell :: Api.Node -> Prelude.Maybe Haskell
cast_Haskell dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "haskell")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure Prelude.$ do
    declarations <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast declarations)
    declarations <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle declarations)
    Prelude.pure declarations

  imports <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "imports" namedMap))
  imports <- Prelude.pure Prelude.$ do
    imports <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast imports)
    imports <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle imports)
    Prelude.pure imports

  Prelude.pure
    Haskell
      { children,
        declarations,
        imports,
        dynNode = dynNode
      }

instance AST.Cast.Cast Haskell where
  cast = cast_Haskell

data Header = Header
  { exports :: (AST.Err.Err (Prelude.Maybe Exports)),
    module' :: (AST.Err.Err Module),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Header :: Api.Node -> Prelude.Maybe Header
cast_Header dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "header")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  exports <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "exports" namedMap))
  exports <- Prelude.pure Prelude.$ do
    exports <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast exports)
    exports <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle exports)
    Prelude.pure exports

  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure Prelude.$ do
    module' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast module')
    module' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle module')
    Prelude.pure module'

  Prelude.pure
    Header
      { exports,
        module',
        dynNode = dynNode
      }

instance AST.Cast.Cast Header where
  cast = cast_Header

data ImplicitParameter = ImplicitParameter
  { name :: (AST.Err.Err ImplicitVariable),
    type' :: (AST.Err.Err QuantifiedType),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ImplicitParameter :: Api.Node -> Prelude.Maybe ImplicitParameter
cast_ImplicitParameter dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "implicit_parameter")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle name)
    Prelude.pure name

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    ImplicitParameter
      { name,
        type',
        dynNode = dynNode
      }

instance AST.Cast.Cast ImplicitParameter where
  cast = cast_ImplicitParameter

data Import = Import
  { alias :: (AST.Err.Err (Prelude.Maybe Module)),
    module' :: (AST.Err.Err Module),
    names :: (AST.Err.Err (Prelude.Maybe ImportList)),
    package :: (AST.Err.Err (Prelude.Maybe ImportPackage)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Import :: Api.Node -> Prelude.Maybe Import
cast_Import dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alias <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alias" namedMap))
  alias <- Prelude.pure Prelude.$ do
    alias <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast alias)
    alias <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle alias)
    Prelude.pure alias

  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure Prelude.$ do
    module' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast module')
    module' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle module')
    Prelude.pure module'

  names <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "names" namedMap))
  names <- Prelude.pure Prelude.$ do
    names <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast names)
    names <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle names)
    Prelude.pure names

  package <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "package" namedMap))
  package <- Prelude.pure Prelude.$ do
    package <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast package)
    package <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle package)
    Prelude.pure package

  Prelude.pure
    Import
      { alias,
        module',
        names,
        package,
        dynNode = dynNode
      }

instance AST.Cast.Cast Import where
  cast = cast_Import

data ImportList = ImportList
  { name :: (AST.Err.Err ([ImportName])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ImportList :: Api.Node -> Prelude.Maybe ImportList
cast_ImportList dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    Prelude.pure name

  Prelude.pure
    ImportList
      { name,
        dynNode = dynNode
      }

instance AST.Cast.Cast ImportList where
  cast = cast_ImportList

data ImportName = ImportName
  { childrenSQuote :: (AST.Err.Err (Prelude.Maybe Children)),
    namespace :: (AST.Err.Err (Prelude.Maybe Namespace)),
    operator :: (AST.Err.Err (Prelude.Maybe PrefixId)),
    type' :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ Qualified Sum.:+ Sum.Nil))),
    variable :: (AST.Err.Err (Prelude.Maybe (Qualified Sum.:+ Variable Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ImportName :: Api.Node -> Prelude.Maybe ImportName
cast_ImportName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  childrenSQuote <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children'" namedMap))
  childrenSQuote <- Prelude.pure Prelude.$ do
    childrenSQuote <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast childrenSQuote)
    childrenSQuote <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle childrenSQuote)
    Prelude.pure childrenSQuote

  namespace <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "namespace" namedMap))
  namespace <- Prelude.pure Prelude.$ do
    namespace <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast namespace)
    namespace <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle namespace)
    Prelude.pure namespace

  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure Prelude.$ do
    operator <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast operator)
    operator <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle operator)
    Prelude.pure operator

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

  variable <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "variable" namedMap))
  variable <- Prelude.pure Prelude.$ do
    variable <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast variable)
    variable <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle variable)
    Prelude.pure variable

  Prelude.pure
    ImportName
      { childrenSQuote,
        namespace,
        operator,
        type',
        variable,
        dynNode = dynNode
      }

instance AST.Cast.Cast ImportName where
  cast = cast_ImportName

data Imports = Imports
  { import' :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Import)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Imports :: Api.Node -> Prelude.Maybe Imports
cast_Imports dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "imports")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  import' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "import" namedMap))
  import' <- Prelude.pure Prelude.$ do
    import' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast import')
    import' <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty import')
    Prelude.pure import'

  Prelude.pure
    Imports
      { import',
        dynNode = dynNode
      }

instance AST.Cast.Cast Imports where
  cast = cast_Imports

data Inferred = Inferred
  { children :: (AST.Err.Err (Annotated Sum.:+ TypeParam Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Inferred :: Api.Node -> Prelude.Maybe Inferred
cast_Inferred dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "inferred")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    Inferred
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Inferred where
  cast = cast_Inferred

data Infix = Infix
  { leftOperand :: (AST.Err.Err (Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil)),
    operator :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty (ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Sum.Nil))),
    rightOperand :: (AST.Err.Err (Expression Sum.:+ LazyField Sum.:+ Pattern Sum.:+ StrictField Sum.:+ Type Sum.:+ TypeParam Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Infix :: Api.Node -> Prelude.Maybe Infix
cast_Infix dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "infix")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  leftOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "left_operand" namedMap))
  leftOperand <- Prelude.pure Prelude.$ do
    leftOperand <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast leftOperand)
    leftOperand <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle leftOperand)
    Prelude.pure leftOperand

  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure Prelude.$ do
    operator <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast operator)
    operator <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty operator)
    Prelude.pure operator

  rightOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "right_operand" namedMap))
  rightOperand <- Prelude.pure Prelude.$ do
    rightOperand <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast rightOperand)
    rightOperand <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle rightOperand)
    Prelude.pure rightOperand

  Prelude.pure
    Infix
      { leftOperand,
        operator,
        rightOperand,
        dynNode = dynNode
      }

instance AST.Cast.Cast Infix where
  cast = cast_Infix

data InfixId = InfixId
  { children :: (AST.Err.Err (Constructor Sum.:+ Name Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_InfixId :: Api.Node -> Prelude.Maybe InfixId
cast_InfixId dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "infix_id")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    InfixId
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast InfixId where
  cast = cast_InfixId

data Instance = Instance
  { children :: (AST.Err.Err (Prelude.Maybe (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    context :: (AST.Err.Err (Prelude.Maybe Context)),
    declarations :: (AST.Err.Err (Prelude.Maybe InstanceDeclarations)),
    forall' :: (AST.Err.Err (Prelude.Maybe (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe TypePatterns)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Instance :: Api.Node -> Prelude.Maybe Instance
cast_Instance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure Prelude.$ do
    context <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast context)
    context <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle context)
    Prelude.pure context

  declarations <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declarations" namedMap))
  declarations <- Prelude.pure Prelude.$ do
    declarations <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast declarations)
    declarations <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle declarations)
    Prelude.pure declarations

  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure Prelude.$ do
    forall' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast forall')
    forall' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle forall')
    Prelude.pure forall'

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

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

instance AST.Cast.Cast Instance where
  cast = cast_Instance

data InstanceDeclarations = InstanceDeclarations
  { declaration :: (AST.Err.Err ([InstanceDecl])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_InstanceDeclarations :: Api.Node -> Prelude.Maybe InstanceDeclarations
cast_InstanceDeclarations dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "instance_declarations")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure Prelude.$ do
    declaration <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast declaration)
    Prelude.pure declaration

  Prelude.pure
    InstanceDeclarations
      { declaration,
        dynNode = dynNode
      }

instance AST.Cast.Cast InstanceDeclarations where
  cast = cast_InstanceDeclarations

data Integer = Integer {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Integer where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "integer")
    Prelude.pure (Integer {dynNode = dynNode})

data Invisible = Invisible
  { bind :: (AST.Err.Err TypeParam),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Invisible :: Api.Node -> Prelude.Maybe Invisible
cast_Invisible dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "invisible")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  bind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "bind" namedMap))
  bind <- Prelude.pure Prelude.$ do
    bind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast bind)
    bind <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle bind)
    Prelude.pure bind

  Prelude.pure
    Invisible
      { bind,
        dynNode = dynNode
      }

instance AST.Cast.Cast Invisible where
  cast = cast_Invisible

data Irrefutable = Irrefutable
  { pattern' :: (AST.Err.Err Pattern),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Irrefutable :: Api.Node -> Prelude.Maybe Irrefutable
cast_Irrefutable dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "irrefutable")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle pattern')
    Prelude.pure pattern'

  Prelude.pure
    Irrefutable
      { pattern',
        dynNode = dynNode
      }

instance AST.Cast.Cast Irrefutable where
  cast = cast_Irrefutable

data KindApplication = KindApplication
  { type' :: (AST.Err.Err Type),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_KindApplication :: Api.Node -> Prelude.Maybe KindApplication
cast_KindApplication dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "kind_application")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    KindApplication
      { type',
        dynNode = dynNode
      }

instance AST.Cast.Cast KindApplication where
  cast = cast_KindApplication

data KindSignature = KindSignature
  { children :: (AST.Err.Err (Prelude.Maybe (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    kind :: (AST.Err.Err QuantifiedType),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe TypeParams)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_KindSignature :: Api.Node -> Prelude.Maybe KindSignature
cast_KindSignature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "kind_signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure Prelude.$ do
    kind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast kind)
    kind <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle kind)
    Prelude.pure kind

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  Prelude.pure
    KindSignature
      { children,
        kind,
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Cast.Cast KindSignature where
  cast = cast_KindSignature

data Lambda = Lambda
  { expression :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    patterns :: (AST.Err.Err Patterns),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Lambda :: Api.Node -> Prelude.Maybe Lambda
cast_Lambda dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle expression)
    Prelude.pure expression

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle patterns)
    Prelude.pure patterns

  Prelude.pure
    Lambda
      { expression,
        patterns,
        dynNode = dynNode
      }

instance AST.Cast.Cast Lambda where
  cast = cast_Lambda

data LambdaCase = LambdaCase
  { alternatives :: (AST.Err.Err (Prelude.Maybe Alternatives)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LambdaCase :: Api.Node -> Prelude.Maybe LambdaCase
cast_LambdaCase dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda_case")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure Prelude.$ do
    alternatives <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast alternatives)
    alternatives <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle alternatives)
    Prelude.pure alternatives

  Prelude.pure
    LambdaCase
      { alternatives,
        dynNode = dynNode
      }

instance AST.Cast.Cast LambdaCase where
  cast = cast_LambdaCase

data LambdaCases = LambdaCases
  { alternatives :: (AST.Err.Err (Prelude.Maybe Alternatives)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LambdaCases :: Api.Node -> Prelude.Maybe LambdaCases
cast_LambdaCases dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lambda_cases")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  alternatives <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "alternatives" namedMap))
  alternatives <- Prelude.pure Prelude.$ do
    alternatives <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast alternatives)
    alternatives <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle alternatives)
    Prelude.pure alternatives

  Prelude.pure
    LambdaCases
      { alternatives,
        dynNode = dynNode
      }

instance AST.Cast.Cast LambdaCases where
  cast = cast_LambdaCases

data LazyField = LazyField
  { type' :: (AST.Err.Err Type),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LazyField :: Api.Node -> Prelude.Maybe LazyField
cast_LazyField dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "lazy_field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    LazyField
      { type',
        dynNode = dynNode
      }

instance AST.Cast.Cast LazyField where
  cast = cast_LazyField

data LeftSection = LeftSection
  { leftOperand :: (AST.Err.Err Expression),
    operator :: (AST.Err.Err (ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LeftSection :: Api.Node -> Prelude.Maybe LeftSection
cast_LeftSection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "left_section")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  leftOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "left_operand" namedMap))
  leftOperand <- Prelude.pure Prelude.$ do
    leftOperand <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast leftOperand)
    leftOperand <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle leftOperand)
    Prelude.pure leftOperand

  operator <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "operator" namedMap))
  operator <- Prelude.pure Prelude.$ do
    operator <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast operator)
    operator <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle operator)
    Prelude.pure operator

  Prelude.pure
    LeftSection
      { leftOperand,
        operator,
        dynNode = dynNode
      }

instance AST.Cast.Cast LeftSection where
  cast = cast_LeftSection

data Let = Let
  { binds :: (AST.Err.Err (Prelude.Maybe LocalBinds)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Let :: Api.Node -> Prelude.Maybe Let
cast_Let dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "let")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure Prelude.$ do
    binds <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast binds)
    binds <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle binds)
    Prelude.pure binds

  Prelude.pure
    Let
      { binds,
        dynNode = dynNode
      }

instance AST.Cast.Cast Let where
  cast = cast_Let

data LetIn = LetIn
  { binds :: (AST.Err.Err (Prelude.Maybe LocalBinds)),
    expression :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LetIn :: Api.Node -> Prelude.Maybe LetIn
cast_LetIn dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "let_in")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  binds <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "binds" namedMap))
  binds <- Prelude.pure Prelude.$ do
    binds <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast binds)
    binds <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle binds)
    Prelude.pure binds

  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle expression)
    Prelude.pure expression

  Prelude.pure
    LetIn
      { binds,
        expression,
        dynNode = dynNode
      }

instance AST.Cast.Cast LetIn where
  cast = cast_LetIn

data LinearFunction = LinearFunction
  { arrow :: (AST.Err.Err ((AST.Token.Token "->") Sum.:+ (AST.Token.Token "->.") Sum.:+ (AST.Token.Token "→") Sum.:+ (AST.Token.Token "⊸") Sum.:+ Sum.Nil)),
    multiplicity :: (AST.Err.Err (Prelude.Maybe Modifier)),
    parameter :: (AST.Err.Err (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)),
    result :: (AST.Err.Err QuantifiedType),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LinearFunction :: Api.Node -> Prelude.Maybe LinearFunction
cast_LinearFunction dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "linear_function")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure Prelude.$ do
    arrow <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast arrow)
    arrow <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle arrow)
    Prelude.pure arrow

  multiplicity <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "multiplicity" namedMap))
  multiplicity <- Prelude.pure Prelude.$ do
    multiplicity <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast multiplicity)
    multiplicity <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle multiplicity)
    Prelude.pure multiplicity

  parameter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "parameter" namedMap))
  parameter <- Prelude.pure Prelude.$ do
    parameter <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast parameter)
    parameter <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle parameter)
    Prelude.pure parameter

  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure Prelude.$ do
    result <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast result)
    result <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle result)
    Prelude.pure result

  Prelude.pure
    LinearFunction
      { arrow,
        multiplicity,
        parameter,
        result,
        dynNode = dynNode
      }

instance AST.Cast.Cast LinearFunction where
  cast = cast_LinearFunction

data List = List
  { element :: (AST.Err.Err ([(Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_List :: Api.Node -> Prelude.Maybe List
cast_List dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "list")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure Prelude.$ do
    element <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast element)
    Prelude.pure element

  Prelude.pure
    List
      { element,
        dynNode = dynNode
      }

instance AST.Cast.Cast List where
  cast = cast_List

data ListComprehension = ListComprehension
  { expression :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    qualifiers :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Qualifiers)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ListComprehension :: Api.Node -> Prelude.Maybe ListComprehension
cast_ListComprehension dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "list_comprehension")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle expression)
    Prelude.pure expression

  qualifiers <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "qualifiers" namedMap))
  qualifiers <- Prelude.pure Prelude.$ do
    qualifiers <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast qualifiers)
    qualifiers <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty qualifiers)
    Prelude.pure qualifiers

  Prelude.pure
    ListComprehension
      { expression,
        qualifiers,
        dynNode = dynNode
      }

instance AST.Cast.Cast ListComprehension where
  cast = cast_ListComprehension

data Literal = Literal
  { children :: (AST.Err.Err (Char Sum.:+ Float Sum.:+ Integer Sum.:+ String Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Literal :: Api.Node -> Prelude.Maybe Literal
cast_Literal dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "literal")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    Literal
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Literal where
  cast = cast_Literal

data LocalBinds = LocalBinds
  { decl :: (AST.Err.Err ([(Decl Sum.:+ Fixity Sum.:+ Sum.Nil)])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LocalBinds :: Api.Node -> Prelude.Maybe LocalBinds
cast_LocalBinds dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "local_binds")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  decl <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "decl" namedMap))
  decl <- Prelude.pure Prelude.$ do
    decl <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast decl)
    Prelude.pure decl

  Prelude.pure
    LocalBinds
      { decl,
        dynNode = dynNode
      }

instance AST.Cast.Cast LocalBinds where
  cast = cast_LocalBinds

data Match = Match
  { expression :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    guards :: (AST.Err.Err (Prelude.Maybe Guards)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Match :: Api.Node -> Prelude.Maybe Match
cast_Match dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "match")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle expression)
    Prelude.pure expression

  guards <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "guards" namedMap))
  guards <- Prelude.pure Prelude.$ do
    guards <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast guards)
    guards <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle guards)
    Prelude.pure guards

  Prelude.pure
    Match
      { expression,
        guards,
        dynNode = dynNode
      }

instance AST.Cast.Cast Match where
  cast = cast_Match

data Modifier = Modifier
  { children :: (AST.Err.Err Type),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Modifier :: Api.Node -> Prelude.Maybe Modifier
cast_Modifier dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "modifier")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    Modifier
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Modifier where
  cast = cast_Modifier

data Module = Module
  { children :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty ModuleId)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Module :: Api.Node -> Prelude.Maybe Module
cast_Module dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "module")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty children)
    Prelude.pure children

  Prelude.pure
    Module
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Module where
  cast = cast_Module

data ModuleExport = ModuleExport
  { module' :: (AST.Err.Err Module),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ModuleExport :: Api.Node -> Prelude.Maybe ModuleExport
cast_ModuleExport dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "module_export")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure Prelude.$ do
    module' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast module')
    module' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle module')
    Prelude.pure module'

  Prelude.pure
    ModuleExport
      { module',
        dynNode = dynNode
      }

instance AST.Cast.Cast ModuleExport where
  cast = cast_ModuleExport

data MultiWayIf = MultiWayIf
  { match :: (AST.Err.Err ([Match])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_MultiWayIf :: Api.Node -> Prelude.Maybe MultiWayIf
cast_MultiWayIf dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "multi_way_if")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  match <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "match" namedMap))
  match <- Prelude.pure Prelude.$ do
    match <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast match)
    Prelude.pure match

  Prelude.pure
    MultiWayIf
      { match,
        dynNode = dynNode
      }

instance AST.Cast.Cast MultiWayIf where
  cast = cast_MultiWayIf

data Namespace = Namespace {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Namespace where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "namespace")
    Prelude.pure (Namespace {dynNode = dynNode})

data Negation = Negation
  { expression :: (AST.Err.Err (Prelude.Maybe Expression)),
    minus :: (AST.Err.Err (Prelude.Maybe (AST.Token.Token "-"))),
    number :: (AST.Err.Err (Prelude.Maybe (Float Sum.:+ Integer Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Negation :: Api.Node -> Prelude.Maybe Negation
cast_Negation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "negation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle expression)
    Prelude.pure expression

  minus <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "minus" namedMap))
  minus <- Prelude.pure Prelude.$ do
    minus <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast minus)
    minus <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle minus)
    Prelude.pure minus

  number <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "number" namedMap))
  number <- Prelude.pure Prelude.$ do
    number <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast number)
    number <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle number)
    Prelude.pure number

  Prelude.pure
    Negation
      { expression,
        minus,
        number,
        dynNode = dynNode
      }

instance AST.Cast.Cast Negation where
  cast = cast_Negation

data Newtype = Newtype
  { children :: (AST.Err.Err (Prelude.Maybe (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    constructor :: (AST.Err.Err (Prelude.Maybe NewtypeConstructor)),
    constructors :: (AST.Err.Err (Prelude.Maybe GadtConstructors)),
    context :: (AST.Err.Err (Prelude.Maybe Context)),
    deriving' :: (AST.Err.Err ([Deriving])),
    forall' :: (AST.Err.Err (Prelude.Maybe (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    kind :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe (TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Newtype :: Api.Node -> Prelude.Maybe Newtype
cast_Newtype dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "newtype")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure Prelude.$ do
    constructor <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constructor)
    constructor <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle constructor)
    Prelude.pure constructor

  constructors <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructors" namedMap))
  constructors <- Prelude.pure Prelude.$ do
    constructors <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constructors)
    constructors <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle constructors)
    Prelude.pure constructors

  context <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "context" namedMap))
  context <- Prelude.pure Prelude.$ do
    context <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast context)
    context <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle context)
    Prelude.pure context

  deriving' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "deriving" namedMap))
  deriving' <- Prelude.pure Prelude.$ do
    deriving' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast deriving')
    Prelude.pure deriving'

  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure Prelude.$ do
    forall' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast forall')
    forall' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle forall')
    Prelude.pure forall'

  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure Prelude.$ do
    kind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast kind)
    kind <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle kind)
    Prelude.pure kind

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

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

instance AST.Cast.Cast Newtype where
  cast = cast_Newtype

data NewtypeConstructor = NewtypeConstructor
  { field :: (AST.Err.Err (Field Sum.:+ Record Sum.:+ Sum.Nil)),
    name :: (AST.Err.Err (Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_NewtypeConstructor :: Api.Node -> Prelude.Maybe NewtypeConstructor
cast_NewtypeConstructor dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "newtype_constructor")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure Prelude.$ do
    field <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast field)
    field <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle field)
    Prelude.pure field

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle name)
    Prelude.pure name

  Prelude.pure
    NewtypeConstructor
      { field,
        name,
        dynNode = dynNode
      }

instance AST.Cast.Cast NewtypeConstructor where
  cast = cast_NewtypeConstructor

data Operator = Operator {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Operator where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "operator")
    Prelude.pure (Operator {dynNode = dynNode})

data Parens = Parens
  { children :: (AST.Err.Err (Prelude.Maybe (Annotated Sum.:+ Constraints Sum.:+ Infix Sum.:+ TypeParam Sum.:+ Sum.Nil))),
    expression :: (AST.Err.Err (Prelude.Maybe (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    kind :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil))),
    pattern' :: (AST.Err.Err (Prelude.Maybe (Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe (TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil))),
    type' :: (AST.Err.Err (Prelude.Maybe (QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Parens :: Api.Node -> Prelude.Maybe Parens
cast_Parens dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "parens")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle expression)
    Prelude.pure expression

  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure Prelude.$ do
    kind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast kind)
    kind <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle kind)
    Prelude.pure kind

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle pattern')
    Prelude.pure pattern'

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

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

instance AST.Cast.Cast Parens where
  cast = cast_Parens

data PatternGuard = PatternGuard
  { arrow :: (AST.Err.Err ((AST.Token.Token "<-") Sum.:+ (AST.Token.Token "←") Sum.:+ Sum.Nil)),
    expression :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    pattern' :: (AST.Err.Err (Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_PatternGuard :: Api.Node -> Prelude.Maybe PatternGuard
cast_PatternGuard dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "pattern_guard")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure Prelude.$ do
    arrow <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast arrow)
    arrow <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle arrow)
    Prelude.pure arrow

  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle expression)
    Prelude.pure expression

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle pattern')
    Prelude.pure pattern'

  Prelude.pure
    PatternGuard
      { arrow,
        expression,
        pattern',
        dynNode = dynNode
      }

instance AST.Cast.Cast PatternGuard where
  cast = cast_PatternGuard

data PatternSynonym = PatternSynonym
  { children :: (AST.Err.Err (Equation Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_PatternSynonym :: Api.Node -> Prelude.Maybe PatternSynonym
cast_PatternSynonym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "pattern_synonym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    PatternSynonym
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast PatternSynonym where
  cast = cast_PatternSynonym

data Patterns = Patterns
  { children :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty (ExplicitType Sum.:+ Pattern Sum.:+ TypeBinder Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Patterns :: Api.Node -> Prelude.Maybe Patterns
cast_Patterns dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "patterns")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty children)
    Prelude.pure children

  Prelude.pure
    Patterns
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Patterns where
  cast = cast_Patterns

data Prefix = Prefix
  { field :: (AST.Err.Err ([(LazyField Sum.:+ StrictField Sum.:+ Type Sum.:+ Sum.Nil)])),
    name :: (AST.Err.Err (Prelude.Maybe (Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))),
    type' :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Prefix :: Api.Node -> Prelude.Maybe Prefix
cast_Prefix dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure Prelude.$ do
    field <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast field)
    Prelude.pure field

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

  Prelude.pure
    Prefix
      { field,
        name,
        type',
        dynNode = dynNode
      }

instance AST.Cast.Cast Prefix where
  cast = cast_Prefix

data PrefixId = PrefixId
  { children :: (AST.Err.Err (ConstructorOperator Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_PrefixId :: Api.Node -> Prelude.Maybe PrefixId
cast_PrefixId dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_id")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    PrefixId
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast PrefixId where
  cast = cast_PrefixId

data PrefixList = PrefixList {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixList where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_list")
    Prelude.pure (PrefixList {dynNode = dynNode})

data PrefixTuple = PrefixTuple {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixTuple where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_tuple")
    Prelude.pure (PrefixTuple {dynNode = dynNode})

data PrefixUnboxedSum = PrefixUnboxedSum {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixUnboxedSum where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_unboxed_sum")
    Prelude.pure (PrefixUnboxedSum {dynNode = dynNode})

data PrefixUnboxedTuple = PrefixUnboxedTuple {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixUnboxedTuple where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "prefix_unboxed_tuple")
    Prelude.pure (PrefixUnboxedTuple {dynNode = dynNode})

data Projection = Projection
  { expression :: (AST.Err.Err Expression),
    field :: (AST.Err.Err FieldName),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Projection :: Api.Node -> Prelude.Maybe Projection
cast_Projection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "projection")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle expression)
    Prelude.pure expression

  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure Prelude.$ do
    field <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast field)
    field <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle field)
    Prelude.pure field

  Prelude.pure
    Projection
      { expression,
        field,
        dynNode = dynNode
      }

instance AST.Cast.Cast Projection where
  cast = cast_Projection

data ProjectionSelector = ProjectionSelector
  { field :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Variable)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ProjectionSelector :: Api.Node -> Prelude.Maybe ProjectionSelector
cast_ProjectionSelector dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "projection_selector")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure Prelude.$ do
    field <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast field)
    field <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty field)
    Prelude.pure field

  Prelude.pure
    ProjectionSelector
      { field,
        dynNode = dynNode
      }

instance AST.Cast.Cast ProjectionSelector where
  cast = cast_ProjectionSelector

data Promoted = Promoted
  { children :: (AST.Err.Err (Constructor Sum.:+ ConstructorOperator Sum.:+ EmptyList Sum.:+ InfixId Sum.:+ List Sum.:+ Operator Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ Qualified Sum.:+ Tuple Sum.:+ Unit Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Promoted :: Api.Node -> Prelude.Maybe Promoted
cast_Promoted dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "promoted")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    Promoted
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Promoted where
  cast = cast_Promoted

data Qualified = Qualified
  { id :: (AST.Err.Err (Constructor Sum.:+ ConstructorOperator Sum.:+ FieldName Sum.:+ Name Sum.:+ Operator Sum.:+ Variable Sum.:+ Sum.Nil)),
    module' :: (AST.Err.Err Module),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Qualified :: Api.Node -> Prelude.Maybe Qualified
cast_Qualified dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "qualified")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  id <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "id" namedMap))
  id <- Prelude.pure Prelude.$ do
    id <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast id)
    id <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle id)
    Prelude.pure id

  module' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "module" namedMap))
  module' <- Prelude.pure Prelude.$ do
    module' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast module')
    module' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle module')
    Prelude.pure module'

  Prelude.pure
    Qualified
      { id,
        module',
        dynNode = dynNode
      }

instance AST.Cast.Cast Qualified where
  cast = cast_Qualified

data Qualifiers = Qualifiers
  { qualifier :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Qualifier)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Qualifiers :: Api.Node -> Prelude.Maybe Qualifiers
cast_Qualifiers dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "qualifiers")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  qualifier <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "qualifier" namedMap))
  qualifier <- Prelude.pure Prelude.$ do
    qualifier <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast qualifier)
    qualifier <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty qualifier)
    Prelude.pure qualifier

  Prelude.pure
    Qualifiers
      { qualifier,
        dynNode = dynNode
      }

instance AST.Cast.Cast Qualifiers where
  cast = cast_Qualifiers

data QuantifiedVariables = QuantifiedVariables
  { children :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty (Inferred Sum.:+ TypeParam Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuantifiedVariables :: Api.Node -> Prelude.Maybe QuantifiedVariables
cast_QuantifiedVariables dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quantified_variables")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty children)
    Prelude.pure children

  Prelude.pure
    QuantifiedVariables
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast QuantifiedVariables where
  cast = cast_QuantifiedVariables

data Quasiquote = Quasiquote
  { body :: (AST.Err.Err (Prelude.Maybe QuasiquoteBody)),
    quoter :: (AST.Err.Err Quoter),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Quasiquote :: Api.Node -> Prelude.Maybe Quasiquote
cast_Quasiquote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quasiquote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  body <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "body" namedMap))
  body <- Prelude.pure Prelude.$ do
    body <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast body)
    body <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle body)
    Prelude.pure body

  quoter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quoter" namedMap))
  quoter <- Prelude.pure Prelude.$ do
    quoter <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast quoter)
    quoter <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle quoter)
    Prelude.pure quoter

  Prelude.pure
    Quasiquote
      { body,
        quoter,
        dynNode = dynNode
      }

instance AST.Cast.Cast Quasiquote where
  cast = cast_Quasiquote

data Quote = Quote
  { children :: (AST.Err.Err (Prelude.Maybe (QuotedDecls Sum.:+ QuotedExpression Sum.:+ QuotedPattern Sum.:+ QuotedType Sum.:+ Sum.Nil))),
    quoter :: (AST.Err.Err (Prelude.Maybe ((AST.Token.Token "d") Sum.:+ (AST.Token.Token "e") Sum.:+ (AST.Token.Token "p") Sum.:+ (AST.Token.Token "t") Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Quote :: Api.Node -> Prelude.Maybe Quote
cast_Quote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  quoter <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "quoter" namedMap))
  quoter <- Prelude.pure Prelude.$ do
    quoter <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast quoter)
    quoter <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle quoter)
    Prelude.pure quoter

  Prelude.pure
    Quote
      { children,
        quoter,
        dynNode = dynNode
      }

instance AST.Cast.Cast Quote where
  cast = cast_Quote

data QuotedDecls = QuotedDecls
  { declaration :: (AST.Err.Err ([Declaration])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedDecls :: Api.Node -> Prelude.Maybe QuotedDecls
cast_QuotedDecls dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_decls")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  declaration <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "declaration" namedMap))
  declaration <- Prelude.pure Prelude.$ do
    declaration <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast declaration)
    Prelude.pure declaration

  Prelude.pure
    QuotedDecls
      { declaration,
        dynNode = dynNode
      }

instance AST.Cast.Cast QuotedDecls where
  cast = cast_QuotedDecls

data QuotedExpression = QuotedExpression
  { children :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedExpression :: Api.Node -> Prelude.Maybe QuotedExpression
cast_QuotedExpression dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_expression")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    QuotedExpression
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast QuotedExpression where
  cast = cast_QuotedExpression

data QuotedPattern = QuotedPattern
  { children :: (AST.Err.Err (Pattern Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedPattern :: Api.Node -> Prelude.Maybe QuotedPattern
cast_QuotedPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    QuotedPattern
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast QuotedPattern where
  cast = cast_QuotedPattern

data QuotedType = QuotedType
  { children :: (AST.Err.Err (QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedType :: Api.Node -> Prelude.Maybe QuotedType
cast_QuotedType dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoted_type")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    QuotedType
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast QuotedType where
  cast = cast_QuotedType

data Quoter = Quoter
  { children :: (AST.Err.Err (Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Quoter :: Api.Node -> Prelude.Maybe Quoter
cast_Quoter dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "quoter")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    Quoter
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Quoter where
  cast = cast_Quoter

data Rec = Rec
  { statement :: (AST.Err.Err ([Statement])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Rec :: Api.Node -> Prelude.Maybe Rec
cast_Rec dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "rec")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  statement <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "statement" namedMap))
  statement <- Prelude.pure Prelude.$ do
    statement <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast statement)
    Prelude.pure statement

  Prelude.pure
    Rec
      { statement,
        dynNode = dynNode
      }

instance AST.Cast.Cast Rec where
  cast = cast_Rec

data Record = Record
  { arrow :: (AST.Err.Err ([((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil)])),
    constructor :: (AST.Err.Err (Prelude.Maybe Pattern)),
    expression :: (AST.Err.Err (Prelude.Maybe Expression)),
    field :: (AST.Err.Err ([(Field Sum.:+ FieldPattern Sum.:+ FieldUpdate Sum.:+ Sum.Nil)])),
    fields :: (AST.Err.Err (Prelude.Maybe Fields)),
    name :: (AST.Err.Err (Prelude.Maybe Constructor)),
    type' :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Record :: Api.Node -> Prelude.Maybe Record
cast_Record dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "record")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  arrow <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "arrow" namedMap))
  arrow <- Prelude.pure Prelude.$ do
    arrow <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast arrow)
    Prelude.pure arrow

  constructor <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constructor" namedMap))
  constructor <- Prelude.pure Prelude.$ do
    constructor <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constructor)
    constructor <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle constructor)
    Prelude.pure constructor

  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle expression)
    Prelude.pure expression

  field <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "field" namedMap))
  field <- Prelude.pure Prelude.$ do
    field <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast field)
    Prelude.pure field

  fields <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "fields" namedMap))
  fields <- Prelude.pure Prelude.$ do
    fields <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast fields)
    fields <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle fields)
    Prelude.pure fields

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

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

instance AST.Cast.Cast Record where
  cast = cast_Record

data RightSection = RightSection
  { children :: (AST.Err.Err (ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil)),
    rightOperand :: (AST.Err.Err Expression),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_RightSection :: Api.Node -> Prelude.Maybe RightSection
cast_RightSection dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "right_section")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  rightOperand <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "right_operand" namedMap))
  rightOperand <- Prelude.pure Prelude.$ do
    rightOperand <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast rightOperand)
    rightOperand <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle rightOperand)
    Prelude.pure rightOperand

  Prelude.pure
    RightSection
      { children,
        rightOperand,
        dynNode = dynNode
      }

instance AST.Cast.Cast RightSection where
  cast = cast_RightSection

data RoleAnnotation = RoleAnnotation
  { role :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty TypeRole)),
    type' :: (AST.Err.Err (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_RoleAnnotation :: Api.Node -> Prelude.Maybe RoleAnnotation
cast_RoleAnnotation dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "role_annotation")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  role <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "role" namedMap))
  role <- Prelude.pure Prelude.$ do
    role <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast role)
    role <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty role)
    Prelude.pure role

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    RoleAnnotation
      { role,
        type',
        dynNode = dynNode
      }

instance AST.Cast.Cast RoleAnnotation where
  cast = cast_RoleAnnotation

data Signature = Signature
  { constraint :: (AST.Err.Err (Prelude.Maybe Constraints)),
    expression :: (AST.Err.Err (Prelude.Maybe Expression)),
    kind :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    name :: (AST.Err.Err (Prelude.Maybe (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    names :: (AST.Err.Err (Prelude.Maybe BindingList)),
    pattern' :: (AST.Err.Err (Prelude.Maybe Pattern)),
    synonym :: (AST.Err.Err (Prelude.Maybe (BindingList Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))),
    type' :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Signature :: Api.Node -> Prelude.Maybe Signature
cast_Signature dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "signature")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  constraint <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "constraint" namedMap))
  constraint <- Prelude.pure Prelude.$ do
    constraint <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast constraint)
    constraint <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle constraint)
    Prelude.pure constraint

  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle expression)
    Prelude.pure expression

  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure Prelude.$ do
    kind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast kind)
    kind <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle kind)
    Prelude.pure kind

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  names <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "names" namedMap))
  names <- Prelude.pure Prelude.$ do
    names <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast names)
    names <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle names)
    Prelude.pure names

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle pattern')
    Prelude.pure pattern'

  synonym <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "synonym" namedMap))
  synonym <- Prelude.pure Prelude.$ do
    synonym <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast synonym)
    synonym <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle synonym)
    Prelude.pure synonym

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

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

instance AST.Cast.Cast Signature where
  cast = cast_Signature

data Special = Special
  { children :: (AST.Err.Err (EmptyList Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Special :: Api.Node -> Prelude.Maybe Special
cast_Special dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "special")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    Special
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast Special where
  cast = cast_Special

data Splice = Splice
  { expression :: (AST.Err.Err (Constructor Sum.:+ ImplicitVariable Sum.:+ Label Sum.:+ Literal Sum.:+ Parens Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Splice :: Api.Node -> Prelude.Maybe Splice
cast_Splice dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "splice")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle expression)
    Prelude.pure expression

  Prelude.pure
    Splice
      { expression,
        dynNode = dynNode
      }

instance AST.Cast.Cast Splice where
  cast = cast_Splice

data Star = Star {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Star where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "star")
    Prelude.pure (Star {dynNode = dynNode})

data Strict = Strict
  { pattern' :: (AST.Err.Err Pattern),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Strict :: Api.Node -> Prelude.Maybe Strict
cast_Strict dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "strict")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle pattern')
    Prelude.pure pattern'

  Prelude.pure
    Strict
      { pattern',
        dynNode = dynNode
      }

instance AST.Cast.Cast Strict where
  cast = cast_Strict

data StrictField = StrictField
  { type' :: (AST.Err.Err Type),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_StrictField :: Api.Node -> Prelude.Maybe StrictField
cast_StrictField dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "strict_field")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    StrictField
      { type',
        dynNode = dynNode
      }

instance AST.Cast.Cast StrictField where
  cast = cast_StrictField

data ThQuotedName = ThQuotedName
  { name :: (AST.Err.Err (Prelude.Maybe (Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil))),
    type' :: (AST.Err.Err (Prelude.Maybe Type)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ThQuotedName :: Api.Node -> Prelude.Maybe ThQuotedName
cast_ThQuotedName dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "th_quoted_name")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle type')
    Prelude.pure type'

  Prelude.pure
    ThQuotedName
      { name,
        type',
        dynNode = dynNode
      }

instance AST.Cast.Cast ThQuotedName where
  cast = cast_ThQuotedName

data TopSplice = TopSplice
  { children :: (AST.Err.Err Expression),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TopSplice :: Api.Node -> Prelude.Maybe TopSplice
cast_TopSplice dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "top_splice")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle children)
    Prelude.pure children

  Prelude.pure
    TopSplice
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast TopSplice where
  cast = cast_TopSplice

data Transform = Transform
  { key :: (AST.Err.Err (Prelude.Maybe (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    transformation :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Transform :: Api.Node -> Prelude.Maybe Transform
cast_Transform dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "transform")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  key <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "key" namedMap))
  key <- Prelude.pure Prelude.$ do
    key <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast key)
    key <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle key)
    Prelude.pure key

  transformation <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "transformation" namedMap))
  transformation <- Prelude.pure Prelude.$ do
    transformation <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast transformation)
    transformation <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle transformation)
    Prelude.pure transformation

  Prelude.pure
    Transform
      { key,
        transformation,
        dynNode = dynNode
      }

instance AST.Cast.Cast Transform where
  cast = cast_Transform

data Tuple = Tuple
  { children :: (AST.Err.Err ([Constraints])),
    element :: (AST.Err.Err ([(Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)])),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Tuple :: Api.Node -> Prelude.Maybe Tuple
cast_Tuple dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "tuple")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    Prelude.pure children

  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure Prelude.$ do
    element <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast element)
    Prelude.pure element

  Prelude.pure
    Tuple
      { children,
        element,
        dynNode = dynNode
      }

instance AST.Cast.Cast Tuple where
  cast = cast_Tuple

data TypeApplication = TypeApplication
  { type' :: (AST.Err.Err Type),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeApplication :: Api.Node -> Prelude.Maybe TypeApplication
cast_TypeApplication dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_application")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    TypeApplication
      { type',
        dynNode = dynNode
      }

instance AST.Cast.Cast TypeApplication where
  cast = cast_TypeApplication

data TypeBinder = TypeBinder
  { type' :: (AST.Err.Err Type),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeBinder :: Api.Node -> Prelude.Maybe TypeBinder
cast_TypeBinder dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_binder")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    TypeBinder
      { type',
        dynNode = dynNode
      }

instance AST.Cast.Cast TypeBinder where
  cast = cast_TypeBinder

data TypeFamily = TypeFamily
  { children :: (AST.Err.Err ([(Infix Sum.:+ Parens Sum.:+ TypeFamilyInjectivity Sum.:+ TypeFamilyResult Sum.:+ Sum.Nil)])),
    closedFamily :: (AST.Err.Err (Prelude.Maybe (AbstractFamily Sum.:+ Equations Sum.:+ Sum.Nil))),
    kind :: (AST.Err.Err (Prelude.Maybe QuantifiedType)),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe TypeParams)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeFamily :: Api.Node -> Prelude.Maybe TypeFamily
cast_TypeFamily dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    Prelude.pure children

  closedFamily <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "closed_family" namedMap))
  closedFamily <- Prelude.pure Prelude.$ do
    closedFamily <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast closedFamily)
    closedFamily <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle closedFamily)
    Prelude.pure closedFamily

  kind <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "kind" namedMap))
  kind <- Prelude.pure Prelude.$ do
    kind <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast kind)
    kind <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle kind)
    Prelude.pure kind

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  Prelude.pure
    TypeFamily
      { children,
        closedFamily,
        kind,
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Cast.Cast TypeFamily where
  cast = cast_TypeFamily

data TypeFamilyInjectivity = TypeFamilyInjectivity
  { determined :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty Variable)),
    result :: (AST.Err.Err Variable),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeFamilyInjectivity :: Api.Node -> Prelude.Maybe TypeFamilyInjectivity
cast_TypeFamilyInjectivity dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family_injectivity")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  determined <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "determined" namedMap))
  determined <- Prelude.pure Prelude.$ do
    determined <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast determined)
    determined <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty determined)
    Prelude.pure determined

  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure Prelude.$ do
    result <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast result)
    result <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle result)
    Prelude.pure result

  Prelude.pure
    TypeFamilyInjectivity
      { determined,
        result,
        dynNode = dynNode
      }

instance AST.Cast.Cast TypeFamilyInjectivity where
  cast = cast_TypeFamilyInjectivity

data TypeFamilyResult = TypeFamilyResult
  { result :: (AST.Err.Err QuantifiedType),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeFamilyResult :: Api.Node -> Prelude.Maybe TypeFamilyResult
cast_TypeFamilyResult dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_family_result")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  result <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "result" namedMap))
  result <- Prelude.pure Prelude.$ do
    result <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast result)
    result <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle result)
    Prelude.pure result

  Prelude.pure
    TypeFamilyResult
      { result,
        dynNode = dynNode
      }

instance AST.Cast.Cast TypeFamilyResult where
  cast = cast_TypeFamilyResult

data TypeInstance = TypeInstance
  { children :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty (Infix Sum.:+ Parens Sum.:+ QuantifiedType Sum.:+ Sum.Nil))),
    forall' :: (AST.Err.Err (Prelude.Maybe (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe TypePatterns)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeInstance :: Api.Node -> Prelude.Maybe TypeInstance
cast_TypeInstance dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_instance")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty children)
    Prelude.pure children

  forall' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "forall" namedMap))
  forall' <- Prelude.pure Prelude.$ do
    forall' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast forall')
    forall' <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle forall')
    Prelude.pure forall'

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  Prelude.pure
    TypeInstance
      { children,
        forall',
        name,
        patterns,
        dynNode = dynNode
      }

instance AST.Cast.Cast TypeInstance where
  cast = cast_TypeInstance

data TypeParams = TypeParams
  { children :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty TypeParam)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeParams :: Api.Node -> Prelude.Maybe TypeParams
cast_TypeParams dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_params")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty children)
    Prelude.pure children

  Prelude.pure
    TypeParams
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast TypeParams where
  cast = cast_TypeParams

data TypePatterns = TypePatterns
  { children :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty (KindApplication Sum.:+ Type Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypePatterns :: Api.Node -> Prelude.Maybe TypePatterns
cast_TypePatterns dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_patterns")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty children)
    Prelude.pure children

  Prelude.pure
    TypePatterns
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast TypePatterns where
  cast = cast_TypePatterns

data TypeRole = TypeRole {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast TypeRole where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_role")
    Prelude.pure (TypeRole {dynNode = dynNode})

data TypeSynomym = TypeSynomym
  { children :: (AST.Err.Err (Prelude.Maybe (Infix Sum.:+ Parens Sum.:+ Sum.Nil))),
    name :: (AST.Err.Err (Prelude.Maybe (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (AST.Err.Err (Prelude.Maybe TypeParams)),
    type' :: (AST.Err.Err (QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeSynomym :: Api.Node -> Prelude.Maybe TypeSynomym
cast_TypeSynomym dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "type_synomym")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  name <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "name" namedMap))
  name <- Prelude.pure Prelude.$ do
    name <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast name)
    name <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle name)
    Prelude.pure name

  patterns <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "patterns" namedMap))
  patterns <- Prelude.pure Prelude.$ do
    patterns <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast patterns)
    patterns <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle patterns)
    Prelude.pure patterns

  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    TypeSynomym
      { children,
        name,
        patterns,
        type',
        dynNode = dynNode
      }

instance AST.Cast.Cast TypeSynomym where
  cast = cast_TypeSynomym

data TypedQuote = TypedQuote
  { children :: (AST.Err.Err (Prelude.Maybe QuotedExpression)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypedQuote :: Api.Node -> Prelude.Maybe TypedQuote
cast_TypedQuote dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "typed_quote")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  children <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "children" namedMap))
  children <- Prelude.pure Prelude.$ do
    children <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast children)
    children <- AST.Runtime.justOrErr "optional, single" (AST.Runtime.listOptionalSingle children)
    Prelude.pure children

  Prelude.pure
    TypedQuote
      { children,
        dynNode = dynNode
      }

instance AST.Cast.Cast TypedQuote where
  cast = cast_TypedQuote

data UnboxedSum = UnboxedSum
  { element :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty (Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_UnboxedSum :: Api.Node -> Prelude.Maybe UnboxedSum
cast_UnboxedSum dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_sum")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure Prelude.$ do
    element <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast element)
    element <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty element)
    Prelude.pure element

  Prelude.pure
    UnboxedSum
      { element,
        dynNode = dynNode
      }

instance AST.Cast.Cast UnboxedSum where
  cast = cast_UnboxedSum

data UnboxedTuple = UnboxedTuple
  { element :: (AST.Err.Err (Data.List.NonEmpty.NonEmpty (Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_UnboxedTuple :: Api.Node -> Prelude.Maybe UnboxedTuple
cast_UnboxedTuple dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_tuple")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  element <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "element" namedMap))
  element <- Prelude.pure Prelude.$ do
    element <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast element)
    element <- AST.Runtime.justOrErr "nonEmpty" (Data.List.NonEmpty.nonEmpty element)
    Prelude.pure element

  Prelude.pure
    UnboxedTuple
      { element,
        dynNode = dynNode
      }

instance AST.Cast.Cast UnboxedTuple where
  cast = cast_UnboxedTuple

data UnboxedUnit = UnboxedUnit {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast UnboxedUnit where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "unboxed_unit")
    Prelude.pure (UnboxedUnit {dynNode = dynNode})

data Unit = Unit {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Unit where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "unit")
    Prelude.pure (Unit {dynNode = dynNode})

data Via = Via
  { type' :: (AST.Err.Err QuantifiedType),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Via :: Api.Node -> Prelude.Maybe Via
cast_Via dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "via")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  type' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "type" namedMap))
  type' <- Prelude.pure Prelude.$ do
    type' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast type')
    type' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle type')
    Prelude.pure type'

  Prelude.pure
    Via
      { type',
        dynNode = dynNode
      }

instance AST.Cast.Cast Via where
  cast = cast_Via

data ViewPattern = ViewPattern
  { expression :: (AST.Err.Err (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    pattern' :: (AST.Err.Err (Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)),
    dynNode :: Api.Node
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ViewPattern :: Api.Node -> Prelude.Maybe ViewPattern
cast_ViewPattern dynNode = do
  Control.Monad.guard (Api.nodeType dynNode Prelude.== "view_pattern")
  let (extraNodes, positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namedMap <- Prelude.pure (Data.Map.Strict.insert (Data.Text.pack "children") positional namedMap)
  expression <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "expression" namedMap))
  expression <- Prelude.pure Prelude.$ do
    expression <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast expression)
    expression <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle expression)
    Prelude.pure expression

  pattern' <- Prelude.pure (AST.Runtime.flattenMaybeList (Data.Map.Strict.lookup "pattern" namedMap))
  pattern' <- Prelude.pure Prelude.$ do
    pattern' <- AST.Runtime.justOrErr "cast each node" (Prelude.mapM AST.Cast.cast pattern')
    pattern' <- AST.Runtime.justOrErr "required, single" (AST.Runtime.listIsSingle pattern')
    Prelude.pure pattern'

  Prelude.pure
    ViewPattern
      { expression,
        pattern',
        dynNode = dynNode
      }

instance AST.Cast.Cast ViewPattern where
  cast = cast_ViewPattern

data Wildcard = Wildcard {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Wildcard where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "wildcard")
    Prelude.pure (Wildcard {dynNode = dynNode})

data AllNames = AllNames {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast AllNames where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "all_names")
    Prelude.pure (AllNames {dynNode = dynNode})

data CallingConvention = CallingConvention {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast CallingConvention where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "calling_convention")
    Prelude.pure (CallingConvention {dynNode = dynNode})

data Char = Char {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Char where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "char")
    Prelude.pure (Char {dynNode = dynNode})

data Comment = Comment {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Comment where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "comment")
    Prelude.pure (Comment {dynNode = dynNode})

data Constructor = Constructor {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Constructor where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "constructor")
    Prelude.pure (Constructor {dynNode = dynNode})

data Cpp = Cpp {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Cpp where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "cpp")
    Prelude.pure (Cpp {dynNode = dynNode})

data Float = Float {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Float where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "float")
    Prelude.pure (Float {dynNode = dynNode})

data Haddock = Haddock {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Haddock where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "haddock")
    Prelude.pure (Haddock {dynNode = dynNode})

data ImplicitVariable = ImplicitVariable {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ImplicitVariable where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "implicit_variable")
    Prelude.pure (ImplicitVariable {dynNode = dynNode})

data ImportPackage = ImportPackage {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ImportPackage where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "import_package")
    Prelude.pure (ImportPackage {dynNode = dynNode})

data Label = Label {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Label where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "label")
    Prelude.pure (Label {dynNode = dynNode})

data ModuleId = ModuleId {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ModuleId where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "module_id")
    Prelude.pure (ModuleId {dynNode = dynNode})

data Name = Name {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Name where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "name")
    Prelude.pure (Name {dynNode = dynNode})

data Pragma = Pragma {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Pragma where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "pragma")
    Prelude.pure (Pragma {dynNode = dynNode})

data QuasiquoteBody = QuasiquoteBody {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast QuasiquoteBody where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "quasiquote_body")
    Prelude.pure (QuasiquoteBody {dynNode = dynNode})

data Safety = Safety {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Safety where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "safety")
    Prelude.pure (Safety {dynNode = dynNode})

data String = String {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast String where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "string")
    Prelude.pure (String {dynNode = dynNode})

data Variable = Variable {dynNode :: Api.Node}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Variable where
  cast dynNode = do
    Control.Monad.guard (Api.nodeType dynNode Prelude.== "variable")
    Prelude.pure (Variable {dynNode = dynNode})
