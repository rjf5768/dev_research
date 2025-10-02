; ModuleID = './y.tab.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/Burg/y.tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.YYSTACKDATA = type { i32, i16*, i16*, i16*, %union.YYSTYPE*, %union.YYSTYPE* }
%union.YYSTYPE = type { i8* }
%struct.list = type { i8*, %struct.list* }
%struct.arity = type { i32, %struct.list* }
%struct.binding = type { i8*, i32 }
%struct.patternAST = type { %struct.symbol*, i8*, %struct.list* }
%struct.symbol = type { i8*, i32, %union.anon }
%union.anon = type { %struct.nonterminal* }
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
%struct.intlist = type { i32, %struct.intlist* }
%struct.ruleAST = type { i8*, %struct.patternAST*, i32, %struct.intlist*, %struct.rule*, %struct.strTableElement*, %struct.strTableElement* }
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
  store i32 0, i32* @yynerrs, align 4
  store i32 0, i32* @yyerrflag, align 4
  store i32 -1, i32* @yychar, align 4
  %1 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 1), align 8
  %2 = icmp eq i16* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = call i32 @yygrowstack(%struct.YYSTACKDATA* noundef nonnull @yystack)
  %.not24 = icmp eq i32 %4, 0
  br i1 %.not24, label %6, label %5

5:                                                ; preds = %3
  br label %342

6:                                                ; preds = %3, %0
  %7 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 1), align 8
  store i16* %7, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %8 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 4), align 8
  store %union.YYSTYPE* %8, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  store i16 0, i16* %7, align 2
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %6
  %.02.ph = phi i32 [ 0, %6 ], [ %.02.ph.be, %.outer.backedge ]
  br label %9

9:                                                ; preds = %.outer, %130
  %10 = sext i32 %.02.ph to i64
  %11 = lshr i64 1597456936014, %10
  %12 = and i64 %11, 1
  %.not.not = icmp eq i64 %12, 0
  br i1 %.not.not, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds [43 x i16], [43 x i16]* @yydefred, i64 0, i64 %10
  br label %131

15:                                               ; preds = %9
  %16 = load i32, i32* @yychar, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = call i32 @yylex() #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %18
  %storemerge23 = phi i32 [ 0, %21 ], [ %19, %18 ]
  store i32 %storemerge23, i32* @yychar, align 4
  br label %23

23:                                               ; preds = %22, %15
  %24 = sext i32 %.02.ph to i64
  %25 = lshr i64 7198636086195, %24
  %26 = and i64 %25, 1
  %.not.not10 = icmp eq i64 %26, 0
  br i1 %.not.not10, label %27, label %69

27:                                               ; preds = %23
  %28 = getelementptr inbounds [43 x i16], [43 x i16]* @yysindex, i64 0, i64 %24
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = load i32, i32* @yychar, align 4
  %32 = add nsw i32 %31, %30
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %69

34:                                               ; preds = %27
  %35 = icmp slt i32 %32, 263
  br i1 %35, label %36, label %69

36:                                               ; preds = %34
  %37 = sext i32 %32 to i64
  %38 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i64 0, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  %41 = load i32, i32* @yychar, align 4
  %42 = icmp eq i32 %41, %40
  br i1 %42, label %43, label %69

43:                                               ; preds = %36
  %44 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %45 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 3), align 8
  %.not21 = icmp ult i16* %44, %45
  br i1 %.not21, label %49, label %46

46:                                               ; preds = %43
  %47 = call i32 @yygrowstack(%struct.YYSTACKDATA* noundef nonnull @yystack)
  %.not22 = icmp eq i32 %47, 0
  br i1 %.not22, label %49, label %48

48:                                               ; preds = %46
  br label %342

49:                                               ; preds = %46, %43
  %50 = sext i32 %32 to i64
  %51 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = sext i32 %32 to i64
  %55 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 1
  store i16* %58, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  store i16 %56, i16* %58, align 2
  %59 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %60 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %59, i64 1
  store %union.YYSTYPE* %60, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %61 = bitcast %union.YYSTYPE* %60 to i64*
  %62 = load i64, i64* bitcast (%union.YYSTYPE* @yylval to i64*), align 8
  store i64 %62, i64* %61, align 8
  store i32 -1, i32* @yychar, align 4
  %63 = load i32, i32* @yyerrflag, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* @yyerrflag, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* @yyerrflag, align 4
  br label %68

68:                                               ; preds = %65, %49
  br label %.outer.backedge

69:                                               ; preds = %36, %34, %27, %23
  %70 = sext i32 %.02.ph to i64
  %71 = lshr i64 7619133559799, %70
  %72 = and i64 %71, 1
  %.not.not11 = icmp eq i64 %72, 0
  br i1 %.not.not11, label %73, label %92

73:                                               ; preds = %69
  %74 = getelementptr inbounds [43 x i16], [43 x i16]* @yyrindex, i64 0, i64 %70
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  %77 = load i32, i32* @yychar, align 4
  %78 = add nsw i32 %77, %76
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = icmp slt i32 %78, 263
  br i1 %81, label %82, label %92

82:                                               ; preds = %80
  %83 = sext i32 %78 to i64
  %84 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i64 0, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  %87 = load i32, i32* @yychar, align 4
  %88 = icmp eq i32 %87, %86
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = sext i32 %78 to i64
  %91 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %90
  br label %131

92:                                               ; preds = %82, %80, %73, %69
  %93 = load i32, i32* @yyerrflag, align 4
  %.not = icmp eq i32 %93, 0
  br i1 %.not, label %95, label %94

94:                                               ; preds = %92
  br label %99

95:                                               ; preds = %92
  call void @yyerror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #5
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* @yynerrs, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @yynerrs, align 4
  br label %99

99:                                               ; preds = %96, %94
  %100 = load i32, i32* @yyerrflag, align 4
  %101 = icmp slt i32 %100, 3
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  store i32 3, i32* @yyerrflag, align 4
  br label %103

103:                                              ; preds = %125, %102
  %104 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %105 = load i16, i16* %104, align 2
  %106 = zext i16 %105 to i64
  %107 = lshr i64 7198636086195, %106
  %108 = and i64 %107, 1
  %.not12.not = icmp eq i64 %108, 0
  br i1 %.not12.not, label %109, label %116

109:                                              ; preds = %103
  br i1 true, label %110, label %116

110:                                              ; preds = %109
  br i1 true, label %111, label %116

111:                                              ; preds = %110
  br i1 false, label %112, label %116

112:                                              ; preds = %111
  br i1 undef, label %115, label %113

113:                                              ; preds = %112
  br i1 undef, label %115, label %114

114:                                              ; preds = %113
  br label %342

115:                                              ; preds = %113, %112
  br label %.outer.backedge

116:                                              ; preds = %111, %110, %109, %103
  %117 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %118 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 1), align 8
  %.not13 = icmp ugt i16* %117, %118
  br i1 %.not13, label %120, label %119

119:                                              ; preds = %116
  br label %343

120:                                              ; preds = %116
  %121 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %122 = getelementptr inbounds i16, i16* %121, i64 -1
  store i16* %122, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %123 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %124 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %123, i64 -1
  store %union.YYSTYPE* %124, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  br label %125

125:                                              ; preds = %120
  br label %103

126:                                              ; preds = %99
  %127 = load i32, i32* @yychar, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %343

130:                                              ; preds = %126
  store i32 -1, i32* @yychar, align 4
  br label %9

131:                                              ; preds = %89, %13
  %.01.in.in = phi i16* [ %14, %13 ], [ %91, %89 ]
  %.01.in = load i16, i16* %.01.in.in, align 2
  %.01 = sext i16 %.01.in to i32
  %132 = sext i16 %.01.in to i64
  %133 = getelementptr inbounds [25 x i16], [25 x i16]* @yylen, i64 0, i64 %132
  %134 = load i16, i16* %133, align 2
  %135 = lshr i64 5261840, %132
  %136 = and i64 %135, 1
  %.not16.not = icmp eq i64 %136, 0
  br i1 %.not16.not, label %137, label %144

137:                                              ; preds = %131
  %138 = sext i16 %134 to i64
  %139 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %140 = sub nsw i64 1, %138
  %141 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %139, i64 %140
  %142 = bitcast %union.YYSTYPE* %141 to i64*
  %143 = load i64, i64* %142, align 8
  br label %145

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %137
  %storemerge20 = phi i64 [ %143, %137 ], [ 0, %144 ]
  store i64 %storemerge20, i64* bitcast (%union.YYSTYPE* @yyval to i64*), align 8
  switch i32 %.01, label %268 [
    i32 2, label %146
    i32 3, label %147
    i32 4, label %154
    i32 5, label %155
    i32 6, label %162
    i32 7, label %166
    i32 8, label %169
    i32 9, label %172
    i32 10, label %173
    i32 11, label %180
    i32 12, label %181
    i32 13, label %188
    i32 14, label %195
    i32 15, label %196
    i32 16, label %203
    i32 17, label %218
    i32 18, label %222
    i32 19, label %230
    i32 20, label %241
    i32 21, label %242
    i32 22, label %251
    i32 23, label %252
    i32 24, label %260
  ]

146:                                              ; preds = %145
  call void @yyfinished() #5
  br label %268

147:                                              ; preds = %145
  %148 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %149 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %148, i64 -2
  %150 = bitcast %union.YYSTYPE* %149 to %struct.list**
  %151 = load %struct.list*, %struct.list** %150, align 8
  %152 = bitcast %union.YYSTYPE* %148 to %struct.list**
  %153 = load %struct.list*, %struct.list** %152, align 8
  call void @doSpec(%struct.list* noundef %151, %struct.list* noundef %153) #5
  br label %268

154:                                              ; preds = %145
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %268

155:                                              ; preds = %145
  %156 = load i8**, i8*** bitcast (%union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5) to i8***), align 8
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %156, i64 -1
  %159 = bitcast i8** %158 to %struct.list**
  %160 = load %struct.list*, %struct.list** %159, align 8
  %161 = call %struct.list* @newList(i8* noundef %157, %struct.list* noundef %160) #5
  store %struct.list* %161, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %268

162:                                              ; preds = %145
  %163 = load %struct.list**, %struct.list*** bitcast (%union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5) to %struct.list***), align 8
  %164 = load %struct.list*, %struct.list** %163, align 8
  %165 = call %struct.arity* @newArity(i32 noundef -1, %struct.list* noundef %164) #5
  store %struct.arity* %165, %struct.arity** bitcast (%union.YYSTYPE* @yyval to %struct.arity**), align 8
  br label %268

166:                                              ; preds = %145
  store %struct.arity* null, %struct.arity** bitcast (%union.YYSTYPE* @yyval to %struct.arity**), align 8
  %167 = load %struct.list**, %struct.list*** bitcast (%union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5) to %struct.list***), align 8
  %168 = load %struct.list*, %struct.list** %167, align 8
  call void (%struct.list*, ...) bitcast (void (...)* @doGram to void (%struct.list*, ...)*)(%struct.list* noundef %168) #5
  br label %268

169:                                              ; preds = %145
  store %struct.arity* null, %struct.arity** bitcast (%union.YYSTYPE* @yyval to %struct.arity**), align 8
  %170 = load i8**, i8*** bitcast (%union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5) to i8***), align 8
  %171 = load i8*, i8** %170, align 8
  call void @doStart(i8* noundef %171) #5
  br label %268

172:                                              ; preds = %145
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %268

173:                                              ; preds = %145
  %174 = load i8**, i8*** bitcast (%union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5) to i8***), align 8
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %174, i64 -1
  %177 = bitcast i8** %176 to %struct.list**
  %178 = load %struct.list*, %struct.list** %177, align 8
  %179 = call %struct.list* @newList(i8* noundef %175, %struct.list* noundef %178) #5
  store %struct.list* %179, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %268

180:                                              ; preds = %145
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %268

181:                                              ; preds = %145
  %182 = load i8**, i8*** bitcast (%union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5) to i8***), align 8
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %182, i64 -1
  %185 = bitcast i8** %184 to %struct.list**
  %186 = load %struct.list*, %struct.list** %185, align 8
  %187 = call %struct.list* @newList(i8* noundef %183, %struct.list* noundef %186) #5
  store %struct.list* %187, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %268

188:                                              ; preds = %145
  %189 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %190 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %189, i64 -2, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = bitcast %union.YYSTYPE* %189 to i32*
  %193 = load i32, i32* %192, align 8
  %194 = call %struct.binding* @newBinding(i8* noundef %191, i32 noundef %193) #5
  store %struct.binding* %194, %struct.binding** bitcast (%union.YYSTYPE* @yyval to %struct.binding**), align 8
  br label %268

195:                                              ; preds = %145
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %268

196:                                              ; preds = %145
  %197 = load i8**, i8*** bitcast (%union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5) to i8***), align 8
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %197, i64 -1
  %200 = bitcast i8** %199 to %struct.list**
  %201 = load %struct.list*, %struct.list** %200, align 8
  %202 = call %struct.list* @newList(i8* noundef %198, %struct.list* noundef %201) #5
  store %struct.list* %202, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %268

203:                                              ; preds = %145
  %204 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %205 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %204, i64 -6, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %204, i64 -4
  %208 = bitcast %union.YYSTYPE* %207 to %struct.patternAST**
  %209 = load %struct.patternAST*, %struct.patternAST** %208, align 8
  %210 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %204, i64 -2
  %211 = bitcast %union.YYSTYPE* %210 to i32*
  %212 = load i32, i32* %211, align 8
  %213 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %214 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %213, i64 -1
  %215 = bitcast %union.YYSTYPE* %214 to %struct.intlist**
  %216 = load %struct.intlist*, %struct.intlist** %215, align 8
  %217 = call %struct.ruleAST* @newRuleAST(i8* noundef %206, %struct.patternAST* noundef %209, i32 noundef %212, %struct.intlist* noundef %216) #5
  store %struct.ruleAST* %217, %struct.ruleAST** bitcast (%union.YYSTYPE* @yyval to %struct.ruleAST**), align 8
  br label %268

218:                                              ; preds = %145
  %219 = load i8**, i8*** bitcast (%union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5) to i8***), align 8
  %220 = load i8*, i8** %219, align 8
  %221 = call %struct.patternAST* @newPatternAST(i8* noundef %220, %struct.list* noundef null) #5
  store %struct.patternAST* %221, %struct.patternAST** bitcast (%union.YYSTYPE* @yyval to %struct.patternAST**), align 8
  br label %268

222:                                              ; preds = %145
  %223 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %224 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %223, i64 -3, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %223, i64 -1, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call %struct.list* @newList(i8* noundef %227, %struct.list* noundef null) #5
  %229 = call %struct.patternAST* @newPatternAST(i8* noundef %225, %struct.list* noundef %228) #5
  store %struct.patternAST* %229, %struct.patternAST** bitcast (%union.YYSTYPE* @yyval to %struct.patternAST**), align 8
  br label %268

230:                                              ; preds = %145
  %231 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %232 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %231, i64 -5, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %231, i64 -3, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %231, i64 -1, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = call %struct.list* @newList(i8* noundef %237, %struct.list* noundef null) #5
  %239 = call %struct.list* @newList(i8* noundef %235, %struct.list* noundef %238) #5
  %240 = call %struct.patternAST* @newPatternAST(i8* noundef %233, %struct.list* noundef %239) #5
  store %struct.patternAST* %240, %struct.patternAST** bitcast (%union.YYSTYPE* @yyval to %struct.patternAST**), align 8
  br label %268

241:                                              ; preds = %145
  store %struct.intlist* null, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %268

242:                                              ; preds = %145
  %243 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %244 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %243, i64 -2
  %245 = bitcast %union.YYSTYPE* %244 to i32*
  %246 = load i32, i32* %245, align 8
  %247 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %243, i64 -1
  %248 = bitcast %union.YYSTYPE* %247 to %struct.intlist**
  %249 = load %struct.intlist*, %struct.intlist** %248, align 8
  %250 = call %struct.intlist* @newIntList(i32 noundef %246, %struct.intlist* noundef %249) #5
  store %struct.intlist* %250, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %268

251:                                              ; preds = %145
  store %struct.intlist* null, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %268

252:                                              ; preds = %145
  %253 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %254 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %253, i64 -1
  %255 = bitcast %union.YYSTYPE* %254 to i32*
  %256 = load i32, i32* %255, align 8
  %257 = bitcast %union.YYSTYPE* %253 to %struct.intlist**
  %258 = load %struct.intlist*, %struct.intlist** %257, align 8
  %259 = call %struct.intlist* @newIntList(i32 noundef %256, %struct.intlist* noundef %258) #5
  store %struct.intlist* %259, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %268

260:                                              ; preds = %145
  %261 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %262 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %261, i64 -1
  %263 = bitcast %union.YYSTYPE* %262 to i32*
  %264 = load i32, i32* %263, align 8
  %265 = bitcast %union.YYSTYPE* %261 to %struct.intlist**
  %266 = load %struct.intlist*, %struct.intlist** %265, align 8
  %267 = call %struct.intlist* @newIntList(i32 noundef %264, %struct.intlist* noundef %266) #5
  store %struct.intlist* %267, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %268

268:                                              ; preds = %260, %252, %251, %242, %241, %230, %222, %218, %203, %196, %195, %188, %181, %180, %173, %172, %169, %166, %162, %155, %154, %147, %146, %145
  %269 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %270 = sext i16 %134 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i16, i16* %269, i64 %271
  store i16* %272, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %273 = load i16, i16* %272, align 2
  %274 = sext i16 %273 to i32
  %275 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %276 = sext i16 %134 to i64
  %277 = sub nsw i64 0, %276
  %278 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %275, i64 %277
  store %union.YYSTYPE* %278, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %279 = sext i16 %.01.in to i64
  %280 = getelementptr inbounds [25 x i16], [25 x i16]* @yylhs, i64 0, i64 %279
  %281 = load i16, i16* %280, align 2
  %282 = icmp eq i16 %273, 0
  br i1 %282, label %283, label %305

283:                                              ; preds = %268
  %284 = add nsw i32 %.01, -1
  %285 = icmp ult i32 %284, 2
  br i1 %285, label %286, label %305

286:                                              ; preds = %283
  %287 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %288 = getelementptr inbounds i16, i16* %287, i64 1
  store i16* %288, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  store i16 1, i16* %288, align 2
  %289 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %290 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %289, i64 1
  store %union.YYSTYPE* %290, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %291 = bitcast %union.YYSTYPE* %290 to i64*
  %292 = load i64, i64* bitcast (%union.YYSTYPE* @yyval to i64*), align 8
  store i64 %292, i64* %291, align 8
  %293 = load i32, i32* @yychar, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %286
  %296 = call i32 @yylex() #5
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  br label %299

299:                                              ; preds = %298, %295
  %storemerge = phi i32 [ 0, %298 ], [ %296, %295 ]
  store i32 %storemerge, i32* @yychar, align 4
  br label %300

300:                                              ; preds = %299, %286
  %301 = load i32, i32* @yychar, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  br label %344

304:                                              ; preds = %300
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %304, %335, %68, %115
  %.02.ph.be = phi i32 [ undef, %115 ], [ %53, %68 ], [ %.1, %335 ], [ 1, %304 ]
  br label %.outer

305:                                              ; preds = %283, %268
  %306 = icmp ult i16 %.01.in, 22
  %307 = add nsw i64 %279, -20
  %308 = icmp ult i64 %307, -3
  %.not17 = and i1 %306, %308
  br i1 %.not17, label %326, label %309

309:                                              ; preds = %305
  %310 = sext i16 %281 to i64
  %311 = getelementptr inbounds [12 x i16], [12 x i16]* @yygindex, i64 0, i64 %310
  %312 = load i16, i16* %311, align 2
  %313 = sext i16 %312 to i32
  %314 = add nsw i32 %313, %274
  %315 = icmp sgt i32 %314, -1
  br i1 %315, label %316, label %326

316:                                              ; preds = %309
  %317 = icmp slt i32 %314, 263
  br i1 %317, label %318, label %326

318:                                              ; preds = %316
  %319 = sext i32 %314 to i64
  %320 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i64 0, i64 %319
  %321 = load i16, i16* %320, align 2
  %322 = icmp eq i16 %321, %273
  br i1 %322, label %323, label %326

323:                                              ; preds = %318
  %324 = sext i32 %314 to i64
  %325 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i64 0, i64 %324
  br label %329

326:                                              ; preds = %318, %316, %309, %305
  %327 = sext i16 %281 to i64
  %328 = getelementptr inbounds [12 x i16], [12 x i16]* @yydgoto, i64 0, i64 %327
  br label %329

329:                                              ; preds = %326, %323
  %.1.in.in = phi i16* [ %325, %323 ], [ %328, %326 ]
  %.1.in = load i16, i16* %.1.in.in, align 2
  %.1 = sext i16 %.1.in to i32
  %330 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %331 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 3), align 8
  %.not18 = icmp ult i16* %330, %331
  br i1 %.not18, label %335, label %332

332:                                              ; preds = %329
  %333 = call i32 @yygrowstack(%struct.YYSTACKDATA* noundef nonnull @yystack)
  %.not19 = icmp eq i32 %333, 0
  br i1 %.not19, label %335, label %334

334:                                              ; preds = %332
  br label %342

335:                                              ; preds = %332, %329
  %336 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  %337 = getelementptr inbounds i16, i16* %336, i64 1
  store i16* %337, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 2), align 8
  store i16 %.1.in, i16* %337, align 2
  %338 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %339 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %338, i64 1
  store %union.YYSTYPE* %339, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i64 0, i32 5), align 8
  %340 = bitcast %union.YYSTYPE* %339 to i64*
  %341 = load i64, i64* bitcast (%union.YYSTYPE* @yyval to i64*), align 8
  store i64 %341, i64* %340, align 8
  br label %.outer.backedge

342:                                              ; preds = %334, %114, %48, %5
  call void @yyerror(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %343

343:                                              ; preds = %342, %129, %119
  br label %345

344:                                              ; preds = %303
  br label %345

345:                                              ; preds = %344, %343
  %.0 = phi i32 [ 1, %343 ], [ 0, %344 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yygrowstack(%struct.YYSTACKDATA* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = icmp ugt i32 %3, 9999
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %57

9:                                                ; preds = %6
  %10 = shl i32 %3, 1
  %11 = icmp ugt i32 %10, 10000
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %9
  %.01 = phi i32 [ 10000, %12 ], [ %10, %9 ]
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %5
  %.1 = phi i32 [ 200, %5 ], [ %.01, %14 ]
  %16 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 2
  %17 = load i16*, i16** %16, align 8
  %18 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 1
  %19 = load i16*, i16** %18, align 8
  %20 = ptrtoint i16* %17 to i64
  %21 = ptrtoint i16* %19 to i64
  %22 = sub i64 %20, %21
  %.cast = bitcast i16* %19 to i8*
  %23 = zext i32 %.1 to i64
  %24 = shl nuw nsw i64 %23, 1
  %25 = call i8* @realloc(i8* noundef %.cast, i64 noundef %24) #5
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %57

28:                                               ; preds = %15
  %29 = bitcast i8* %25 to i16*
  %30 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 1
  %31 = bitcast i16** %30 to i8**
  store i8* %25, i8** %31, align 8
  %sext = shl i64 %22, 31
  %32 = ashr i64 %sext, 32
  %33 = getelementptr inbounds i16, i16* %29, i64 %32
  %34 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 2
  store i16* %33, i16** %34, align 8
  %35 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 4
  %36 = bitcast %union.YYSTYPE** %35 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = zext i32 %.1 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = call i8* @realloc(i8* noundef %37, i64 noundef %39) #5
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %57

43:                                               ; preds = %28
  %44 = bitcast i8* %40 to %union.YYSTYPE*
  %45 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 4
  %46 = bitcast %union.YYSTYPE** %45 to i8**
  store i8* %40, i8** %46, align 8
  %sext2 = shl i64 %22, 31
  %47 = ashr i64 %sext2, 32
  %48 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %44, i64 %47
  %49 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 5
  store %union.YYSTYPE* %48, %union.YYSTYPE** %49, align 8
  %50 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 0
  store i32 %.1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 1
  %52 = load i16*, i16** %51, align 8
  %53 = zext i32 %.1 to i64
  %54 = getelementptr inbounds i16, i16* %52, i64 %53
  %55 = getelementptr inbounds i16, i16* %54, i64 -1
  %56 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i64 0, i32 3
  store i16* %55, i16** %56, align 8
  br label %57

57:                                               ; preds = %43, %42, %27, %8
  %.0 = phi i32 [ -1, %27 ], [ -1, %42 ], [ 0, %43 ], [ -1, %8 ]
  ret i32 %.0
}

declare dso_local i32 @yylex() #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @yyerror(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
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
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
