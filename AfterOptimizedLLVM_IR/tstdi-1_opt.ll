; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/tstdi-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/tstdi-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @feq(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 13, i32* %2, align 4
  br label %8

7:                                                ; preds = %1
  store i32 140, i32* %2, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fne(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 13, i32* %2, align 4
  br label %8

7:                                                ; preds = %1
  store i32 140, i32* %2, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @flt(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 13, i32* %2, align 4
  br label %8

7:                                                ; preds = %1
  store i32 140, i32* %2, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fge(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 13, i32* %2, align 4
  br label %8

7:                                                ; preds = %1
  store i32 140, i32* %2, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fgt(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 13, i32* %2, align 4
  br label %8

7:                                                ; preds = %1
  store i32 140, i32* %2, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fle(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp sle i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 13, i32* %2, align 4
  br label %8

7:                                                ; preds = %1
  store i32 140, i32* %2, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @feq(i64 noundef 0)
  %3 = icmp ne i32 %2, 13
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i32 @feq(i64 noundef -1)
  %7 = icmp ne i32 %6, 140
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i32 @feq(i64 noundef -9223372036854775808)
  %11 = icmp ne i32 %10, 140
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call i32 @feq(i64 noundef -9223372036854775807)
  %15 = icmp ne i32 %14, 140
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i32 @feq(i64 noundef 1)
  %19 = icmp ne i32 %18, 140
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i32 @feq(i64 noundef 9223372036854775807)
  %23 = icmp ne i32 %22, 140
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  %26 = call i32 @fne(i64 noundef 0)
  %27 = icmp ne i32 %26, 140
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  %30 = call i32 @fne(i64 noundef -1)
  %31 = icmp ne i32 %30, 13
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  %34 = call i32 @fne(i64 noundef -9223372036854775808)
  %35 = icmp ne i32 %34, 13
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  %38 = call i32 @fne(i64 noundef -9223372036854775807)
  %39 = icmp ne i32 %38, 13
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call i32 @fne(i64 noundef 1)
  %43 = icmp ne i32 %42, 13
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  %46 = call i32 @fne(i64 noundef 9223372036854775807)
  %47 = icmp ne i32 %46, 13
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @abort() #2
  unreachable

49:                                               ; preds = %45
  %50 = call i32 @flt(i64 noundef 0)
  %51 = icmp ne i32 %50, 140
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @abort() #2
  unreachable

53:                                               ; preds = %49
  %54 = call i32 @flt(i64 noundef -1)
  %55 = icmp ne i32 %54, 13
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @abort() #2
  unreachable

57:                                               ; preds = %53
  %58 = call i32 @flt(i64 noundef -9223372036854775808)
  %59 = icmp ne i32 %58, 13
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @abort() #2
  unreachable

61:                                               ; preds = %57
  %62 = call i32 @flt(i64 noundef -9223372036854775807)
  %63 = icmp ne i32 %62, 13
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @abort() #2
  unreachable

65:                                               ; preds = %61
  %66 = call i32 @flt(i64 noundef 1)
  %67 = icmp ne i32 %66, 140
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  call void @abort() #2
  unreachable

69:                                               ; preds = %65
  %70 = call i32 @flt(i64 noundef 9223372036854775807)
  %71 = icmp ne i32 %70, 140
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @abort() #2
  unreachable

73:                                               ; preds = %69
  %74 = call i32 @fge(i64 noundef 0)
  %75 = icmp ne i32 %74, 13
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @abort() #2
  unreachable

77:                                               ; preds = %73
  %78 = call i32 @fge(i64 noundef -1)
  %79 = icmp ne i32 %78, 140
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @abort() #2
  unreachable

81:                                               ; preds = %77
  %82 = call i32 @fge(i64 noundef -9223372036854775808)
  %83 = icmp ne i32 %82, 140
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  call void @abort() #2
  unreachable

85:                                               ; preds = %81
  %86 = call i32 @fge(i64 noundef -9223372036854775807)
  %87 = icmp ne i32 %86, 140
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @abort() #2
  unreachable

89:                                               ; preds = %85
  %90 = call i32 @fge(i64 noundef 1)
  %91 = icmp ne i32 %90, 13
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @abort() #2
  unreachable

93:                                               ; preds = %89
  %94 = call i32 @fge(i64 noundef 9223372036854775807)
  %95 = icmp ne i32 %94, 13
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @abort() #2
  unreachable

97:                                               ; preds = %93
  %98 = call i32 @fgt(i64 noundef 0)
  %99 = icmp ne i32 %98, 140
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @abort() #2
  unreachable

101:                                              ; preds = %97
  %102 = call i32 @fgt(i64 noundef -1)
  %103 = icmp ne i32 %102, 140
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  call void @abort() #2
  unreachable

105:                                              ; preds = %101
  %106 = call i32 @fgt(i64 noundef -9223372036854775808)
  %107 = icmp ne i32 %106, 140
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  call void @abort() #2
  unreachable

109:                                              ; preds = %105
  %110 = call i32 @fgt(i64 noundef -9223372036854775807)
  %111 = icmp ne i32 %110, 140
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  call void @abort() #2
  unreachable

113:                                              ; preds = %109
  %114 = call i32 @fgt(i64 noundef 1)
  %115 = icmp ne i32 %114, 13
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void @abort() #2
  unreachable

117:                                              ; preds = %113
  %118 = call i32 @fgt(i64 noundef 9223372036854775807)
  %119 = icmp ne i32 %118, 13
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  call void @abort() #2
  unreachable

121:                                              ; preds = %117
  %122 = call i32 @fle(i64 noundef 0)
  %123 = icmp ne i32 %122, 13
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @abort() #2
  unreachable

125:                                              ; preds = %121
  %126 = call i32 @fle(i64 noundef -1)
  %127 = icmp ne i32 %126, 13
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @abort() #2
  unreachable

129:                                              ; preds = %125
  %130 = call i32 @fle(i64 noundef -9223372036854775808)
  %131 = icmp ne i32 %130, 13
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void @abort() #2
  unreachable

133:                                              ; preds = %129
  %134 = call i32 @fle(i64 noundef -9223372036854775807)
  %135 = icmp ne i32 %134, 13
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  call void @abort() #2
  unreachable

137:                                              ; preds = %133
  %138 = call i32 @fle(i64 noundef 1)
  %139 = icmp ne i32 %138, 140
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  call void @abort() #2
  unreachable

141:                                              ; preds = %137
  %142 = call i32 @fle(i64 noundef 9223372036854775807)
  %143 = icmp ne i32 %142, 140
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  call void @abort() #2
  unreachable

145:                                              ; preds = %141
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
