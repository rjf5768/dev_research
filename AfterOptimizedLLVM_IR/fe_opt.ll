; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/Burg/fe.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/fe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i8*, %struct.list* }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.arity = type { i32, %struct.list* }
%struct.ruleAST = type { i8*, %struct.patternAST*, i32, %struct.intlist*, %struct.rule*, %struct.strTableElement*, %struct.strTableElement* }
%struct.patternAST = type { %struct.symbol*, i8*, %struct.list* }
%struct.symbol = type { i8*, i32, %union.anon }
%union.anon = type { %struct.nonterminal* }
%struct.intlist = type { i32, %struct.intlist* }
%struct.strTableElement = type { i8*, %struct.intlist*, i8* }
%struct.binding = type { i8*, i32 }

@rcsid_fe = dso_local global [5 x i8] c"$Id$\00", align 1
@ruleASTs = dso_local global %struct.list* null, align 8
@max_nonterminal = external dso_local global i32, align 4
@last_user_nonterminal = external dso_local global i32, align 4
@operators = external dso_local global %struct.list*, align 8
@start = external dso_local global %struct.nonterminal*, align 8
@.str = private unnamed_addr constant [37 x i8] c"Redeclaration of start symbol to be \00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Illegal use of %s as a non-terminal\0A\00", align 1
@grammarNts = dso_local global %struct.list* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"ERROR: %%gram, unused non-terminal: \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ERROR: %%gram, Not a non-terminal: \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Redeclaration of %%gram\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"ERROR: Non-positive external symbol number, \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"External Rulenumber \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"(%d) <= 0\0A\00", align 1
@max_ruleAST = dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"%s=%d \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Arity(%d) \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" = %d (%ld)\0A\00", align 1
@grammarflag = dso_local global i32 0, align 4
@arity = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"Non-unique name: %s\0A\00", align 1
@leaves = external dso_local global %struct.list*, align 8
@lexical = external dso_local global i32, align 4
@principleCost = external dso_local global i32, align 4
@.str.20 = private unnamed_addr constant [40 x i8] c"Illegal use of %s --- undefined symbol\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Illegal use of %s, a non-terminal, as a terminal\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"ERROR: Too many children (max = 2) for \22%s\22\0A\00", align 1
@max_arity = external dso_local global i32, align 4
@.str.23 = private unnamed_addr constant [65 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/Burg/fe.c\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"ERROR: Incorrect number of children for leaf operator, \22%s\22\0A\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c"ERROR: Incorrect number of children for unary operator, \22%s\22\0A\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"ERROR: Incorrect number of children for binary operator, \22%s\22\0A\00", align 1
@xpatterns = internal global %struct.list* null, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"n%%%d\00", align 1
@tcount = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @doSpec(%struct.list* noundef %0, %struct.list* noundef %1) #0 {
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %3, align 8
  store %struct.list* %1, %struct.list** %4, align 8
  %5 = load %struct.list*, %struct.list** %3, align 8
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.arity*)* @doDecl to i8* (i8*)*), %struct.list* noundef %5)
  %6 = load %struct.list*, %struct.list** %4, align 8
  store %struct.list* %6, %struct.list** @ruleASTs, align 8
  %7 = load %struct.list*, %struct.list** %4, align 8
  call void @reveachList(i8* (i8*)* noundef bitcast (void (%struct.ruleAST*)* @doEnterNonTerm to i8* (i8*)*), %struct.list* noundef %7)
  %8 = load i32, i32* @max_nonterminal, align 4
  store i32 %8, i32* @last_user_nonterminal, align 4
  %9 = load %struct.list*, %struct.list** %4, align 8
  call void @reveachList(i8* (i8*)* noundef bitcast (void (%struct.ruleAST*)* @doRule to i8* (i8*)*), %struct.list* noundef %9)
  %10 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.operator*)* @doTable to i8* (i8*)*), %struct.list* noundef %10)
  ret void
}

declare dso_local void @foreachList(i8* (i8*)* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @doDecl(%struct.arity* noundef %0) #0 {
  %2 = alloca %struct.arity*, align 8
  store %struct.arity* %0, %struct.arity** %2, align 8
  %3 = load %struct.arity*, %struct.arity** %2, align 8
  %4 = icmp ne %struct.arity* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %13

6:                                                ; preds = %1
  %7 = load %struct.arity*, %struct.arity** %2, align 8
  %8 = getelementptr inbounds %struct.arity, %struct.arity* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* @arity, align 4
  %10 = load %struct.arity*, %struct.arity** %2, align 8
  %11 = getelementptr inbounds %struct.arity, %struct.arity* %10, i32 0, i32 1
  %12 = load %struct.list*, %struct.list** %11, align 8
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.binding*)* @doBinding to i8* (i8*)*), %struct.list* noundef %12)
  br label %13

13:                                               ; preds = %6, %5
  ret void
}

declare dso_local void @reveachList(i8* (i8*)* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @doEnterNonTerm(%struct.ruleAST* noundef %0) #0 {
  %2 = alloca %struct.ruleAST*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca [4 x i16], align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.intlist*, align 8
  %8 = alloca i32, align 4
  store %struct.ruleAST* %0, %struct.ruleAST** %2, align 8
  %9 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %10 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call %struct.symbol* @enter(i8* noundef %11, i32* noundef %3)
  store %struct.symbol* %12, %struct.symbol** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.symbol*, %struct.symbol** %4, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.nonterminal* @newNonTerminal(i8* noundef %18)
  %20 = load %struct.symbol*, %struct.symbol** %4, align 8
  %21 = getelementptr inbounds %struct.symbol, %struct.symbol* %20, i32 0, i32 2
  %22 = bitcast %union.anon* %21 to %struct.nonterminal**
  store %struct.nonterminal* %19, %struct.nonterminal** %22, align 8
  %23 = load %struct.symbol*, %struct.symbol** %4, align 8
  %24 = getelementptr inbounds %struct.symbol, %struct.symbol* %23, i32 0, i32 1
  store i32 2, i32* %24, align 8
  br label %37

25:                                               ; preds = %1
  %26 = load %struct.symbol*, %struct.symbol** %4, align 8
  %27 = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load %struct.symbol*, %struct.symbol** %4, align 8
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef %34)
  call void @exit(i32 noundef 1) #5
  unreachable

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %15
  %38 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 0
  call void @ZEROCOST(i16* noundef %38)
  %39 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %40 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %39, i32 0, i32 3
  %41 = load %struct.intlist*, %struct.intlist** %40, align 8
  store %struct.intlist* %41, %struct.intlist** %7, align 8
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %71, %37
  %43 = load %struct.intlist*, %struct.intlist** %7, align 8
  %44 = icmp ne %struct.intlist* %43, null
  br i1 %44, label %45, label %77

45:                                               ; preds = %42
  %46 = load %struct.intlist*, %struct.intlist** %7, align 8
  %47 = getelementptr inbounds %struct.intlist, %struct.intlist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @lexical, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = trunc i32 %55 to i16
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 %58
  store i16 %56, i16* %59, align 2
  br label %60

60:                                               ; preds = %54, %51
  br label %70

61:                                               ; preds = %45
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @principleCost, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 0
  store i16 %67, i16* %68, align 2
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.intlist*, %struct.intlist** %7, align 8
  %73 = getelementptr inbounds %struct.intlist, %struct.intlist* %72, i32 0, i32 1
  %74 = load %struct.intlist*, %struct.intlist** %73, align 8
  store %struct.intlist* %74, %struct.intlist** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %42, !llvm.loop !4

77:                                               ; preds = %42
  %78 = getelementptr inbounds [4 x i16], [4 x i16]* %5, i64 0, i64 0
  %79 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %80 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.symbol*, %struct.symbol** %4, align 8
  %83 = getelementptr inbounds %struct.symbol, %struct.symbol* %82, i32 0, i32 2
  %84 = bitcast %union.anon* %83 to %struct.nonterminal**
  %85 = load %struct.nonterminal*, %struct.nonterminal** %84, align 8
  %86 = call %struct.rule* @newRule(i16* noundef %78, i32 noundef %81, %struct.nonterminal* noundef %85, %struct.pattern* noundef null)
  %87 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %88 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %87, i32 0, i32 4
  store %struct.rule* %86, %struct.rule** %88, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @doRule(%struct.ruleAST* noundef %0) #0 {
  %2 = alloca %struct.ruleAST*, align 8
  %3 = alloca %struct.pattern*, align 8
  store %struct.ruleAST* %0, %struct.ruleAST** %2, align 8
  %4 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %5 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %4, i32 0, i32 1
  %6 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %7 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %8 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %7, i32 0, i32 4
  %9 = load %struct.rule*, %struct.rule** %8, align 8
  %10 = getelementptr inbounds %struct.rule, %struct.rule* %9, i32 0, i32 4
  %11 = load %struct.nonterminal*, %struct.nonterminal** %10, align 8
  %12 = call %struct.nonterminal* @normalize(%struct.patternAST* noundef %6, %struct.nonterminal* noundef %11, %struct.pattern** noundef %3)
  %13 = load %struct.pattern*, %struct.pattern** %3, align 8
  %14 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %15 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %14, i32 0, i32 4
  %16 = load %struct.rule*, %struct.rule** %15, align 8
  %17 = getelementptr inbounds %struct.rule, %struct.rule* %16, i32 0, i32 5
  store %struct.pattern* %13, %struct.pattern** %17, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @doTable(%struct.operator* noundef %0) #0 {
  %2 = alloca %struct.operator*, align 8
  store %struct.operator* %0, %struct.operator** %2, align 8
  %3 = load %struct.operator*, %struct.operator** %2, align 8
  %4 = call %struct.table* @newTable(%struct.operator* noundef %3)
  %5 = load %struct.operator*, %struct.operator** %2, align 8
  %6 = getelementptr inbounds %struct.operator, %struct.operator* %5, i32 0, i32 6
  store %struct.table* %4, %struct.table** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @doStart(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load %struct.nonterminal*, %struct.nonterminal** @start, align 8
  %6 = icmp ne %struct.nonterminal* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  call void @yyerror1(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %9)
  call void @exit(i32 noundef 1) #5
  unreachable

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call %struct.symbol* @enter(i8* noundef %12, i32* noundef %4)
  store %struct.symbol* %13, %struct.symbol** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.symbol*, %struct.symbol** %3, align 8
  %18 = getelementptr inbounds %struct.symbol, %struct.symbol* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call %struct.nonterminal* @newNonTerminal(i8* noundef %19)
  %21 = load %struct.symbol*, %struct.symbol** %3, align 8
  %22 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 2
  %23 = bitcast %union.anon* %22 to %struct.nonterminal**
  store %struct.nonterminal* %20, %struct.nonterminal** %23, align 8
  %24 = load %struct.symbol*, %struct.symbol** %3, align 8
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 1
  store i32 2, i32* %25, align 8
  br label %38

26:                                               ; preds = %11
  %27 = load %struct.symbol*, %struct.symbol** %3, align 8
  %28 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load %struct.symbol*, %struct.symbol** %3, align 8
  %34 = getelementptr inbounds %struct.symbol, %struct.symbol* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef %35)
  call void @exit(i32 noundef 1) #5
  unreachable

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %16
  ret void
}

declare dso_local void @yyerror1(i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

declare dso_local %struct.symbol* @enter(i8* noundef, i32* noundef) #1

declare dso_local %struct.nonterminal* @newNonTerminal(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @doGrammarNts() #0 {
  %1 = alloca %struct.list*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = load %struct.list*, %struct.list** @grammarNts, align 8
  store %struct.list* %5, %struct.list** %1, align 8
  br label %6

6:                                                ; preds = %35, %0
  %7 = load %struct.list*, %struct.list** %1, align 8
  %8 = icmp ne %struct.list* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %6
  %10 = load %struct.list*, %struct.list** %1, align 8
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.symbol* @enter(i8* noundef %13, i32* noundef %2)
  store %struct.symbol* %14, %struct.symbol** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19)
  call void @exit(i32 noundef 1) #5
  unreachable

21:                                               ; preds = %9
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* noundef %28)
  call void @exit(i32 noundef 1) #5
  unreachable

30:                                               ; preds = %21
  %31 = load %struct.symbol*, %struct.symbol** %4, align 8
  %32 = bitcast %struct.symbol* %31 to i8*
  %33 = load %struct.list*, %struct.list** %1, align 8
  %34 = getelementptr inbounds %struct.list, %struct.list* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %30
  %36 = load %struct.list*, %struct.list** %1, align 8
  %37 = getelementptr inbounds %struct.list, %struct.list* %36, i32 0, i32 1
  %38 = load %struct.list*, %struct.list** %37, align 8
  store %struct.list* %38, %struct.list** %1, align 8
  br label %6, !llvm.loop !6

39:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @doGram(%struct.list* noundef %0) #0 {
  %2 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %2, align 8
  %3 = load %struct.list*, %struct.list** @grammarNts, align 8
  %4 = icmp ne %struct.list* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @yyerror1(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

6:                                                ; preds = %1
  %7 = load %struct.list*, %struct.list** %2, align 8
  store %struct.list* %7, %struct.list** @grammarNts, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.arity* @newArity(i32 noundef %0, %struct.list* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list*, align 8
  %5 = alloca %struct.arity*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.list* %1, %struct.list** %4, align 8
  %6 = call i8* @zalloc(i32 noundef 16)
  %7 = bitcast i8* %6 to %struct.arity*
  store %struct.arity* %7, %struct.arity** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.arity*, %struct.arity** %5, align 8
  %10 = getelementptr inbounds %struct.arity, %struct.arity* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.list*, %struct.list** %4, align 8
  %12 = load %struct.arity*, %struct.arity** %5, align 8
  %13 = getelementptr inbounds %struct.arity, %struct.arity* %12, i32 0, i32 1
  store %struct.list* %11, %struct.list** %13, align 8
  %14 = load %struct.arity*, %struct.arity** %5, align 8
  ret %struct.arity* %14
}

declare dso_local i8* @zalloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.binding* @newBinding(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.binding*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i8* @zalloc(i32 noundef 16)
  %7 = bitcast i8* %6 to %struct.binding*
  store %struct.binding* %7, %struct.binding** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  call void @yyerror1(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef %12)
  call void @exit(i32 noundef 1) #5
  unreachable

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.binding*, %struct.binding** %5, align 8
  %17 = getelementptr inbounds %struct.binding, %struct.binding* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.binding*, %struct.binding** %5, align 8
  %20 = getelementptr inbounds %struct.binding, %struct.binding* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.binding*, %struct.binding** %5, align 8
  ret %struct.binding* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.patternAST* @newPatternAST(i8* noundef %0, %struct.list* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.list*, align 8
  %5 = alloca %struct.patternAST*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.list* %1, %struct.list** %4, align 8
  %6 = call i8* @zalloc(i32 noundef 24)
  %7 = bitcast i8* %6 to %struct.patternAST*
  store %struct.patternAST* %7, %struct.patternAST** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %10 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.list*, %struct.list** %4, align 8
  %12 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %13 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %12, i32 0, i32 2
  store %struct.list* %11, %struct.list** %13, align 8
  %14 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  ret %struct.patternAST* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ruleAST* @newRuleAST(i8* noundef %0, %struct.patternAST* noundef %1, i32 noundef %2, %struct.intlist* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.patternAST*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intlist*, align 8
  %9 = alloca %struct.ruleAST*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.patternAST* %1, %struct.patternAST** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.intlist* %3, %struct.intlist** %8, align 8
  %10 = call i8* @zalloc(i32 noundef 56)
  %11 = bitcast i8* %10 to %struct.ruleAST*
  store %struct.ruleAST* %11, %struct.ruleAST** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.ruleAST*, %struct.ruleAST** %9, align 8
  %14 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.patternAST*, %struct.patternAST** %6, align 8
  %16 = load %struct.ruleAST*, %struct.ruleAST** %9, align 8
  %17 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %16, i32 0, i32 1
  store %struct.patternAST* %15, %struct.patternAST** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  call void @yyerror1(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef %22)
  call void @exit(i32 noundef 1) #5
  unreachable

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ruleAST*, %struct.ruleAST** %9, align 8
  %27 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.intlist*, %struct.intlist** %8, align 8
  %29 = load %struct.ruleAST*, %struct.ruleAST** %9, align 8
  %30 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %29, i32 0, i32 3
  store %struct.intlist* %28, %struct.intlist** %30, align 8
  %31 = load i32, i32* @max_ruleAST, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @max_ruleAST, align 4
  %33 = load %struct.ruleAST*, %struct.ruleAST** %9, align 8
  ret %struct.ruleAST* %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpBinding(%struct.binding* noundef %0) #0 {
  %2 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %2, align 8
  %3 = load %struct.binding*, %struct.binding** %2, align 8
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.binding*, %struct.binding** %2, align 8
  %7 = getelementptr inbounds %struct.binding, %struct.binding* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* noundef %5, i32 noundef %8)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpArity(%struct.arity* noundef %0) #0 {
  %2 = alloca %struct.arity*, align 8
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.binding*, align 8
  store %struct.arity* %0, %struct.arity** %2, align 8
  %5 = load %struct.arity*, %struct.arity** %2, align 8
  %6 = getelementptr inbounds %struct.arity, %struct.arity* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 noundef %7)
  %9 = load %struct.arity*, %struct.arity** %2, align 8
  %10 = getelementptr inbounds %struct.arity, %struct.arity* %9, i32 0, i32 1
  %11 = load %struct.list*, %struct.list** %10, align 8
  store %struct.list* %11, %struct.list** %3, align 8
  br label %12

12:                                               ; preds = %21, %1
  %13 = load %struct.list*, %struct.list** %3, align 8
  %14 = icmp ne %struct.list* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.list*, %struct.list** %3, align 8
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.binding*
  store %struct.binding* %19, %struct.binding** %4, align 8
  %20 = load %struct.binding*, %struct.binding** %4, align 8
  call void @dumpBinding(%struct.binding* noundef %20)
  br label %21

21:                                               ; preds = %15
  %22 = load %struct.list*, %struct.list** %3, align 8
  %23 = getelementptr inbounds %struct.list, %struct.list* %22, i32 0, i32 1
  %24 = load %struct.list*, %struct.list** %23, align 8
  store %struct.list* %24, %struct.list** %3, align 8
  br label %12, !llvm.loop !7

25:                                               ; preds = %12
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpPatternAST(%struct.patternAST* noundef %0) #0 {
  %2 = alloca %struct.patternAST*, align 8
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.patternAST*, align 8
  store %struct.patternAST* %0, %struct.patternAST** %2, align 8
  %5 = load %struct.patternAST*, %struct.patternAST** %2, align 8
  %6 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %7)
  %9 = load %struct.patternAST*, %struct.patternAST** %2, align 8
  %10 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %9, i32 0, i32 2
  %11 = load %struct.list*, %struct.list** %10, align 8
  %12 = icmp ne %struct.list* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %15 = load %struct.patternAST*, %struct.patternAST** %2, align 8
  %16 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %15, i32 0, i32 2
  %17 = load %struct.list*, %struct.list** %16, align 8
  store %struct.list* %17, %struct.list** %3, align 8
  br label %18

18:                                               ; preds = %34, %13
  %19 = load %struct.list*, %struct.list** %3, align 8
  %20 = icmp ne %struct.list* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.list*, %struct.list** %3, align 8
  %23 = getelementptr inbounds %struct.list, %struct.list* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.patternAST*
  store %struct.patternAST* %25, %struct.patternAST** %4, align 8
  %26 = load %struct.patternAST*, %struct.patternAST** %4, align 8
  call void @dumpPatternAST(%struct.patternAST* noundef %26)
  %27 = load %struct.list*, %struct.list** %3, align 8
  %28 = getelementptr inbounds %struct.list, %struct.list* %27, i32 0, i32 1
  %29 = load %struct.list*, %struct.list** %28, align 8
  %30 = icmp ne %struct.list* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %21
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.list*, %struct.list** %3, align 8
  %36 = getelementptr inbounds %struct.list, %struct.list* %35, i32 0, i32 1
  %37 = load %struct.list*, %struct.list** %36, align 8
  store %struct.list* %37, %struct.list** %3, align 8
  br label %18, !llvm.loop !8

38:                                               ; preds = %18
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpRuleAST(%struct.ruleAST* noundef %0) #0 {
  %2 = alloca %struct.ruleAST*, align 8
  store %struct.ruleAST* %0, %struct.ruleAST** %2, align 8
  %3 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %4 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef %5)
  %7 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %8 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %7, i32 0, i32 1
  %9 = load %struct.patternAST*, %struct.patternAST** %8, align 8
  call void @dumpPatternAST(%struct.patternAST* noundef %9)
  %10 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %11 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ruleAST*, %struct.ruleAST** %2, align 8
  %14 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %13, i32 0, i32 3
  %15 = load %struct.intlist*, %struct.intlist** %14, align 8
  %16 = ptrtoint %struct.intlist* %15 to i64
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 noundef %12, i64 noundef %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpDecls(%struct.list* noundef %0) #0 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.arity*, align 8
  store %struct.list* %0, %struct.list** %2, align 8
  %5 = load %struct.list*, %struct.list** %2, align 8
  store %struct.list* %5, %struct.list** %3, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.list*, %struct.list** %3, align 8
  %8 = icmp ne %struct.list* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.list*, %struct.list** %3, align 8
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.arity*
  store %struct.arity* %13, %struct.arity** %4, align 8
  %14 = load %struct.arity*, %struct.arity** %4, align 8
  call void @dumpArity(%struct.arity* noundef %14)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.list*, %struct.list** %3, align 8
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 1
  %18 = load %struct.list*, %struct.list** %17, align 8
  store %struct.list* %18, %struct.list** %3, align 8
  br label %6, !llvm.loop !9

19:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpRules(%struct.list* noundef %0) #0 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.ruleAST*, align 8
  store %struct.list* %0, %struct.list** %2, align 8
  %5 = load %struct.list*, %struct.list** %2, align 8
  store %struct.list* %5, %struct.list** %3, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.list*, %struct.list** %3, align 8
  %8 = icmp ne %struct.list* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.list*, %struct.list** %3, align 8
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.ruleAST*
  store %struct.ruleAST* %13, %struct.ruleAST** %4, align 8
  %14 = load %struct.ruleAST*, %struct.ruleAST** %4, align 8
  call void @dumpRuleAST(%struct.ruleAST* noundef %14)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.list*, %struct.list** %3, align 8
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 1
  %18 = load %struct.list*, %struct.list** %17, align 8
  store %struct.list* %18, %struct.list** %3, align 8
  br label %6, !llvm.loop !10

19:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @doBinding(%struct.binding* noundef %0) #0 {
  %2 = alloca %struct.binding*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol*, align 8
  store %struct.binding* %0, %struct.binding** %2, align 8
  %5 = load %struct.binding*, %struct.binding** %2, align 8
  %6 = getelementptr inbounds %struct.binding, %struct.binding* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call %struct.symbol* @enter(i8* noundef %7, i32* noundef %3)
  store %struct.symbol* %8, %struct.symbol** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load %struct.binding*, %struct.binding** %2, align 8
  %14 = getelementptr inbounds %struct.binding, %struct.binding* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* noundef %15)
  call void @exit(i32 noundef 1) #5
  unreachable

17:                                               ; preds = %1
  %18 = load %struct.symbol*, %struct.symbol** %4, align 8
  %19 = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = load %struct.binding*, %struct.binding** %2, align 8
  %21 = getelementptr inbounds %struct.binding, %struct.binding* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.binding*, %struct.binding** %2, align 8
  %24 = getelementptr inbounds %struct.binding, %struct.binding* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @arity, align 4
  %27 = call %struct.operator* @newOperator(i8* noundef %22, i32 noundef %25, i32 noundef %26)
  %28 = load %struct.symbol*, %struct.symbol** %4, align 8
  %29 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 2
  %30 = bitcast %union.anon* %29 to %struct.operator**
  store %struct.operator* %27, %struct.operator** %30, align 8
  %31 = load i32, i32* @arity, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %17
  %34 = load %struct.symbol*, %struct.symbol** %4, align 8
  %35 = getelementptr inbounds %struct.symbol, %struct.symbol* %34, i32 0, i32 2
  %36 = bitcast %union.anon* %35 to %struct.operator**
  %37 = load %struct.operator*, %struct.operator** %36, align 8
  %38 = bitcast %struct.operator* %37 to i8*
  %39 = load %struct.list*, %struct.list** @leaves, align 8
  %40 = call %struct.list* @newList(i8* noundef %38, %struct.list* noundef %39)
  store %struct.list* %40, %struct.list** @leaves, align 8
  br label %41

41:                                               ; preds = %33, %17
  ret void
}

declare dso_local %struct.operator* @newOperator(i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

declare dso_local void @ZEROCOST(i16* noundef) #1

declare dso_local %struct.rule* @newRule(i16* noundef, i32 noundef, %struct.nonterminal* noundef, %struct.pattern* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.nonterminal* @normalize(%struct.patternAST* noundef %0, %struct.nonterminal* noundef %1, %struct.pattern** noundef %2) #0 {
  %4 = alloca %struct.nonterminal*, align 8
  %5 = alloca %struct.patternAST*, align 8
  %6 = alloca %struct.nonterminal*, align 8
  %7 = alloca %struct.pattern**, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pattern*, align 8
  store %struct.patternAST* %0, %struct.patternAST** %5, align 8
  store %struct.nonterminal* %1, %struct.nonterminal** %6, align 8
  store %struct.pattern** %2, %struct.pattern*** %7, align 8
  %11 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %12 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call %struct.symbol* @enter(i8* noundef %13, i32* noundef %9)
  store %struct.symbol* %14, %struct.symbol** %8, align 8
  %15 = load %struct.symbol*, %struct.symbol** %8, align 8
  %16 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %17 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %16, i32 0, i32 0
  store %struct.symbol* %15, %struct.symbol** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load %struct.symbol*, %struct.symbol** %8, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i8* noundef %24)
  call void @exit(i32 noundef 1) #5
  unreachable

26:                                               ; preds = %3
  %27 = load %struct.symbol*, %struct.symbol** %8, align 8
  %28 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %33 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %32, i32 0, i32 2
  %34 = load %struct.list*, %struct.list** %33, align 8
  %35 = icmp ne %struct.list* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load %struct.symbol*, %struct.symbol** %8, align 8
  %39 = getelementptr inbounds %struct.symbol, %struct.symbol* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i8* noundef %40)
  call void @exit(i32 noundef 1) #5
  unreachable

42:                                               ; preds = %31
  %43 = call %struct.pattern* @newPattern(%struct.operator* noundef null)
  %44 = load %struct.pattern**, %struct.pattern*** %7, align 8
  store %struct.pattern* %43, %struct.pattern** %44, align 8
  %45 = load %struct.symbol*, %struct.symbol** %8, align 8
  %46 = getelementptr inbounds %struct.symbol, %struct.symbol* %45, i32 0, i32 2
  %47 = bitcast %union.anon* %46 to %struct.nonterminal**
  %48 = load %struct.nonterminal*, %struct.nonterminal** %47, align 8
  %49 = load %struct.pattern**, %struct.pattern*** %7, align 8
  %50 = load %struct.pattern*, %struct.pattern** %49, align 8
  %51 = getelementptr inbounds %struct.pattern, %struct.pattern* %50, i32 0, i32 2
  %52 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %51, i64 0, i64 0
  store %struct.nonterminal* %48, %struct.nonterminal** %52, align 8
  %53 = load %struct.symbol*, %struct.symbol** %8, align 8
  %54 = getelementptr inbounds %struct.symbol, %struct.symbol* %53, i32 0, i32 2
  %55 = bitcast %union.anon* %54 to %struct.nonterminal**
  %56 = load %struct.nonterminal*, %struct.nonterminal** %55, align 8
  store %struct.nonterminal* %56, %struct.nonterminal** %4, align 8
  br label %259

57:                                               ; preds = %26
  %58 = load %struct.symbol*, %struct.symbol** %8, align 8
  %59 = getelementptr inbounds %struct.symbol, %struct.symbol* %58, i32 0, i32 2
  %60 = bitcast %union.anon* %59 to %struct.operator**
  %61 = load %struct.operator*, %struct.operator** %60, align 8
  %62 = getelementptr inbounds %struct.operator, %struct.operator* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 8
  %64 = and i8 %63, -2
  %65 = or i8 %64, 1
  store i8 %65, i8* %62, align 8
  %66 = load %struct.symbol*, %struct.symbol** %8, align 8
  %67 = getelementptr inbounds %struct.symbol, %struct.symbol* %66, i32 0, i32 2
  %68 = bitcast %union.anon* %67 to %struct.operator**
  %69 = load %struct.operator*, %struct.operator** %68, align 8
  %70 = call %struct.pattern* @newPattern(%struct.operator* noundef %69)
  %71 = load %struct.pattern**, %struct.pattern*** %7, align 8
  store %struct.pattern* %70, %struct.pattern** %71, align 8
  %72 = load %struct.symbol*, %struct.symbol** %8, align 8
  %73 = getelementptr inbounds %struct.symbol, %struct.symbol* %72, i32 0, i32 2
  %74 = bitcast %union.anon* %73 to %struct.operator**
  %75 = load %struct.operator*, %struct.operator** %74, align 8
  %76 = getelementptr inbounds %struct.operator, %struct.operator* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %150

79:                                               ; preds = %57
  %80 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %81 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %80, i32 0, i32 2
  %82 = load %struct.list*, %struct.list** %81, align 8
  %83 = icmp ne %struct.list* %82, null
  br i1 %83, label %97, label %84

84:                                               ; preds = %79
  %85 = load %struct.symbol*, %struct.symbol** %8, align 8
  %86 = getelementptr inbounds %struct.symbol, %struct.symbol* %85, i32 0, i32 2
  %87 = bitcast %union.anon* %86 to %struct.operator**
  %88 = load %struct.operator*, %struct.operator** %87, align 8
  %89 = getelementptr inbounds %struct.operator, %struct.operator* %88, i32 0, i32 5
  store i32 0, i32* %89, align 8
  %90 = load %struct.symbol*, %struct.symbol** %8, align 8
  %91 = getelementptr inbounds %struct.symbol, %struct.symbol* %90, i32 0, i32 2
  %92 = bitcast %union.anon* %91 to %struct.operator**
  %93 = load %struct.operator*, %struct.operator** %92, align 8
  %94 = bitcast %struct.operator* %93 to i8*
  %95 = load %struct.list*, %struct.list** @leaves, align 8
  %96 = call %struct.list* @newList(i8* noundef %94, %struct.list* noundef %95)
  store %struct.list* %96, %struct.list** @leaves, align 8
  br label %133

97:                                               ; preds = %79
  %98 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %99 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %98, i32 0, i32 2
  %100 = load %struct.list*, %struct.list** %99, align 8
  %101 = getelementptr inbounds %struct.list, %struct.list* %100, i32 0, i32 1
  %102 = load %struct.list*, %struct.list** %101, align 8
  %103 = icmp ne %struct.list* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %97
  %105 = load %struct.symbol*, %struct.symbol** %8, align 8
  %106 = getelementptr inbounds %struct.symbol, %struct.symbol* %105, i32 0, i32 2
  %107 = bitcast %union.anon* %106 to %struct.operator**
  %108 = load %struct.operator*, %struct.operator** %107, align 8
  %109 = getelementptr inbounds %struct.operator, %struct.operator* %108, i32 0, i32 5
  store i32 1, i32* %109, align 8
  br label %132

110:                                              ; preds = %97
  %111 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %112 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %111, i32 0, i32 2
  %113 = load %struct.list*, %struct.list** %112, align 8
  %114 = getelementptr inbounds %struct.list, %struct.list* %113, i32 0, i32 1
  %115 = load %struct.list*, %struct.list** %114, align 8
  %116 = getelementptr inbounds %struct.list, %struct.list* %115, i32 0, i32 1
  %117 = load %struct.list*, %struct.list** %116, align 8
  %118 = icmp ne %struct.list* %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %110
  %120 = load %struct.symbol*, %struct.symbol** %8, align 8
  %121 = getelementptr inbounds %struct.symbol, %struct.symbol* %120, i32 0, i32 2
  %122 = bitcast %union.anon* %121 to %struct.operator**
  %123 = load %struct.operator*, %struct.operator** %122, align 8
  %124 = getelementptr inbounds %struct.operator, %struct.operator* %123, i32 0, i32 5
  store i32 2, i32* %124, align 8
  br label %131

125:                                              ; preds = %110
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %127 = load %struct.symbol*, %struct.symbol** %8, align 8
  %128 = getelementptr inbounds %struct.symbol, %struct.symbol* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %126, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i8* noundef %129)
  call void @exit(i32 noundef 1) #5
  unreachable

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131, %104
  br label %133

133:                                              ; preds = %132, %84
  %134 = load %struct.symbol*, %struct.symbol** %8, align 8
  %135 = getelementptr inbounds %struct.symbol, %struct.symbol* %134, i32 0, i32 2
  %136 = bitcast %union.anon* %135 to %struct.operator**
  %137 = load %struct.operator*, %struct.operator** %136, align 8
  %138 = getelementptr inbounds %struct.operator, %struct.operator* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @max_arity, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %133
  %143 = load %struct.symbol*, %struct.symbol** %8, align 8
  %144 = getelementptr inbounds %struct.symbol, %struct.symbol* %143, i32 0, i32 2
  %145 = bitcast %union.anon* %144 to %struct.operator**
  %146 = load %struct.operator*, %struct.operator** %145, align 8
  %147 = getelementptr inbounds %struct.operator, %struct.operator* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* @max_arity, align 4
  br label %149

149:                                              ; preds = %142, %133
  br label %150

150:                                              ; preds = %149, %57
  %151 = load %struct.symbol*, %struct.symbol** %8, align 8
  %152 = getelementptr inbounds %struct.symbol, %struct.symbol* %151, i32 0, i32 2
  %153 = bitcast %union.anon* %152 to %struct.operator**
  %154 = load %struct.operator*, %struct.operator** %153, align 8
  %155 = getelementptr inbounds %struct.operator, %struct.operator* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %157 [
    i32 0, label %161
    i32 1, label %173
    i32 2, label %203
  ]

157:                                              ; preds = %150
  %158 = call i32 @fatal(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), i32 noundef 125)
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i32
  br label %246

161:                                              ; preds = %150
  %162 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %163 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %162, i32 0, i32 2
  %164 = load %struct.list*, %struct.list** %163, align 8
  %165 = icmp ne %struct.list* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %168 = load %struct.symbol*, %struct.symbol** %8, align 8
  %169 = getelementptr inbounds %struct.symbol, %struct.symbol* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %167, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.24, i64 0, i64 0), i8* noundef %170)
  call void @exit(i32 noundef 1) #5
  unreachable

172:                                              ; preds = %161
  br label %246

173:                                              ; preds = %150
  %174 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %175 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %174, i32 0, i32 2
  %176 = load %struct.list*, %struct.list** %175, align 8
  %177 = icmp ne %struct.list* %176, null
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %180 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %179, i32 0, i32 2
  %181 = load %struct.list*, %struct.list** %180, align 8
  %182 = getelementptr inbounds %struct.list, %struct.list* %181, i32 0, i32 1
  %183 = load %struct.list*, %struct.list** %182, align 8
  %184 = icmp ne %struct.list* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %178, %173
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %187 = load %struct.symbol*, %struct.symbol** %8, align 8
  %188 = getelementptr inbounds %struct.symbol, %struct.symbol* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %186, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i64 0, i64 0), i8* noundef %189)
  call void @exit(i32 noundef 1) #5
  unreachable

191:                                              ; preds = %178
  %192 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %193 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %192, i32 0, i32 2
  %194 = load %struct.list*, %struct.list** %193, align 8
  %195 = getelementptr inbounds %struct.list, %struct.list* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = bitcast i8* %196 to %struct.patternAST*
  %198 = call %struct.nonterminal* @normalize(%struct.patternAST* noundef %197, %struct.nonterminal* noundef null, %struct.pattern** noundef %10)
  %199 = load %struct.pattern**, %struct.pattern*** %7, align 8
  %200 = load %struct.pattern*, %struct.pattern** %199, align 8
  %201 = getelementptr inbounds %struct.pattern, %struct.pattern* %200, i32 0, i32 2
  %202 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %201, i64 0, i64 0
  store %struct.nonterminal* %198, %struct.nonterminal** %202, align 8
  br label %246

203:                                              ; preds = %150
  %204 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %205 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %204, i32 0, i32 2
  %206 = load %struct.list*, %struct.list** %205, align 8
  %207 = icmp ne %struct.list* %206, null
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %210 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %209, i32 0, i32 2
  %211 = load %struct.list*, %struct.list** %210, align 8
  %212 = getelementptr inbounds %struct.list, %struct.list* %211, i32 0, i32 1
  %213 = load %struct.list*, %struct.list** %212, align 8
  %214 = icmp ne %struct.list* %213, null
  br i1 %214, label %221, label %215

215:                                              ; preds = %208, %203
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %217 = load %struct.symbol*, %struct.symbol** %8, align 8
  %218 = getelementptr inbounds %struct.symbol, %struct.symbol* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %216, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.26, i64 0, i64 0), i8* noundef %219)
  call void @exit(i32 noundef 1) #5
  unreachable

221:                                              ; preds = %208
  %222 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %223 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %222, i32 0, i32 2
  %224 = load %struct.list*, %struct.list** %223, align 8
  %225 = getelementptr inbounds %struct.list, %struct.list* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = bitcast i8* %226 to %struct.patternAST*
  %228 = call %struct.nonterminal* @normalize(%struct.patternAST* noundef %227, %struct.nonterminal* noundef null, %struct.pattern** noundef %10)
  %229 = load %struct.pattern**, %struct.pattern*** %7, align 8
  %230 = load %struct.pattern*, %struct.pattern** %229, align 8
  %231 = getelementptr inbounds %struct.pattern, %struct.pattern* %230, i32 0, i32 2
  %232 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %231, i64 0, i64 0
  store %struct.nonterminal* %228, %struct.nonterminal** %232, align 8
  %233 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  %234 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %233, i32 0, i32 2
  %235 = load %struct.list*, %struct.list** %234, align 8
  %236 = getelementptr inbounds %struct.list, %struct.list* %235, i32 0, i32 1
  %237 = load %struct.list*, %struct.list** %236, align 8
  %238 = getelementptr inbounds %struct.list, %struct.list* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = bitcast i8* %239 to %struct.patternAST*
  %241 = call %struct.nonterminal* @normalize(%struct.patternAST* noundef %240, %struct.nonterminal* noundef null, %struct.pattern** noundef %10)
  %242 = load %struct.pattern**, %struct.pattern*** %7, align 8
  %243 = load %struct.pattern*, %struct.pattern** %242, align 8
  %244 = getelementptr inbounds %struct.pattern, %struct.pattern* %243, i32 0, i32 2
  %245 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %244, i64 0, i64 1
  store %struct.nonterminal* %241, %struct.nonterminal** %245, align 8
  br label %246

246:                                              ; preds = %221, %191, %172, %157
  %247 = load %struct.nonterminal*, %struct.nonterminal** %6, align 8
  %248 = icmp ne %struct.nonterminal* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load %struct.nonterminal*, %struct.nonterminal** %6, align 8
  %251 = load %struct.pattern**, %struct.pattern*** %7, align 8
  %252 = load %struct.pattern*, %struct.pattern** %251, align 8
  %253 = getelementptr inbounds %struct.pattern, %struct.pattern* %252, i32 0, i32 0
  store %struct.nonterminal* %250, %struct.nonterminal** %253, align 8
  %254 = load %struct.nonterminal*, %struct.nonterminal** %6, align 8
  store %struct.nonterminal* %254, %struct.nonterminal** %4, align 8
  br label %259

255:                                              ; preds = %246
  %256 = load %struct.pattern**, %struct.pattern*** %7, align 8
  %257 = load %struct.pattern*, %struct.pattern** %256, align 8
  %258 = call %struct.nonterminal* @lookup(%struct.pattern* noundef %257)
  store %struct.nonterminal* %258, %struct.nonterminal** %4, align 8
  br label %259

259:                                              ; preds = %255, %249, %42
  %260 = load %struct.nonterminal*, %struct.nonterminal** %4, align 8
  ret %struct.nonterminal* %260
}

declare dso_local %struct.pattern* @newPattern(%struct.operator* noundef) #1

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.nonterminal* @lookup(%struct.pattern* noundef %0) #0 {
  %2 = alloca %struct.nonterminal*, align 8
  %3 = alloca %struct.pattern*, align 8
  %4 = alloca [10 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.list*, align 8
  %7 = alloca %struct.nonterminal*, align 8
  %8 = alloca [4 x i16], align 2
  %9 = alloca %struct.pattern*, align 8
  store %struct.pattern* %0, %struct.pattern** %3, align 8
  %10 = load %struct.list*, %struct.list** @xpatterns, align 8
  store %struct.list* %10, %struct.list** %6, align 8
  br label %11

11:                                               ; preds = %51, %1
  %12 = load %struct.list*, %struct.list** %6, align 8
  %13 = icmp ne %struct.list* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  %15 = load %struct.list*, %struct.list** %6, align 8
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.pattern*
  store %struct.pattern* %18, %struct.pattern** %9, align 8
  %19 = load %struct.pattern*, %struct.pattern** %9, align 8
  %20 = getelementptr inbounds %struct.pattern, %struct.pattern* %19, i32 0, i32 1
  %21 = load %struct.operator*, %struct.operator** %20, align 8
  %22 = load %struct.pattern*, %struct.pattern** %3, align 8
  %23 = getelementptr inbounds %struct.pattern, %struct.pattern* %22, i32 0, i32 1
  %24 = load %struct.operator*, %struct.operator** %23, align 8
  %25 = icmp eq %struct.operator* %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %14
  %27 = load %struct.pattern*, %struct.pattern** %9, align 8
  %28 = getelementptr inbounds %struct.pattern, %struct.pattern* %27, i32 0, i32 2
  %29 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %28, i64 0, i64 0
  %30 = load %struct.nonterminal*, %struct.nonterminal** %29, align 8
  %31 = load %struct.pattern*, %struct.pattern** %3, align 8
  %32 = getelementptr inbounds %struct.pattern, %struct.pattern* %31, i32 0, i32 2
  %33 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %32, i64 0, i64 0
  %34 = load %struct.nonterminal*, %struct.nonterminal** %33, align 8
  %35 = icmp eq %struct.nonterminal* %30, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load %struct.pattern*, %struct.pattern** %9, align 8
  %38 = getelementptr inbounds %struct.pattern, %struct.pattern* %37, i32 0, i32 2
  %39 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %38, i64 0, i64 1
  %40 = load %struct.nonterminal*, %struct.nonterminal** %39, align 8
  %41 = load %struct.pattern*, %struct.pattern** %3, align 8
  %42 = getelementptr inbounds %struct.pattern, %struct.pattern* %41, i32 0, i32 2
  %43 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %42, i64 0, i64 1
  %44 = load %struct.nonterminal*, %struct.nonterminal** %43, align 8
  %45 = icmp eq %struct.nonterminal* %40, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.pattern*, %struct.pattern** %9, align 8
  %48 = getelementptr inbounds %struct.pattern, %struct.pattern* %47, i32 0, i32 0
  %49 = load %struct.nonterminal*, %struct.nonterminal** %48, align 8
  store %struct.nonterminal* %49, %struct.nonterminal** %2, align 8
  br label %83

50:                                               ; preds = %36, %26, %14
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.list*, %struct.list** %6, align 8
  %53 = getelementptr inbounds %struct.list, %struct.list* %52, i32 0, i32 1
  %54 = load %struct.list*, %struct.list** %53, align 8
  store %struct.list* %54, %struct.list** %6, align 8
  br label %11, !llvm.loop !11

55:                                               ; preds = %11
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %57 = load i32, i32* @tcount, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @tcount, align 4
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %56, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 noundef %57) #6
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %61 = call i64 @strlen(i8* noundef %60) #7
  %62 = add i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i8* @zalloc(i32 noundef %63)
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %67 = call i8* @strcpy(i8* noundef %65, i8* noundef %66) #6
  %68 = load i8*, i8** %5, align 8
  %69 = call %struct.nonterminal* @newNonTerminal(i8* noundef %68)
  store %struct.nonterminal* %69, %struct.nonterminal** %7, align 8
  %70 = load %struct.nonterminal*, %struct.nonterminal** %7, align 8
  %71 = load %struct.pattern*, %struct.pattern** %3, align 8
  %72 = getelementptr inbounds %struct.pattern, %struct.pattern* %71, i32 0, i32 0
  store %struct.nonterminal* %70, %struct.nonterminal** %72, align 8
  %73 = load %struct.pattern*, %struct.pattern** %3, align 8
  %74 = bitcast %struct.pattern* %73 to i8*
  %75 = load %struct.list*, %struct.list** @xpatterns, align 8
  %76 = call %struct.list* @newList(i8* noundef %74, %struct.list* noundef %75)
  store %struct.list* %76, %struct.list** @xpatterns, align 8
  %77 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 0
  call void @ZEROCOST(i16* noundef %77)
  %78 = getelementptr inbounds [4 x i16], [4 x i16]* %8, i64 0, i64 0
  %79 = load %struct.nonterminal*, %struct.nonterminal** %7, align 8
  %80 = load %struct.pattern*, %struct.pattern** %3, align 8
  %81 = call %struct.rule* @newRule(i16* noundef %78, i32 noundef 0, %struct.nonterminal* noundef %79, %struct.pattern* noundef %80)
  %82 = load %struct.nonterminal*, %struct.nonterminal** %7, align 8
  store %struct.nonterminal* %82, %struct.nonterminal** %2, align 8
  br label %83

83:                                               ; preds = %55, %46
  %84 = load %struct.nonterminal*, %struct.nonterminal** %2, align 8
  ret %struct.nonterminal* %84
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local %struct.table* @newTable(%struct.operator* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
