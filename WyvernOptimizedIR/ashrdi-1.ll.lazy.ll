; ModuleID = './ashrdi-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ashrdi-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zext = internal constant [64 x i64] [i64 8526495107234113920, i64 4263247553617056960, i64 2131623776808528480, i64 1065811888404264240, i64 532905944202132120, i64 266452972101066060, i64 133226486050533030, i64 66613243025266515, i64 33306621512633257, i64 16653310756316628, i64 8326655378158314, i64 4163327689079157, i64 2081663844539578, i64 1040831922269789, i64 520415961134894, i64 260207980567447, i64 130103990283723, i64 65051995141861, i64 32525997570930, i64 16262998785465, i64 8131499392732, i64 4065749696366, i64 2032874848183, i64 1016437424091, i64 508218712045, i64 254109356022, i64 127054678011, i64 63527339005, i64 31763669502, i64 15881834751, i64 7940917375, i64 3970458687, i64 1985229343, i64 992614671, i64 496307335, i64 248153667, i64 124076833, i64 62038416, i64 31019208, i64 15509604, i64 7754802, i64 3877401, i64 1938700, i64 969350, i64 484675, i64 242337, i64 121168, i64 60584, i64 30292, i64 15146, i64 7573, i64 3786, i64 1893, i64 946, i64 473, i64 236, i64 118, i64 59, i64 29, i64 14, i64 7, i64 3, i64 1, i64 0], align 16
@sext = internal constant [64 x i64] [i64 -8152436031399644656, i64 -4076218015699822328, i64 -2038109007849911164, i64 -1019054503924955582, i64 -509527251962477791, i64 -254763625981238896, i64 -127381812990619448, i64 -63690906495309724, i64 -31845453247654862, i64 -15922726623827431, i64 -7961363311913716, i64 -3980681655956858, i64 -1990340827978429, i64 -995170413989215, i64 -497585206994608, i64 -248792603497304, i64 -124396301748652, i64 -62198150874326, i64 -31099075437163, i64 -15549537718582, i64 -7774768859291, i64 -3887384429646, i64 -1943692214823, i64 -971846107412, i64 -485923053706, i64 -242961526853, i64 -121480763427, i64 -60740381714, i64 -30370190857, i64 -15185095429, i64 -7592547715, i64 -3796273858, i64 -1898136929, i64 -949068465, i64 -474534233, i64 -237267117, i64 -118633559, i64 -59316780, i64 -29658390, i64 -14829195, i64 -7414598, i64 -3707299, i64 -1853650, i64 -926825, i64 -463413, i64 -231707, i64 -115854, i64 -57927, i64 -28964, i64 -14482, i64 -7241, i64 -3621, i64 -1811, i64 -906, i64 -453, i64 -227, i64 -114, i64 -57, i64 -29, i64 -15, i64 -8, i64 -4, i64 -2, i64 -1], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 64
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = call i64 @variable_shift(i64 noundef 8526495107234113920, i32 noundef %.0)
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [64 x i64], [64 x i64]* @zext, i64 0, i64 %5
  %7 = load i64, i64* %6, align 8
  %.not3 = icmp eq i64 %4, %7
  br i1 %.not3, label %9, label %8

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
  %16 = call i64 @variable_shift(i64 noundef -8152436031399644656, i32 noundef %.1)
  %17 = zext i32 %.1 to i64
  %18 = getelementptr inbounds [64 x i64], [64 x i64]* @sext, i64 0, i64 %17
  %19 = load i64, i64* %18, align 8
  %.not2 = icmp eq i64 %16, %19
  br i1 %.not2, label %21, label %20

20:                                               ; preds = %15
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !6

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %34, %24
  %.2 = phi i32 [ 0, %24 ], [ %35, %34 ]
  %26 = icmp ult i32 %.2, 64
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = call i64 @constant_shift(i64 noundef 8526495107234113920, i32 noundef %.2)
  %29 = zext i32 %.2 to i64
  %30 = getelementptr inbounds [64 x i64], [64 x i64]* @zext, i64 0, i64 %29
  %31 = load i64, i64* %30, align 8
  %.not1 = icmp eq i64 %28, %31
  br i1 %.not1, label %33, label %32

32:                                               ; preds = %27
  call void @abort() #4
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.2, 1
  br label %25, !llvm.loop !7

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %46, %36
  %.3 = phi i32 [ 0, %36 ], [ %47, %46 ]
  %38 = icmp ult i32 %.3, 64
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = call i64 @constant_shift(i64 noundef -8152436031399644656, i32 noundef %.3)
  %41 = zext i32 %.3 to i64
  %42 = getelementptr inbounds [64 x i64], [64 x i64]* @sext, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %.not = icmp eq i64 %40, %43
  br i1 %.not, label %45, label %44

44:                                               ; preds = %39
  call void @abort() #4
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.3, 1
  br label %37, !llvm.loop !8

48:                                               ; preds = %37
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %48, %44, %32, %20, %8
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @variable_shift(i64 noundef %0, i32 noundef %1) #1 {
  %3 = zext i32 %1 to i64
  %4 = ashr i64 %0, %3
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
  %5 = ashr i64 %0, 1
  br label %131

6:                                                ; preds = %2
  %7 = ashr i64 %0, 2
  br label %131

8:                                                ; preds = %2
  %9 = ashr i64 %0, 3
  br label %131

10:                                               ; preds = %2
  %11 = ashr i64 %0, 4
  br label %131

12:                                               ; preds = %2
  %13 = ashr i64 %0, 5
  br label %131

14:                                               ; preds = %2
  %15 = ashr i64 %0, 6
  br label %131

16:                                               ; preds = %2
  %17 = ashr i64 %0, 7
  br label %131

18:                                               ; preds = %2
  %19 = ashr i64 %0, 8
  br label %131

20:                                               ; preds = %2
  %21 = ashr i64 %0, 9
  br label %131

22:                                               ; preds = %2
  %23 = ashr i64 %0, 10
  br label %131

24:                                               ; preds = %2
  %25 = ashr i64 %0, 11
  br label %131

26:                                               ; preds = %2
  %27 = ashr i64 %0, 12
  br label %131

28:                                               ; preds = %2
  %29 = ashr i64 %0, 13
  br label %131

30:                                               ; preds = %2
  %31 = ashr i64 %0, 14
  br label %131

32:                                               ; preds = %2
  %33 = ashr i64 %0, 15
  br label %131

34:                                               ; preds = %2
  %35 = ashr i64 %0, 16
  br label %131

36:                                               ; preds = %2
  %37 = ashr i64 %0, 17
  br label %131

38:                                               ; preds = %2
  %39 = ashr i64 %0, 18
  br label %131

40:                                               ; preds = %2
  %41 = ashr i64 %0, 19
  br label %131

42:                                               ; preds = %2
  %43 = ashr i64 %0, 20
  br label %131

44:                                               ; preds = %2
  %45 = ashr i64 %0, 21
  br label %131

46:                                               ; preds = %2
  %47 = ashr i64 %0, 22
  br label %131

48:                                               ; preds = %2
  %49 = ashr i64 %0, 23
  br label %131

50:                                               ; preds = %2
  %51 = ashr i64 %0, 24
  br label %131

52:                                               ; preds = %2
  %53 = ashr i64 %0, 25
  br label %131

54:                                               ; preds = %2
  %55 = ashr i64 %0, 26
  br label %131

56:                                               ; preds = %2
  %57 = ashr i64 %0, 27
  br label %131

58:                                               ; preds = %2
  %59 = ashr i64 %0, 28
  br label %131

60:                                               ; preds = %2
  %61 = ashr i64 %0, 29
  br label %131

62:                                               ; preds = %2
  %63 = ashr i64 %0, 30
  br label %131

64:                                               ; preds = %2
  %65 = ashr i64 %0, 31
  br label %131

66:                                               ; preds = %2
  %67 = ashr i64 %0, 32
  br label %131

68:                                               ; preds = %2
  %69 = ashr i64 %0, 33
  br label %131

70:                                               ; preds = %2
  %71 = ashr i64 %0, 34
  br label %131

72:                                               ; preds = %2
  %73 = ashr i64 %0, 35
  br label %131

74:                                               ; preds = %2
  %75 = ashr i64 %0, 36
  br label %131

76:                                               ; preds = %2
  %77 = ashr i64 %0, 37
  br label %131

78:                                               ; preds = %2
  %79 = ashr i64 %0, 38
  br label %131

80:                                               ; preds = %2
  %81 = ashr i64 %0, 39
  br label %131

82:                                               ; preds = %2
  %83 = ashr i64 %0, 40
  br label %131

84:                                               ; preds = %2
  %85 = ashr i64 %0, 41
  br label %131

86:                                               ; preds = %2
  %87 = ashr i64 %0, 42
  br label %131

88:                                               ; preds = %2
  %89 = ashr i64 %0, 43
  br label %131

90:                                               ; preds = %2
  %91 = ashr i64 %0, 44
  br label %131

92:                                               ; preds = %2
  %93 = ashr i64 %0, 45
  br label %131

94:                                               ; preds = %2
  %95 = ashr i64 %0, 46
  br label %131

96:                                               ; preds = %2
  %97 = ashr i64 %0, 47
  br label %131

98:                                               ; preds = %2
  %99 = ashr i64 %0, 48
  br label %131

100:                                              ; preds = %2
  %101 = ashr i64 %0, 49
  br label %131

102:                                              ; preds = %2
  %103 = ashr i64 %0, 50
  br label %131

104:                                              ; preds = %2
  %105 = ashr i64 %0, 51
  br label %131

106:                                              ; preds = %2
  %107 = ashr i64 %0, 52
  br label %131

108:                                              ; preds = %2
  %109 = ashr i64 %0, 53
  br label %131

110:                                              ; preds = %2
  %111 = ashr i64 %0, 54
  br label %131

112:                                              ; preds = %2
  %113 = ashr i64 %0, 55
  br label %131

114:                                              ; preds = %2
  %115 = ashr i64 %0, 56
  br label %131

116:                                              ; preds = %2
  %117 = ashr i64 %0, 57
  br label %131

118:                                              ; preds = %2
  %119 = ashr i64 %0, 58
  br label %131

120:                                              ; preds = %2
  %121 = ashr i64 %0, 59
  br label %131

122:                                              ; preds = %2
  %123 = ashr i64 %0, 60
  br label %131

124:                                              ; preds = %2
  %125 = ashr i64 %0, 61
  br label %131

126:                                              ; preds = %2
  %127 = ashr i64 %0, 62
  br label %131

128:                                              ; preds = %2
  %129 = ashr i64 %0, 63
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
