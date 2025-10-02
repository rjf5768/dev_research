; ModuleID = './kbo.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/kbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }

@kbo_MINWEIGHT = dso_local constant i32 1, align 4
@ord_VARCOUNT = external dso_local global [2000 x [2 x i32]], align 16
@stack_POINTER = external dso_local global i32, align 4
@symbol_SIGNATURE = external dso_local global %struct.signature**, align 8
@symbol_TYPESTATBITS = external dso_local constant i32, align 4
@stack_STACK = external dso_local global [10000 x i8*], align 16
@ord_PRECEDENCE = external dso_local global i32*, align 8
@cont_INSTANCECONTEXT = external dso_local global %struct.binding*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kbo_Compare(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @kbo_CompVarCondAndWeight(%struct.term* noundef %0, i32* noundef nonnull %3, %struct.term* noundef %1, i32* noundef nonnull %4)
  %6 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %11, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %.not5 = icmp eq i32 %8, 0
  br i1 %.not5, label %9, label %11

9:                                                ; preds = %7
  %10 = call i32 @kbo_CompareStruc(%struct.term* noundef %0, %struct.term* noundef %1, i32 noundef %5)
  br label %32

11:                                               ; preds = %7, %2
  %12 = load i32, i32* %3, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %13, label %19

13:                                               ; preds = %11
  %14 = load i32, i32* %4, align 4
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %19, label %15

15:                                               ; preds = %13
  %16 = sub nsw i32 0, %5
  %17 = call i32 @kbo_CompareStruc(%struct.term* noundef %1, %struct.term* noundef %0, i32 noundef %16)
  %18 = call i32 @ord_Not(i32 noundef %17) #7
  br label %32

19:                                               ; preds = %13, %11
  %20 = load i32, i32* %3, align 4
  %.not3 = icmp eq i32 %20, 0
  br i1 %.not3, label %31, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %4, align 4
  %.not4 = icmp eq i32 %22, 0
  br i1 %.not4, label %31, label %23

23:                                               ; preds = %21
  %24 = call i32 @kbo_CompareStruc(%struct.term* noundef %0, %struct.term* noundef %1, i32 noundef %5)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = sub nsw i32 0, %5
  %28 = call i32 @kbo_CompareStruc(%struct.term* noundef %1, %struct.term* noundef %0, i32 noundef %27)
  %29 = call i32 @ord_Not(i32 noundef %28) #7
  br label %32

30:                                               ; preds = %23
  br label %32

31:                                               ; preds = %21, %19
  br label %32

32:                                               ; preds = %31, %30, %26, %15, %9
  %.0 = phi i32 [ %29, %26 ], [ %24, %30 ], [ 0, %31 ], [ %18, %15 ], [ %10, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_CompVarCondAndWeight(%struct.term* noundef %0, i32* nocapture noundef %1, %struct.term* noundef %2, i32* nocapture noundef %3) #0 {
  store i32 1, i32* %3, align 4
  store i32 1, i32* %1, align 4
  %5 = call i32 @term_MaxVar(%struct.term* noundef %0) #7
  %6 = call i32 @term_MaxVar(%struct.term* noundef %2) #7
  %7 = call i32 @stack_Bottom()
  %8 = icmp slt i32 %5, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %4
  %.04 = phi i32 [ %6, %9 ], [ %5, %4 ]
  br label %11

11:                                               ; preds = %17, %10
  %.02 = phi i32 [ 0, %10 ], [ %18, %17 ]
  %.not = icmp sgt i32 %.02, %.04
  br i1 %.not, label %19, label %12

12:                                               ; preds = %11
  %13 = zext i32 %.02 to i64
  %14 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %13, i64 0
  store i32 0, i32* %14, align 8
  %15 = zext i32 %.02 to i64
  %16 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %15, i64 1
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %.02, 1
  br label %11, !llvm.loop !4

19:                                               ; preds = %11
  %20 = call i32 @term_IsStandardVariable(%struct.term* noundef %0)
  %.not5 = icmp eq i32 %20, 0
  br i1 %.not5, label %27, label %21

21:                                               ; preds = %19
  %22 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %23, i64 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %35

27:                                               ; preds = %19
  %28 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %29 = call i32 @symbol_Weight(i32 noundef %28)
  %30 = call i32 @term_IsComplex(%struct.term* noundef %0)
  %.not6 = icmp eq i32 %30, 0
  br i1 %.not6, label %34, label %31

31:                                               ; preds = %27
  %32 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0)
  %33 = bitcast %struct.LIST_HELP* %32 to i8*
  call void @stack_Push(i8* noundef %33)
  br label %34

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34, %21
  %.01 = phi i32 [ 1, %21 ], [ %29, %34 ]
  br label %36

36:                                               ; preds = %74, %35
  %.1 = phi i32 [ %.01, %35 ], [ %.2, %74 ]
  %37 = call i32 @stack_Empty(i32 noundef %7)
  %.not7 = icmp eq i32 %37, 0
  br i1 %.not7, label %38, label %75

38:                                               ; preds = %36
  %39 = call i8* @stack_Top()
  %40 = bitcast i8* %39 to %struct.LIST_HELP*
  %41 = call i8* @list_Car(%struct.LIST_HELP* noundef %40)
  %42 = bitcast i8* %41 to %struct.term*
  %43 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %40)
  %44 = bitcast %struct.LIST_HELP* %43 to i8*
  call void @stack_RplacTop(i8* noundef %44)
  %45 = call i32 @term_IsStandardVariable(%struct.term* noundef %42)
  %.not17 = icmp eq i32 %45, 0
  br i1 %.not17, label %53, label %46

46:                                               ; preds = %38
  %47 = add nsw i32 %.1, 1
  %48 = call i32 @term_TopSymbol(%struct.term* noundef %42)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %49, i64 0
  %51 = load i32, i32* %50, align 8
  %52 = add i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %62

53:                                               ; preds = %38
  %54 = call i32 @term_TopSymbol(%struct.term* noundef %42)
  %55 = call i32 @symbol_Weight(i32 noundef %54)
  %56 = add nsw i32 %.1, %55
  %57 = call i32 @term_IsComplex(%struct.term* noundef %42)
  %.not18 = icmp eq i32 %57, 0
  br i1 %.not18, label %61, label %58

58:                                               ; preds = %53
  %59 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %42)
  %60 = bitcast %struct.LIST_HELP* %59 to i8*
  call void @stack_Push(i8* noundef %60)
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %46
  %.2 = phi i32 [ %47, %46 ], [ %56, %61 ]
  br label %63

63:                                               ; preds = %72, %62
  %64 = call i32 @stack_Empty(i32 noundef %7)
  %.not19 = icmp eq i32 %64, 0
  br i1 %.not19, label %65, label %70

65:                                               ; preds = %63
  %66 = call i8* @stack_Top()
  %67 = bitcast i8* %66 to %struct.LIST_HELP*
  %68 = call i32 @list_Empty(%struct.LIST_HELP* noundef %67)
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %65, %63
  %71 = phi i1 [ false, %63 ], [ %69, %65 ]
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = call i32 @stack_Pop()
  br label %63, !llvm.loop !6

74:                                               ; preds = %70
  br label %36, !llvm.loop !7

75:                                               ; preds = %36
  %76 = call i32 @term_IsStandardVariable(%struct.term* noundef %2)
  %.not8 = icmp eq i32 %76, 0
  br i1 %.not8, label %84, label %77

77:                                               ; preds = %75
  %78 = add nsw i32 %.1, -1
  %79 = call i32 @term_TopSymbol(%struct.term* noundef %2)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %93

84:                                               ; preds = %75
  %85 = call i32 @term_TopSymbol(%struct.term* noundef %2)
  %86 = call i32 @symbol_Weight(i32 noundef %85)
  %87 = sub nsw i32 %.1, %86
  %88 = call i32 @term_IsComplex(%struct.term* noundef %2)
  %.not9 = icmp eq i32 %88, 0
  br i1 %.not9, label %92, label %89

89:                                               ; preds = %84
  %90 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %2)
  %91 = bitcast %struct.LIST_HELP* %90 to i8*
  call void @stack_Push(i8* noundef %91)
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %77
  %.3 = phi i32 [ %78, %77 ], [ %87, %92 ]
  br label %94

94:                                               ; preds = %132, %93
  %.4 = phi i32 [ %.3, %93 ], [ %.5, %132 ]
  %95 = call i32 @stack_Empty(i32 noundef %7)
  %.not10 = icmp eq i32 %95, 0
  br i1 %.not10, label %96, label %133

96:                                               ; preds = %94
  %97 = call i8* @stack_Top()
  %98 = bitcast i8* %97 to %struct.LIST_HELP*
  %99 = call i8* @list_Car(%struct.LIST_HELP* noundef %98)
  %100 = bitcast i8* %99 to %struct.term*
  %101 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %98)
  %102 = bitcast %struct.LIST_HELP* %101 to i8*
  call void @stack_RplacTop(i8* noundef %102)
  %103 = call i32 @term_IsStandardVariable(%struct.term* noundef %100)
  %.not14 = icmp eq i32 %103, 0
  br i1 %.not14, label %111, label %104

104:                                              ; preds = %96
  %105 = add nsw i32 %.4, -1
  %106 = call i32 @term_TopSymbol(%struct.term* noundef %100)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %120

111:                                              ; preds = %96
  %112 = call i32 @term_TopSymbol(%struct.term* noundef %100)
  %113 = call i32 @symbol_Weight(i32 noundef %112)
  %114 = sub nsw i32 %.4, %113
  %115 = call i32 @term_IsComplex(%struct.term* noundef %100)
  %.not15 = icmp eq i32 %115, 0
  br i1 %.not15, label %119, label %116

116:                                              ; preds = %111
  %117 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %100)
  %118 = bitcast %struct.LIST_HELP* %117 to i8*
  call void @stack_Push(i8* noundef %118)
  br label %119

119:                                              ; preds = %116, %111
  br label %120

120:                                              ; preds = %119, %104
  %.5 = phi i32 [ %105, %104 ], [ %114, %119 ]
  br label %121

121:                                              ; preds = %130, %120
  %122 = call i32 @stack_Empty(i32 noundef %7)
  %.not16 = icmp eq i32 %122, 0
  br i1 %.not16, label %123, label %128

123:                                              ; preds = %121
  %124 = call i8* @stack_Top()
  %125 = bitcast i8* %124 to %struct.LIST_HELP*
  %126 = call i32 @list_Empty(%struct.LIST_HELP* noundef %125)
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %123, %121
  %129 = phi i1 [ false, %121 ], [ %127, %123 ]
  br i1 %129, label %130, label %132

130:                                              ; preds = %128
  %131 = call i32 @stack_Pop()
  br label %121, !llvm.loop !8

132:                                              ; preds = %128
  br label %94, !llvm.loop !9

133:                                              ; preds = %94
  br label %134

134:                                              ; preds = %160, %133
  %.13 = phi i32 [ 0, %133 ], [ %161, %160 ]
  %.not11 = icmp sgt i32 %.13, %.04
  br i1 %.not11, label %162, label %135

135:                                              ; preds = %134
  %136 = zext i32 %.13 to i64
  %137 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %136, i64 0
  %138 = load i32, i32* %137, align 8
  %139 = zext i32 %.13 to i64
  %140 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ult i32 %138, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  store i32 0, i32* %1, align 4
  %144 = load i32, i32* %3, align 4
  %.not13 = icmp eq i32 %144, 0
  br i1 %.not13, label %145, label %146

145:                                              ; preds = %143
  br label %163

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %146, %135
  %148 = zext i32 %.13 to i64
  %149 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %148, i64 0
  %150 = load i32, i32* %149, align 8
  %151 = zext i32 %.13 to i64
  %152 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ugt i32 %150, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  %156 = load i32, i32* %1, align 4
  %.not12 = icmp eq i32 %156, 0
  br i1 %.not12, label %157, label %158

157:                                              ; preds = %155
  br label %163

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %158, %147
  br label %160

160:                                              ; preds = %159
  %161 = add nuw nsw i32 %.13, 1
  br label %134, !llvm.loop !10

162:                                              ; preds = %134
  br label %163

163:                                              ; preds = %162, %157, %145
  ret i32 %.4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_CompareStruc(%struct.term* nocapture noundef readonly %0, %struct.term* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %7 = call i32 @term_TopSymbol(%struct.term* noundef %1)
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %85

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %84

12:                                               ; preds = %10
  %13 = call i32 @symbol_IsStandardVariable(i32 noundef %6)
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %18, label %14

14:                                               ; preds = %12
  %15 = call i32 @symbol_IsStandardVariable(i32 noundef %7)
  %.not12 = icmp eq i32 %15, 0
  br i1 %.not12, label %17, label %16

16:                                               ; preds = %14
  br label %85

17:                                               ; preds = %14
  br label %85

18:                                               ; preds = %12
  %19 = call i32 @symbol_IsStandardVariable(i32 noundef %7)
  %.not6 = icmp eq i32 %19, 0
  br i1 %.not6, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32*, i32** @ord_PRECEDENCE, align 8
  %22 = call i32 @symbol_PrecedenceGreater(i32* noundef %21, i32 noundef %6, i32 noundef %7)
  %.not7 = icmp eq i32 %22, 0
  br i1 %.not7, label %24, label %23

23:                                               ; preds = %20, %18
  br label %85

24:                                               ; preds = %20
  %25 = icmp eq i32 %6, %7
  br i1 %25, label %26, label %83

26:                                               ; preds = %24
  %27 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0)
  %28 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %1)
  %29 = call i32 @symbol_HasProperty(i32 noundef %6, i32 noundef 8)
  %.not8 = icmp eq i32 %29, 0
  br i1 %.not8, label %53, label %30

30:                                               ; preds = %26
  %31 = call i32 @symbol_Arity(i32 noundef %6)
  br label %32

32:                                               ; preds = %44, %30
  %.01 = phi i32 [ %31, %30 ], [ %45, %44 ]
  %33 = icmp sgt i32 %.01, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %32
  %35 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %27, i32 noundef %.01) #7
  %36 = bitcast i8* %35 to %struct.term*
  %37 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %28, i32 noundef %.01) #7
  %38 = bitcast i8* %37 to %struct.term*
  %39 = call i32 @term_Equal(%struct.term* noundef %36, %struct.term* noundef %38) #7
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %34, %32
  %42 = phi i1 [ false, %32 ], [ %40, %34 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = add nsw i32 %.01, -1
  br label %32, !llvm.loop !11

46:                                               ; preds = %41
  %47 = icmp sgt i32 %.01, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %27, i32 noundef %.01) #7
  %50 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %28, i32 noundef %.01) #7
  br label %52

51:                                               ; preds = %46
  br label %85

52:                                               ; preds = %48
  br label %75

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %65, %53
  %.05 = phi %struct.LIST_HELP* [ %28, %53 ], [ %67, %65 ]
  %.04 = phi %struct.LIST_HELP* [ %27, %53 ], [ %66, %65 ]
  %55 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.04)
  %.not9 = icmp eq i32 %55, 0
  br i1 %.not9, label %56, label %63

56:                                               ; preds = %54
  %57 = call i8* @list_Car(%struct.LIST_HELP* noundef %.04)
  %58 = bitcast i8* %57 to %struct.term*
  %59 = call i8* @list_Car(%struct.LIST_HELP* noundef %.05)
  %60 = bitcast i8* %59 to %struct.term*
  %61 = call i32 @term_Equal(%struct.term* noundef %58, %struct.term* noundef %60) #7
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %56, %54
  %64 = phi i1 [ false, %54 ], [ %62, %56 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.04)
  %67 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.05)
  br label %54, !llvm.loop !12

68:                                               ; preds = %63
  %69 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.04)
  %.not10 = icmp eq i32 %69, 0
  br i1 %.not10, label %71, label %70

70:                                               ; preds = %68
  br label %85

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71
  %73 = call i8* @list_Car(%struct.LIST_HELP* noundef %.05)
  %74 = call i8* @list_Car(%struct.LIST_HELP* noundef %.04)
  br label %75

75:                                               ; preds = %72, %52
  %.03.in = phi i8* [ %49, %52 ], [ %74, %72 ]
  %.02.in = phi i8* [ %50, %52 ], [ %73, %72 ]
  %.02 = bitcast i8* %.02.in to %struct.term*
  %.03 = bitcast i8* %.03.in to %struct.term*
  %76 = call i32 @kbo_CompVarCondAndWeight(%struct.term* noundef %.03, i32* noundef nonnull %4, %struct.term* noundef %.02, i32* noundef nonnull %5)
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %.not11 = icmp eq i32 %79, 0
  br i1 %.not11, label %82, label %80

80:                                               ; preds = %78
  %81 = call i32 @kbo_CompareStruc(%struct.term* noundef %.03, %struct.term* noundef %.02, i32 noundef %76)
  br label %85

82:                                               ; preds = %78, %75
  br label %85

83:                                               ; preds = %24
  br label %85

84:                                               ; preds = %10
  br label %85

85:                                               ; preds = %84, %83, %82, %80, %70, %51, %23, %17, %16, %9
  %.0 = phi i32 [ 3, %9 ], [ 2, %16 ], [ 0, %17 ], [ 3, %23 ], [ %81, %80 ], [ 0, %82 ], [ 2, %51 ], [ 2, %70 ], [ 0, %83 ], [ 0, %84 ]
  ret i32 %.0
}

declare dso_local i32 @ord_Not(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kbo_ContCompare(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %0, %struct.term* noundef %1, i32* noundef nonnull %5, %struct.binding* noundef %2, %struct.term* noundef %3, i32* noundef nonnull %6)
  %8 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %13, label %9

9:                                                ; preds = %4
  %10 = load i32, i32* %6, align 4
  %.not5 = icmp eq i32 %10, 0
  br i1 %.not5, label %11, label %13

11:                                               ; preds = %9
  %12 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3, i32 noundef %7)
  br label %34

13:                                               ; preds = %9, %4
  %14 = load i32, i32* %5, align 4
  %.not1 = icmp eq i32 %14, 0
  br i1 %.not1, label %15, label %21

15:                                               ; preds = %13
  %16 = load i32, i32* %6, align 4
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %21, label %17

17:                                               ; preds = %15
  %18 = sub nsw i32 0, %7
  %19 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %2, %struct.term* noundef %3, %struct.binding* noundef %0, %struct.term* noundef %1, i32 noundef %18)
  %20 = call i32 @ord_Not(i32 noundef %19) #7
  br label %34

21:                                               ; preds = %15, %13
  %22 = load i32, i32* %5, align 4
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %33, label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %6, align 4
  %.not4 = icmp eq i32 %24, 0
  br i1 %.not4, label %33, label %25

25:                                               ; preds = %23
  %26 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3, i32 noundef %7)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = sub nsw i32 0, %7
  %30 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %2, %struct.term* noundef %3, %struct.binding* noundef %0, %struct.term* noundef %1, i32 noundef %29)
  %31 = call i32 @ord_Not(i32 noundef %30) #7
  br label %34

32:                                               ; preds = %25
  br label %34

33:                                               ; preds = %23, %21
  br label %34

34:                                               ; preds = %33, %32, %28, %17, %11
  %.0 = phi i32 [ %31, %28 ], [ %26, %32 ], [ 0, %33 ], [ %20, %17 ], [ %12, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %0, %struct.term* noundef %1, i32* nocapture noundef %2, %struct.binding* noundef %3, %struct.term* noundef %4, i32* nocapture noundef %5) #0 {
  store i32 1, i32* %5, align 4
  store i32 1, i32* %2, align 4
  %7 = call i32 @cont_TermMaxVar(%struct.binding* noundef %0, %struct.term* noundef %1) #7
  %8 = call i32 @cont_TermMaxVar(%struct.binding* noundef %3, %struct.term* noundef %4) #7
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10, %6
  %.02 = phi i32 [ %8, %10 ], [ %7, %6 ]
  br label %12

12:                                               ; preds = %18, %11
  %.01 = phi i32 [ 0, %11 ], [ %19, %18 ]
  %.not = icmp sgt i32 %.01, %.02
  br i1 %.not, label %20, label %13

13:                                               ; preds = %12
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %14, i64 0
  store i32 0, i32* %15, align 8
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %16, i64 1
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %.01, 1
  br label %12, !llvm.loop !13

20:                                               ; preds = %12
  %21 = call i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* noundef %0, %struct.term* noundef %1, i32 noundef 0)
  %22 = call i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* noundef %3, %struct.term* noundef %4, i32 noundef 1)
  br label %23

23:                                               ; preds = %50, %20
  %.1 = phi i32 [ 0, %20 ], [ %51, %50 ]
  %.not3 = icmp sgt i32 %.1, %.02
  br i1 %.not3, label %52, label %24

24:                                               ; preds = %23
  %25 = zext i32 %.1 to i64
  %26 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %25, i64 0
  %27 = load i32, i32* %26, align 8
  %28 = zext i32 %.1 to i64
  %29 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  %33 = load i32, i32* %5, align 4
  %.not5 = icmp eq i32 %33, 0
  br i1 %.not5, label %34, label %35

34:                                               ; preds = %32
  br label %53

35:                                               ; preds = %32
  br label %49

36:                                               ; preds = %24
  %37 = zext i32 %.1 to i64
  %38 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %37, i64 0
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %.1 to i64
  %41 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ugt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  %45 = load i32, i32* %2, align 4
  %.not4 = icmp eq i32 %45, 0
  br i1 %.not4, label %46, label %47

46:                                               ; preds = %44
  br label %53

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i32 %.1, 1
  br label %23, !llvm.loop !14

52:                                               ; preds = %23
  br label %53

53:                                               ; preds = %52, %46, %34
  %54 = sub nsw i32 %21, %22
  ret i32 %54
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_ContCompareStruc(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.binding*, align 8
  %7 = alloca %struct.binding*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %6, align 8
  store %struct.binding* %2, %struct.binding** %7, align 8
  %10 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %6, %struct.term* noundef %1)
  %11 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %7, %struct.term* noundef %3)
  %12 = call i32 @term_TopSymbol(%struct.term* noundef %10)
  %13 = call i32 @term_TopSymbol(%struct.term* noundef %11)
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %107

16:                                               ; preds = %5
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %18, label %106

18:                                               ; preds = %16
  %19 = call i32 @symbol_IsStandardVariable(i32 noundef %12)
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %24, label %20

20:                                               ; preds = %18
  %21 = call i32 @symbol_IsStandardVariable(i32 noundef %13)
  %.not12 = icmp eq i32 %21, 0
  br i1 %.not12, label %23, label %22

22:                                               ; preds = %20
  br label %107

23:                                               ; preds = %20
  br label %107

24:                                               ; preds = %18
  %25 = call i32 @symbol_IsStandardVariable(i32 noundef %13)
  %.not6 = icmp eq i32 %25, 0
  br i1 %.not6, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32*, i32** @ord_PRECEDENCE, align 8
  %28 = call i32 @symbol_PrecedenceGreater(i32* noundef %27, i32 noundef %12, i32 noundef %13)
  %.not7 = icmp eq i32 %28, 0
  br i1 %.not7, label %30, label %29

29:                                               ; preds = %26, %24
  br label %107

30:                                               ; preds = %26
  %31 = icmp eq i32 %12, %13
  br i1 %31, label %32, label %105

32:                                               ; preds = %30
  %33 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %10)
  %34 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %11)
  %35 = call i32 @symbol_HasProperty(i32 noundef %12, i32 noundef 8)
  %.not8 = icmp eq i32 %35, 0
  br i1 %.not8, label %65, label %36

36:                                               ; preds = %32
  %37 = call i32 @symbol_Arity(i32 noundef %12)
  br label %38

38:                                               ; preds = %52, %36
  %.01 = phi i32 [ %37, %36 ], [ %53, %52 ]
  %39 = icmp sgt i32 %.01, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %38
  %41 = load %struct.binding*, %struct.binding** %6, align 8
  %42 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %33, i32 noundef %.01) #7
  %43 = bitcast i8* %42 to %struct.term*
  %44 = load %struct.binding*, %struct.binding** %7, align 8
  %45 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %34, i32 noundef %.01) #7
  %46 = bitcast i8* %45 to %struct.term*
  %47 = call i32 @cont_TermEqual(%struct.binding* noundef %41, %struct.term* noundef %43, %struct.binding* noundef %44, %struct.term* noundef %46) #7
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %40, %38
  %50 = phi i1 [ false, %38 ], [ %48, %40 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %.01, -1
  br label %38, !llvm.loop !15

54:                                               ; preds = %49
  %55 = icmp sgt i32 %.01, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %33, i32 noundef %.01) #7
  %58 = bitcast i8* %57 to %struct.term*
  %59 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %6, %struct.term* noundef %58)
  %60 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %34, i32 noundef %.01) #7
  %61 = bitcast i8* %60 to %struct.term*
  %62 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %7, %struct.term* noundef %61)
  br label %64

63:                                               ; preds = %54
  br label %107

64:                                               ; preds = %56
  br label %93

65:                                               ; preds = %32
  br label %66

66:                                               ; preds = %79, %65
  %.03 = phi %struct.LIST_HELP* [ %34, %65 ], [ %81, %79 ]
  %.02 = phi %struct.LIST_HELP* [ %33, %65 ], [ %80, %79 ]
  %67 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.02)
  %.not9 = icmp eq i32 %67, 0
  br i1 %.not9, label %68, label %77

68:                                               ; preds = %66
  %69 = load %struct.binding*, %struct.binding** %6, align 8
  %70 = call i8* @list_Car(%struct.LIST_HELP* noundef %.02)
  %71 = bitcast i8* %70 to %struct.term*
  %72 = load %struct.binding*, %struct.binding** %7, align 8
  %73 = call i8* @list_Car(%struct.LIST_HELP* noundef %.03)
  %74 = bitcast i8* %73 to %struct.term*
  %75 = call i32 @cont_TermEqual(%struct.binding* noundef %69, %struct.term* noundef %71, %struct.binding* noundef %72, %struct.term* noundef %74) #7
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %68, %66
  %78 = phi i1 [ false, %66 ], [ %76, %68 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.02)
  %81 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.03)
  br label %66, !llvm.loop !16

82:                                               ; preds = %77
  %83 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.02)
  %.not10 = icmp eq i32 %83, 0
  br i1 %.not10, label %85, label %84

84:                                               ; preds = %82
  br label %107

85:                                               ; preds = %82
  %86 = call i8* @list_Car(%struct.LIST_HELP* noundef %.02)
  %87 = bitcast i8* %86 to %struct.term*
  %88 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %6, %struct.term* noundef %87)
  %89 = call i8* @list_Car(%struct.LIST_HELP* noundef %.03)
  %90 = bitcast i8* %89 to %struct.term*
  %91 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %7, %struct.term* noundef %90)
  br label %92

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %64
  %.05 = phi %struct.term* [ %59, %64 ], [ %88, %92 ]
  %.04 = phi %struct.term* [ %62, %64 ], [ %91, %92 ]
  %94 = load %struct.binding*, %struct.binding** %6, align 8
  %95 = load %struct.binding*, %struct.binding** %7, align 8
  %96 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %94, %struct.term* noundef %.05, i32* noundef nonnull %8, %struct.binding* noundef %95, %struct.term* noundef %.04, i32* noundef nonnull %9)
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %.not11 = icmp eq i32 %99, 0
  br i1 %.not11, label %104, label %100

100:                                              ; preds = %98
  %101 = load %struct.binding*, %struct.binding** %6, align 8
  %102 = load %struct.binding*, %struct.binding** %7, align 8
  %103 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %101, %struct.term* noundef %.05, %struct.binding* noundef %102, %struct.term* noundef %.04, i32 noundef %96)
  br label %107

104:                                              ; preds = %98, %93
  br label %107

105:                                              ; preds = %30
  br label %107

106:                                              ; preds = %16
  br label %107

107:                                              ; preds = %106, %105, %104, %100, %84, %63, %29, %23, %22, %15
  %.0 = phi i32 [ 3, %15 ], [ 2, %22 ], [ 0, %23 ], [ 3, %29 ], [ %103, %100 ], [ 0, %104 ], [ 2, %63 ], [ 2, %84 ], [ 0, %105 ], [ 0, %106 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kbo_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %0, %struct.term* noundef %1, i32* noundef nonnull %5, %struct.binding* noundef %2, %struct.term* noundef %3, i32* noundef nonnull %6)
  %8 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %18, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %19

12:                                               ; preds = %9
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 @kbo_ContGreaterCompareStruc(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3)
  br label %19

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17, %4
  br label %19

19:                                               ; preds = %18, %14, %11
  %.0 = phi i32 [ 1, %11 ], [ %15, %14 ], [ 0, %18 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_ContGreaterCompareStruc(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca %struct.binding*, align 8
  %6 = alloca %struct.binding*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %5, align 8
  store %struct.binding* %2, %struct.binding** %6, align 8
  %9 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %5, %struct.term* noundef %1)
  %10 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %6, %struct.term* noundef %3)
  %11 = call i32 @term_TopSymbol(%struct.term* noundef %9)
  %12 = call i32 @term_TopSymbol(%struct.term* noundef %10)
  %13 = call i32 @symbol_IsStandardVariable(i32 noundef %11)
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %18, label %14

14:                                               ; preds = %4
  %15 = call i32 @symbol_IsStandardVariable(i32 noundef %12)
  %.not12 = icmp eq i32 %15, 0
  br i1 %.not12, label %17, label %16

16:                                               ; preds = %14
  br label %107

17:                                               ; preds = %14
  br label %107

18:                                               ; preds = %4
  %19 = call i32 @symbol_IsStandardVariable(i32 noundef %12)
  %.not6 = icmp eq i32 %19, 0
  br i1 %.not6, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32*, i32** @ord_PRECEDENCE, align 8
  %22 = call i32 @symbol_PrecedenceGreater(i32* noundef %21, i32 noundef %11, i32 noundef %12)
  %.not7 = icmp eq i32 %22, 0
  br i1 %.not7, label %24, label %23

23:                                               ; preds = %20, %18
  br label %107

24:                                               ; preds = %20
  %25 = icmp eq i32 %11, %12
  br i1 %25, label %26, label %104

26:                                               ; preds = %24
  %27 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %9)
  %28 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %10)
  %29 = call i32 @symbol_HasProperty(i32 noundef %11, i32 noundef 8)
  %.not8 = icmp eq i32 %29, 0
  br i1 %.not8, label %59, label %30

30:                                               ; preds = %26
  %31 = call i32 @symbol_Arity(i32 noundef %11)
  br label %32

32:                                               ; preds = %46, %30
  %.03 = phi i32 [ %31, %30 ], [ %47, %46 ]
  %33 = icmp sgt i32 %.03, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %32
  %35 = load %struct.binding*, %struct.binding** %5, align 8
  %36 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %27, i32 noundef %.03) #7
  %37 = bitcast i8* %36 to %struct.term*
  %38 = load %struct.binding*, %struct.binding** %6, align 8
  %39 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %28, i32 noundef %.03) #7
  %40 = bitcast i8* %39 to %struct.term*
  %41 = call i32 @cont_TermEqual(%struct.binding* noundef %35, %struct.term* noundef %37, %struct.binding* noundef %38, %struct.term* noundef %40) #7
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %34, %32
  %44 = phi i1 [ false, %32 ], [ %42, %34 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %.03, -1
  br label %32, !llvm.loop !17

48:                                               ; preds = %43
  %49 = icmp sgt i32 %.03, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %27, i32 noundef %.03) #7
  %52 = bitcast i8* %51 to %struct.term*
  %53 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %5, %struct.term* noundef %52)
  %54 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %28, i32 noundef %.03) #7
  %55 = bitcast i8* %54 to %struct.term*
  %56 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %6, %struct.term* noundef %55)
  br label %58

57:                                               ; preds = %48
  br label %107

58:                                               ; preds = %50
  br label %87

59:                                               ; preds = %26
  br label %60

60:                                               ; preds = %73, %59
  %.02 = phi %struct.LIST_HELP* [ %28, %59 ], [ %75, %73 ]
  %.01 = phi %struct.LIST_HELP* [ %27, %59 ], [ %74, %73 ]
  %61 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not9 = icmp eq i32 %61, 0
  br i1 %.not9, label %62, label %71

62:                                               ; preds = %60
  %63 = load %struct.binding*, %struct.binding** %5, align 8
  %64 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %65 = bitcast i8* %64 to %struct.term*
  %66 = load %struct.binding*, %struct.binding** %6, align 8
  %67 = call i8* @list_Car(%struct.LIST_HELP* noundef %.02)
  %68 = bitcast i8* %67 to %struct.term*
  %69 = call i32 @cont_TermEqual(%struct.binding* noundef %63, %struct.term* noundef %65, %struct.binding* noundef %66, %struct.term* noundef %68) #7
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %62, %60
  %72 = phi i1 [ false, %60 ], [ %70, %62 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  %75 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.02)
  br label %60, !llvm.loop !18

76:                                               ; preds = %71
  %77 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not10 = icmp eq i32 %77, 0
  br i1 %.not10, label %79, label %78

78:                                               ; preds = %76
  br label %107

79:                                               ; preds = %76
  %80 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %81 = bitcast i8* %80 to %struct.term*
  %82 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %5, %struct.term* noundef %81)
  %83 = call i8* @list_Car(%struct.LIST_HELP* noundef %.02)
  %84 = bitcast i8* %83 to %struct.term*
  %85 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %6, %struct.term* noundef %84)
  br label %86

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %58
  %.05 = phi %struct.term* [ %53, %58 ], [ %82, %86 ]
  %.04 = phi %struct.term* [ %56, %58 ], [ %85, %86 ]
  %88 = load %struct.binding*, %struct.binding** %5, align 8
  %89 = load %struct.binding*, %struct.binding** %6, align 8
  %90 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %88, %struct.term* noundef %.05, i32* noundef nonnull %7, %struct.binding* noundef %89, %struct.term* noundef %.04, i32* noundef nonnull %8)
  %91 = load i32, i32* %7, align 4
  %.not11 = icmp eq i32 %91, 0
  br i1 %.not11, label %103, label %92

92:                                               ; preds = %87
  %93 = icmp sgt i32 %90, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  br label %107

95:                                               ; preds = %92
  %96 = icmp eq i32 %90, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  %98 = load %struct.binding*, %struct.binding** %5, align 8
  %99 = load %struct.binding*, %struct.binding** %6, align 8
  %100 = call i32 @kbo_ContGreaterCompareStruc(%struct.binding* noundef %98, %struct.term* noundef %.05, %struct.binding* noundef %99, %struct.term* noundef %.04)
  br label %107

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102, %87
  br label %104

104:                                              ; preds = %103, %24
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %97, %94, %78, %57, %23, %17, %16
  %.0 = phi i32 [ 0, %16 ], [ 0, %17 ], [ 1, %23 ], [ 1, %94 ], [ %100, %97 ], [ 0, %106 ], [ 0, %57 ], [ 0, %78 ]
  ret i32 %.0
}

declare dso_local i32 @term_MaxVar(%struct.term* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @stack_Bottom() #2 {
  %1 = load i32, i32* @stack_POINTER, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_IsStandardVariable(%struct.term* nocapture noundef readonly %0) #2 {
  %2 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %3 = call i32 @symbol_IsStandardVariable(i32 noundef %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_TopSymbol(%struct.term* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_Weight(i32 noundef %0) #2 {
  %2 = call i32 @symbol_Index(i32 noundef %0)
  %3 = call %struct.signature* @symbol_Signature(i32 noundef %2)
  %4 = getelementptr inbounds %struct.signature, %struct.signature* %3, i64 0, i32 2
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_IsComplex(%struct.term* nocapture noundef readonly %0) #2 {
  %2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0)
  %3 = icmp ne %struct.LIST_HELP* %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @stack_Push(i8* noundef %0) #3 {
  %2 = load i32, i32* @stack_POINTER, align 4
  %3 = add i32 %2, 1
  store i32 %3, i32* @stack_POINTER, align 4
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i64 0, i64 %4
  store i8* %0, i8** %5, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.term, %struct.term* %0, i64 0, i32 2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @stack_Empty(i32 noundef %0) #2 {
  %2 = load i32, i32* @stack_POINTER, align 4
  %3 = icmp eq i32 %2, %0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @stack_Top() #2 {
  %1 = load i32, i32* @stack_POINTER, align 4
  %2 = add i32 %1, -1
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i64 0, i64 %3
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_Car(%struct.LIST_HELP* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @stack_RplacTop(i8* noundef %0) #3 {
  %2 = load i32, i32* @stack_POINTER, align 4
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i64 0, i64 %4
  store i8* %0, i8** %5, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 0
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @list_Empty(%struct.LIST_HELP* noundef readnone %0) #4 {
  %2 = icmp eq %struct.LIST_HELP* %0, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @stack_Pop() #3 {
  %1 = load i32, i32* @stack_POINTER, align 4
  %2 = add i32 %1, -1
  store i32 %2, i32* @stack_POINTER, align 4
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_IsStandardVariable(i32 noundef %0) #4 {
  %2 = call i32 @symbol_IsVariable(i32 noundef %0)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 2001
  %phi.cast = zext i1 %4 to i32
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ 0, %1 ], [ %phi.cast, %3 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_IsVariable(i32 noundef %0) #4 {
  %2 = icmp sgt i32 %0, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.signature* @symbol_Signature(i32 noundef %0) #2 {
  %2 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.signature*, %struct.signature** %2, i64 %3
  %5 = load %struct.signature*, %struct.signature** %4, align 8
  ret %struct.signature* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @symbol_Index(i32 noundef %0) #4 {
  %2 = sub nsw i32 0, %0
  %3 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %4 = ashr i32 %2, %3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @symbol_CheckIndexInRange(i32 noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @symbol_CheckNoVariable(i32 noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_PrecedenceGreater(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = call i32 @symbol_Ordering(i32* noundef %0, i32 noundef %1)
  %5 = call i32 @symbol_Ordering(i32* noundef %0, i32 noundef %2)
  %6 = icmp slt i32 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_HasProperty(i32 noundef %0, i32 noundef %1) #2 {
  %3 = call i32 @symbol_Index(i32 noundef %0)
  %4 = call %struct.signature* @symbol_Signature(i32 noundef %3)
  %5 = getelementptr inbounds %struct.signature, %struct.signature* %4, i64 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_Arity(i32 noundef %0) #2 {
  %2 = call i32 @symbol_Index(i32 noundef %0)
  %3 = call %struct.signature* @symbol_Signature(i32 noundef %2)
  %4 = getelementptr inbounds %struct.signature, %struct.signature* %3, i64 0, i32 3
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

declare dso_local i32 @term_Equal(%struct.term* noundef, %struct.term* noundef) #1

declare dso_local i8* @list_NthElement(%struct.LIST_HELP* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @symbol_Ordering(i32* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = call i32 @symbol_Index(i32 noundef %1)
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

declare dso_local i32 @cont_TermMaxVar(%struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* noundef %0, %struct.term* noundef %1, i32 noundef %2) #5 {
  %4 = alloca %struct.binding*, align 8
  store %struct.binding* %0, %struct.binding** %4, align 8
  %5 = call %struct.term* @cont_Deref(%struct.binding** noundef nonnull %4, %struct.term* noundef %1)
  %6 = call i32 @term_IsStandardVariable(%struct.term* noundef %5)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %14, label %7

7:                                                ; preds = %3
  %8 = call i32 @term_TopSymbol(%struct.term* noundef %5)
  %9 = sext i32 %8 to i64
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %11, align 4
  br label %29

14:                                               ; preds = %3
  %15 = call i32 @term_TopSymbol(%struct.term* noundef %5)
  %16 = call i32 @symbol_Weight(i32 noundef %15)
  %17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %5)
  br label %18

18:                                               ; preds = %25, %14
  %.01 = phi i32 [ %16, %14 ], [ %26, %25 ]
  %.0 = phi %struct.LIST_HELP* [ %17, %14 ], [ %27, %25 ]
  %19 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.0)
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %20, label %28

20:                                               ; preds = %18
  %21 = load %struct.binding*, %struct.binding** %4, align 8
  %22 = call i8* @list_Car(%struct.LIST_HELP* noundef %.0)
  %23 = bitcast i8* %22 to %struct.term*
  %24 = call i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* noundef %21, %struct.term* noundef %23, i32 noundef %2)
  br label %25

25:                                               ; preds = %20
  %26 = add nsw i32 %.01, %24
  %27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  br label %18, !llvm.loop !19

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %7
  %.1 = phi i32 [ 1, %7 ], [ %.01, %28 ]
  ret i32 %.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal %struct.term* @cont_Deref(%struct.binding** nocapture noundef %0, %struct.term* noundef readonly %1) #6 {
  br label %3

3:                                                ; preds = %20, %2
  %.01 = phi %struct.term* [ %1, %2 ], [ %18, %20 ]
  %4 = call i32 @term_IsVariable(%struct.term* noundef %.01)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %3
  %6 = load %struct.binding*, %struct.binding** %0, align 8
  %7 = call %struct.binding* @cont_InstanceContext()
  %8 = icmp ne %struct.binding* %6, %7
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i1 [ false, %3 ], [ %8, %5 ]
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = call i32 @term_TopSymbol(%struct.term* noundef %.01)
  %13 = load %struct.binding*, %struct.binding** %0, align 8
  %14 = call i32 @cont_VarIsBound(%struct.binding* noundef %13, i32 noundef %12)
  %.not4 = icmp eq i32 %14, 0
  br i1 %.not4, label %19, label %15

15:                                               ; preds = %11
  %16 = load %struct.binding*, %struct.binding** %0, align 8
  %17 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %16, i32 noundef %12)
  %18 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %16, i32 noundef %12)
  store %struct.binding* %17, %struct.binding** %0, align 8
  br label %20

19:                                               ; preds = %11
  br label %22

20:                                               ; preds = %15
  br label %3, !llvm.loop !20

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21, %19
  ret %struct.term* %.01
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @term_IsVariable(%struct.term* nocapture noundef readonly %0) #2 {
  %2 = call i32 @term_TopSymbol(%struct.term* noundef %0)
  %3 = call i32 @symbol_IsVariable(i32 noundef %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_InstanceContext() #2 {
  %1 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @cont_VarIsBound(%struct.binding* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %1)
  %4 = icmp ne %struct.term* %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.binding* @cont_ContextBindingContext(%struct.binding* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 %3, i32 3
  %5 = load %struct.binding*, %struct.binding** %4, align 8
  ret %struct.binding* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.binding, %struct.binding* %0, i64 %3, i32 2
  %5 = load %struct.term*, %struct.term** %4, align 8
  ret %struct.term* %5
}

declare dso_local i32 @cont_TermEqual(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
