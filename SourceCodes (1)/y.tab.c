; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/Burg/y.tab.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/y.tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.YYSTACKDATA = type { i32, i16*, i16*, i16*, %union.YYSTYPE*, %union.YYSTYPE* }
%union.YYSTYPE = type { i8* }
%struct.list = type { i8*, %struct.list* }
%struct.arity = type { i32, %struct.list* }
%struct.binding = type { i8*, i32 }
%struct.ruleAST = type { i8*, %struct.patternAST*, i32, %struct.intlist*, %struct.rule*, %struct.strTableElement*, %struct.strTableElement* }
%struct.patternAST = type { %struct.symbol*, i8*, %struct.list* }
%struct.symbol = type { i8*, i32, %union.anon }
%union.anon = type { %struct.nonterminal* }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.intlist = type { i32, %struct.intlist* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.strTableElement = type { i8*, %struct.intlist*, i8* }

@rcsid_gram = dso_local global [5 x i8] c"$Id$\00", align 1
@yynerrs = dso_local global i32 0, align 4
@yyerrflag = dso_local global i32 0, align 4
@yychar = dso_local global i32 0, align 4
@yystack = internal global %struct.YYSTACKDATA zeroinitializer, align 8
@yydefred = internal constant [43 x i16] [i16 4, i16 0, i16 0, i16 0, i16 11, i16 9, i16 0, i16 14, i16 5, i16 2, i16 0, i16 0, i16 8, i16 0, i16 0, i16 12, i16 10, i16 0, i16 15, i16 0, i16 0, i16 13, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 19, i16 0, i16 0, i16 0, i16 24, i16 0, i16 21, i16 23], align 16
@yysindex = internal constant [43 x i16] [i16 0, i16 0, i16 -247, i16 -252, i16 0, i16 0, i16 -244, i16 0, i16 0, i16 0, i16 -242, i16 -236, i16 0, i16 -234, i16 -41, i16 0, i16 0, i16 -28, i16 0, i16 -231, i16 -230, i16 0, i16 -12, i16 -29, i16 -230, i16 -228, i16 -37, i16 -5, i16 0, i16 -230, i16 -226, i16 -22, i16 -3, i16 -44, i16 0, i16 0, i16 -44, i16 -223, i16 -1, i16 0, i16 -44, i16 0, i16 0], align 16
@yycheck = internal constant [263 x i16] [i16 44, i16 0, i16 41, i16 24, i16 41, i16 44, i16 36, i16 44, i16 29, i16 261, i16 40, i16 258, i16 259, i16 260, i16 261, i16 258, i16 259, i16 260, i16 261, i16 263, i16 61, i16 263, i16 61, i16 258, i16 259, i16 260, i16 261, i16 263, i16 40, i16 263, i16 58, i16 262, i16 61, i16 263, i16 262, i16 40, i16 262, i16 59, i16 41, i16 262, i16 41, i16 0, i16 59, i16 41, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 262, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 261], align 16
@yytable = internal constant [263 x i16] [i16 37, i16 3, i16 17, i16 26, i16 28, i16 17, i16 39, i16 29, i16 32, i16 9, i16 42, i16 4, i16 5, i16 6, i16 7, i16 6, i16 6, i16 6, i16 6, i16 12, i16 19, i16 14, i16 17, i16 7, i16 7, i16 7, i16 7, i16 16, i16 24, i16 17, i16 20, i16 21, i16 25, i16 22, i16 27, i16 30, i16 33, i16 34, i16 35, i16 40, i16 41, i16 1, i16 20, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 36, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3], align 16
@yylval = dso_local global %union.YYSTYPE zeroinitializer, align 8
@yyrindex = internal constant [43 x i16] [i16 0, i16 0, i16 0, i16 41, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -243, i16 -235, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -39, i16 0, i16 0, i16 0, i16 0, i16 -17, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0], align 16
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@yylen = internal constant [25 x i16] [i16 2, i16 1, i16 2, i16 3, i16 0, i16 2, i16 2, i16 2, i16 2, i16 0, i16 2, i16 0, i16 2, i16 3, i16 0, i16 2, i16 7, i16 1, i16 4, i16 6, i16 0, i16 4, i16 0, i16 3, i16 2], align 16
@yyval = dso_local global %union.YYSTYPE zeroinitializer, align 8
@yylhs = internal constant [25 x i16] [i16 -1, i16 0, i16 0, i16 11, i16 7, i16 7, i16 1, i16 1, i16 1, i16 10, i16 10, i16 9, i16 9, i16 2, i16 8, i16 8, i16 5, i16 6, i16 6, i16 6, i16 3, i16 3, i16 4, i16 4, i16 4], align 16
@yygindex = internal constant [12 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -30, i16 0, i16 -21, i16 0, i16 0, i16 0, i16 0, i16 0], align 16
@yydgoto = internal constant [12 x i16] [i16 1, i16 8, i16 15, i16 31, i16 38, i16 18, i16 23, i16 2, i16 13, i16 10, i16 11, i16 3], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@yydebug = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yyparse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* @yynerrs, align 4
  store i32 0, i32* @yyerrflag, align 4
  store i32 -1, i32* @yychar, align 4
  store i32 0, i32* %4, align 4
  %5 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 1), align 8
  %6 = icmp eq i16* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 @yygrowstack(%struct.YYSTACKDATA* noundef @yystack)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %465

11:                                               ; preds = %7, %0
  %12 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 1), align 8
  store i16* %12, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %13 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 4), align 8
  store %union.YYSTYPE* %13, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  store i32 0, i32* %4, align 4
  %14 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 0, i16* %14, align 2
  br label %15

15:                                               ; preds = %457, %413, %184, %154, %82, %11
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [43 x i16], [43 x i16]* @yydefred, i64 0, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %185

23:                                               ; preds = %15
  %24 = load i32, i32* @yychar, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = call i32 @yylex()
  store i32 %27, i32* @yychar, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* @yychar, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [43 x i16], [43 x i16]* @yysindex, i64 0, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  store i32 %36, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %31
  %39 = load i32, i32* @yychar, align 4
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = icmp sle i32 %44, 262
  br i1 %45, label %46, label %83

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i64 0, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = sext i16 %50 to i32
  %52 = load i32, i32* @yychar, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %46
  %55 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %56 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 3), align 8
  %57 = icmp uge i16* %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = call i32 @yygrowstack(%struct.YYSTACKDATA* noundef @yystack)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %465

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = sext i16 %66 to i32
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %73 = getelementptr inbounds i16, i16* %72, i32 1
  store i16* %73, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 %71, i16* %73, align 2
  %74 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %75 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i32 1
  store %union.YYSTYPE* %75, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %76 = bitcast %union.YYSTYPE* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 bitcast (%union.YYSTYPE* @yylval to i8*), i64 8, i1 false)
  store i32 -1, i32* @yychar, align 4
  %77 = load i32, i32* @yyerrflag, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %62
  %80 = load i32, i32* @yyerrflag, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* @yyerrflag, align 4
  br label %82

82:                                               ; preds = %79, %62
  br label %15

83:                                               ; preds = %46, %43, %38, %31
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [43 x i16], [43 x i16]* @yyrindex, i64 0, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = sext i16 %87 to i32
  store i32 %88, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %83
  %91 = load i32, i32* @yychar, align 4
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %3, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load i32, i32* %3, align 4
  %97 = icmp sle i32 %96, 262
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i64 0, i64 %100
  %102 = load i16, i16* %101, align 2
  %103 = sext i16 %102 to i32
  %104 = load i32, i32* @yychar, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = sext i16 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %185

112:                                              ; preds = %98, %95, %90, %83
  %113 = load i32, i32* @yyerrflag, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %120

116:                                              ; preds = %112
  call void @yyerror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* @yynerrs, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @yynerrs, align 4
  br label %120

120:                                              ; preds = %117, %115
  %121 = load i32, i32* @yyerrflag, align 4
  %122 = icmp slt i32 %121, 3
  br i1 %122, label %123, label %180

123:                                              ; preds = %120
  store i32 3, i32* @yyerrflag, align 4
  br label %124

124:                                              ; preds = %179, %123
  %125 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %126 = load i16, i16* %125, align 2
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds [43 x i16], [43 x i16]* @yysindex, i64 0, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  store i32 %130, i32* %3, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %169

132:                                              ; preds = %124
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 256
  store i32 %134, i32* %3, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %132
  %137 = load i32, i32* %3, align 4
  %138 = icmp sle i32 %137, 262
  br i1 %138, label %139, label %169

139:                                              ; preds = %136
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i64 0, i64 %141
  %143 = load i16, i16* %142, align 2
  %144 = sext i16 %143 to i32
  %145 = icmp eq i32 %144, 256
  br i1 %145, label %146, label %169

146:                                              ; preds = %139
  %147 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %148 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 3), align 8
  %149 = icmp uge i16* %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = call i32 @yygrowstack(%struct.YYSTACKDATA* noundef @yystack)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %465

154:                                              ; preds = %150, %146
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %156
  %158 = load i16, i16* %157, align 2
  %159 = sext i16 %158 to i32
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %161
  %163 = load i16, i16* %162, align 2
  %164 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %165 = getelementptr inbounds i16, i16* %164, i32 1
  store i16* %165, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 %163, i16* %165, align 2
  %166 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %167 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %166, i32 1
  store %union.YYSTYPE* %167, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %168 = bitcast %union.YYSTYPE* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 bitcast (%union.YYSTYPE* @yylval to i8*), i64 8, i1 false)
  br label %15

169:                                              ; preds = %139, %136, %132, %124
  %170 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %171 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 1), align 8
  %172 = icmp ule i16* %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %466

174:                                              ; preds = %169
  %175 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %176 = getelementptr inbounds i16, i16* %175, i32 -1
  store i16* %176, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %177 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %178 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %177, i32 -1
  store %union.YYSTYPE* %178, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  br label %179

179:                                              ; preds = %174
  br label %124

180:                                              ; preds = %120
  %181 = load i32, i32* @yychar, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %466

184:                                              ; preds = %180
  store i32 -1, i32* @yychar, align 4
  br label %15

185:                                              ; preds = %106, %22
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [25 x i16], [25 x i16]* @yylen, i64 0, i64 %187
  %189 = load i16, i16* %188, align 2
  %190 = sext i16 %189 to i32
  store i32 %190, i32* %2, align 4
  %191 = load i32, i32* %2, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %185
  %194 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %195 = load i32, i32* %2, align 4
  %196 = sub nsw i32 1, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %194, i64 %197
  %199 = bitcast %union.YYSTYPE* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%union.YYSTYPE* @yyval to i8*), i8* align 8 %199, i64 8, i1 false)
  br label %201

200:                                              ; preds = %185
  call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (%union.YYSTYPE* @yyval to i8*), i8 0, i64 8, i1 false)
  br label %201

201:                                              ; preds = %200, %193
  %202 = load i32, i32* %3, align 4
  switch i32 %202, label %372 [
    i32 2, label %203
    i32 3, label %204
    i32 4, label %213
    i32 5, label %214
    i32 6, label %225
    i32 7, label %231
    i32 8, label %236
    i32 9, label %241
    i32 10, label %242
    i32 11, label %252
    i32 12, label %253
    i32 13, label %264
    i32 14, label %274
    i32 15, label %275
    i32 16, label %286
    i32 17, label %304
    i32 18, label %310
    i32 19, label %322
    i32 20, label %340
    i32 21, label %341
    i32 22, label %351
    i32 23, label %352
    i32 24, label %362
  ]

203:                                              ; preds = %201
  call void @yyfinished()
  br label %372

204:                                              ; preds = %201
  %205 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %206 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %205, i64 -2
  %207 = bitcast %union.YYSTYPE* %206 to %struct.list**
  %208 = load %struct.list*, %struct.list** %207, align 8
  %209 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %210 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %209, i64 0
  %211 = bitcast %union.YYSTYPE* %210 to %struct.list**
  %212 = load %struct.list*, %struct.list** %211, align 8
  call void @doSpec(%struct.list* noundef %208, %struct.list* noundef %212)
  br label %372

213:                                              ; preds = %201
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %372

214:                                              ; preds = %201
  %215 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %216 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %215, i64 0
  %217 = bitcast %union.YYSTYPE* %216 to %struct.arity**
  %218 = load %struct.arity*, %struct.arity** %217, align 8
  %219 = bitcast %struct.arity* %218 to i8*
  %220 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %221 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %220, i64 -1
  %222 = bitcast %union.YYSTYPE* %221 to %struct.list**
  %223 = load %struct.list*, %struct.list** %222, align 8
  %224 = call %struct.list* @newList(i8* noundef %219, %struct.list* noundef %223)
  store %struct.list* %224, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %372

225:                                              ; preds = %201
  %226 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %227 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %226, i64 0
  %228 = bitcast %union.YYSTYPE* %227 to %struct.list**
  %229 = load %struct.list*, %struct.list** %228, align 8
  %230 = call %struct.arity* @newArity(i32 noundef -1, %struct.list* noundef %229)
  store %struct.arity* %230, %struct.arity** bitcast (%union.YYSTYPE* @yyval to %struct.arity**), align 8
  br label %372

231:                                              ; preds = %201
  store %struct.arity* null, %struct.arity** bitcast (%union.YYSTYPE* @yyval to %struct.arity**), align 8
  %232 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %233 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %232, i64 0
  %234 = bitcast %union.YYSTYPE* %233 to %struct.list**
  %235 = load %struct.list*, %struct.list** %234, align 8
  call void (%struct.list*, ...) bitcast (void (...)* @doGram to void (%struct.list*, ...)*)(%struct.list* noundef %235)
  br label %372

236:                                              ; preds = %201
  store %struct.arity* null, %struct.arity** bitcast (%union.YYSTYPE* @yyval to %struct.arity**), align 8
  %237 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %238 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %237, i64 0
  %239 = bitcast %union.YYSTYPE* %238 to i8**
  %240 = load i8*, i8** %239, align 8
  call void @doStart(i8* noundef %240)
  br label %372

241:                                              ; preds = %201
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %372

242:                                              ; preds = %201
  %243 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %244 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %243, i64 0
  %245 = bitcast %union.YYSTYPE* %244 to i8**
  %246 = load i8*, i8** %245, align 8
  %247 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %248 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %247, i64 -1
  %249 = bitcast %union.YYSTYPE* %248 to %struct.list**
  %250 = load %struct.list*, %struct.list** %249, align 8
  %251 = call %struct.list* @newList(i8* noundef %246, %struct.list* noundef %250)
  store %struct.list* %251, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %372

252:                                              ; preds = %201
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %372

253:                                              ; preds = %201
  %254 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %255 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %254, i64 0
  %256 = bitcast %union.YYSTYPE* %255 to %struct.binding**
  %257 = load %struct.binding*, %struct.binding** %256, align 8
  %258 = bitcast %struct.binding* %257 to i8*
  %259 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %260 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %259, i64 -1
  %261 = bitcast %union.YYSTYPE* %260 to %struct.list**
  %262 = load %struct.list*, %struct.list** %261, align 8
  %263 = call %struct.list* @newList(i8* noundef %258, %struct.list* noundef %262)
  store %struct.list* %263, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %372

264:                                              ; preds = %201
  %265 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %266 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %265, i64 -2
  %267 = bitcast %union.YYSTYPE* %266 to i8**
  %268 = load i8*, i8** %267, align 8
  %269 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %270 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %269, i64 0
  %271 = bitcast %union.YYSTYPE* %270 to i32*
  %272 = load i32, i32* %271, align 8
  %273 = call %struct.binding* @newBinding(i8* noundef %268, i32 noundef %272)
  store %struct.binding* %273, %struct.binding** bitcast (%union.YYSTYPE* @yyval to %struct.binding**), align 8
  br label %372

274:                                              ; preds = %201
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %372

275:                                              ; preds = %201
  %276 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %277 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %276, i64 0
  %278 = bitcast %union.YYSTYPE* %277 to %struct.ruleAST**
  %279 = load %struct.ruleAST*, %struct.ruleAST** %278, align 8
  %280 = bitcast %struct.ruleAST* %279 to i8*
  %281 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %282 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %281, i64 -1
  %283 = bitcast %union.YYSTYPE* %282 to %struct.list**
  %284 = load %struct.list*, %struct.list** %283, align 8
  %285 = call %struct.list* @newList(i8* noundef %280, %struct.list* noundef %284)
  store %struct.list* %285, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %372

286:                                              ; preds = %201
  %287 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %288 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %287, i64 -6
  %289 = bitcast %union.YYSTYPE* %288 to i8**
  %290 = load i8*, i8** %289, align 8
  %291 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %292 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %291, i64 -4
  %293 = bitcast %union.YYSTYPE* %292 to %struct.patternAST**
  %294 = load %struct.patternAST*, %struct.patternAST** %293, align 8
  %295 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %296 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %295, i64 -2
  %297 = bitcast %union.YYSTYPE* %296 to i32*
  %298 = load i32, i32* %297, align 8
  %299 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %300 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %299, i64 -1
  %301 = bitcast %union.YYSTYPE* %300 to %struct.intlist**
  %302 = load %struct.intlist*, %struct.intlist** %301, align 8
  %303 = call %struct.ruleAST* @newRuleAST(i8* noundef %290, %struct.patternAST* noundef %294, i32 noundef %298, %struct.intlist* noundef %302)
  store %struct.ruleAST* %303, %struct.ruleAST** bitcast (%union.YYSTYPE* @yyval to %struct.ruleAST**), align 8
  br label %372

304:                                              ; preds = %201
  %305 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %306 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %305, i64 0
  %307 = bitcast %union.YYSTYPE* %306 to i8**
  %308 = load i8*, i8** %307, align 8
  %309 = call %struct.patternAST* @newPatternAST(i8* noundef %308, %struct.list* noundef null)
  store %struct.patternAST* %309, %struct.patternAST** bitcast (%union.YYSTYPE* @yyval to %struct.patternAST**), align 8
  br label %372

310:                                              ; preds = %201
  %311 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %312 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %311, i64 -3
  %313 = bitcast %union.YYSTYPE* %312 to i8**
  %314 = load i8*, i8** %313, align 8
  %315 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %316 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %315, i64 -1
  %317 = bitcast %union.YYSTYPE* %316 to %struct.patternAST**
  %318 = load %struct.patternAST*, %struct.patternAST** %317, align 8
  %319 = bitcast %struct.patternAST* %318 to i8*
  %320 = call %struct.list* @newList(i8* noundef %319, %struct.list* noundef null)
  %321 = call %struct.patternAST* @newPatternAST(i8* noundef %314, %struct.list* noundef %320)
  store %struct.patternAST* %321, %struct.patternAST** bitcast (%union.YYSTYPE* @yyval to %struct.patternAST**), align 8
  br label %372

322:                                              ; preds = %201
  %323 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %324 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %323, i64 -5
  %325 = bitcast %union.YYSTYPE* %324 to i8**
  %326 = load i8*, i8** %325, align 8
  %327 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %328 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %327, i64 -3
  %329 = bitcast %union.YYSTYPE* %328 to %struct.patternAST**
  %330 = load %struct.patternAST*, %struct.patternAST** %329, align 8
  %331 = bitcast %struct.patternAST* %330 to i8*
  %332 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %333 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %332, i64 -1
  %334 = bitcast %union.YYSTYPE* %333 to %struct.patternAST**
  %335 = load %struct.patternAST*, %struct.patternAST** %334, align 8
  %336 = bitcast %struct.patternAST* %335 to i8*
  %337 = call %struct.list* @newList(i8* noundef %336, %struct.list* noundef null)
  %338 = call %struct.list* @newList(i8* noundef %331, %struct.list* noundef %337)
  %339 = call %struct.patternAST* @newPatternAST(i8* noundef %326, %struct.list* noundef %338)
  store %struct.patternAST* %339, %struct.patternAST** bitcast (%union.YYSTYPE* @yyval to %struct.patternAST**), align 8
  br label %372

340:                                              ; preds = %201
  store %struct.intlist* null, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %372

341:                                              ; preds = %201
  %342 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %343 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %342, i64 -2
  %344 = bitcast %union.YYSTYPE* %343 to i32*
  %345 = load i32, i32* %344, align 8
  %346 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %347 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %346, i64 -1
  %348 = bitcast %union.YYSTYPE* %347 to %struct.intlist**
  %349 = load %struct.intlist*, %struct.intlist** %348, align 8
  %350 = call %struct.intlist* @newIntList(i32 noundef %345, %struct.intlist* noundef %349)
  store %struct.intlist* %350, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %372

351:                                              ; preds = %201
  store %struct.intlist* null, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %372

352:                                              ; preds = %201
  %353 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %354 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %353, i64 -1
  %355 = bitcast %union.YYSTYPE* %354 to i32*
  %356 = load i32, i32* %355, align 8
  %357 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %358 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %357, i64 0
  %359 = bitcast %union.YYSTYPE* %358 to %struct.intlist**
  %360 = load %struct.intlist*, %struct.intlist** %359, align 8
  %361 = call %struct.intlist* @newIntList(i32 noundef %356, %struct.intlist* noundef %360)
  store %struct.intlist* %361, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %372

362:                                              ; preds = %201
  %363 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %364 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %363, i64 -1
  %365 = bitcast %union.YYSTYPE* %364 to i32*
  %366 = load i32, i32* %365, align 8
  %367 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %368 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %367, i64 0
  %369 = bitcast %union.YYSTYPE* %368 to %struct.intlist**
  %370 = load %struct.intlist*, %struct.intlist** %369, align 8
  %371 = call %struct.intlist* @newIntList(i32 noundef %366, %struct.intlist* noundef %370)
  store %struct.intlist* %371, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %372

372:                                              ; preds = %201, %362, %352, %351, %341, %340, %322, %310, %304, %286, %275, %274, %264, %253, %252, %242, %241, %236, %231, %225, %214, %213, %204, %203
  %373 = load i32, i32* %2, align 4
  %374 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %375 = sext i32 %373 to i64
  %376 = sub i64 0, %375
  %377 = getelementptr inbounds i16, i16* %374, i64 %376
  store i16* %377, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %378 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %379 = load i16, i16* %378, align 2
  %380 = sext i16 %379 to i32
  store i32 %380, i32* %4, align 4
  %381 = load i32, i32* %2, align 4
  %382 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %383 = sext i32 %381 to i64
  %384 = sub i64 0, %383
  %385 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %382, i64 %384
  store %union.YYSTYPE* %385, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %386 = load i32, i32* %3, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [25 x i16], [25 x i16]* @yylhs, i64 0, i64 %387
  %389 = load i16, i16* %388, align 2
  %390 = sext i16 %389 to i32
  store i32 %390, i32* %2, align 4
  %391 = load i32, i32* %4, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %414

393:                                              ; preds = %372
  %394 = load i32, i32* %2, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %414

396:                                              ; preds = %393
  store i32 1, i32* %4, align 4
  %397 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %398 = getelementptr inbounds i16, i16* %397, i32 1
  store i16* %398, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 1, i16* %398, align 2
  %399 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %400 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %399, i32 1
  store %union.YYSTYPE* %400, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %401 = bitcast %union.YYSTYPE* %400 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %401, i8* align 8 bitcast (%union.YYSTYPE* @yyval to i8*), i64 8, i1 false)
  %402 = load i32, i32* @yychar, align 4
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %404, label %409

404:                                              ; preds = %396
  %405 = call i32 @yylex()
  store i32 %405, i32* @yychar, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  store i32 0, i32* @yychar, align 4
  br label %408

408:                                              ; preds = %407, %404
  br label %409

409:                                              ; preds = %408, %396
  %410 = load i32, i32* @yychar, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %409
  br label %467

413:                                              ; preds = %409
  br label %15

414:                                              ; preds = %393, %372
  %415 = load i32, i32* %2, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [12 x i16], [12 x i16]* @yygindex, i64 0, i64 %416
  %418 = load i16, i16* %417, align 2
  %419 = sext i16 %418 to i32
  store i32 %419, i32* %3, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %443

421:                                              ; preds = %414
  %422 = load i32, i32* %4, align 4
  %423 = load i32, i32* %3, align 4
  %424 = add nsw i32 %423, %422
  store i32 %424, i32* %3, align 4
  %425 = icmp sge i32 %424, 0
  br i1 %425, label %426, label %443

426:                                              ; preds = %421
  %427 = load i32, i32* %3, align 4
  %428 = icmp sle i32 %427, 262
  br i1 %428, label %429, label %443

429:                                              ; preds = %426
  %430 = load i32, i32* %3, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i64 0, i64 %431
  %433 = load i16, i16* %432, align 2
  %434 = sext i16 %433 to i32
  %435 = load i32, i32* %4, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %443

437:                                              ; preds = %429
  %438 = load i32, i32* %3, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %439
  %441 = load i16, i16* %440, align 2
  %442 = sext i16 %441 to i32
  store i32 %442, i32* %4, align 4
  br label %449

443:                                              ; preds = %429, %426, %421, %414
  %444 = load i32, i32* %2, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [12 x i16], [12 x i16]* @yydgoto, i64 0, i64 %445
  %447 = load i16, i16* %446, align 2
  %448 = sext i16 %447 to i32
  store i32 %448, i32* %4, align 4
  br label %449

449:                                              ; preds = %443, %437
  %450 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %451 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 3), align 8
  %452 = icmp uge i16* %450, %451
  br i1 %452, label %453, label %457

453:                                              ; preds = %449
  %454 = call i32 @yygrowstack(%struct.YYSTACKDATA* noundef @yystack)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %453
  br label %465

457:                                              ; preds = %453, %449
  %458 = load i32, i32* %4, align 4
  %459 = trunc i32 %458 to i16
  %460 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %461 = getelementptr inbounds i16, i16* %460, i32 1
  store i16* %461, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 %459, i16* %461, align 2
  %462 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %463 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %462, i32 1
  store %union.YYSTYPE* %463, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %464 = bitcast %union.YYSTYPE* %463 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %464, i8* align 8 bitcast (%union.YYSTYPE* @yyval to i8*), i64 8, i1 false)
  br label %15

465:                                              ; preds = %456, %153, %61, %10
  call void @yyerror(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %466

466:                                              ; preds = %465, %183, %173
  store i32 1, i32* %1, align 4
  br label %468

467:                                              ; preds = %412
  store i32 0, i32* %1, align 4
  br label %468

468:                                              ; preds = %467, %466
  %469 = load i32, i32* %1, align 4
  ret i32 %469
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yygrowstack(%struct.YYSTACKDATA* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.YYSTACKDATA*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca %union.YYSTYPE*, align 8
  store %struct.YYSTACKDATA* %0, %struct.YYSTACKDATA** %3, align 8
  %8 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %9 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 200, i32* %5, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp uge i32 %14, 10000
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %92

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 %18, 2
  store i32 %19, i32* %5, align 4
  %20 = icmp ugt i32 %19, 10000
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 10000, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %26 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %25, i32 0, i32 2
  %27 = load i16*, i16** %26, align 8
  %28 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %29 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %28, i32 0, i32 1
  %30 = load i16*, i16** %29, align 8
  %31 = ptrtoint i16* %27 to i64
  %32 = ptrtoint i16* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 2
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %37 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %36, i32 0, i32 1
  %38 = load i16*, i16** %37, align 8
  %39 = bitcast i16* %38 to i8*
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = mul i64 %41, 2
  %43 = call i8* @realloc(i8* noundef %39, i64 noundef %42) #5
  %44 = bitcast i8* %43 to i16*
  store i16* %44, i16** %6, align 8
  %45 = load i16*, i16** %6, align 8
  %46 = icmp eq i16* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %92

48:                                               ; preds = %24
  %49 = load i16*, i16** %6, align 8
  %50 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %51 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %50, i32 0, i32 1
  store i16* %49, i16** %51, align 8
  %52 = load i16*, i16** %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %52, i64 %54
  %56 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %57 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %56, i32 0, i32 2
  store i16* %55, i16** %57, align 8
  %58 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %59 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %58, i32 0, i32 4
  %60 = load %union.YYSTYPE*, %union.YYSTYPE** %59, align 8
  %61 = bitcast %union.YYSTYPE* %60 to i8*
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = call i8* @realloc(i8* noundef %61, i64 noundef %64) #5
  %66 = bitcast i8* %65 to %union.YYSTYPE*
  store %union.YYSTYPE* %66, %union.YYSTYPE** %7, align 8
  %67 = load %union.YYSTYPE*, %union.YYSTYPE** %7, align 8
  %68 = icmp eq %union.YYSTYPE* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %48
  store i32 -1, i32* %2, align 4
  br label %92

70:                                               ; preds = %48
  %71 = load %union.YYSTYPE*, %union.YYSTYPE** %7, align 8
  %72 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %73 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %72, i32 0, i32 4
  store %union.YYSTYPE* %71, %union.YYSTYPE** %73, align 8
  %74 = load %union.YYSTYPE*, %union.YYSTYPE** %7, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 %76
  %78 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %79 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %78, i32 0, i32 5
  store %union.YYSTYPE* %77, %union.YYSTYPE** %79, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %82 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %84 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %83, i32 0, i32 1
  %85 = load i16*, i16** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %85, i64 %87
  %89 = getelementptr inbounds i16, i16* %88, i64 -1
  %90 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %3, align 8
  %91 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %90, i32 0, i32 3
  store i16* %89, i16** %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %70, %69, %47, %16
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @yylex() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @yyerror(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @yyfinished() #1

declare dso_local void @doSpec(%struct.list* noundef, %struct.list* noundef) #1

declare dso_local %struct.list* @newList(i8* noundef, %struct.list* noundef) #1

declare dso_local %struct.arity* @newArity(i32 noundef, %struct.list* noundef) #1

declare dso_local void @doGram(...) #1

declare dso_local void @doStart(i8* noundef) #1

declare dso_local %struct.binding* @newBinding(i8* noundef, i32 noundef) #1

declare dso_local %struct.ruleAST* @newRuleAST(i8* noundef, %struct.patternAST* noundef, i32 noundef, %struct.intlist* noundef) #1

declare dso_local %struct.patternAST* @newPatternAST(i8* noundef, %struct.list* noundef) #1

declare dso_local %struct.intlist* @newIntList(i32 noundef, %struct.intlist* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
