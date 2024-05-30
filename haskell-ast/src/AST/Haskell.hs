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
import Data.List.NonEmpty qualified
import Data.Map.Strict qualified
import Data.Sum qualified as Sum
import GHC.Generics qualified
import TreeSitter.Api qualified as Api
import Prelude qualified

newtype ClassDecl = ClassDecl {getClassDecl :: (AST.Node.Node (DataFamily Sum.:+ Decl Sum.:+ DefaultSignature Sum.:+ Fixity Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ClassDecl where
  cast node = do
    getClassDecl <- AST.Cast.cast node
    Prelude.pure (ClassDecl {getClassDecl})

newtype Constraint = Constraint {getConstraint :: (AST.Node.Node (Apply Sum.:+ Infix Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Tuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Constraint where
  cast node = do
    getConstraint <- AST.Cast.cast node
    Prelude.pure (Constraint {getConstraint})

newtype Constraints = Constraints {getConstraints :: (AST.Node.Node (Constraint Sum.:+ Context Sum.:+ Forall Sum.:+ ImplicitParameter Sum.:+ Signature Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Constraints where
  cast node = do
    getConstraints <- AST.Cast.cast node
    Prelude.pure (Constraints {getConstraints})

newtype Decl = Decl {getDecl :: (AST.Node.Node (Bind Sum.:+ Function Sum.:+ Signature Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Decl where
  cast node = do
    getDecl <- AST.Cast.cast node
    Prelude.pure (Decl {getDecl})

newtype Declaration = Declaration {getDeclaration :: (AST.Node.Node (Class Sum.:+ DataFamily Sum.:+ DataInstance Sum.:+ DataType Sum.:+ Decl Sum.:+ DefaultTypes Sum.:+ DerivingInstance Sum.:+ Fixity Sum.:+ ForeignExport Sum.:+ ForeignImport Sum.:+ Instance Sum.:+ KindSignature Sum.:+ Newtype Sum.:+ PatternSynonym Sum.:+ RoleAnnotation Sum.:+ TopSplice Sum.:+ TypeFamily Sum.:+ TypeInstance Sum.:+ TypeSynomym Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Declaration where
  cast node = do
    getDeclaration <- AST.Cast.cast node
    Prelude.pure (Declaration {getDeclaration})

newtype Expression = Expression {getExpression :: (AST.Node.Node (Apply Sum.:+ ArithmeticSequence Sum.:+ Case Sum.:+ Conditional Sum.:+ Constructor Sum.:+ Do Sum.:+ ImplicitVariable Sum.:+ Infix Sum.:+ Label Sum.:+ Lambda Sum.:+ LambdaCase Sum.:+ LambdaCases Sum.:+ LeftSection Sum.:+ LetIn Sum.:+ List Sum.:+ ListComprehension Sum.:+ Literal Sum.:+ MultiWayIf Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Projection Sum.:+ ProjectionSelector Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Quote Sum.:+ Record Sum.:+ RightSection Sum.:+ Splice Sum.:+ ThQuotedName Sum.:+ Tuple Sum.:+ TypedQuote Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Expression where
  cast node = do
    getExpression <- AST.Cast.cast node
    Prelude.pure (Expression {getExpression})

newtype Guard = Guard {getGuard :: (AST.Node.Node (Boolean Sum.:+ Let Sum.:+ PatternGuard Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Guard where
  cast node = do
    getGuard <- AST.Cast.cast node
    Prelude.pure (Guard {getGuard})

newtype InstanceDecl = InstanceDecl {getInstanceDecl :: (AST.Node.Node (DataInstance Sum.:+ Decl Sum.:+ TypeInstance Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast InstanceDecl where
  cast node = do
    getInstanceDecl <- AST.Cast.cast node
    Prelude.pure (InstanceDecl {getInstanceDecl})

newtype Pattern = Pattern {getPattern :: (AST.Node.Node (Apply Sum.:+ As Sum.:+ Constructor Sum.:+ Infix Sum.:+ Irrefutable Sum.:+ List Sum.:+ Literal Sum.:+ Negation Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Record Sum.:+ Splice Sum.:+ Strict Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Pattern where
  cast node = do
    getPattern <- AST.Cast.cast node
    Prelude.pure (Pattern {getPattern})

newtype Qualifier = Qualifier {getQualifier :: (AST.Node.Node (Boolean Sum.:+ Generator Sum.:+ Group Sum.:+ Let Sum.:+ Transform Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Qualifier where
  cast node = do
    getQualifier <- AST.Cast.cast node
    Prelude.pure (Qualifier {getQualifier})

newtype QuantifiedType = QuantifiedType {getQuantifiedType :: (AST.Node.Node (Context Sum.:+ Forall Sum.:+ ForallRequired Sum.:+ Function Sum.:+ ImplicitParameter Sum.:+ LinearFunction Sum.:+ Type Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast QuantifiedType where
  cast node = do
    getQuantifiedType <- AST.Cast.cast node
    Prelude.pure (QuantifiedType {getQuantifiedType})

newtype Statement = Statement {getStatement :: (AST.Node.Node (Bind Sum.:+ Exp Sum.:+ Let Sum.:+ Rec Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Statement where
  cast node = do
    getStatement <- AST.Cast.cast node
    Prelude.pure (Statement {getStatement})

newtype Type = Type {getType :: (AST.Node.Node (Apply Sum.:+ Infix Sum.:+ List Sum.:+ Literal Sum.:+ Name Sum.:+ Parens Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ PrefixTuple Sum.:+ PrefixUnboxedSum Sum.:+ PrefixUnboxedTuple Sum.:+ Promoted Sum.:+ Qualified Sum.:+ Quasiquote Sum.:+ Splice Sum.:+ Star Sum.:+ Tuple Sum.:+ UnboxedSum Sum.:+ UnboxedTuple Sum.:+ UnboxedUnit Sum.:+ Unit Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Type where
  cast node = do
    getType <- AST.Cast.cast node
    Prelude.pure (Type {getType})

newtype TypeParam = TypeParam {getTypeParam :: (AST.Node.Node (Invisible Sum.:+ Parens Sum.:+ Variable Sum.:+ Wildcard Sum.:+ Sum.Nil))}
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast TypeParam where
  cast node = do
    getTypeParam <- AST.Cast.cast node
    Prelude.pure (TypeParam {getTypeParam})

data AbstractFamily = AbstractFamily
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast AbstractFamily where
  cast _ = Prelude.pure AbstractFamily

data Alternative = Alternative
  { binds :: (Prelude.Maybe (AST.Node.Node (LocalBinds Sum.:+ Sum.Nil))),
    match :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Match Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (Patterns Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Alternative :: Api.Node -> Prelude.Maybe Alternative
cast_Alternative dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  binds <- (Data.Map.Strict.lookup "binds" namedMap)
  binds <- (Prelude.mapM AST.Cast.cast binds)
  match <- (Data.Map.Strict.lookup "match" namedMap)
  match <- (Prelude.mapM AST.Cast.cast match)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
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
  { alternative :: ([(AST.Node.Node (Alternative Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Alternatives :: Api.Node -> Prelude.Maybe Alternatives
cast_Alternatives dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alternative <- (Data.Map.Strict.lookup "alternative" namedMap)
  alternative <- (Prelude.mapM AST.Cast.cast alternative)
  Prelude.pure
    Alternatives
      { alternative
      }

instance AST.Cast.Cast Alternatives where
  cast = cast_Alternatives

data Annotated = Annotated
  { kind :: (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Annotated :: Api.Node -> Prelude.Maybe Annotated
cast_Annotated dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  kind <- (Data.Map.Strict.lookup "kind" namedMap)
  kind <- (Prelude.mapM AST.Cast.cast kind)
  kind <- AST.Runtime.listIsSingle kind
  Prelude.pure
    Annotated
      { kind
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  argument <- (Data.Map.Strict.lookup "argument" namedMap)
  argument <- (Prelude.mapM AST.Cast.cast argument)
  constructor <- (Data.Map.Strict.lookup "constructor" namedMap)
  constructor <- (Prelude.mapM AST.Cast.cast constructor)
  function <- (Data.Map.Strict.lookup "function" namedMap)
  function <- (Prelude.mapM AST.Cast.cast function)
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  from <- (Data.Map.Strict.lookup "from" namedMap)
  from <- (Prelude.mapM AST.Cast.cast from)
  step <- (Data.Map.Strict.lookup "step" namedMap)
  step <- (Prelude.mapM AST.Cast.cast step)
  to <- (Data.Map.Strict.lookup "to" namedMap)
  to <- (Prelude.mapM AST.Cast.cast to)
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
  { bind :: (AST.Node.Node (Variable Sum.:+ Sum.Nil)),
    pattern' :: (AST.Node.Node (Pattern Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_As :: Api.Node -> Prelude.Maybe As
cast_As dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  bind <- (Data.Map.Strict.lookup "bind" namedMap)
  bind <- (Prelude.mapM AST.Cast.cast bind)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
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
  { namespace :: (AST.Node.Node ((AST.Token.Token "type") Sum.:+ Sum.Nil)),
    type' :: (AST.Node.Node (Name Sum.:+ Qualified Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_AssociatedType :: Api.Node -> Prelude.Maybe AssociatedType
cast_AssociatedType dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  namespace <- (Data.Map.Strict.lookup "namespace" namedMap)
  namespace <- (Prelude.mapM AST.Cast.cast namespace)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
    binds :: (Prelude.Maybe (AST.Node.Node (LocalBinds Sum.:+ Sum.Nil))),
    expression :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    implicit :: (Prelude.Maybe (AST.Node.Node (ImplicitVariable Sum.:+ Sum.Nil))),
    match :: ([(AST.Node.Node (Match Sum.:+ Sum.Nil))]),
    name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Bind :: Api.Node -> Prelude.Maybe Bind
cast_Bind dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- (Data.Map.Strict.lookup "arrow" namedMap)
  arrow <- (Prelude.mapM AST.Cast.cast arrow)
  binds <- (Data.Map.Strict.lookup "binds" namedMap)
  binds <- (Prelude.mapM AST.Cast.cast binds)
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  implicit <- (Data.Map.Strict.lookup "implicit" namedMap)
  implicit <- (Prelude.mapM AST.Cast.cast implicit)
  match <- (Data.Map.Strict.lookup "match" namedMap)
  match <- (Prelude.mapM AST.Cast.cast match)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  name <- Data.List.NonEmpty.nonEmpty name
  Prelude.pure
    BindingList
      { name
      }

instance AST.Cast.Cast BindingList where
  cast = cast_BindingList

data Boolean = Boolean
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Boolean :: Api.Node -> Prelude.Maybe Boolean
cast_Boolean dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Boolean
      {
      }

instance AST.Cast.Cast Boolean where
  cast = cast_Boolean

data Case = Case
  { alternatives :: (Prelude.Maybe (AST.Node.Node (Alternatives Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Case :: Api.Node -> Prelude.Maybe Case
cast_Case dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alternatives <- (Data.Map.Strict.lookup "alternatives" namedMap)
  alternatives <- (Prelude.mapM AST.Cast.cast alternatives)
  alternatives <- AST.Runtime.listOptionalSingle alternatives
  Prelude.pure
    Case
      { alternatives
      }

instance AST.Cast.Cast Case where
  cast = cast_Case

data Children = Children
  { element :: ([(AST.Node.Node (AllNames Sum.:+ AssociatedType Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Children :: Api.Node -> Prelude.Maybe Children
cast_Children dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- (Data.Map.Strict.lookup "element" namedMap)
  element <- (Prelude.mapM AST.Cast.cast element)
  Prelude.pure
    Children
      { element
      }

instance AST.Cast.Cast Children where
  cast = cast_Children

data Class = Class
  { context :: (Prelude.Maybe (AST.Node.Node (Context Sum.:+ Sum.Nil))),
    declarations :: (Prelude.Maybe (AST.Node.Node (ClassDeclarations Sum.:+ Sum.Nil))),
    fundeps :: (Prelude.Maybe (AST.Node.Node (Fundeps Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Class :: Api.Node -> Prelude.Maybe Class
cast_Class dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  context <- (Data.Map.Strict.lookup "context" namedMap)
  context <- (Prelude.mapM AST.Cast.cast context)
  declarations <- (Data.Map.Strict.lookup "declarations" namedMap)
  declarations <- (Prelude.mapM AST.Cast.cast declarations)
  fundeps <- (Data.Map.Strict.lookup "fundeps" namedMap)
  fundeps <- (Prelude.mapM AST.Cast.cast fundeps)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  context <- AST.Runtime.listOptionalSingle context
  declarations <- AST.Runtime.listOptionalSingle declarations
  fundeps <- AST.Runtime.listOptionalSingle fundeps
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    Class
      { context,
        declarations,
        fundeps,
        name,
        patterns
      }

instance AST.Cast.Cast Class where
  cast = cast_Class

data ClassDeclarations = ClassDeclarations
  { declaration :: ([(AST.Node.Node (ClassDecl Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ClassDeclarations :: Api.Node -> Prelude.Maybe ClassDeclarations
cast_ClassDeclarations dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  declaration <- (Data.Map.Strict.lookup "declaration" namedMap)
  declaration <- (Prelude.mapM AST.Cast.cast declaration)
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  else' <- (Data.Map.Strict.lookup "else" namedMap)
  else' <- (Prelude.mapM AST.Cast.cast else')
  if' <- (Data.Map.Strict.lookup "if" namedMap)
  if' <- (Prelude.mapM AST.Cast.cast if')
  then' <- (Data.Map.Strict.lookup "then" namedMap)
  then' <- (Prelude.mapM AST.Cast.cast then')
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
  cast _ = Prelude.pure ConstructorOperator

data ConstructorSynonym = ConstructorSynonym
  { binds :: (Prelude.Maybe (AST.Node.Node (LocalBinds Sum.:+ Sum.Nil))),
    implicit :: (Prelude.Maybe (AST.Node.Node (ImplicitVariable Sum.:+ Sum.Nil))),
    match :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Match Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ConstructorSynonym :: Api.Node -> Prelude.Maybe ConstructorSynonym
cast_ConstructorSynonym dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  binds <- (Data.Map.Strict.lookup "binds" namedMap)
  binds <- (Prelude.mapM AST.Cast.cast binds)
  implicit <- (Data.Map.Strict.lookup "implicit" namedMap)
  implicit <- (Prelude.mapM AST.Cast.cast implicit)
  match <- (Data.Map.Strict.lookup "match" namedMap)
  match <- (Prelude.mapM AST.Cast.cast match)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
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
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ConstructorSynonyms :: Api.Node -> Prelude.Maybe ConstructorSynonyms
cast_ConstructorSynonyms dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    ConstructorSynonyms
      {
      }

instance AST.Cast.Cast ConstructorSynonyms where
  cast = cast_ConstructorSynonyms

data Context = Context
  { arrow :: (AST.Node.Node ((AST.Token.Token "=>") Sum.:+ (AST.Token.Token "⇒") Sum.:+ Sum.Nil)),
    constraint :: (Prelude.Maybe (AST.Node.Node (Constraints Sum.:+ Sum.Nil))),
    context :: (AST.Node.Node (Constraint Sum.:+ Sum.Nil)),
    type' :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Context :: Api.Node -> Prelude.Maybe Context
cast_Context dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- (Data.Map.Strict.lookup "arrow" namedMap)
  arrow <- (Prelude.mapM AST.Cast.cast arrow)
  constraint <- (Data.Map.Strict.lookup "constraint" namedMap)
  constraint <- (Prelude.mapM AST.Cast.cast constraint)
  context <- (Data.Map.Strict.lookup "context" namedMap)
  context <- (Prelude.mapM AST.Cast.cast context)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
    context :: (Prelude.Maybe (AST.Node.Node (Context Sum.:+ Sum.Nil))),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataConstructor :: Api.Node -> Prelude.Maybe DataConstructor
cast_DataConstructor dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructor <- (Data.Map.Strict.lookup "constructor" namedMap)
  constructor <- (Prelude.mapM AST.Cast.cast constructor)
  context <- (Data.Map.Strict.lookup "context" namedMap)
  context <- (Prelude.mapM AST.Cast.cast context)
  forall' <- (Data.Map.Strict.lookup "forall" namedMap)
  forall' <- (Prelude.mapM AST.Cast.cast forall')
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
  { constructor :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (DataConstructor Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataConstructors :: Api.Node -> Prelude.Maybe DataConstructors
cast_DataConstructors dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructor <- (Data.Map.Strict.lookup "constructor" namedMap)
  constructor <- (Prelude.mapM AST.Cast.cast constructor)
  constructor <- Data.List.NonEmpty.nonEmpty constructor
  Prelude.pure
    DataConstructors
      { constructor
      }

instance AST.Cast.Cast DataConstructors where
  cast = cast_DataConstructors

data DataFamily = DataFamily
  { kind :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataFamily :: Api.Node -> Prelude.Maybe DataFamily
cast_DataFamily dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  kind <- (Data.Map.Strict.lookup "kind" namedMap)
  kind <- (Prelude.mapM AST.Cast.cast kind)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    DataFamily
      { kind,
        name,
        patterns
      }

instance AST.Cast.Cast DataFamily where
  cast = cast_DataFamily

data DataInstance = DataInstance
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataInstance :: Api.Node -> Prelude.Maybe DataInstance
cast_DataInstance dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    DataInstance
      {
      }

instance AST.Cast.Cast DataInstance where
  cast = cast_DataInstance

data DataType = DataType
  { constructors :: (Prelude.Maybe (AST.Node.Node (DataConstructors Sum.:+ GadtConstructors Sum.:+ Sum.Nil))),
    context :: (Prelude.Maybe (AST.Node.Node (Context Sum.:+ Sum.Nil))),
    deriving' :: ([(AST.Node.Node (Deriving Sum.:+ Sum.Nil))]),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DataType :: Api.Node -> Prelude.Maybe DataType
cast_DataType dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructors <- (Data.Map.Strict.lookup "constructors" namedMap)
  constructors <- (Prelude.mapM AST.Cast.cast constructors)
  context <- (Data.Map.Strict.lookup "context" namedMap)
  context <- (Prelude.mapM AST.Cast.cast context)
  deriving' <- (Data.Map.Strict.lookup "deriving" namedMap)
  deriving' <- (Prelude.mapM AST.Cast.cast deriving')
  forall' <- (Data.Map.Strict.lookup "forall" namedMap)
  forall' <- (Prelude.mapM AST.Cast.cast forall')
  kind <- (Data.Map.Strict.lookup "kind" namedMap)
  kind <- (Prelude.mapM AST.Cast.cast kind)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  constructors <- AST.Runtime.listOptionalSingle constructors
  context <- AST.Runtime.listOptionalSingle context
  forall' <- AST.Runtime.listOptionalSingle forall'
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    DataType
      { constructors,
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
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Declarations :: Api.Node -> Prelude.Maybe Declarations
cast_Declarations dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Declarations
      {
      }

instance AST.Cast.Cast Declarations where
  cast = cast_Declarations

data DefaultSignature = DefaultSignature
  { signature :: (AST.Node.Node (Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DefaultSignature :: Api.Node -> Prelude.Maybe DefaultSignature
cast_DefaultSignature dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  signature <- (Data.Map.Strict.lookup "signature" namedMap)
  signature <- (Prelude.mapM AST.Cast.cast signature)
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  Prelude.pure
    DefaultTypes
      { type'
      }

instance AST.Cast.Cast DefaultTypes where
  cast = cast_DefaultTypes

data Deriving = Deriving
  { classes :: (AST.Node.Node (Constraint Sum.:+ Sum.Nil)),
    strategy :: (Prelude.Maybe (AST.Node.Node (DerivingStrategy Sum.:+ Sum.Nil))),
    via :: (Prelude.Maybe (AST.Node.Node (Via Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Deriving :: Api.Node -> Prelude.Maybe Deriving
cast_Deriving dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  classes <- (Data.Map.Strict.lookup "classes" namedMap)
  classes <- (Prelude.mapM AST.Cast.cast classes)
  strategy <- (Data.Map.Strict.lookup "strategy" namedMap)
  strategy <- (Prelude.mapM AST.Cast.cast strategy)
  via <- (Data.Map.Strict.lookup "via" namedMap)
  via <- (Prelude.mapM AST.Cast.cast via)
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
  { context :: (Prelude.Maybe (AST.Node.Node (Context Sum.:+ Sum.Nil))),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypePatterns Sum.:+ Sum.Nil))),
    strategy :: (Prelude.Maybe (AST.Node.Node (DerivingStrategy Sum.:+ Sum.Nil))),
    via :: (Prelude.Maybe (AST.Node.Node (Via Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DerivingInstance :: Api.Node -> Prelude.Maybe DerivingInstance
cast_DerivingInstance dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  context <- (Data.Map.Strict.lookup "context" namedMap)
  context <- (Prelude.mapM AST.Cast.cast context)
  forall' <- (Data.Map.Strict.lookup "forall" namedMap)
  forall' <- (Prelude.mapM AST.Cast.cast forall')
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  strategy <- (Data.Map.Strict.lookup "strategy" namedMap)
  strategy <- (Prelude.mapM AST.Cast.cast strategy)
  via <- (Data.Map.Strict.lookup "via" namedMap)
  via <- (Prelude.mapM AST.Cast.cast via)
  context <- AST.Runtime.listOptionalSingle context
  forall' <- AST.Runtime.listOptionalSingle forall'
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  strategy <- AST.Runtime.listOptionalSingle strategy
  via <- AST.Runtime.listOptionalSingle via
  Prelude.pure
    DerivingInstance
      { context,
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
  cast _ = Prelude.pure DerivingStrategy

data Do = Do
  { statement :: ([(AST.Node.Node (Statement Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Do :: Api.Node -> Prelude.Maybe Do
cast_Do dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  statement <- (Data.Map.Strict.lookup "statement" namedMap)
  statement <- (Prelude.mapM AST.Cast.cast statement)
  Prelude.pure
    Do
      { statement
      }

instance AST.Cast.Cast Do where
  cast = cast_Do

data DoModule = DoModule
  { id :: (AST.Node.Node ((AST.Token.Token "do") Sum.:+ (AST.Token.Token "mdo") Sum.:+ Sum.Nil)),
    module' :: (AST.Node.Node (Module Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_DoModule :: Api.Node -> Prelude.Maybe DoModule
cast_DoModule dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  id <- (Data.Map.Strict.lookup "id" namedMap)
  id <- (Prelude.mapM AST.Cast.cast id)
  module' <- (Data.Map.Strict.lookup "module" namedMap)
  module' <- (Prelude.mapM AST.Cast.cast module')
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
  cast _ = Prelude.pure EmptyList

data Entity = Entity
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Entity :: Api.Node -> Prelude.Maybe Entity
cast_Entity dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Entity
      {
      }

instance AST.Cast.Cast Entity where
  cast = cast_Entity

data Equation = Equation
  { constructors :: (Prelude.Maybe (AST.Node.Node (ConstructorSynonyms Sum.:+ Sum.Nil))),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypePatterns Sum.:+ Sum.Nil))),
    synonym :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Equation :: Api.Node -> Prelude.Maybe Equation
cast_Equation dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructors <- (Data.Map.Strict.lookup "constructors" namedMap)
  constructors <- (Prelude.mapM AST.Cast.cast constructors)
  forall' <- (Data.Map.Strict.lookup "forall" namedMap)
  forall' <- (Prelude.mapM AST.Cast.cast forall')
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  synonym <- (Data.Map.Strict.lookup "synonym" namedMap)
  synonym <- (Prelude.mapM AST.Cast.cast synonym)
  constructors <- AST.Runtime.listOptionalSingle constructors
  forall' <- AST.Runtime.listOptionalSingle forall'
  name <- AST.Runtime.listOptionalSingle name
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  patterns <- AST.Runtime.listOptionalSingle patterns
  synonym <- AST.Runtime.listOptionalSingle synonym
  Prelude.pure
    Equation
      { constructors,
        forall',
        name,
        pattern',
        patterns,
        synonym
      }

instance AST.Cast.Cast Equation where
  cast = cast_Equation

data Equations = Equations
  { equation :: ([(AST.Node.Node (Equation Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Equations :: Api.Node -> Prelude.Maybe Equations
cast_Equations dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  equation <- (Data.Map.Strict.lookup "equation" namedMap)
  equation <- (Prelude.mapM AST.Cast.cast equation)
  Prelude.pure
    Equations
      { equation
      }

instance AST.Cast.Cast Equations where
  cast = cast_Equations

data Exp = Exp
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Exp :: Api.Node -> Prelude.Maybe Exp
cast_Exp dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Exp
      {
      }

instance AST.Cast.Cast Exp where
  cast = cast_Exp

data ExplicitType = ExplicitType
  { type' :: (AST.Node.Node (Type Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ExplicitType :: Api.Node -> Prelude.Maybe ExplicitType
cast_ExplicitType dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    ExplicitType
      { type'
      }

instance AST.Cast.Cast ExplicitType where
  cast = cast_ExplicitType

data Export = Export
  { children :: (Prelude.Maybe (AST.Node.Node (Children Sum.:+ Sum.Nil))),
    namespace :: (Prelude.Maybe (AST.Node.Node (Namespace Sum.:+ Sum.Nil))),
    operator :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ Qualified Sum.:+ Sum.Nil))),
    variable :: (Prelude.Maybe (AST.Node.Node (Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Export :: Api.Node -> Prelude.Maybe Export
cast_Export dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- (Data.Map.Strict.lookup "children" namedMap)
  children <- (Prelude.mapM AST.Cast.cast children)
  namespace <- (Data.Map.Strict.lookup "namespace" namedMap)
  namespace <- (Prelude.mapM AST.Cast.cast namespace)
  operator <- (Data.Map.Strict.lookup "operator" namedMap)
  operator <- (Prelude.mapM AST.Cast.cast operator)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  variable <- (Data.Map.Strict.lookup "variable" namedMap)
  variable <- (Prelude.mapM AST.Cast.cast variable)
  children <- AST.Runtime.listOptionalSingle children
  namespace <- AST.Runtime.listOptionalSingle namespace
  operator <- AST.Runtime.listOptionalSingle operator
  type' <- AST.Runtime.listOptionalSingle type'
  variable <- AST.Runtime.listOptionalSingle variable
  Prelude.pure
    Export
      { children,
        namespace,
        operator,
        type',
        variable
      }

instance AST.Cast.Cast Export where
  cast = cast_Export

data Exports = Exports
  { export :: ([(AST.Node.Node (Export Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Exports :: Api.Node -> Prelude.Maybe Exports
cast_Exports dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  export <- (Data.Map.Strict.lookup "export" namedMap)
  export <- (Prelude.mapM AST.Cast.cast export)
  Prelude.pure
    Exports
      { export
      }

instance AST.Cast.Cast Exports where
  cast = cast_Exports

data Field = Field
  { name :: ([(AST.Node.Node (FieldName Sum.:+ Sum.Nil))]),
    parameter :: (Prelude.Maybe (AST.Node.Node (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Field :: Api.Node -> Prelude.Maybe Field
cast_Field dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  parameter <- (Data.Map.Strict.lookup "parameter" namedMap)
  parameter <- (Prelude.mapM AST.Cast.cast parameter)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  parameter <- AST.Runtime.listOptionalSingle parameter
  type' <- AST.Runtime.listOptionalSingle type'
  Prelude.pure
    Field
      { name,
        parameter,
        type'
      }

instance AST.Cast.Cast Field where
  cast = cast_Field

data FieldName = FieldName
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldName :: Api.Node -> Prelude.Maybe FieldName
cast_FieldName dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    FieldName
      {
      }

instance AST.Cast.Cast FieldName where
  cast = cast_FieldName

data FieldPath = FieldPath
  { field :: (AST.Node.Node (FieldName Sum.:+ Qualified Sum.:+ Sum.Nil)),
    subfield :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (FieldName Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldPath :: Api.Node -> Prelude.Maybe FieldPath
cast_FieldPath dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- (Data.Map.Strict.lookup "field" namedMap)
  field <- (Prelude.mapM AST.Cast.cast field)
  subfield <- (Data.Map.Strict.lookup "subfield" namedMap)
  subfield <- (Prelude.mapM AST.Cast.cast subfield)
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
  { field :: (Prelude.Maybe (AST.Node.Node (FieldName Sum.:+ Qualified Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldPattern :: Api.Node -> Prelude.Maybe FieldPattern
cast_FieldPattern dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- (Data.Map.Strict.lookup "field" namedMap)
  field <- (Prelude.mapM AST.Cast.cast field)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
  field <- AST.Runtime.listOptionalSingle field
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  Prelude.pure
    FieldPattern
      { field,
        pattern'
      }

instance AST.Cast.Cast FieldPattern where
  cast = cast_FieldPattern

data FieldUpdate = FieldUpdate
  { expression :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    field :: (Prelude.Maybe (AST.Node.Node (FieldName Sum.:+ FieldPath Sum.:+ Qualified Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FieldUpdate :: Api.Node -> Prelude.Maybe FieldUpdate
cast_FieldUpdate dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  field <- (Data.Map.Strict.lookup "field" namedMap)
  field <- (Prelude.mapM AST.Cast.cast field)
  expression <- AST.Runtime.listOptionalSingle expression
  field <- AST.Runtime.listOptionalSingle field
  Prelude.pure
    FieldUpdate
      { expression,
        field
      }

instance AST.Cast.Cast FieldUpdate where
  cast = cast_FieldUpdate

data Fields = Fields
  { field :: ([(AST.Node.Node (Field Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fields :: Api.Node -> Prelude.Maybe Fields
cast_Fields dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- (Data.Map.Strict.lookup "field" namedMap)
  field <- (Prelude.mapM AST.Cast.cast field)
  Prelude.pure
    Fields
      { field
      }

instance AST.Cast.Cast Fields where
  cast = cast_Fields

data Fixity = Fixity
  { associativity :: (AST.Node.Node ((AST.Token.Token "infix") Sum.:+ (AST.Token.Token "infixl") Sum.:+ (AST.Token.Token "infixr") Sum.:+ Sum.Nil)),
    operator :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node ((AST.Token.Token ",") Sum.:+ ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Sum.Nil))),
    precedence :: (Prelude.Maybe (AST.Node.Node (Integer Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fixity :: Api.Node -> Prelude.Maybe Fixity
cast_Fixity dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  associativity <- (Data.Map.Strict.lookup "associativity" namedMap)
  associativity <- (Prelude.mapM AST.Cast.cast associativity)
  operator <- (Data.Map.Strict.lookup "operator" namedMap)
  operator <- (Prelude.mapM AST.Cast.cast operator)
  precedence <- (Data.Map.Strict.lookup "precedence" namedMap)
  precedence <- (Prelude.mapM AST.Cast.cast precedence)
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
  { constraint :: (Prelude.Maybe (AST.Node.Node (Constraints Sum.:+ Sum.Nil))),
    quantifier :: (AST.Node.Node ((AST.Token.Token "forall") Sum.:+ (AST.Token.Token "∀") Sum.:+ Sum.Nil)),
    type' :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))),
    variables :: (Prelude.Maybe (AST.Node.Node (QuantifiedVariables Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Forall :: Api.Node -> Prelude.Maybe Forall
cast_Forall dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constraint <- (Data.Map.Strict.lookup "constraint" namedMap)
  constraint <- (Prelude.mapM AST.Cast.cast constraint)
  quantifier <- (Data.Map.Strict.lookup "quantifier" namedMap)
  quantifier <- (Prelude.mapM AST.Cast.cast quantifier)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  variables <- (Data.Map.Strict.lookup "variables" namedMap)
  variables <- (Prelude.mapM AST.Cast.cast variables)
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
    type' :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))),
    variables :: (Prelude.Maybe (AST.Node.Node (QuantifiedVariables Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ForallRequired :: Api.Node -> Prelude.Maybe ForallRequired
cast_ForallRequired dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  quantifier <- (Data.Map.Strict.lookup "quantifier" namedMap)
  quantifier <- (Prelude.mapM AST.Cast.cast quantifier)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  variables <- (Data.Map.Strict.lookup "variables" namedMap)
  variables <- (Prelude.mapM AST.Cast.cast variables)
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
  { callingConvention :: (AST.Node.Node (CallingConvention Sum.:+ Sum.Nil)),
    entity :: (Prelude.Maybe (AST.Node.Node (Entity Sum.:+ Sum.Nil))),
    signature :: (AST.Node.Node (Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ForeignExport :: Api.Node -> Prelude.Maybe ForeignExport
cast_ForeignExport dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  callingConvention <- (Data.Map.Strict.lookup "calling_convention" namedMap)
  callingConvention <- (Prelude.mapM AST.Cast.cast callingConvention)
  entity <- (Data.Map.Strict.lookup "entity" namedMap)
  entity <- (Prelude.mapM AST.Cast.cast entity)
  signature <- (Data.Map.Strict.lookup "signature" namedMap)
  signature <- (Prelude.mapM AST.Cast.cast signature)
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
  { callingConvention :: (AST.Node.Node (CallingConvention Sum.:+ Sum.Nil)),
    entity :: (Prelude.Maybe (AST.Node.Node (Entity Sum.:+ Sum.Nil))),
    safety :: (Prelude.Maybe (AST.Node.Node (Safety Sum.:+ Sum.Nil))),
    signature :: (AST.Node.Node (Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ForeignImport :: Api.Node -> Prelude.Maybe ForeignImport
cast_ForeignImport dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  callingConvention <- (Data.Map.Strict.lookup "calling_convention" namedMap)
  callingConvention <- (Prelude.mapM AST.Cast.cast callingConvention)
  entity <- (Data.Map.Strict.lookup "entity" namedMap)
  entity <- (Prelude.mapM AST.Cast.cast entity)
  safety <- (Data.Map.Strict.lookup "safety" namedMap)
  safety <- (Prelude.mapM AST.Cast.cast safety)
  signature <- (Data.Map.Strict.lookup "signature" namedMap)
  signature <- (Prelude.mapM AST.Cast.cast signature)
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
  { arrow :: (Prelude.Maybe (AST.Node.Node ((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil))),
    binds :: (Prelude.Maybe (AST.Node.Node (LocalBinds Sum.:+ Sum.Nil))),
    match :: ([(AST.Node.Node (Match Sum.:+ Sum.Nil))]),
    name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    parameter :: (Prelude.Maybe (AST.Node.Node (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil))),
    parens :: (Prelude.Maybe (AST.Node.Node (FunctionHeadParens Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (Patterns Sum.:+ Sum.Nil))),
    result :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Function :: Api.Node -> Prelude.Maybe Function
cast_Function dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- (Data.Map.Strict.lookup "arrow" namedMap)
  arrow <- (Prelude.mapM AST.Cast.cast arrow)
  binds <- (Data.Map.Strict.lookup "binds" namedMap)
  binds <- (Prelude.mapM AST.Cast.cast binds)
  match <- (Data.Map.Strict.lookup "match" namedMap)
  match <- (Prelude.mapM AST.Cast.cast match)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  parameter <- (Data.Map.Strict.lookup "parameter" namedMap)
  parameter <- (Prelude.mapM AST.Cast.cast parameter)
  parens <- (Data.Map.Strict.lookup "parens" namedMap)
  parens <- (Prelude.mapM AST.Cast.cast parens)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  result <- (Data.Map.Strict.lookup "result" namedMap)
  result <- (Prelude.mapM AST.Cast.cast result)
  arrow <- AST.Runtime.listOptionalSingle arrow
  binds <- AST.Runtime.listOptionalSingle binds
  name <- AST.Runtime.listOptionalSingle name
  parameter <- AST.Runtime.listOptionalSingle parameter
  parens <- AST.Runtime.listOptionalSingle parens
  patterns <- AST.Runtime.listOptionalSingle patterns
  result <- AST.Runtime.listOptionalSingle result
  Prelude.pure
    Function
      { arrow,
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
  { name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    parens :: (Prelude.Maybe (AST.Node.Node (FunctionHeadParens Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (Patterns Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_FunctionHeadParens :: Api.Node -> Prelude.Maybe FunctionHeadParens
cast_FunctionHeadParens dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  parens <- (Data.Map.Strict.lookup "parens" namedMap)
  parens <- (Prelude.mapM AST.Cast.cast parens)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  name <- AST.Runtime.listOptionalSingle name
  parens <- AST.Runtime.listOptionalSingle parens
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    FunctionHeadParens
      { name,
        parens,
        patterns
      }

instance AST.Cast.Cast FunctionHeadParens where
  cast = cast_FunctionHeadParens

data Fundep = Fundep
  { determined :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Variable Sum.:+ Sum.Nil))),
    matched :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Variable Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fundep :: Api.Node -> Prelude.Maybe Fundep
cast_Fundep dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  determined <- (Data.Map.Strict.lookup "determined" namedMap)
  determined <- (Prelude.mapM AST.Cast.cast determined)
  matched <- (Data.Map.Strict.lookup "matched" namedMap)
  matched <- (Prelude.mapM AST.Cast.cast matched)
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
  { fundep :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Fundep Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Fundeps :: Api.Node -> Prelude.Maybe Fundeps
cast_Fundeps dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  fundep <- (Data.Map.Strict.lookup "fundep" namedMap)
  fundep <- (Prelude.mapM AST.Cast.cast fundep)
  fundep <- Data.List.NonEmpty.nonEmpty fundep
  Prelude.pure
    Fundeps
      { fundep
      }

instance AST.Cast.Cast Fundeps where
  cast = cast_Fundeps

data GadtConstructor = GadtConstructor
  { context :: (Prelude.Maybe (AST.Node.Node (Context Sum.:+ Sum.Nil))),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))),
    names :: (Prelude.Maybe (AST.Node.Node (BindingList Sum.:+ Sum.Nil))),
    type' :: (AST.Node.Node (Prefix Sum.:+ Record Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_GadtConstructor :: Api.Node -> Prelude.Maybe GadtConstructor
cast_GadtConstructor dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  context <- (Data.Map.Strict.lookup "context" namedMap)
  context <- (Prelude.mapM AST.Cast.cast context)
  forall' <- (Data.Map.Strict.lookup "forall" namedMap)
  forall' <- (Prelude.mapM AST.Cast.cast forall')
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  names <- (Data.Map.Strict.lookup "names" namedMap)
  names <- (Prelude.mapM AST.Cast.cast names)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
  { constructor :: ([(AST.Node.Node (GadtConstructor Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_GadtConstructors :: Api.Node -> Prelude.Maybe GadtConstructors
cast_GadtConstructors dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructor <- (Data.Map.Strict.lookup "constructor" namedMap)
  constructor <- (Prelude.mapM AST.Cast.cast constructor)
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- (Data.Map.Strict.lookup "arrow" namedMap)
  arrow <- (Prelude.mapM AST.Cast.cast arrow)
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  classifier <- (Data.Map.Strict.lookup "classifier" namedMap)
  classifier <- (Prelude.mapM AST.Cast.cast classifier)
  key <- (Data.Map.Strict.lookup "key" namedMap)
  key <- (Prelude.mapM AST.Cast.cast key)
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
  { guard :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Guard Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Guards :: Api.Node -> Prelude.Maybe Guards
cast_Guards dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  guard <- (Data.Map.Strict.lookup "guard" namedMap)
  guard <- (Prelude.mapM AST.Cast.cast guard)
  guard <- Data.List.NonEmpty.nonEmpty guard
  Prelude.pure
    Guards
      { guard
      }

instance AST.Cast.Cast Guards where
  cast = cast_Guards

data Haskell = Haskell
  { declarations :: (Prelude.Maybe (AST.Node.Node (Declarations Sum.:+ Sum.Nil))),
    imports :: (Prelude.Maybe (AST.Node.Node (Imports Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Haskell :: Api.Node -> Prelude.Maybe Haskell
cast_Haskell dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  declarations <- (Data.Map.Strict.lookup "declarations" namedMap)
  declarations <- (Prelude.mapM AST.Cast.cast declarations)
  imports <- (Data.Map.Strict.lookup "imports" namedMap)
  imports <- (Prelude.mapM AST.Cast.cast imports)
  declarations <- AST.Runtime.listOptionalSingle declarations
  imports <- AST.Runtime.listOptionalSingle imports
  Prelude.pure
    Haskell
      { declarations,
        imports
      }

instance AST.Cast.Cast Haskell where
  cast = cast_Haskell

data Header = Header
  { exports :: (Prelude.Maybe (AST.Node.Node (Exports Sum.:+ Sum.Nil))),
    module' :: (AST.Node.Node (Module Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Header :: Api.Node -> Prelude.Maybe Header
cast_Header dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  exports <- (Data.Map.Strict.lookup "exports" namedMap)
  exports <- (Prelude.mapM AST.Cast.cast exports)
  module' <- (Data.Map.Strict.lookup "module" namedMap)
  module' <- (Prelude.mapM AST.Cast.cast module')
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
  { name :: (AST.Node.Node (ImplicitVariable Sum.:+ Sum.Nil)),
    type' :: (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ImplicitParameter :: Api.Node -> Prelude.Maybe ImplicitParameter
cast_ImplicitParameter dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
  { alias :: (Prelude.Maybe (AST.Node.Node (Module Sum.:+ Sum.Nil))),
    module' :: (AST.Node.Node (Module Sum.:+ Sum.Nil)),
    names :: (Prelude.Maybe (AST.Node.Node (ImportList Sum.:+ Sum.Nil))),
    package :: (Prelude.Maybe (AST.Node.Node (ImportPackage Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Import :: Api.Node -> Prelude.Maybe Import
cast_Import dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alias <- (Data.Map.Strict.lookup "alias" namedMap)
  alias <- (Prelude.mapM AST.Cast.cast alias)
  module' <- (Data.Map.Strict.lookup "module" namedMap)
  module' <- (Prelude.mapM AST.Cast.cast module')
  names <- (Data.Map.Strict.lookup "names" namedMap)
  names <- (Prelude.mapM AST.Cast.cast names)
  package <- (Data.Map.Strict.lookup "package" namedMap)
  package <- (Prelude.mapM AST.Cast.cast package)
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
  { name :: ([(AST.Node.Node (ImportName Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ImportList :: Api.Node -> Prelude.Maybe ImportList
cast_ImportList dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  Prelude.pure
    ImportList
      { name
      }

instance AST.Cast.Cast ImportList where
  cast = cast_ImportList

data ImportName = ImportName
  { children :: (Prelude.Maybe (AST.Node.Node (Children Sum.:+ Sum.Nil))),
    namespace :: (Prelude.Maybe (AST.Node.Node (Namespace Sum.:+ Sum.Nil))),
    operator :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ Qualified Sum.:+ Sum.Nil))),
    variable :: (Prelude.Maybe (AST.Node.Node (Qualified Sum.:+ Variable Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ImportName :: Api.Node -> Prelude.Maybe ImportName
cast_ImportName dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  children <- (Data.Map.Strict.lookup "children" namedMap)
  children <- (Prelude.mapM AST.Cast.cast children)
  namespace <- (Data.Map.Strict.lookup "namespace" namedMap)
  namespace <- (Prelude.mapM AST.Cast.cast namespace)
  operator <- (Data.Map.Strict.lookup "operator" namedMap)
  operator <- (Prelude.mapM AST.Cast.cast operator)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  variable <- (Data.Map.Strict.lookup "variable" namedMap)
  variable <- (Prelude.mapM AST.Cast.cast variable)
  children <- AST.Runtime.listOptionalSingle children
  namespace <- AST.Runtime.listOptionalSingle namespace
  operator <- AST.Runtime.listOptionalSingle operator
  type' <- AST.Runtime.listOptionalSingle type'
  variable <- AST.Runtime.listOptionalSingle variable
  Prelude.pure
    ImportName
      { children,
        namespace,
        operator,
        type',
        variable
      }

instance AST.Cast.Cast ImportName where
  cast = cast_ImportName

data Imports = Imports
  { import' :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Import Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Imports :: Api.Node -> Prelude.Maybe Imports
cast_Imports dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  import' <- (Data.Map.Strict.lookup "import" namedMap)
  import' <- (Prelude.mapM AST.Cast.cast import')
  import' <- Data.List.NonEmpty.nonEmpty import'
  Prelude.pure
    Imports
      { import'
      }

instance AST.Cast.Cast Imports where
  cast = cast_Imports

data Inferred = Inferred
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Inferred :: Api.Node -> Prelude.Maybe Inferred
cast_Inferred dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Inferred
      {
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  leftOperand <- (Data.Map.Strict.lookup "left_operand" namedMap)
  leftOperand <- (Prelude.mapM AST.Cast.cast leftOperand)
  operator <- (Data.Map.Strict.lookup "operator" namedMap)
  operator <- (Prelude.mapM AST.Cast.cast operator)
  rightOperand <- (Data.Map.Strict.lookup "right_operand" namedMap)
  rightOperand <- (Prelude.mapM AST.Cast.cast rightOperand)
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
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_InfixId :: Api.Node -> Prelude.Maybe InfixId
cast_InfixId dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    InfixId
      {
      }

instance AST.Cast.Cast InfixId where
  cast = cast_InfixId

data Instance = Instance
  { context :: (Prelude.Maybe (AST.Node.Node (Context Sum.:+ Sum.Nil))),
    declarations :: (Prelude.Maybe (AST.Node.Node (InstanceDeclarations Sum.:+ Sum.Nil))),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypePatterns Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Instance :: Api.Node -> Prelude.Maybe Instance
cast_Instance dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  context <- (Data.Map.Strict.lookup "context" namedMap)
  context <- (Prelude.mapM AST.Cast.cast context)
  declarations <- (Data.Map.Strict.lookup "declarations" namedMap)
  declarations <- (Prelude.mapM AST.Cast.cast declarations)
  forall' <- (Data.Map.Strict.lookup "forall" namedMap)
  forall' <- (Prelude.mapM AST.Cast.cast forall')
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  context <- AST.Runtime.listOptionalSingle context
  declarations <- AST.Runtime.listOptionalSingle declarations
  forall' <- AST.Runtime.listOptionalSingle forall'
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    Instance
      { context,
        declarations,
        forall',
        name,
        patterns
      }

instance AST.Cast.Cast Instance where
  cast = cast_Instance

data InstanceDeclarations = InstanceDeclarations
  { declaration :: ([(AST.Node.Node (InstanceDecl Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_InstanceDeclarations :: Api.Node -> Prelude.Maybe InstanceDeclarations
cast_InstanceDeclarations dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  declaration <- (Data.Map.Strict.lookup "declaration" namedMap)
  declaration <- (Prelude.mapM AST.Cast.cast declaration)
  Prelude.pure
    InstanceDeclarations
      { declaration
      }

instance AST.Cast.Cast InstanceDeclarations where
  cast = cast_InstanceDeclarations

data Integer = Integer
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Integer where
  cast _ = Prelude.pure Integer

data Invisible = Invisible
  { bind :: (AST.Node.Node (TypeParam Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Invisible :: Api.Node -> Prelude.Maybe Invisible
cast_Invisible dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  bind <- (Data.Map.Strict.lookup "bind" namedMap)
  bind <- (Prelude.mapM AST.Cast.cast bind)
  bind <- AST.Runtime.listIsSingle bind
  Prelude.pure
    Invisible
      { bind
      }

instance AST.Cast.Cast Invisible where
  cast = cast_Invisible

data Irrefutable = Irrefutable
  { pattern' :: (AST.Node.Node (Pattern Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Irrefutable :: Api.Node -> Prelude.Maybe Irrefutable
cast_Irrefutable dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
  pattern' <- AST.Runtime.listIsSingle pattern'
  Prelude.pure
    Irrefutable
      { pattern'
      }

instance AST.Cast.Cast Irrefutable where
  cast = cast_Irrefutable

data KindApplication = KindApplication
  { type' :: (AST.Node.Node (Type Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_KindApplication :: Api.Node -> Prelude.Maybe KindApplication
cast_KindApplication dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    KindApplication
      { type'
      }

instance AST.Cast.Cast KindApplication where
  cast = cast_KindApplication

data KindSignature = KindSignature
  { kind :: (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil)),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_KindSignature :: Api.Node -> Prelude.Maybe KindSignature
cast_KindSignature dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  kind <- (Data.Map.Strict.lookup "kind" namedMap)
  kind <- (Prelude.mapM AST.Cast.cast kind)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  kind <- AST.Runtime.listIsSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    KindSignature
      { kind,
        name,
        patterns
      }

instance AST.Cast.Cast KindSignature where
  cast = cast_KindSignature

data Lambda = Lambda
  { expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    patterns :: (AST.Node.Node (Patterns Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Lambda :: Api.Node -> Prelude.Maybe Lambda
cast_Lambda dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
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
  { alternatives :: (Prelude.Maybe (AST.Node.Node (Alternatives Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LambdaCase :: Api.Node -> Prelude.Maybe LambdaCase
cast_LambdaCase dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alternatives <- (Data.Map.Strict.lookup "alternatives" namedMap)
  alternatives <- (Prelude.mapM AST.Cast.cast alternatives)
  alternatives <- AST.Runtime.listOptionalSingle alternatives
  Prelude.pure
    LambdaCase
      { alternatives
      }

instance AST.Cast.Cast LambdaCase where
  cast = cast_LambdaCase

data LambdaCases = LambdaCases
  { alternatives :: (Prelude.Maybe (AST.Node.Node (Alternatives Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LambdaCases :: Api.Node -> Prelude.Maybe LambdaCases
cast_LambdaCases dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  alternatives <- (Data.Map.Strict.lookup "alternatives" namedMap)
  alternatives <- (Prelude.mapM AST.Cast.cast alternatives)
  alternatives <- AST.Runtime.listOptionalSingle alternatives
  Prelude.pure
    LambdaCases
      { alternatives
      }

instance AST.Cast.Cast LambdaCases where
  cast = cast_LambdaCases

data LazyField = LazyField
  { type' :: (AST.Node.Node (Type Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LazyField :: Api.Node -> Prelude.Maybe LazyField
cast_LazyField dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    LazyField
      { type'
      }

instance AST.Cast.Cast LazyField where
  cast = cast_LazyField

data LeftSection = LeftSection
  { leftOperand :: (AST.Node.Node (Expression Sum.:+ Sum.Nil)),
    operator :: (AST.Node.Node (ConstructorOperator Sum.:+ InfixId Sum.:+ Operator Sum.:+ Qualified Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LeftSection :: Api.Node -> Prelude.Maybe LeftSection
cast_LeftSection dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  leftOperand <- (Data.Map.Strict.lookup "left_operand" namedMap)
  leftOperand <- (Prelude.mapM AST.Cast.cast leftOperand)
  operator <- (Data.Map.Strict.lookup "operator" namedMap)
  operator <- (Prelude.mapM AST.Cast.cast operator)
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
  { binds :: (Prelude.Maybe (AST.Node.Node (LocalBinds Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Let :: Api.Node -> Prelude.Maybe Let
cast_Let dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  binds <- (Data.Map.Strict.lookup "binds" namedMap)
  binds <- (Prelude.mapM AST.Cast.cast binds)
  binds <- AST.Runtime.listOptionalSingle binds
  Prelude.pure
    Let
      { binds
      }

instance AST.Cast.Cast Let where
  cast = cast_Let

data LetIn = LetIn
  { binds :: (Prelude.Maybe (AST.Node.Node (LocalBinds Sum.:+ Sum.Nil))),
    expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LetIn :: Api.Node -> Prelude.Maybe LetIn
cast_LetIn dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  binds <- (Data.Map.Strict.lookup "binds" namedMap)
  binds <- (Prelude.mapM AST.Cast.cast binds)
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
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
    multiplicity :: (Prelude.Maybe (AST.Node.Node (Modifier Sum.:+ Sum.Nil))),
    parameter :: (AST.Node.Node (LazyField Sum.:+ QuantifiedType Sum.:+ StrictField Sum.:+ Sum.Nil)),
    result :: (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LinearFunction :: Api.Node -> Prelude.Maybe LinearFunction
cast_LinearFunction dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- (Data.Map.Strict.lookup "arrow" namedMap)
  arrow <- (Prelude.mapM AST.Cast.cast arrow)
  multiplicity <- (Data.Map.Strict.lookup "multiplicity" namedMap)
  multiplicity <- (Prelude.mapM AST.Cast.cast multiplicity)
  parameter <- (Data.Map.Strict.lookup "parameter" namedMap)
  parameter <- (Prelude.mapM AST.Cast.cast parameter)
  result <- (Data.Map.Strict.lookup "result" namedMap)
  result <- (Prelude.mapM AST.Cast.cast result)
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- (Data.Map.Strict.lookup "element" namedMap)
  element <- (Prelude.mapM AST.Cast.cast element)
  Prelude.pure
    List
      { element
      }

instance AST.Cast.Cast List where
  cast = cast_List

data ListComprehension = ListComprehension
  { expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    qualifiers :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Qualifiers Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ListComprehension :: Api.Node -> Prelude.Maybe ListComprehension
cast_ListComprehension dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  qualifiers <- (Data.Map.Strict.lookup "qualifiers" namedMap)
  qualifiers <- (Prelude.mapM AST.Cast.cast qualifiers)
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
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Literal :: Api.Node -> Prelude.Maybe Literal
cast_Literal dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Literal
      {
      }

instance AST.Cast.Cast Literal where
  cast = cast_Literal

data LocalBinds = LocalBinds
  { decl :: ([(AST.Node.Node (Decl Sum.:+ Fixity Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_LocalBinds :: Api.Node -> Prelude.Maybe LocalBinds
cast_LocalBinds dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  decl <- (Data.Map.Strict.lookup "decl" namedMap)
  decl <- (Prelude.mapM AST.Cast.cast decl)
  Prelude.pure
    LocalBinds
      { decl
      }

instance AST.Cast.Cast LocalBinds where
  cast = cast_LocalBinds

data Match = Match
  { expression :: (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil)),
    guards :: (Prelude.Maybe (AST.Node.Node (Guards Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Match :: Api.Node -> Prelude.Maybe Match
cast_Match dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  guards <- (Data.Map.Strict.lookup "guards" namedMap)
  guards <- (Prelude.mapM AST.Cast.cast guards)
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
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Modifier :: Api.Node -> Prelude.Maybe Modifier
cast_Modifier dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Modifier
      {
      }

instance AST.Cast.Cast Modifier where
  cast = cast_Modifier

data Module = Module
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Module :: Api.Node -> Prelude.Maybe Module
cast_Module dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Module
      {
      }

instance AST.Cast.Cast Module where
  cast = cast_Module

data ModuleExport = ModuleExport
  { module' :: (AST.Node.Node (Module Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ModuleExport :: Api.Node -> Prelude.Maybe ModuleExport
cast_ModuleExport dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  module' <- (Data.Map.Strict.lookup "module" namedMap)
  module' <- (Prelude.mapM AST.Cast.cast module')
  module' <- AST.Runtime.listIsSingle module'
  Prelude.pure
    ModuleExport
      { module'
      }

instance AST.Cast.Cast ModuleExport where
  cast = cast_ModuleExport

data MultiWayIf = MultiWayIf
  { match :: ([(AST.Node.Node (Match Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_MultiWayIf :: Api.Node -> Prelude.Maybe MultiWayIf
cast_MultiWayIf dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  match <- (Data.Map.Strict.lookup "match" namedMap)
  match <- (Prelude.mapM AST.Cast.cast match)
  Prelude.pure
    MultiWayIf
      { match
      }

instance AST.Cast.Cast MultiWayIf where
  cast = cast_MultiWayIf

data Namespace = Namespace
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Namespace where
  cast _ = Prelude.pure Namespace

data Negation = Negation
  { expression :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Sum.Nil))),
    minus :: (Prelude.Maybe (AST.Node.Node ((AST.Token.Token "-") Sum.:+ Sum.Nil))),
    number :: (Prelude.Maybe (AST.Node.Node (Float Sum.:+ Integer Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Negation :: Api.Node -> Prelude.Maybe Negation
cast_Negation dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  minus <- (Data.Map.Strict.lookup "minus" namedMap)
  minus <- (Prelude.mapM AST.Cast.cast minus)
  number <- (Data.Map.Strict.lookup "number" namedMap)
  number <- (Prelude.mapM AST.Cast.cast number)
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
  { constructor :: (Prelude.Maybe (AST.Node.Node (NewtypeConstructor Sum.:+ Sum.Nil))),
    constructors :: (Prelude.Maybe (AST.Node.Node (GadtConstructors Sum.:+ Sum.Nil))),
    context :: (Prelude.Maybe (AST.Node.Node (Context Sum.:+ Sum.Nil))),
    deriving' :: ([(AST.Node.Node (Deriving Sum.:+ Sum.Nil))]),
    forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Newtype :: Api.Node -> Prelude.Maybe Newtype
cast_Newtype dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constructor <- (Data.Map.Strict.lookup "constructor" namedMap)
  constructor <- (Prelude.mapM AST.Cast.cast constructor)
  constructors <- (Data.Map.Strict.lookup "constructors" namedMap)
  constructors <- (Prelude.mapM AST.Cast.cast constructors)
  context <- (Data.Map.Strict.lookup "context" namedMap)
  context <- (Prelude.mapM AST.Cast.cast context)
  deriving' <- (Data.Map.Strict.lookup "deriving" namedMap)
  deriving' <- (Prelude.mapM AST.Cast.cast deriving')
  forall' <- (Data.Map.Strict.lookup "forall" namedMap)
  forall' <- (Prelude.mapM AST.Cast.cast forall')
  kind <- (Data.Map.Strict.lookup "kind" namedMap)
  kind <- (Prelude.mapM AST.Cast.cast kind)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  constructor <- AST.Runtime.listOptionalSingle constructor
  constructors <- AST.Runtime.listOptionalSingle constructors
  context <- AST.Runtime.listOptionalSingle context
  forall' <- AST.Runtime.listOptionalSingle forall'
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    Newtype
      { constructor,
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- (Data.Map.Strict.lookup "field" namedMap)
  field <- (Prelude.mapM AST.Cast.cast field)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
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
  cast _ = Prelude.pure Operator

data Parens = Parens
  { expression :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Signature Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Qualified Sum.:+ Unit Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ TypePatterns Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Parens :: Api.Node -> Prelude.Maybe Parens
cast_Parens dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  kind <- (Data.Map.Strict.lookup "kind" namedMap)
  kind <- (Prelude.mapM AST.Cast.cast kind)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  expression <- AST.Runtime.listOptionalSingle expression
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  pattern' <- AST.Runtime.listOptionalSingle pattern'
  patterns <- AST.Runtime.listOptionalSingle patterns
  type' <- AST.Runtime.listOptionalSingle type'
  Prelude.pure
    Parens
      { expression,
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- (Data.Map.Strict.lookup "arrow" namedMap)
  arrow <- (Prelude.mapM AST.Cast.cast arrow)
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
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
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_PatternSynonym :: Api.Node -> Prelude.Maybe PatternSynonym
cast_PatternSynonym dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    PatternSynonym
      {
      }

instance AST.Cast.Cast PatternSynonym where
  cast = cast_PatternSynonym

data Patterns = Patterns
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Patterns :: Api.Node -> Prelude.Maybe Patterns
cast_Patterns dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Patterns
      {
      }

instance AST.Cast.Cast Patterns where
  cast = cast_Patterns

data Prefix = Prefix
  { field :: ([(AST.Node.Node (LazyField Sum.:+ StrictField Sum.:+ Type Sum.:+ Sum.Nil))]),
    name :: (Prelude.Maybe (AST.Node.Node (Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Prefix :: Api.Node -> Prelude.Maybe Prefix
cast_Prefix dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- (Data.Map.Strict.lookup "field" namedMap)
  field <- (Prelude.mapM AST.Cast.cast field)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_PrefixId :: Api.Node -> Prelude.Maybe PrefixId
cast_PrefixId dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    PrefixId
      {
      }

instance AST.Cast.Cast PrefixId where
  cast = cast_PrefixId

data PrefixList = PrefixList
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixList where
  cast _ = Prelude.pure PrefixList

data PrefixTuple = PrefixTuple
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixTuple where
  cast _ = Prelude.pure PrefixTuple

data PrefixUnboxedSum = PrefixUnboxedSum
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixUnboxedSum where
  cast _ = Prelude.pure PrefixUnboxedSum

data PrefixUnboxedTuple = PrefixUnboxedTuple
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast PrefixUnboxedTuple where
  cast _ = Prelude.pure PrefixUnboxedTuple

data Projection = Projection
  { expression :: (AST.Node.Node (Expression Sum.:+ Sum.Nil)),
    field :: (AST.Node.Node (FieldName Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Projection :: Api.Node -> Prelude.Maybe Projection
cast_Projection dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  field <- (Data.Map.Strict.lookup "field" namedMap)
  field <- (Prelude.mapM AST.Cast.cast field)
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
  { field :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Variable Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ProjectionSelector :: Api.Node -> Prelude.Maybe ProjectionSelector
cast_ProjectionSelector dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  field <- (Data.Map.Strict.lookup "field" namedMap)
  field <- (Prelude.mapM AST.Cast.cast field)
  field <- Data.List.NonEmpty.nonEmpty field
  Prelude.pure
    ProjectionSelector
      { field
      }

instance AST.Cast.Cast ProjectionSelector where
  cast = cast_ProjectionSelector

data Promoted = Promoted
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Promoted :: Api.Node -> Prelude.Maybe Promoted
cast_Promoted dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Promoted
      {
      }

instance AST.Cast.Cast Promoted where
  cast = cast_Promoted

data Qualified = Qualified
  { id :: (AST.Node.Node (Constructor Sum.:+ ConstructorOperator Sum.:+ FieldName Sum.:+ Name Sum.:+ Operator Sum.:+ Variable Sum.:+ Sum.Nil)),
    module' :: (AST.Node.Node (Module Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Qualified :: Api.Node -> Prelude.Maybe Qualified
cast_Qualified dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  id <- (Data.Map.Strict.lookup "id" namedMap)
  id <- (Prelude.mapM AST.Cast.cast id)
  module' <- (Data.Map.Strict.lookup "module" namedMap)
  module' <- (Prelude.mapM AST.Cast.cast module')
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
  { qualifier :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Qualifier Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Qualifiers :: Api.Node -> Prelude.Maybe Qualifiers
cast_Qualifiers dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  qualifier <- (Data.Map.Strict.lookup "qualifier" namedMap)
  qualifier <- (Prelude.mapM AST.Cast.cast qualifier)
  qualifier <- Data.List.NonEmpty.nonEmpty qualifier
  Prelude.pure
    Qualifiers
      { qualifier
      }

instance AST.Cast.Cast Qualifiers where
  cast = cast_Qualifiers

data QuantifiedVariables = QuantifiedVariables
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuantifiedVariables :: Api.Node -> Prelude.Maybe QuantifiedVariables
cast_QuantifiedVariables dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    QuantifiedVariables
      {
      }

instance AST.Cast.Cast QuantifiedVariables where
  cast = cast_QuantifiedVariables

data Quasiquote = Quasiquote
  { body :: (Prelude.Maybe (AST.Node.Node (QuasiquoteBody Sum.:+ Sum.Nil))),
    quoter :: (AST.Node.Node (Quoter Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Quasiquote :: Api.Node -> Prelude.Maybe Quasiquote
cast_Quasiquote dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  body <- (Data.Map.Strict.lookup "body" namedMap)
  body <- (Prelude.mapM AST.Cast.cast body)
  quoter <- (Data.Map.Strict.lookup "quoter" namedMap)
  quoter <- (Prelude.mapM AST.Cast.cast quoter)
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
  { quoter :: (Prelude.Maybe (AST.Node.Node ((AST.Token.Token "d") Sum.:+ (AST.Token.Token "e") Sum.:+ (AST.Token.Token "p") Sum.:+ (AST.Token.Token "t") Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Quote :: Api.Node -> Prelude.Maybe Quote
cast_Quote dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  quoter <- (Data.Map.Strict.lookup "quoter" namedMap)
  quoter <- (Prelude.mapM AST.Cast.cast quoter)
  quoter <- AST.Runtime.listOptionalSingle quoter
  Prelude.pure
    Quote
      { quoter
      }

instance AST.Cast.Cast Quote where
  cast = cast_Quote

data QuotedDecls = QuotedDecls
  { declaration :: ([(AST.Node.Node (Declaration Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedDecls :: Api.Node -> Prelude.Maybe QuotedDecls
cast_QuotedDecls dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  declaration <- (Data.Map.Strict.lookup "declaration" namedMap)
  declaration <- (Prelude.mapM AST.Cast.cast declaration)
  Prelude.pure
    QuotedDecls
      { declaration
      }

instance AST.Cast.Cast QuotedDecls where
  cast = cast_QuotedDecls

data QuotedExpression = QuotedExpression
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedExpression :: Api.Node -> Prelude.Maybe QuotedExpression
cast_QuotedExpression dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    QuotedExpression
      {
      }

instance AST.Cast.Cast QuotedExpression where
  cast = cast_QuotedExpression

data QuotedPattern = QuotedPattern
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedPattern :: Api.Node -> Prelude.Maybe QuotedPattern
cast_QuotedPattern dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    QuotedPattern
      {
      }

instance AST.Cast.Cast QuotedPattern where
  cast = cast_QuotedPattern

data QuotedType = QuotedType
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_QuotedType :: Api.Node -> Prelude.Maybe QuotedType
cast_QuotedType dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    QuotedType
      {
      }

instance AST.Cast.Cast QuotedType where
  cast = cast_QuotedType

data Quoter = Quoter
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Quoter :: Api.Node -> Prelude.Maybe Quoter
cast_Quoter dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Quoter
      {
      }

instance AST.Cast.Cast Quoter where
  cast = cast_Quoter

data Rec = Rec
  { statement :: ([(AST.Node.Node (Statement Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Rec :: Api.Node -> Prelude.Maybe Rec
cast_Rec dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  statement <- (Data.Map.Strict.lookup "statement" namedMap)
  statement <- (Prelude.mapM AST.Cast.cast statement)
  Prelude.pure
    Rec
      { statement
      }

instance AST.Cast.Cast Rec where
  cast = cast_Rec

data Record = Record
  { arrow :: ([(AST.Node.Node ((AST.Token.Token "->") Sum.:+ (AST.Token.Token "→") Sum.:+ Sum.Nil))]),
    constructor :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Sum.Nil))),
    expression :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Sum.Nil))),
    field :: ([(AST.Node.Node (Field Sum.:+ FieldPattern Sum.:+ FieldUpdate Sum.:+ Sum.Nil))]),
    fields :: (Prelude.Maybe (AST.Node.Node (Fields Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Constructor Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Record :: Api.Node -> Prelude.Maybe Record
cast_Record dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  arrow <- (Data.Map.Strict.lookup "arrow" namedMap)
  arrow <- (Prelude.mapM AST.Cast.cast arrow)
  constructor <- (Data.Map.Strict.lookup "constructor" namedMap)
  constructor <- (Prelude.mapM AST.Cast.cast constructor)
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  field <- (Data.Map.Strict.lookup "field" namedMap)
  field <- (Prelude.mapM AST.Cast.cast field)
  fields <- (Data.Map.Strict.lookup "fields" namedMap)
  fields <- (Prelude.mapM AST.Cast.cast fields)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
  { rightOperand :: (AST.Node.Node (Expression Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_RightSection :: Api.Node -> Prelude.Maybe RightSection
cast_RightSection dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  rightOperand <- (Data.Map.Strict.lookup "right_operand" namedMap)
  rightOperand <- (Prelude.mapM AST.Cast.cast rightOperand)
  rightOperand <- AST.Runtime.listIsSingle rightOperand
  Prelude.pure
    RightSection
      { rightOperand
      }

instance AST.Cast.Cast RightSection where
  cast = cast_RightSection

data RoleAnnotation = RoleAnnotation
  { role :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (TypeRole Sum.:+ Sum.Nil))),
    type' :: (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_RoleAnnotation :: Api.Node -> Prelude.Maybe RoleAnnotation
cast_RoleAnnotation dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  role <- (Data.Map.Strict.lookup "role" namedMap)
  role <- (Prelude.mapM AST.Cast.cast role)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
  { constraint :: (Prelude.Maybe (AST.Node.Node (Constraints Sum.:+ Sum.Nil))),
    expression :: (Prelude.Maybe (AST.Node.Node (Expression Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (PrefixId Sum.:+ Variable Sum.:+ Sum.Nil))),
    names :: (Prelude.Maybe (AST.Node.Node (BindingList Sum.:+ Sum.Nil))),
    pattern' :: (Prelude.Maybe (AST.Node.Node (Pattern Sum.:+ Sum.Nil))),
    synonym :: (Prelude.Maybe (AST.Node.Node (BindingList Sum.:+ Constructor Sum.:+ PrefixId Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Signature :: Api.Node -> Prelude.Maybe Signature
cast_Signature dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  constraint <- (Data.Map.Strict.lookup "constraint" namedMap)
  constraint <- (Prelude.mapM AST.Cast.cast constraint)
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  kind <- (Data.Map.Strict.lookup "kind" namedMap)
  kind <- (Prelude.mapM AST.Cast.cast kind)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  names <- (Data.Map.Strict.lookup "names" namedMap)
  names <- (Prelude.mapM AST.Cast.cast names)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
  synonym <- (Data.Map.Strict.lookup "synonym" namedMap)
  synonym <- (Prelude.mapM AST.Cast.cast synonym)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Special :: Api.Node -> Prelude.Maybe Special
cast_Special dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    Special
      {
      }

instance AST.Cast.Cast Special where
  cast = cast_Special

data Splice = Splice
  { expression :: (AST.Node.Node (Constructor Sum.:+ ImplicitVariable Sum.:+ Label Sum.:+ Literal Sum.:+ Parens Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Splice :: Api.Node -> Prelude.Maybe Splice
cast_Splice dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
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
  cast _ = Prelude.pure Star

data Strict = Strict
  { pattern' :: (AST.Node.Node (Pattern Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Strict :: Api.Node -> Prelude.Maybe Strict
cast_Strict dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
  pattern' <- AST.Runtime.listIsSingle pattern'
  Prelude.pure
    Strict
      { pattern'
      }

instance AST.Cast.Cast Strict where
  cast = cast_Strict

data StrictField = StrictField
  { type' :: (AST.Node.Node (Type Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_StrictField :: Api.Node -> Prelude.Maybe StrictField
cast_StrictField dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    StrictField
      { type'
      }

instance AST.Cast.Cast StrictField where
  cast = cast_StrictField

data ThQuotedName = ThQuotedName
  { name :: (Prelude.Maybe (AST.Node.Node (Constructor Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Variable Sum.:+ Sum.Nil))),
    type' :: (Prelude.Maybe (AST.Node.Node (Type Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_ThQuotedName :: Api.Node -> Prelude.Maybe ThQuotedName
cast_ThQuotedName dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TopSplice :: Api.Node -> Prelude.Maybe TopSplice
cast_TopSplice dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    TopSplice
      {
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  key <- (Data.Map.Strict.lookup "key" namedMap)
  key <- (Prelude.mapM AST.Cast.cast key)
  transformation <- (Data.Map.Strict.lookup "transformation" namedMap)
  transformation <- (Prelude.mapM AST.Cast.cast transformation)
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
  { element :: ([(AST.Node.Node (Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil))])
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Tuple :: Api.Node -> Prelude.Maybe Tuple
cast_Tuple dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- (Data.Map.Strict.lookup "element" namedMap)
  element <- (Prelude.mapM AST.Cast.cast element)
  Prelude.pure
    Tuple
      { element
      }

instance AST.Cast.Cast Tuple where
  cast = cast_Tuple

data TypeApplication = TypeApplication
  { type' :: (AST.Node.Node (Type Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeApplication :: Api.Node -> Prelude.Maybe TypeApplication
cast_TypeApplication dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    TypeApplication
      { type'
      }

instance AST.Cast.Cast TypeApplication where
  cast = cast_TypeApplication

data TypeBinder = TypeBinder
  { type' :: (AST.Node.Node (Type Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeBinder :: Api.Node -> Prelude.Maybe TypeBinder
cast_TypeBinder dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    TypeBinder
      { type'
      }

instance AST.Cast.Cast TypeBinder where
  cast = cast_TypeBinder

data TypeFamily = TypeFamily
  { closedFamily :: (Prelude.Maybe (AST.Node.Node (AbstractFamily Sum.:+ Equations Sum.:+ Sum.Nil))),
    kind :: (Prelude.Maybe (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeFamily :: Api.Node -> Prelude.Maybe TypeFamily
cast_TypeFamily dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  closedFamily <- (Data.Map.Strict.lookup "closed_family" namedMap)
  closedFamily <- (Prelude.mapM AST.Cast.cast closedFamily)
  kind <- (Data.Map.Strict.lookup "kind" namedMap)
  kind <- (Prelude.mapM AST.Cast.cast kind)
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  closedFamily <- AST.Runtime.listOptionalSingle closedFamily
  kind <- AST.Runtime.listOptionalSingle kind
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    TypeFamily
      { closedFamily,
        kind,
        name,
        patterns
      }

instance AST.Cast.Cast TypeFamily where
  cast = cast_TypeFamily

data TypeFamilyInjectivity = TypeFamilyInjectivity
  { determined :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Variable Sum.:+ Sum.Nil))),
    result :: (AST.Node.Node (Variable Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeFamilyInjectivity :: Api.Node -> Prelude.Maybe TypeFamilyInjectivity
cast_TypeFamilyInjectivity dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  determined <- (Data.Map.Strict.lookup "determined" namedMap)
  determined <- (Prelude.mapM AST.Cast.cast determined)
  result <- (Data.Map.Strict.lookup "result" namedMap)
  result <- (Prelude.mapM AST.Cast.cast result)
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
  { result :: (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeFamilyResult :: Api.Node -> Prelude.Maybe TypeFamilyResult
cast_TypeFamilyResult dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  result <- (Data.Map.Strict.lookup "result" namedMap)
  result <- (Prelude.mapM AST.Cast.cast result)
  result <- AST.Runtime.listIsSingle result
  Prelude.pure
    TypeFamilyResult
      { result
      }

instance AST.Cast.Cast TypeFamilyResult where
  cast = cast_TypeFamilyResult

data TypeInstance = TypeInstance
  { forall' :: (Prelude.Maybe (AST.Node.Node (Forall Sum.:+ ForallRequired Sum.:+ Sum.Nil))),
    name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ Qualified Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypePatterns Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeInstance :: Api.Node -> Prelude.Maybe TypeInstance
cast_TypeInstance dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  forall' <- (Data.Map.Strict.lookup "forall" namedMap)
  forall' <- (Prelude.mapM AST.Cast.cast forall')
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  forall' <- AST.Runtime.listOptionalSingle forall'
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  Prelude.pure
    TypeInstance
      { forall',
        name,
        patterns
      }

instance AST.Cast.Cast TypeInstance where
  cast = cast_TypeInstance

data TypeParams = TypeParams
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeParams :: Api.Node -> Prelude.Maybe TypeParams
cast_TypeParams dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    TypeParams
      {
      }

instance AST.Cast.Cast TypeParams where
  cast = cast_TypeParams

data TypePatterns = TypePatterns
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypePatterns :: Api.Node -> Prelude.Maybe TypePatterns
cast_TypePatterns dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    TypePatterns
      {
      }

instance AST.Cast.Cast TypePatterns where
  cast = cast_TypePatterns

data TypeRole = TypeRole
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast TypeRole where
  cast _ = Prelude.pure TypeRole

data TypeSynomym = TypeSynomym
  { name :: (Prelude.Maybe (AST.Node.Node (Name Sum.:+ PrefixId Sum.:+ PrefixList Sum.:+ Unit Sum.:+ Sum.Nil))),
    patterns :: (Prelude.Maybe (AST.Node.Node (TypeParams Sum.:+ Sum.Nil))),
    type' :: (AST.Node.Node (QuantifiedType Sum.:+ Signature Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypeSynomym :: Api.Node -> Prelude.Maybe TypeSynomym
cast_TypeSynomym dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  name <- (Data.Map.Strict.lookup "name" namedMap)
  name <- (Prelude.mapM AST.Cast.cast name)
  patterns <- (Data.Map.Strict.lookup "patterns" namedMap)
  patterns <- (Prelude.mapM AST.Cast.cast patterns)
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
  name <- AST.Runtime.listOptionalSingle name
  patterns <- AST.Runtime.listOptionalSingle patterns
  type' <- AST.Runtime.listIsSingle type'
  Prelude.pure
    TypeSynomym
      { name,
        patterns,
        type'
      }

instance AST.Cast.Cast TypeSynomym where
  cast = cast_TypeSynomym

data TypedQuote = TypedQuote
  {
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_TypedQuote :: Api.Node -> Prelude.Maybe TypedQuote
cast_TypedQuote dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  Prelude.pure
    TypedQuote
      {
      }

instance AST.Cast.Cast TypedQuote where
  cast = cast_TypedQuote

data UnboxedSum = UnboxedSum
  { element :: (Data.List.NonEmpty.NonEmpty (AST.Node.Node (Expression Sum.:+ Pattern Sum.:+ QuantifiedType Sum.:+ Signature Sum.:+ ViewPattern Sum.:+ Sum.Nil)))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_UnboxedSum :: Api.Node -> Prelude.Maybe UnboxedSum
cast_UnboxedSum dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- (Data.Map.Strict.lookup "element" namedMap)
  element <- (Prelude.mapM AST.Cast.cast element)
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  element <- (Data.Map.Strict.lookup "element" namedMap)
  element <- (Prelude.mapM AST.Cast.cast element)
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
  cast _ = Prelude.pure UnboxedUnit

data Unit = Unit
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Unit where
  cast _ = Prelude.pure Unit

data Via = Via
  { type' :: (AST.Node.Node (QuantifiedType Sum.:+ Sum.Nil))
  }
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

cast_Via :: Api.Node -> Prelude.Maybe Via
cast_Via dynNode = do
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  type' <- (Data.Map.Strict.lookup "type" namedMap)
  type' <- (Prelude.mapM AST.Cast.cast type')
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
  let (positional, namedMap) = AST.Runtime.getChildDescription dynNode
  expression <- (Data.Map.Strict.lookup "expression" namedMap)
  expression <- (Prelude.mapM AST.Cast.cast expression)
  pattern' <- (Data.Map.Strict.lookup "pattern" namedMap)
  pattern' <- (Prelude.mapM AST.Cast.cast pattern')
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
  cast _ = Prelude.pure Wildcard

data AllNames = AllNames
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast AllNames where
  cast _ = Prelude.pure AllNames

data CallingConvention = CallingConvention
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast CallingConvention where
  cast _ = Prelude.pure CallingConvention

data Char = Char
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Char where
  cast _ = Prelude.pure Char

data Comment = Comment
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Comment where
  cast _ = Prelude.pure Comment

data Constructor = Constructor
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Constructor where
  cast _ = Prelude.pure Constructor

data Cpp = Cpp
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Cpp where
  cast _ = Prelude.pure Cpp

data Float = Float
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Float where
  cast _ = Prelude.pure Float

data Haddock = Haddock
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Haddock where
  cast _ = Prelude.pure Haddock

data ImplicitVariable = ImplicitVariable
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ImplicitVariable where
  cast _ = Prelude.pure ImplicitVariable

data ImportPackage = ImportPackage
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ImportPackage where
  cast _ = Prelude.pure ImportPackage

data Label = Label
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Label where
  cast _ = Prelude.pure Label

data ModuleId = ModuleId
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast ModuleId where
  cast _ = Prelude.pure ModuleId

data Name = Name
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Name where
  cast _ = Prelude.pure Name

data Pragma = Pragma
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Pragma where
  cast _ = Prelude.pure Pragma

data QuasiquoteBody = QuasiquoteBody
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast QuasiquoteBody where
  cast _ = Prelude.pure QuasiquoteBody

data Safety = Safety
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Safety where
  cast _ = Prelude.pure Safety

data String = String
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast String where
  cast _ = Prelude.pure String

data Variable = Variable
  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord, GHC.Generics.Generic, Control.DeepSeq.NFData)

instance AST.Cast.Cast Variable where
  cast _ = Prelude.pure Variable
