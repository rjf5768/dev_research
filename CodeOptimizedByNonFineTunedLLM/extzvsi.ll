; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/extzvsi.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/extzvsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee = type { i64 }

@x = dso_local global %struct.ieee zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.ieee, %struct.ieee* @x, i32 0, i32 0), align 4
  %4 = lshr i64 %3, 1
  %5 = and i64 %4, 2047
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %16

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 2, i32* %1, align 4
  br label %16

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %13, %9
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.ieee, %struct.ieee* @x, i32 0, i32 0), align 4
  %3 = and i64 %2, -4095
  %4 = or i64 %3, 2
  store i64 %4, i64* getelementptr inbounds (%struct.ieee, %struct.ieee* @x, i32 0, i32 0), align 4
  %5 = call i32 @foo()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
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
