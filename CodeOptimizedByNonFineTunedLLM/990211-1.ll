; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990211-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990211-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @func(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5, %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12, %9
  %17 = load i32, i32* %2, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @abort() #2
  unreachable

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %2, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @abort() #2
  unreachable

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 77
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = icmp sge i32 %34, 77
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %2, align 4
  %39 = icmp sgt i32 %38, 77
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = icmp sle i32 %41, 77
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @abort() #2
  unreachable

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %2, align 4
  %46 = icmp sge i32 %45, 77
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = icmp slt i32 %48, 77
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void @abort() #2
  unreachable

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %2, align 4
  %53 = icmp sle i32 %52, 77
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %2, align 4
  %56 = icmp sgt i32 %55, 77
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @abort() #2
  unreachable

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %2, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %2, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  call void @abort() #2
  unreachable

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %2, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %2, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  call void @abort() #2
  unreachable

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %2, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %2, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void @abort() #2
  unreachable

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %2, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %2, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void @abort() #2
  unreachable

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %2, align 4
  %88 = icmp slt i32 %87, 77
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %2, align 4
  %91 = icmp sge i32 %90, 77
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  call void @abort() #2
  unreachable

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %2, align 4
  %95 = icmp sgt i32 %94, 77
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %2, align 4
  %98 = icmp sle i32 %97, 77
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  call void @abort() #2
  unreachable

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %2, align 4
  %102 = icmp sge i32 %101, 77
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %2, align 4
  %105 = icmp slt i32 %104, 77
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  call void @abort() #2
  unreachable

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %2, align 4
  %109 = icmp sle i32 %108, 77
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %2, align 4
  %112 = icmp sgt i32 %111, 77
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  call void @abort() #2
  unreachable

114:                                              ; preds = %110, %107
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @func(i32 noundef 0)
  call void @func(i32 noundef 1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
