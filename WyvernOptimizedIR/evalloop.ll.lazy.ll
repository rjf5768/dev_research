; ModuleID = './evalloop.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/evalloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sum = dso_local global i32 0, align 4
@eval.dispatch = internal global [32 x i8*] [i8* blockaddress(@eval, %5), i8* blockaddress(@eval, %9), i8* blockaddress(@eval, %15), i8* blockaddress(@eval, %21), i8* blockaddress(@eval, %27), i8* blockaddress(@eval, %33), i8* blockaddress(@eval, %39), i8* blockaddress(@eval, %45), i8* blockaddress(@eval, %51), i8* blockaddress(@eval, %57), i8* blockaddress(@eval, %63), i8* blockaddress(@eval, %69), i8* blockaddress(@eval, %75), i8* blockaddress(@eval, %81), i8* blockaddress(@eval, %87), i8* blockaddress(@eval, %93), i8* blockaddress(@eval, %99), i8* blockaddress(@eval, %105), i8* blockaddress(@eval, %111), i8* blockaddress(@eval, %117), i8* blockaddress(@eval, %123), i8* blockaddress(@eval, %129), i8* blockaddress(@eval, %135), i8* blockaddress(@eval, %141), i8* blockaddress(@eval, %147), i8* blockaddress(@eval, %153), i8* blockaddress(@eval, %159), i8* blockaddress(@eval, %165), i8* blockaddress(@eval, %171), i8* blockaddress(@eval, %177), i8* blockaddress(@eval, %183), i8* blockaddress(@eval, %189)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Sum: %u\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @execute(i32 noundef %0) #0 {
  %2 = load i32, i32* @sum, align 4
  %3 = add i32 %2, %0
  store i32 %3, i32* @sum, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @eval(i32* noundef readonly %0) #1 {
  br label %2

2:                                                ; preds = %195, %1
  %.0 = phi i32* [ %0, %1 ], [ %3, %195 ]
  %3 = getelementptr inbounds i32, i32* %.0, i64 1
  %4 = load i32, i32* %.0, align 4
  switch i32 %4, label %195 [
    i32 0, label %.loopexit
    i32 1, label %.loopexit40
    i32 2, label %.loopexit41
    i32 3, label %.loopexit42
    i32 4, label %.loopexit43
    i32 5, label %.loopexit44
    i32 6, label %.loopexit45
    i32 7, label %.loopexit46
    i32 8, label %.loopexit47
    i32 9, label %.loopexit48
    i32 10, label %.loopexit49
    i32 11, label %.loopexit50
    i32 12, label %.loopexit51
    i32 13, label %.loopexit52
    i32 14, label %.loopexit53
    i32 15, label %.loopexit54
    i32 16, label %.loopexit55
    i32 17, label %.loopexit56
    i32 18, label %.loopexit57
    i32 19, label %.loopexit58
    i32 20, label %.loopexit59
    i32 21, label %.loopexit60
    i32 22, label %.loopexit61
    i32 23, label %.loopexit62
    i32 24, label %.loopexit63
    i32 25, label %.loopexit64
    i32 26, label %.loopexit65
    i32 27, label %.loopexit66
    i32 28, label %.loopexit67
    i32 29, label %.loopexit68
    i32 30, label %.loopexit69
    i32 31, label %.loopexit70
  ]

5:                                                ; preds = %7
  br label %6

.loopexit:                                        ; preds = %2
  br label %6

6:                                                ; preds = %.loopexit, %5
  ret void

7:                                                ; preds = %190, %184, %178, %172, %166, %160, %154, %148, %142, %136, %130, %124, %118, %112, %106, %100, %94, %88, %82, %76, %70, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10
  %.1 = phi i32* [ %191, %190 ], [ %185, %184 ], [ %179, %178 ], [ %173, %172 ], [ %167, %166 ], [ %161, %160 ], [ %155, %154 ], [ %149, %148 ], [ %143, %142 ], [ %137, %136 ], [ %131, %130 ], [ %125, %124 ], [ %119, %118 ], [ %113, %112 ], [ %107, %106 ], [ %101, %100 ], [ %95, %94 ], [ %89, %88 ], [ %83, %82 ], [ %77, %76 ], [ %71, %70 ], [ %65, %64 ], [ %59, %58 ], [ %53, %52 ], [ %47, %46 ], [ %41, %40 ], [ %35, %34 ], [ %29, %28 ], [ %23, %22 ], [ %17, %16 ], [ %11, %10 ]
  %.in = phi i8** [ %194, %190 ], [ %188, %184 ], [ %182, %178 ], [ %176, %172 ], [ %170, %166 ], [ %164, %160 ], [ %158, %154 ], [ %152, %148 ], [ %146, %142 ], [ %140, %136 ], [ %134, %130 ], [ %128, %124 ], [ %122, %118 ], [ %116, %112 ], [ %110, %106 ], [ %104, %100 ], [ %98, %94 ], [ %92, %88 ], [ %86, %82 ], [ %80, %76 ], [ %74, %70 ], [ %68, %64 ], [ %62, %58 ], [ %56, %52 ], [ %50, %46 ], [ %44, %40 ], [ %38, %34 ], [ %32, %28 ], [ %26, %22 ], [ %20, %16 ], [ %14, %10 ]
  %8 = load i8*, i8** %.in, align 8
  indirectbr i8* %8, [label %5, label %9, label %15, label %21, label %27, label %33, label %39, label %45, label %51, label %57, label %63, label %69, label %75, label %81, label %87, label %93, label %99, label %105, label %111, label %117, label %123, label %129, label %135, label %141, label %147, label %153, label %159, label %165, label %171, label %177, label %183, label %189]

9:                                                ; preds = %7
  br label %10

.loopexit40:                                      ; preds = %2
  br label %10

10:                                               ; preds = %.loopexit40, %9
  %.01 = phi i32 [ 1, %9 ], [ 0, %.loopexit40 ]
  %.2 = phi i32* [ %.1, %9 ], [ %3, %.loopexit40 ]
  call void @execute(i32 noundef %.01)
  %11 = getelementptr inbounds i32, i32* %.2, i64 1
  %12 = load i32, i32* %.2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %13
  br label %7

15:                                               ; preds = %7
  br label %16

.loopexit41:                                      ; preds = %2
  br label %16

16:                                               ; preds = %.loopexit41, %15
  %.110 = phi i32 [ 2, %15 ], [ 0, %.loopexit41 ]
  %.3 = phi i32* [ %.1, %15 ], [ %3, %.loopexit41 ]
  call void @execute(i32 noundef %.110)
  %17 = getelementptr inbounds i32, i32* %.3, i64 1
  %18 = load i32, i32* %.3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %19
  br label %7

21:                                               ; preds = %7
  br label %22

.loopexit42:                                      ; preds = %2
  br label %22

22:                                               ; preds = %.loopexit42, %21
  %.211 = phi i32 [ 3, %21 ], [ 0, %.loopexit42 ]
  %.4 = phi i32* [ %.1, %21 ], [ %3, %.loopexit42 ]
  call void @execute(i32 noundef %.211)
  %23 = getelementptr inbounds i32, i32* %.4, i64 1
  %24 = load i32, i32* %.4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %25
  br label %7

27:                                               ; preds = %7
  br label %28

.loopexit43:                                      ; preds = %2
  br label %28

28:                                               ; preds = %.loopexit43, %27
  %.312 = phi i32 [ 4, %27 ], [ 0, %.loopexit43 ]
  %.5 = phi i32* [ %.1, %27 ], [ %3, %.loopexit43 ]
  call void @execute(i32 noundef %.312)
  %29 = getelementptr inbounds i32, i32* %.5, i64 1
  %30 = load i32, i32* %.5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %31
  br label %7

33:                                               ; preds = %7
  br label %34

.loopexit44:                                      ; preds = %2
  br label %34

34:                                               ; preds = %.loopexit44, %33
  %.413 = phi i32 [ 5, %33 ], [ 0, %.loopexit44 ]
  %.6 = phi i32* [ %.1, %33 ], [ %3, %.loopexit44 ]
  call void @execute(i32 noundef %.413)
  %35 = getelementptr inbounds i32, i32* %.6, i64 1
  %36 = load i32, i32* %.6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %37
  br label %7

39:                                               ; preds = %7
  br label %40

.loopexit45:                                      ; preds = %2
  br label %40

40:                                               ; preds = %.loopexit45, %39
  %.514 = phi i32 [ 6, %39 ], [ 0, %.loopexit45 ]
  %.7 = phi i32* [ %.1, %39 ], [ %3, %.loopexit45 ]
  call void @execute(i32 noundef %.514)
  %41 = getelementptr inbounds i32, i32* %.7, i64 1
  %42 = load i32, i32* %.7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %43
  br label %7

45:                                               ; preds = %7
  br label %46

.loopexit46:                                      ; preds = %2
  br label %46

46:                                               ; preds = %.loopexit46, %45
  %.615 = phi i32 [ 7, %45 ], [ 0, %.loopexit46 ]
  %.8 = phi i32* [ %.1, %45 ], [ %3, %.loopexit46 ]
  call void @execute(i32 noundef %.615)
  %47 = getelementptr inbounds i32, i32* %.8, i64 1
  %48 = load i32, i32* %.8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %49
  br label %7

51:                                               ; preds = %7
  br label %52

.loopexit47:                                      ; preds = %2
  br label %52

52:                                               ; preds = %.loopexit47, %51
  %.716 = phi i32 [ 8, %51 ], [ 0, %.loopexit47 ]
  %.9 = phi i32* [ %.1, %51 ], [ %3, %.loopexit47 ]
  call void @execute(i32 noundef %.716)
  %53 = getelementptr inbounds i32, i32* %.9, i64 1
  %54 = load i32, i32* %.9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %55
  br label %7

57:                                               ; preds = %7
  br label %58

.loopexit48:                                      ; preds = %2
  br label %58

58:                                               ; preds = %.loopexit48, %57
  %.817 = phi i32 [ 9, %57 ], [ 0, %.loopexit48 ]
  %.10 = phi i32* [ %.1, %57 ], [ %3, %.loopexit48 ]
  call void @execute(i32 noundef %.817)
  %59 = getelementptr inbounds i32, i32* %.10, i64 1
  %60 = load i32, i32* %.10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %61
  br label %7

63:                                               ; preds = %7
  br label %64

.loopexit49:                                      ; preds = %2
  br label %64

64:                                               ; preds = %.loopexit49, %63
  %.918 = phi i32 [ 10, %63 ], [ 0, %.loopexit49 ]
  %.11 = phi i32* [ %.1, %63 ], [ %3, %.loopexit49 ]
  call void @execute(i32 noundef %.918)
  %65 = getelementptr inbounds i32, i32* %.11, i64 1
  %66 = load i32, i32* %.11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %67
  br label %7

69:                                               ; preds = %7
  br label %70

.loopexit50:                                      ; preds = %2
  br label %70

70:                                               ; preds = %.loopexit50, %69
  %.1019 = phi i32 [ 11, %69 ], [ 0, %.loopexit50 ]
  %.12 = phi i32* [ %.1, %69 ], [ %3, %.loopexit50 ]
  call void @execute(i32 noundef %.1019)
  %71 = getelementptr inbounds i32, i32* %.12, i64 1
  %72 = load i32, i32* %.12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %73
  br label %7

75:                                               ; preds = %7
  br label %76

.loopexit51:                                      ; preds = %2
  br label %76

76:                                               ; preds = %.loopexit51, %75
  %.1120 = phi i32 [ 12, %75 ], [ 0, %.loopexit51 ]
  %.13 = phi i32* [ %.1, %75 ], [ %3, %.loopexit51 ]
  call void @execute(i32 noundef %.1120)
  %77 = getelementptr inbounds i32, i32* %.13, i64 1
  %78 = load i32, i32* %.13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %79
  br label %7

81:                                               ; preds = %7
  br label %82

.loopexit52:                                      ; preds = %2
  br label %82

82:                                               ; preds = %.loopexit52, %81
  %.1221 = phi i32 [ 13, %81 ], [ 0, %.loopexit52 ]
  %.14 = phi i32* [ %.1, %81 ], [ %3, %.loopexit52 ]
  call void @execute(i32 noundef %.1221)
  %83 = getelementptr inbounds i32, i32* %.14, i64 1
  %84 = load i32, i32* %.14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %85
  br label %7

87:                                               ; preds = %7
  br label %88

.loopexit53:                                      ; preds = %2
  br label %88

88:                                               ; preds = %.loopexit53, %87
  %.1322 = phi i32 [ 14, %87 ], [ 0, %.loopexit53 ]
  %.15 = phi i32* [ %.1, %87 ], [ %3, %.loopexit53 ]
  call void @execute(i32 noundef %.1322)
  %89 = getelementptr inbounds i32, i32* %.15, i64 1
  %90 = load i32, i32* %.15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %91
  br label %7

93:                                               ; preds = %7
  br label %94

.loopexit54:                                      ; preds = %2
  br label %94

94:                                               ; preds = %.loopexit54, %93
  %.1423 = phi i32 [ 15, %93 ], [ 0, %.loopexit54 ]
  %.16 = phi i32* [ %.1, %93 ], [ %3, %.loopexit54 ]
  call void @execute(i32 noundef %.1423)
  %95 = getelementptr inbounds i32, i32* %.16, i64 1
  %96 = load i32, i32* %.16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %97
  br label %7

99:                                               ; preds = %7
  br label %100

.loopexit55:                                      ; preds = %2
  br label %100

100:                                              ; preds = %.loopexit55, %99
  %.1524 = phi i32 [ 16, %99 ], [ 0, %.loopexit55 ]
  %.17 = phi i32* [ %.1, %99 ], [ %3, %.loopexit55 ]
  call void @execute(i32 noundef %.1524)
  %101 = getelementptr inbounds i32, i32* %.17, i64 1
  %102 = load i32, i32* %.17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %103
  br label %7

105:                                              ; preds = %7
  br label %106

.loopexit56:                                      ; preds = %2
  br label %106

106:                                              ; preds = %.loopexit56, %105
  %.1625 = phi i32 [ 17, %105 ], [ 0, %.loopexit56 ]
  %.18 = phi i32* [ %.1, %105 ], [ %3, %.loopexit56 ]
  call void @execute(i32 noundef %.1625)
  %107 = getelementptr inbounds i32, i32* %.18, i64 1
  %108 = load i32, i32* %.18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %109
  br label %7

111:                                              ; preds = %7
  br label %112

.loopexit57:                                      ; preds = %2
  br label %112

112:                                              ; preds = %.loopexit57, %111
  %.1726 = phi i32 [ 18, %111 ], [ 0, %.loopexit57 ]
  %.19 = phi i32* [ %.1, %111 ], [ %3, %.loopexit57 ]
  call void @execute(i32 noundef %.1726)
  %113 = getelementptr inbounds i32, i32* %.19, i64 1
  %114 = load i32, i32* %.19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %115
  br label %7

117:                                              ; preds = %7
  br label %118

.loopexit58:                                      ; preds = %2
  br label %118

118:                                              ; preds = %.loopexit58, %117
  %.1827 = phi i32 [ 19, %117 ], [ 0, %.loopexit58 ]
  %.20 = phi i32* [ %.1, %117 ], [ %3, %.loopexit58 ]
  call void @execute(i32 noundef %.1827)
  %119 = getelementptr inbounds i32, i32* %.20, i64 1
  %120 = load i32, i32* %.20, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %121
  br label %7

123:                                              ; preds = %7
  br label %124

.loopexit59:                                      ; preds = %2
  br label %124

124:                                              ; preds = %.loopexit59, %123
  %.1928 = phi i32 [ 20, %123 ], [ 0, %.loopexit59 ]
  %.21 = phi i32* [ %.1, %123 ], [ %3, %.loopexit59 ]
  call void @execute(i32 noundef %.1928)
  %125 = getelementptr inbounds i32, i32* %.21, i64 1
  %126 = load i32, i32* %.21, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %127
  br label %7

129:                                              ; preds = %7
  br label %130

.loopexit60:                                      ; preds = %2
  br label %130

130:                                              ; preds = %.loopexit60, %129
  %.2029 = phi i32 [ 21, %129 ], [ 0, %.loopexit60 ]
  %.22 = phi i32* [ %.1, %129 ], [ %3, %.loopexit60 ]
  call void @execute(i32 noundef %.2029)
  %131 = getelementptr inbounds i32, i32* %.22, i64 1
  %132 = load i32, i32* %.22, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %133
  br label %7

135:                                              ; preds = %7
  br label %136

.loopexit61:                                      ; preds = %2
  br label %136

136:                                              ; preds = %.loopexit61, %135
  %.2130 = phi i32 [ 22, %135 ], [ 0, %.loopexit61 ]
  %.23 = phi i32* [ %.1, %135 ], [ %3, %.loopexit61 ]
  call void @execute(i32 noundef %.2130)
  %137 = getelementptr inbounds i32, i32* %.23, i64 1
  %138 = load i32, i32* %.23, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %139
  br label %7

141:                                              ; preds = %7
  br label %142

.loopexit62:                                      ; preds = %2
  br label %142

142:                                              ; preds = %.loopexit62, %141
  %.2231 = phi i32 [ 23, %141 ], [ 0, %.loopexit62 ]
  %.24 = phi i32* [ %.1, %141 ], [ %3, %.loopexit62 ]
  call void @execute(i32 noundef %.2231)
  %143 = getelementptr inbounds i32, i32* %.24, i64 1
  %144 = load i32, i32* %.24, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %145
  br label %7

147:                                              ; preds = %7
  br label %148

.loopexit63:                                      ; preds = %2
  br label %148

148:                                              ; preds = %.loopexit63, %147
  %.2332 = phi i32 [ 24, %147 ], [ 0, %.loopexit63 ]
  %.25 = phi i32* [ %.1, %147 ], [ %3, %.loopexit63 ]
  call void @execute(i32 noundef %.2332)
  %149 = getelementptr inbounds i32, i32* %.25, i64 1
  %150 = load i32, i32* %.25, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %151
  br label %7

153:                                              ; preds = %7
  br label %154

.loopexit64:                                      ; preds = %2
  br label %154

154:                                              ; preds = %.loopexit64, %153
  %.2433 = phi i32 [ 25, %153 ], [ 0, %.loopexit64 ]
  %.26 = phi i32* [ %.1, %153 ], [ %3, %.loopexit64 ]
  call void @execute(i32 noundef %.2433)
  %155 = getelementptr inbounds i32, i32* %.26, i64 1
  %156 = load i32, i32* %.26, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %157
  br label %7

159:                                              ; preds = %7
  br label %160

.loopexit65:                                      ; preds = %2
  br label %160

160:                                              ; preds = %.loopexit65, %159
  %.2534 = phi i32 [ 26, %159 ], [ 0, %.loopexit65 ]
  %.27 = phi i32* [ %.1, %159 ], [ %3, %.loopexit65 ]
  call void @execute(i32 noundef %.2534)
  %161 = getelementptr inbounds i32, i32* %.27, i64 1
  %162 = load i32, i32* %.27, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %163
  br label %7

165:                                              ; preds = %7
  br label %166

.loopexit66:                                      ; preds = %2
  br label %166

166:                                              ; preds = %.loopexit66, %165
  %.2635 = phi i32 [ 27, %165 ], [ 0, %.loopexit66 ]
  %.28 = phi i32* [ %.1, %165 ], [ %3, %.loopexit66 ]
  call void @execute(i32 noundef %.2635)
  %167 = getelementptr inbounds i32, i32* %.28, i64 1
  %168 = load i32, i32* %.28, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %169
  br label %7

171:                                              ; preds = %7
  br label %172

.loopexit67:                                      ; preds = %2
  br label %172

172:                                              ; preds = %.loopexit67, %171
  %.2736 = phi i32 [ 28, %171 ], [ 0, %.loopexit67 ]
  %.29 = phi i32* [ %.1, %171 ], [ %3, %.loopexit67 ]
  call void @execute(i32 noundef %.2736)
  %173 = getelementptr inbounds i32, i32* %.29, i64 1
  %174 = load i32, i32* %.29, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %175
  br label %7

177:                                              ; preds = %7
  br label %178

.loopexit68:                                      ; preds = %2
  br label %178

178:                                              ; preds = %.loopexit68, %177
  %.2837 = phi i32 [ 29, %177 ], [ 0, %.loopexit68 ]
  %.30 = phi i32* [ %.1, %177 ], [ %3, %.loopexit68 ]
  call void @execute(i32 noundef %.2837)
  %179 = getelementptr inbounds i32, i32* %.30, i64 1
  %180 = load i32, i32* %.30, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %181
  br label %7

183:                                              ; preds = %7
  br label %184

.loopexit69:                                      ; preds = %2
  br label %184

184:                                              ; preds = %.loopexit69, %183
  %.2938 = phi i32 [ 30, %183 ], [ 0, %.loopexit69 ]
  %.31 = phi i32* [ %.1, %183 ], [ %3, %.loopexit69 ]
  call void @execute(i32 noundef %.2938)
  %185 = getelementptr inbounds i32, i32* %.31, i64 1
  %186 = load i32, i32* %.31, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %187
  br label %7

189:                                              ; preds = %7
  br label %190

.loopexit70:                                      ; preds = %2
  br label %190

190:                                              ; preds = %.loopexit70, %189
  %.3039 = phi i32 [ 31, %189 ], [ 0, %.loopexit70 ]
  %.32 = phi i32* [ %.1, %189 ], [ %3, %.loopexit70 ]
  call void @execute(i32 noundef %.3039)
  %191 = getelementptr inbounds i32, i32* %.32, i64 1
  %192 = load i32, i32* %.32, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %193
  br label %7

195:                                              ; preds = %2
  br label %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [2048 x i32], align 16
  %.sub = getelementptr inbounds [2048 x i32], [2048 x i32]* %1, i64 0, i64 0
  br label %2

2:                                                ; preds = %9, %0
  %.01 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %3 = icmp ult i32 %.01, 2047
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = urem i32 %.01, 31
  %6 = add nuw nsw i32 %5, 1
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [2048 x i32], [2048 x i32]* %1, i64 0, i64 %7
  store i32 %6, i32* %8, align 4
  br label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2048 x i32], [2048 x i32]* %1, i64 0, i64 2047
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %16, %11
  %.0 = phi i32 [ 0, %11 ], [ %17, %16 ]
  %14 = icmp ult i32 %.0, 100000
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  call void @eval(i32* noundef nonnull %.sub)
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !6

18:                                               ; preds = %13
  %19 = load i32, i32* @sum, align 4
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef %19) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
