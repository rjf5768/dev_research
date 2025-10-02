; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20051012-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20051012-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32*, i32 }

@t = dso_local global %struct.type zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.type, %struct.type* @t, i32 0, i32 1), align 8
  %2 = lshr i32 %1, 16
  %3 = and i32 %2, 511
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.type, %struct.type* @t, i32 0, i32 1), align 8
  %3 = and i32 %2, -33488897
  %4 = or i32 %3, 524288
  store i32 %4, i32* getelementptr inbounds (%struct.type, %struct.type* @t, i32 0, i32 1), align 8
  %5 = load i32*, i32** getelementptr inbounds ({ i32*, i64 }, { i32*, i64 }* bitcast (%struct.type* @t to { i32*, i64 }*), i32 0, i32 0), align 8
  %6 = load i64, i64* getelementptr inbounds ({ i32*, i64 }, { i32*, i64 }* bitcast (%struct.type* @t to { i32*, i64 }*), i32 0, i32 1), align 8
  %7 = call i32 (i32*, i64, ...) bitcast (i32 ()* @foo to i32 (i32*, i64, ...)*)(i32* %5, i64 %6)
  %8 = icmp ne i32 %7, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
