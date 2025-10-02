; ModuleID = './fe.ll'
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
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.arity*)* @doDecl to i8* (i8*)*), %struct.list* noundef %0) #6
  store %struct.list* %1, %struct.list** @ruleASTs, align 8
  call void @reveachList(i8* (i8*)* noundef bitcast (void (%struct.ruleAST*)* @doEnterNonTerm to i8* (i8*)*), %struct.list* noundef %1) #6
  %3 = load i32, i32* @max_nonterminal, align 4
  store i32 %3, i32* @last_user_nonterminal, align 4
  call void @reveachList(i8* (i8*)* noundef bitcast (void (%struct.ruleAST*)* @doRule to i8* (i8*)*), %struct.list* noundef %1) #6
  %4 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.operator*)* @doTable to i8* (i8*)*), %struct.list* noundef %4) #6
  ret void
}

declare dso_local void @foreachList(i8* (i8*)* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @doDecl(%struct.arity* noundef readonly %0) #0 {
  %.not = icmp eq %struct.arity* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.arity, %struct.arity* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  store i32 %5, i32* @arity, align 4
  %6 = getelementptr inbounds %struct.arity, %struct.arity* %0, i64 0, i32 1
  %7 = load %struct.list*, %struct.list** %6, align 8
  call void @foreachList(i8* (i8*)* noundef bitcast (void (%struct.binding*)* @doBinding to i8* (i8*)*), %struct.list* noundef %7) #6
  br label %8

8:                                                ; preds = %3, %2
  ret void
}

declare dso_local void @reveachList(i8* (i8*)* noundef, %struct.list* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @doEnterNonTerm(%struct.ruleAST* nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i16], align 2
  %4 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call %struct.symbol* @enter(i8* noundef %5, i32* noundef nonnull %2) #6
  %7 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call %struct.nonterminal* @newNonTerminal(i8* noundef %10) #6
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i64 0, i32 2, i32 0
  store %struct.nonterminal* %11, %struct.nonterminal** %12, align 8
  %13 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i64 0, i32 1
  store i32 2, i32* %13, align 8
  br label %23

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i64 0, i32 1
  %16 = load i32, i32* %15, align 8
  %.not2 = icmp eq i32 %16, 2
  br i1 %.not2, label %22, label %17

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef %20) #7
  call void @exit(i32 noundef 1) #8
  unreachable

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %8
  %24 = getelementptr inbounds [4 x i16], [4 x i16]* %3, i64 0, i64 0
  call void @ZEROCOST(i16* noundef nonnull %24) #6
  %25 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 3
  br label %26

26:                                               ; preds = %46, %23
  %.01 = phi i32 [ 0, %23 ], [ %48, %46 ]
  %.0.in = phi %struct.intlist** [ %25, %23 ], [ %47, %46 ]
  %.0 = load %struct.intlist*, %struct.intlist** %.0.in, align 8
  %.not3 = icmp eq %struct.intlist* %.0, null
  br i1 %.not3, label %49, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.intlist, %struct.intlist* %.0, i64 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @lexical, align 4
  %.not4 = icmp eq i32 %30, 0
  br i1 %.not4, label %38, label %31

31:                                               ; preds = %27
  %32 = icmp ult i32 %.01, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = trunc i32 %29 to i16
  %35 = zext i32 %.01 to i64
  %36 = getelementptr inbounds [4 x i16], [4 x i16]* %3, i64 0, i64 %35
  store i16 %34, i16* %36, align 2
  br label %37

37:                                               ; preds = %33, %31
  br label %45

38:                                               ; preds = %27
  %39 = load i32, i32* @principleCost, align 4
  %40 = icmp eq i32 %.01, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = trunc i32 %29 to i16
  %43 = getelementptr inbounds [4 x i16], [4 x i16]* %3, i64 0, i64 0
  store i16 %42, i16* %43, align 2
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.intlist, %struct.intlist* %.0, i64 0, i32 1
  %48 = add nuw nsw i32 %.01, 1
  br label %26, !llvm.loop !4

49:                                               ; preds = %26
  %50 = getelementptr inbounds [4 x i16], [4 x i16]* %3, i64 0, i64 0
  %51 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i64 0, i32 2, i32 0
  %54 = load %struct.nonterminal*, %struct.nonterminal** %53, align 8
  %55 = call %struct.rule* @newRule(i16* noundef nonnull %50, i32 noundef %52, %struct.nonterminal* noundef %54, %struct.pattern* noundef null) #6
  %56 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 4
  store %struct.rule* %55, %struct.rule** %56, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @doRule(%struct.ruleAST* nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.pattern*, align 8
  %3 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 1
  %4 = load %struct.patternAST*, %struct.patternAST** %3, align 8
  %5 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 4
  %6 = load %struct.rule*, %struct.rule** %5, align 8
  %7 = getelementptr inbounds %struct.rule, %struct.rule* %6, i64 0, i32 4
  %8 = load %struct.nonterminal*, %struct.nonterminal** %7, align 8
  %9 = call %struct.nonterminal* @normalize(%struct.patternAST* noundef %4, %struct.nonterminal* noundef %8, %struct.pattern** noundef nonnull %2)
  %10 = load %struct.pattern*, %struct.pattern** %2, align 8
  %11 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 4
  %12 = load %struct.rule*, %struct.rule** %11, align 8
  %13 = getelementptr inbounds %struct.rule, %struct.rule* %12, i64 0, i32 5
  store %struct.pattern* %10, %struct.pattern** %13, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @doTable(%struct.operator* noundef %0) #0 {
  %2 = call %struct.table* @newTable(%struct.operator* noundef %0) #6
  %3 = getelementptr inbounds %struct.operator, %struct.operator* %0, i64 0, i32 6
  store %struct.table* %2, %struct.table** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @doStart(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = load %struct.nonterminal*, %struct.nonterminal** @start, align 8
  %.not = icmp eq %struct.nonterminal* %3, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %1
  call void @yyerror1(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0)) #6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %1
  %8 = call %struct.symbol* @enter(i8* noundef %0, i32* noundef nonnull %2) #6
  %9 = load i32, i32* %2, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %16, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call %struct.nonterminal* @newNonTerminal(i8* noundef %12) #6
  %14 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2, i32 0
  store %struct.nonterminal* %13, %struct.nonterminal** %14, align 8
  %15 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 1
  store i32 2, i32* %15, align 8
  br label %25

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %.not2 = icmp eq i32 %18, 2
  br i1 %.not2, label %24, label %19

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef %22) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %10
  ret void

UnifiedUnreachableBlock:                          ; preds = %19, %4
  unreachable
}

declare dso_local void @yyerror1(i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

declare dso_local %struct.symbol* @enter(i8* noundef, i32* noundef) #1

declare dso_local %struct.nonterminal* @newNonTerminal(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @doGrammarNts() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %19, %0
  %.0.in = phi %struct.list** [ @grammarNts, %0 ], [ %20, %19 ]
  %.0 = load %struct.list*, %struct.list** %.0.in, align 8
  %.not = icmp eq %struct.list* %.0, null
  br i1 %.not, label %21, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.list, %struct.list* %.0, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call %struct.symbol* @enter(i8* noundef %5, i32* noundef nonnull %1) #6
  %7 = load i32, i32* %1, align 4
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %11, label %8

8:                                                ; preds = %3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %5) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i64 0, i32 1
  %13 = load i32, i32* %12, align 8
  %.not3 = icmp eq i32 %13, 2
  br i1 %.not3, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* noundef %5) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %11
  %18 = bitcast %struct.list* %.0 to %struct.symbol**
  store %struct.symbol* %6, %struct.symbol** %18, align 8
  br label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.list, %struct.list* %.0, i64 0, i32 1
  br label %2, !llvm.loop !6

21:                                               ; preds = %2
  ret void

UnifiedUnreachableBlock:                          ; preds = %14, %8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @doGram(%struct.list* noundef %0) #0 {
  %2 = load %struct.list*, %struct.list** @grammarNts, align 8
  %.not = icmp eq %struct.list* %2, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  call void @yyerror1(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #6
  call void @exit(i32 noundef 1) #8
  unreachable

4:                                                ; preds = %1
  store %struct.list* %0, %struct.list** @grammarNts, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.arity* @newArity(i32 noundef %0, %struct.list* noundef %1) #0 {
  %3 = call i8* @zalloc(i32 noundef 16) #6
  %4 = bitcast i8* %3 to %struct.arity*
  %5 = bitcast i8* %3 to i32*
  store i32 %0, i32* %5, align 8
  %6 = getelementptr inbounds i8, i8* %3, i64 8
  %7 = bitcast i8* %6 to %struct.list**
  store %struct.list* %1, %struct.list** %7, align 8
  ret %struct.arity* %4
}

declare dso_local i8* @zalloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.binding* @newBinding(i8* noundef %0, i32 noundef %1) #0 {
  %3 = call i8* @zalloc(i32 noundef 16) #6
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  call void @yyerror1(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0)) #6
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef %1) #7
  call void @exit(i32 noundef 1) #8
  unreachable

8:                                                ; preds = %2
  %9 = bitcast i8* %3 to %struct.binding*
  %10 = bitcast i8* %3 to i8**
  store i8* %0, i8** %10, align 8
  %11 = getelementptr inbounds i8, i8* %3, i64 8
  %12 = bitcast i8* %11 to i32*
  store i32 %1, i32* %12, align 8
  ret %struct.binding* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.patternAST* @newPatternAST(i8* noundef %0, %struct.list* noundef %1) #0 {
  %3 = call i8* @zalloc(i32 noundef 24) #6
  %4 = bitcast i8* %3 to %struct.patternAST*
  %5 = getelementptr inbounds i8, i8* %3, i64 8
  %6 = bitcast i8* %5 to i8**
  store i8* %0, i8** %6, align 8
  %7 = getelementptr inbounds i8, i8* %3, i64 16
  %8 = bitcast i8* %7 to %struct.list**
  store %struct.list* %1, %struct.list** %8, align 8
  ret %struct.patternAST* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ruleAST* @newRuleAST(i8* noundef %0, %struct.patternAST* noundef %1, i32 noundef %2, %struct.intlist* noundef %3) #0 {
  %5 = call i8* @zalloc(i32 noundef 56) #6
  %6 = bitcast i8* %5 to i8**
  store i8* %0, i8** %6, align 8
  %7 = getelementptr inbounds i8, i8* %5, i64 8
  %8 = bitcast i8* %7 to %struct.patternAST**
  store %struct.patternAST* %1, %struct.patternAST** %8, align 8
  %9 = icmp slt i32 %2, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  call void @yyerror1(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)) #6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef %2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

13:                                               ; preds = %4
  %14 = bitcast i8* %5 to %struct.ruleAST*
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to i32*
  store i32 %2, i32* %16, align 8
  %17 = getelementptr inbounds i8, i8* %5, i64 24
  %18 = bitcast i8* %17 to %struct.intlist**
  store %struct.intlist* %3, %struct.intlist** %18, align 8
  %19 = load i32, i32* @max_ruleAST, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @max_ruleAST, align 4
  ret %struct.ruleAST* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpBinding(%struct.binding* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* noundef %3, i32 noundef %5) #6
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpArity(%struct.arity* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.arity, %struct.arity* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 noundef %3) #6
  %5 = getelementptr inbounds %struct.arity, %struct.arity* %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %10, %1
  %.0.in = phi %struct.list** [ %5, %1 ], [ %11, %10 ]
  %.0 = load %struct.list*, %struct.list** %.0.in, align 8
  %.not = icmp eq %struct.list* %.0, null
  br i1 %.not, label %12, label %7

7:                                                ; preds = %6
  %8 = bitcast %struct.list* %.0 to %struct.binding**
  %9 = load %struct.binding*, %struct.binding** %8, align 8
  call void @dumpBinding(%struct.binding* noundef %9)
  br label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.list, %struct.list* %.0, i64 0, i32 1
  br label %6, !llvm.loop !7

12:                                               ; preds = %6
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpPatternAST(%struct.patternAST* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %3) #6
  %5 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %6 = load %struct.list*, %struct.list** %5, align 8
  %.not = icmp eq %struct.list* %6, null
  br i1 %.not, label %21, label %7

7:                                                ; preds = %1
  %putchar = call i32 @putchar(i32 40)
  %8 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %18, %7
  %.0.in = phi %struct.list** [ %8, %7 ], [ %19, %18 ]
  %.0 = load %struct.list*, %struct.list** %.0.in, align 8
  %.not1 = icmp eq %struct.list* %.0, null
  br i1 %.not1, label %20, label %10

10:                                               ; preds = %9
  %11 = bitcast %struct.list* %.0 to %struct.patternAST**
  %12 = load %struct.patternAST*, %struct.patternAST** %11, align 8
  call void @dumpPatternAST(%struct.patternAST* noundef %12)
  %13 = getelementptr inbounds %struct.list, %struct.list* %.0, i64 0, i32 1
  %14 = load %struct.list*, %struct.list** %13, align 8
  %.not3 = icmp eq %struct.list* %14, null
  br i1 %.not3, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %17

17:                                               ; preds = %15, %10
  br label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.list, %struct.list* %.0, i64 0, i32 1
  br label %9, !llvm.loop !8

20:                                               ; preds = %9
  %putchar2 = call i32 @putchar(i32 41)
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpRuleAST(%struct.ruleAST* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* noundef %3) #6
  %5 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 1
  %6 = load %struct.patternAST*, %struct.patternAST** %5, align 8
  call void @dumpPatternAST(%struct.patternAST* noundef %6)
  %7 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i64 0, i32 3
  %10 = load %struct.intlist*, %struct.intlist** %9, align 8
  %11 = ptrtoint %struct.intlist* %10 to i64
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 noundef %8, i64 noundef %11) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpDecls(%struct.list* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %.0 = phi %struct.list* [ %0, %1 ], [ %8, %6 ]
  %.not = icmp eq %struct.list* %.0, null
  br i1 %.not, label %9, label %3

3:                                                ; preds = %2
  %4 = bitcast %struct.list* %.0 to %struct.arity**
  %5 = load %struct.arity*, %struct.arity** %4, align 8
  call void @dumpArity(%struct.arity* noundef %5)
  br label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.list, %struct.list* %.0, i64 0, i32 1
  %8 = load %struct.list*, %struct.list** %7, align 8
  br label %2, !llvm.loop !9

9:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpRules(%struct.list* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %.0 = phi %struct.list* [ %0, %1 ], [ %8, %6 ]
  %.not = icmp eq %struct.list* %.0, null
  br i1 %.not, label %9, label %3

3:                                                ; preds = %2
  %4 = bitcast %struct.list* %.0 to %struct.ruleAST**
  %5 = load %struct.ruleAST*, %struct.ruleAST** %4, align 8
  call void @dumpRuleAST(%struct.ruleAST* noundef %5)
  br label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.list, %struct.list* %.0, i64 0, i32 1
  %8 = load %struct.list*, %struct.list** %7, align 8
  br label %2, !llvm.loop !10

9:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @doBinding(%struct.binding* nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = call %struct.symbol* @enter(i8* noundef %4, i32* noundef nonnull %2) #6
  %6 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* noundef %10) #7
  call void @exit(i32 noundef 1) #8
  unreachable

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i64 0, i32 1
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @arity, align 4
  %19 = call %struct.operator* @newOperator(i8* noundef %15, i32 noundef %17, i32 noundef %18) #6
  %20 = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i64 0, i32 2
  %21 = bitcast %union.anon* %20 to %struct.operator**
  store %struct.operator* %19, %struct.operator** %21, align 8
  %22 = load i32, i32* @arity, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i64 0, i32 2
  %26 = bitcast %union.anon* %25 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.list*, %struct.list** @leaves, align 8
  %29 = call %struct.list* @newList(i8* noundef %27, %struct.list* noundef %28) #6
  store %struct.list* %29, %struct.list** @leaves, align 8
  br label %30

30:                                               ; preds = %24, %12
  ret void
}

declare dso_local %struct.operator* @newOperator(i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

declare dso_local void @ZEROCOST(i16* noundef) #1

declare dso_local %struct.rule* @newRule(i16* noundef, i32 noundef, %struct.nonterminal* noundef, %struct.pattern* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.nonterminal* @normalize(%struct.patternAST* nocapture noundef %0, %struct.nonterminal* noundef %1, %struct.pattern** nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pattern*, align 8
  %6 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = call %struct.symbol* @enter(i8* noundef %7, i32* noundef nonnull %4) #6
  %9 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 0
  store %struct.symbol* %8, %struct.symbol** %9, align 8
  %10 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i8* noundef %14) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %22 = load %struct.list*, %struct.list** %21, align 8
  %.not10 = icmp eq %struct.list* %22, null
  br i1 %.not10, label %28, label %23

23:                                               ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i8* noundef %26) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %20
  %29 = call %struct.pattern* @newPattern(%struct.operator* noundef null) #6
  store %struct.pattern* %29, %struct.pattern** %2, align 8
  %30 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2, i32 0
  %31 = load %struct.nonterminal*, %struct.nonterminal** %30, align 8
  %32 = getelementptr inbounds %struct.pattern, %struct.pattern* %29, i64 0, i32 2, i64 0
  store %struct.nonterminal* %31, %struct.nonterminal** %32, align 8
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2, i32 0
  %34 = load %struct.nonterminal*, %struct.nonterminal** %33, align 8
  br label %184

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %37 = bitcast %union.anon* %36 to %struct.operator**
  %38 = load %struct.operator*, %struct.operator** %37, align 8
  %39 = getelementptr inbounds %struct.operator, %struct.operator* %38, i64 0, i32 1
  %40 = load i8, i8* %39, align 8
  %41 = or i8 %40, 1
  store i8 %41, i8* %39, align 8
  %42 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %43 = bitcast %union.anon* %42 to %struct.operator**
  %44 = load %struct.operator*, %struct.operator** %43, align 8
  %45 = call %struct.pattern* @newPattern(%struct.operator* noundef %44) #6
  store %struct.pattern* %45, %struct.pattern** %2, align 8
  %46 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %47 = bitcast %union.anon* %46 to %struct.operator**
  %48 = load %struct.operator*, %struct.operator** %47, align 8
  %49 = getelementptr inbounds %struct.operator, %struct.operator* %48, i64 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %109

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %54 = load %struct.list*, %struct.list** %53, align 8
  %.not7 = icmp eq %struct.list* %54, null
  br i1 %.not7, label %55, label %65

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %57 = bitcast %union.anon* %56 to %struct.operator**
  %58 = load %struct.operator*, %struct.operator** %57, align 8
  %59 = getelementptr inbounds %struct.operator, %struct.operator* %58, i64 0, i32 5
  store i32 0, i32* %59, align 8
  %60 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %61 = bitcast %union.anon* %60 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.list*, %struct.list** @leaves, align 8
  %64 = call %struct.list* @newList(i8* noundef %62, %struct.list* noundef %63) #6
  store %struct.list* %64, %struct.list** @leaves, align 8
  br label %94

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %67 = load %struct.list*, %struct.list** %66, align 8
  %68 = getelementptr inbounds %struct.list, %struct.list* %67, i64 0, i32 1
  %69 = load %struct.list*, %struct.list** %68, align 8
  %.not8 = icmp eq %struct.list* %69, null
  br i1 %.not8, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %72 = bitcast %union.anon* %71 to %struct.operator**
  %73 = load %struct.operator*, %struct.operator** %72, align 8
  %74 = getelementptr inbounds %struct.operator, %struct.operator* %73, i64 0, i32 5
  store i32 1, i32* %74, align 8
  br label %93

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %77 = load %struct.list*, %struct.list** %76, align 8
  %78 = getelementptr inbounds %struct.list, %struct.list* %77, i64 0, i32 1
  %79 = load %struct.list*, %struct.list** %78, align 8
  %80 = getelementptr inbounds %struct.list, %struct.list* %79, i64 0, i32 1
  %81 = load %struct.list*, %struct.list** %80, align 8
  %.not9 = icmp eq %struct.list* %81, null
  br i1 %.not9, label %82, label %87

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %84 = bitcast %union.anon* %83 to %struct.operator**
  %85 = load %struct.operator*, %struct.operator** %84, align 8
  %86 = getelementptr inbounds %struct.operator, %struct.operator* %85, i64 0, i32 5
  store i32 2, i32* %86, align 8
  br label %92

87:                                               ; preds = %75
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i8* noundef %90) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %70
  br label %94

94:                                               ; preds = %93, %55
  %95 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %96 = bitcast %union.anon* %95 to %struct.operator**
  %97 = load %struct.operator*, %struct.operator** %96, align 8
  %98 = getelementptr inbounds %struct.operator, %struct.operator* %97, i64 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @max_arity, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %104 = bitcast %union.anon* %103 to %struct.operator**
  %105 = load %struct.operator*, %struct.operator** %104, align 8
  %106 = getelementptr inbounds %struct.operator, %struct.operator* %105, i64 0, i32 5
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* @max_arity, align 4
  br label %108

108:                                              ; preds = %102, %94
  br label %109

109:                                              ; preds = %108, %35
  %110 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 2
  %111 = bitcast %union.anon* %110 to %struct.operator**
  %112 = load %struct.operator*, %struct.operator** %111, align 8
  %113 = getelementptr inbounds %struct.operator, %struct.operator* %112, i64 0, i32 5
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %115 [
    i32 0, label %117
    i32 1, label %126
    i32 2, label %147
  ]

115:                                              ; preds = %109
  %116 = call i32 @fatal(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), i32 noundef 125) #6
  br label %177

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %119 = load %struct.list*, %struct.list** %118, align 8
  %.not6 = icmp eq %struct.list* %119, null
  br i1 %.not6, label %125, label %120

120:                                              ; preds = %117
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %122 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.24, i64 0, i64 0), i8* noundef %123) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

125:                                              ; preds = %117
  br label %177

126:                                              ; preds = %109
  %127 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %128 = load %struct.list*, %struct.list** %127, align 8
  %.not4 = icmp eq %struct.list* %128, null
  br i1 %.not4, label %134, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %131 = load %struct.list*, %struct.list** %130, align 8
  %132 = getelementptr inbounds %struct.list, %struct.list* %131, i64 0, i32 1
  %133 = load %struct.list*, %struct.list** %132, align 8
  %.not5 = icmp eq %struct.list* %133, null
  br i1 %.not5, label %139, label %134

134:                                              ; preds = %129, %126
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %136 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i64 0, i64 0), i8* noundef %137) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

139:                                              ; preds = %129
  %140 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %141 = bitcast %struct.list** %140 to %struct.patternAST***
  %142 = load %struct.patternAST**, %struct.patternAST*** %141, align 8
  %143 = load %struct.patternAST*, %struct.patternAST** %142, align 8
  %144 = call %struct.nonterminal* @normalize(%struct.patternAST* noundef %143, %struct.nonterminal* noundef null, %struct.pattern** noundef nonnull %5)
  %145 = load %struct.pattern*, %struct.pattern** %2, align 8
  %146 = getelementptr inbounds %struct.pattern, %struct.pattern* %145, i64 0, i32 2, i64 0
  store %struct.nonterminal* %144, %struct.nonterminal** %146, align 8
  br label %177

147:                                              ; preds = %109
  %148 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %149 = load %struct.list*, %struct.list** %148, align 8
  %.not1 = icmp eq %struct.list* %149, null
  br i1 %.not1, label %155, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %152 = load %struct.list*, %struct.list** %151, align 8
  %153 = getelementptr inbounds %struct.list, %struct.list* %152, i64 0, i32 1
  %154 = load %struct.list*, %struct.list** %153, align 8
  %.not2 = icmp eq %struct.list* %154, null
  br i1 %.not2, label %155, label %160

155:                                              ; preds = %150, %147
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i64 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %156, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.26, i64 0, i64 0), i8* noundef %158) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %162 = bitcast %struct.list** %161 to %struct.patternAST***
  %163 = load %struct.patternAST**, %struct.patternAST*** %162, align 8
  %164 = load %struct.patternAST*, %struct.patternAST** %163, align 8
  %165 = call %struct.nonterminal* @normalize(%struct.patternAST* noundef %164, %struct.nonterminal* noundef null, %struct.pattern** noundef nonnull %5)
  %166 = load %struct.pattern*, %struct.pattern** %2, align 8
  %167 = getelementptr inbounds %struct.pattern, %struct.pattern* %166, i64 0, i32 2, i64 0
  store %struct.nonterminal* %165, %struct.nonterminal** %167, align 8
  %168 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i64 0, i32 2
  %169 = load %struct.list*, %struct.list** %168, align 8
  %170 = getelementptr inbounds %struct.list, %struct.list* %169, i64 0, i32 1
  %171 = bitcast %struct.list** %170 to %struct.patternAST***
  %172 = load %struct.patternAST**, %struct.patternAST*** %171, align 8
  %173 = load %struct.patternAST*, %struct.patternAST** %172, align 8
  %174 = call %struct.nonterminal* @normalize(%struct.patternAST* noundef %173, %struct.nonterminal* noundef null, %struct.pattern** noundef nonnull %5)
  %175 = load %struct.pattern*, %struct.pattern** %2, align 8
  %176 = getelementptr inbounds %struct.pattern, %struct.pattern* %175, i64 0, i32 2, i64 1
  store %struct.nonterminal* %174, %struct.nonterminal** %176, align 8
  br label %177

177:                                              ; preds = %160, %139, %125, %115
  %.not3 = icmp eq %struct.nonterminal* %1, null
  br i1 %.not3, label %181, label %178

178:                                              ; preds = %177
  %179 = load %struct.pattern*, %struct.pattern** %2, align 8
  %180 = getelementptr inbounds %struct.pattern, %struct.pattern* %179, i64 0, i32 0
  store %struct.nonterminal* %1, %struct.nonterminal** %180, align 8
  br label %184

181:                                              ; preds = %177
  %182 = load %struct.pattern*, %struct.pattern** %2, align 8
  %183 = call %struct.nonterminal* @lookup(%struct.pattern* noundef %182)
  br label %184

184:                                              ; preds = %181, %178, %28
  %.0 = phi %struct.nonterminal* [ %34, %28 ], [ %1, %178 ], [ %183, %181 ]
  ret %struct.nonterminal* %.0

UnifiedUnreachableBlock:                          ; preds = %155, %134, %120, %87, %23, %11
  unreachable
}

declare dso_local %struct.pattern* @newPattern(%struct.operator* noundef) #1

declare dso_local i32 @fatal(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.nonterminal* @lookup(%struct.pattern* noundef %0) #0 {
  %2 = alloca [10 x i8], align 1
  %3 = alloca [4 x i16], align 2
  br label %4

4:                                                ; preds = %29, %1
  %.01.in = phi %struct.list** [ @xpatterns, %1 ], [ %30, %29 ]
  %.01 = load %struct.list*, %struct.list** %.01.in, align 8
  %.not = icmp eq %struct.list* %.01, null
  br i1 %.not, label %31, label %5

5:                                                ; preds = %4
  %6 = bitcast %struct.list* %.01 to %struct.pattern**
  %7 = load %struct.pattern*, %struct.pattern** %6, align 8
  %8 = getelementptr inbounds %struct.pattern, %struct.pattern* %7, i64 0, i32 1
  %9 = load %struct.operator*, %struct.operator** %8, align 8
  %10 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 1
  %11 = load %struct.operator*, %struct.operator** %10, align 8
  %12 = icmp eq %struct.operator* %9, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.pattern, %struct.pattern* %7, i64 0, i32 2, i64 0
  %15 = load %struct.nonterminal*, %struct.nonterminal** %14, align 8
  %16 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 2, i64 0
  %17 = load %struct.nonterminal*, %struct.nonterminal** %16, align 8
  %18 = icmp eq %struct.nonterminal* %15, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.pattern, %struct.pattern* %7, i64 0, i32 2, i64 1
  %21 = load %struct.nonterminal*, %struct.nonterminal** %20, align 8
  %22 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 2, i64 1
  %23 = load %struct.nonterminal*, %struct.nonterminal** %22, align 8
  %24 = icmp eq %struct.nonterminal* %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.pattern, %struct.pattern* %7, i64 0, i32 0
  %27 = load %struct.nonterminal*, %struct.nonterminal** %26, align 8
  br label %51

28:                                               ; preds = %19, %13, %5
  br label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.list, %struct.list* %.01, i64 0, i32 1
  br label %4, !llvm.loop !11

31:                                               ; preds = %4
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %33 = load i32, i32* @tcount, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @tcount, align 4
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %32, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 noundef %33) #6
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %37 = call i64 @strlen(i8* noundef nonnull %36) #9
  %38 = trunc i64 %37 to i32
  %39 = add i32 %38, 1
  %40 = call i8* @zalloc(i32 noundef %39) #6
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %42 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %40, i8* noundef nonnull %41) #6
  %43 = call %struct.nonterminal* @newNonTerminal(i8* noundef %40) #6
  %44 = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i64 0, i32 0
  store %struct.nonterminal* %43, %struct.nonterminal** %44, align 8
  %45 = bitcast %struct.pattern* %0 to i8*
  %46 = load %struct.list*, %struct.list** @xpatterns, align 8
  %47 = call %struct.list* @newList(i8* noundef %45, %struct.list* noundef %46) #6
  store %struct.list* %47, %struct.list** @xpatterns, align 8
  %48 = getelementptr inbounds [4 x i16], [4 x i16]* %3, i64 0, i64 0
  call void @ZEROCOST(i16* noundef nonnull %48) #6
  %49 = getelementptr inbounds [4 x i16], [4 x i16]* %3, i64 0, i64 0
  %50 = call %struct.rule* @newRule(i16* noundef nonnull %49, i32 noundef 0, %struct.nonterminal* noundef %43, %struct.pattern* noundef %0) #6
  br label %51

51:                                               ; preds = %31, %25
  %.0 = phi %struct.nonterminal* [ %27, %25 ], [ %43, %31 ]
  ret %struct.nonterminal* %.0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local %struct.table* @newTable(%struct.operator* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }

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
