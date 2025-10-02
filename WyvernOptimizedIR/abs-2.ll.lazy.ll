; ModuleID = './abs-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/abs-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store volatile i32 0, i32* %1, align 4
  store volatile i32 1, i32* %2, align 4
  store volatile i32 -1, i32* %3, align 4
  store volatile i32 -2147483647, i32* %4, align 4
  store volatile i32 2147483647, i32* %5, align 4
  store volatile i64 0, i64* %6, align 8
  store volatile i64 1, i64* %7, align 8
  store volatile i64 -1, i64* %8, align 8
  store volatile i64 -9223372036854775807, i64* %9, align 8
  store volatile i64 9223372036854775807, i64* %10, align 8
  store volatile i64 0, i64* %11, align 8
  store volatile i64 1, i64* %12, align 8
  store volatile i64 -1, i64* %13, align 8
  store volatile i64 -9223372036854775807, i64* %14, align 8
  store volatile i64 9223372036854775807, i64* %15, align 8
  store volatile i64 0, i64* %16, align 8
  store volatile i64 1, i64* %17, align 8
  store volatile i64 -1, i64* %18, align 8
  store volatile i64 -9223372036854775807, i64* %19, align 8
  store volatile i64 9223372036854775807, i64* %20, align 8
  %21 = load volatile i32, i32* %1, align 4
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %23, label %22

22:                                               ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %0
  br i1 false, label %24, label %25

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %23
  %26 = load volatile i32, i32* %2, align 4
  %27 = call i32 @llvm.abs.i32(i32 %26, i1 true)
  %.not1 = icmp eq i32 %27, 1
  br i1 %.not1, label %29, label %28

28:                                               ; preds = %25
  call void @abort() #5
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %25
  br i1 false, label %30, label %31

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30, %29
  %32 = load volatile i32, i32* %3, align 4
  %33 = call i32 @llvm.abs.i32(i32 %32, i1 true)
  %.not2 = icmp eq i32 %33, 1
  br i1 %.not2, label %35, label %34

34:                                               ; preds = %31
  call void @abort() #5
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %31
  br i1 false, label %36, label %37

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %35
  %38 = load volatile i32, i32* %4, align 4
  %39 = call i32 @llvm.abs.i32(i32 %38, i1 true)
  %.not3 = icmp eq i32 %39, 2147483647
  br i1 %.not3, label %41, label %40

40:                                               ; preds = %37
  call void @abort() #5
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %37
  br i1 false, label %42, label %43

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %41
  %44 = load volatile i32, i32* %5, align 4
  %45 = call i32 @llvm.abs.i32(i32 %44, i1 true)
  %.not4 = icmp eq i32 %45, 2147483647
  br i1 %.not4, label %47, label %46

46:                                               ; preds = %43
  call void @abort() #5
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %43
  br i1 false, label %48, label %49

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %47
  %50 = load volatile i64, i64* %6, align 8
  %.not5 = icmp eq i64 %50, 0
  br i1 %.not5, label %52, label %51

51:                                               ; preds = %49
  call void @abort() #5
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %49
  br i1 false, label %53, label %54

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53, %52
  %55 = load volatile i64, i64* %7, align 8
  %56 = call i64 @llvm.abs.i64(i64 %55, i1 true)
  %.not6 = icmp eq i64 %56, 1
  br i1 %.not6, label %58, label %57

57:                                               ; preds = %54
  call void @abort() #5
  br label %UnifiedUnreachableBlock

58:                                               ; preds = %54
  br i1 false, label %59, label %60

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %58
  %61 = load volatile i64, i64* %8, align 8
  %62 = call i64 @llvm.abs.i64(i64 %61, i1 true)
  %.not7 = icmp eq i64 %62, 1
  br i1 %.not7, label %64, label %63

63:                                               ; preds = %60
  call void @abort() #5
  br label %UnifiedUnreachableBlock

64:                                               ; preds = %60
  br i1 false, label %65, label %66

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %64
  %67 = load volatile i64, i64* %9, align 8
  %68 = call i64 @llvm.abs.i64(i64 %67, i1 true)
  %.not8 = icmp eq i64 %68, 9223372036854775807
  br i1 %.not8, label %70, label %69

69:                                               ; preds = %66
  call void @abort() #5
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %66
  br i1 false, label %71, label %72

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %70
  %73 = load volatile i64, i64* %10, align 8
  %74 = call i64 @llvm.abs.i64(i64 %73, i1 true)
  %.not9 = icmp eq i64 %74, 9223372036854775807
  br i1 %.not9, label %76, label %75

75:                                               ; preds = %72
  call void @abort() #5
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %72
  br i1 false, label %77, label %78

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %76
  %79 = load volatile i64, i64* %11, align 8
  %.not10 = icmp eq i64 %79, 0
  br i1 %.not10, label %81, label %80

80:                                               ; preds = %78
  call void @abort() #5
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %78
  br i1 false, label %82, label %83

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %81
  %84 = load volatile i64, i64* %12, align 8
  %85 = call i64 @llvm.abs.i64(i64 %84, i1 true)
  %.not11 = icmp eq i64 %85, 1
  br i1 %.not11, label %87, label %86

86:                                               ; preds = %83
  call void @abort() #5
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %83
  br i1 false, label %88, label %89

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88, %87
  %90 = load volatile i64, i64* %13, align 8
  %91 = call i64 @llvm.abs.i64(i64 %90, i1 true)
  %.not12 = icmp eq i64 %91, 1
  br i1 %.not12, label %93, label %92

92:                                               ; preds = %89
  call void @abort() #5
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %89
  br i1 false, label %94, label %95

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94, %93
  %96 = load volatile i64, i64* %14, align 8
  %97 = call i64 @llvm.abs.i64(i64 %96, i1 true)
  %.not13 = icmp eq i64 %97, 9223372036854775807
  br i1 %.not13, label %99, label %98

98:                                               ; preds = %95
  call void @abort() #5
  br label %UnifiedUnreachableBlock

99:                                               ; preds = %95
  br i1 false, label %100, label %101

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %99
  %102 = load volatile i64, i64* %15, align 8
  %103 = call i64 @llvm.abs.i64(i64 %102, i1 true)
  %.not14 = icmp eq i64 %103, 9223372036854775807
  br i1 %.not14, label %105, label %104

104:                                              ; preds = %101
  call void @abort() #5
  br label %UnifiedUnreachableBlock

105:                                              ; preds = %101
  br i1 false, label %106, label %107

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %105
  %108 = load volatile i64, i64* %16, align 8
  %109 = call i64 @imaxabs(i64 noundef %108) #6
  %.not15 = icmp eq i64 %109, 0
  br i1 %.not15, label %111, label %110

110:                                              ; preds = %107
  call void @abort() #5
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %107
  %112 = call i64 @imaxabs(i64 noundef 0) #6
  %.not16 = icmp eq i64 %112, 0
  br i1 %.not16, label %114, label %113

113:                                              ; preds = %111
  call void @link_error() #6
  br label %114

114:                                              ; preds = %113, %111
  %115 = load volatile i64, i64* %17, align 8
  %116 = call i64 @imaxabs(i64 noundef %115) #6
  %.not17 = icmp eq i64 %116, 1
  br i1 %.not17, label %118, label %117

117:                                              ; preds = %114
  call void @abort() #5
  br label %UnifiedUnreachableBlock

118:                                              ; preds = %114
  %119 = call i64 @imaxabs(i64 noundef 1) #6
  %.not18 = icmp eq i64 %119, 1
  br i1 %.not18, label %121, label %120

120:                                              ; preds = %118
  call void @link_error() #6
  br label %121

121:                                              ; preds = %120, %118
  %122 = load volatile i64, i64* %18, align 8
  %123 = call i64 @imaxabs(i64 noundef %122) #6
  %.not19 = icmp eq i64 %123, 1
  br i1 %.not19, label %125, label %124

124:                                              ; preds = %121
  call void @abort() #5
  br label %UnifiedUnreachableBlock

125:                                              ; preds = %121
  %126 = call i64 @imaxabs(i64 noundef -1) #6
  %.not20 = icmp eq i64 %126, 1
  br i1 %.not20, label %128, label %127

127:                                              ; preds = %125
  call void @link_error() #6
  br label %128

128:                                              ; preds = %127, %125
  %129 = load volatile i64, i64* %19, align 8
  %130 = call i64 @imaxabs(i64 noundef %129) #6
  %.not21 = icmp eq i64 %130, 9223372036854775807
  br i1 %.not21, label %132, label %131

131:                                              ; preds = %128
  call void @abort() #5
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %128
  %133 = call i64 @imaxabs(i64 noundef -9223372036854775807) #6
  %.not22 = icmp eq i64 %133, 9223372036854775807
  br i1 %.not22, label %135, label %134

134:                                              ; preds = %132
  call void @link_error() #6
  br label %135

135:                                              ; preds = %134, %132
  %136 = load volatile i64, i64* %20, align 8
  %137 = call i64 @imaxabs(i64 noundef %136) #6
  %.not23 = icmp eq i64 %137, 9223372036854775807
  br i1 %.not23, label %139, label %138

138:                                              ; preds = %135
  call void @abort() #5
  br label %UnifiedUnreachableBlock

139:                                              ; preds = %135
  %140 = call i64 @imaxabs(i64 noundef 9223372036854775807) #6
  %.not24 = icmp eq i64 %140, 9223372036854775807
  br i1 %.not24, label %142, label %141

141:                                              ; preds = %139
  call void @link_error() #6
  br label %142

142:                                              ; preds = %141, %139
  ret void

UnifiedUnreachableBlock:                          ; preds = %138, %131, %124, %117, %110, %104, %98, %92, %86, %80, %75, %69, %63, %57, %51, %46, %40, %34, %28, %22
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local void @link_error() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i64 @labs(i64 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i64 @llabs(i64 noundef) #1

declare dso_local i64 @imaxabs(i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
