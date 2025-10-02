; ModuleID = './lshrdi-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/lshrdi-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zext = internal constant [64 x i64] [i64 -8690466092652643696, i64 4878138990528453960, i64 2439069495264226980, i64 1219534747632113490, i64 609767373816056745, i64 304883686908028372, i64 152441843454014186, i64 76220921727007093, i64 38110460863503546, i64 19055230431751773, i64 9527615215875886, i64 4763807607937943, i64 2381903803968971, i64 1190951901984485, i64 595475950992242, i64 297737975496121, i64 148868987748060, i64 74434493874030, i64 37217246937015, i64 18608623468507, i64 9304311734253, i64 4652155867126, i64 2326077933563, i64 1163038966781, i64 581519483390, i64 290759741695, i64 145379870847, i64 72689935423, i64 36344967711, i64 18172483855, i64 9086241927, i64 4543120963, i64 2271560481, i64 1135780240, i64 567890120, i64 283945060, i64 141972530, i64 70986265, i64 35493132, i64 17746566, i64 8873283, i64 4436641, i64 2218320, i64 1109160, i64 554580, i64 277290, i64 138645, i64 69322, i64 34661, i64 17330, i64 8665, i64 4332, i64 2166, i64 1083, i64 541, i64 270, i64 135, i64 67, i64 33, i64 16, i64 8, i64 4, i64 2, i64 1], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 64
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = call i64 @variable_shift(i64 noundef -8690466092652643696, i32 noundef %.0)
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [64 x i64], [64 x i64]* @zext, i64 0, i64 %5
  %7 = load i64, i64* %6, align 8
  %.not1 = icmp eq i64 %4, %7
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %22, %12
  %.1 = phi i32 [ 0, %12 ], [ %23, %22 ]
  %14 = icmp ult i32 %.1, 64
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = call i64 @constant_shift(i64 noundef -8690466092652643696, i32 noundef %.1)
  %17 = zext i32 %.1 to i64
  %18 = getelementptr inbounds [64 x i64], [64 x i64]* @zext, i64 0, i64 %17
  %19 = load i64, i64* %18, align 8
  %.not = icmp eq i64 %16, %19
  br i1 %.not, label %21, label %20

20:                                               ; preds = %15
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !6

24:                                               ; preds = %13
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %24, %20, %8
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @variable_shift(i64 noundef %0, i32 noundef %1) #1 {
  %3 = zext i32 %1 to i64
  %4 = lshr i64 %0, %3
  ret i64 %4
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @constant_shift(i64 noundef %0, i32 noundef %1) #3 {
  switch i32 %1, label %130 [
    i32 0, label %3
    i32 1, label %4
    i32 2, label %6
    i32 3, label %8
    i32 4, label %10
    i32 5, label %12
    i32 6, label %14
    i32 7, label %16
    i32 8, label %18
    i32 9, label %20
    i32 10, label %22
    i32 11, label %24
    i32 12, label %26
    i32 13, label %28
    i32 14, label %30
    i32 15, label %32
    i32 16, label %34
    i32 17, label %36
    i32 18, label %38
    i32 19, label %40
    i32 20, label %42
    i32 21, label %44
    i32 22, label %46
    i32 23, label %48
    i32 24, label %50
    i32 25, label %52
    i32 26, label %54
    i32 27, label %56
    i32 28, label %58
    i32 29, label %60
    i32 30, label %62
    i32 31, label %64
    i32 32, label %66
    i32 33, label %68
    i32 34, label %70
    i32 35, label %72
    i32 36, label %74
    i32 37, label %76
    i32 38, label %78
    i32 39, label %80
    i32 40, label %82
    i32 41, label %84
    i32 42, label %86
    i32 43, label %88
    i32 44, label %90
    i32 45, label %92
    i32 46, label %94
    i32 47, label %96
    i32 48, label %98
    i32 49, label %100
    i32 50, label %102
    i32 51, label %104
    i32 52, label %106
    i32 53, label %108
    i32 54, label %110
    i32 55, label %112
    i32 56, label %114
    i32 57, label %116
    i32 58, label %118
    i32 59, label %120
    i32 60, label %122
    i32 61, label %124
    i32 62, label %126
    i32 63, label %128
  ]

3:                                                ; preds = %2
  br label %131

4:                                                ; preds = %2
  %5 = lshr i64 %0, 1
  br label %131

6:                                                ; preds = %2
  %7 = lshr i64 %0, 2
  br label %131

8:                                                ; preds = %2
  %9 = lshr i64 %0, 3
  br label %131

10:                                               ; preds = %2
  %11 = lshr i64 %0, 4
  br label %131

12:                                               ; preds = %2
  %13 = lshr i64 %0, 5
  br label %131

14:                                               ; preds = %2
  %15 = lshr i64 %0, 6
  br label %131

16:                                               ; preds = %2
  %17 = lshr i64 %0, 7
  br label %131

18:                                               ; preds = %2
  %19 = lshr i64 %0, 8
  br label %131

20:                                               ; preds = %2
  %21 = lshr i64 %0, 9
  br label %131

22:                                               ; preds = %2
  %23 = lshr i64 %0, 10
  br label %131

24:                                               ; preds = %2
  %25 = lshr i64 %0, 11
  br label %131

26:                                               ; preds = %2
  %27 = lshr i64 %0, 12
  br label %131

28:                                               ; preds = %2
  %29 = lshr i64 %0, 13
  br label %131

30:                                               ; preds = %2
  %31 = lshr i64 %0, 14
  br label %131

32:                                               ; preds = %2
  %33 = lshr i64 %0, 15
  br label %131

34:                                               ; preds = %2
  %35 = lshr i64 %0, 16
  br label %131

36:                                               ; preds = %2
  %37 = lshr i64 %0, 17
  br label %131

38:                                               ; preds = %2
  %39 = lshr i64 %0, 18
  br label %131

40:                                               ; preds = %2
  %41 = lshr i64 %0, 19
  br label %131

42:                                               ; preds = %2
  %43 = lshr i64 %0, 20
  br label %131

44:                                               ; preds = %2
  %45 = lshr i64 %0, 21
  br label %131

46:                                               ; preds = %2
  %47 = lshr i64 %0, 22
  br label %131

48:                                               ; preds = %2
  %49 = lshr i64 %0, 23
  br label %131

50:                                               ; preds = %2
  %51 = lshr i64 %0, 24
  br label %131

52:                                               ; preds = %2
  %53 = lshr i64 %0, 25
  br label %131

54:                                               ; preds = %2
  %55 = lshr i64 %0, 26
  br label %131

56:                                               ; preds = %2
  %57 = lshr i64 %0, 27
  br label %131

58:                                               ; preds = %2
  %59 = lshr i64 %0, 28
  br label %131

60:                                               ; preds = %2
  %61 = lshr i64 %0, 29
  br label %131

62:                                               ; preds = %2
  %63 = lshr i64 %0, 30
  br label %131

64:                                               ; preds = %2
  %65 = lshr i64 %0, 31
  br label %131

66:                                               ; preds = %2
  %67 = lshr i64 %0, 32
  br label %131

68:                                               ; preds = %2
  %69 = lshr i64 %0, 33
  br label %131

70:                                               ; preds = %2
  %71 = lshr i64 %0, 34
  br label %131

72:                                               ; preds = %2
  %73 = lshr i64 %0, 35
  br label %131

74:                                               ; preds = %2
  %75 = lshr i64 %0, 36
  br label %131

76:                                               ; preds = %2
  %77 = lshr i64 %0, 37
  br label %131

78:                                               ; preds = %2
  %79 = lshr i64 %0, 38
  br label %131

80:                                               ; preds = %2
  %81 = lshr i64 %0, 39
  br label %131

82:                                               ; preds = %2
  %83 = lshr i64 %0, 40
  br label %131

84:                                               ; preds = %2
  %85 = lshr i64 %0, 41
  br label %131

86:                                               ; preds = %2
  %87 = lshr i64 %0, 42
  br label %131

88:                                               ; preds = %2
  %89 = lshr i64 %0, 43
  br label %131

90:                                               ; preds = %2
  %91 = lshr i64 %0, 44
  br label %131

92:                                               ; preds = %2
  %93 = lshr i64 %0, 45
  br label %131

94:                                               ; preds = %2
  %95 = lshr i64 %0, 46
  br label %131

96:                                               ; preds = %2
  %97 = lshr i64 %0, 47
  br label %131

98:                                               ; preds = %2
  %99 = lshr i64 %0, 48
  br label %131

100:                                              ; preds = %2
  %101 = lshr i64 %0, 49
  br label %131

102:                                              ; preds = %2
  %103 = lshr i64 %0, 50
  br label %131

104:                                              ; preds = %2
  %105 = lshr i64 %0, 51
  br label %131

106:                                              ; preds = %2
  %107 = lshr i64 %0, 52
  br label %131

108:                                              ; preds = %2
  %109 = lshr i64 %0, 53
  br label %131

110:                                              ; preds = %2
  %111 = lshr i64 %0, 54
  br label %131

112:                                              ; preds = %2
  %113 = lshr i64 %0, 55
  br label %131

114:                                              ; preds = %2
  %115 = lshr i64 %0, 56
  br label %131

116:                                              ; preds = %2
  %117 = lshr i64 %0, 57
  br label %131

118:                                              ; preds = %2
  %119 = lshr i64 %0, 58
  br label %131

120:                                              ; preds = %2
  %121 = lshr i64 %0, 59
  br label %131

122:                                              ; preds = %2
  %123 = lshr i64 %0, 60
  br label %131

124:                                              ; preds = %2
  %125 = lshr i64 %0, 61
  br label %131

126:                                              ; preds = %2
  %127 = lshr i64 %0, 62
  br label %131

128:                                              ; preds = %2
  %129 = lshr i64 %0, 63
  br label %131

130:                                              ; preds = %2
  call void @abort() #4
  unreachable

131:                                              ; preds = %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4, %3
  %.0 = phi i64 [ %129, %128 ], [ %127, %126 ], [ %125, %124 ], [ %123, %122 ], [ %121, %120 ], [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %87, %86 ], [ %85, %84 ], [ %83, %82 ], [ %81, %80 ], [ %79, %78 ], [ %77, %76 ], [ %75, %74 ], [ %73, %72 ], [ %71, %70 ], [ %69, %68 ], [ %67, %66 ], [ %65, %64 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %0, %3 ]
  ret i64 %.0
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
