; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/alias-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/alias-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [10 x i32] zeroinitializer, align 16
@off = dso_local global i32 0, align 4

@b = dso_local alias [10 x i32], [10 x i32]* @a

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @off, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* @b, i64 0, i64 %3
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* @off, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* @a, i64 0, i64 %6
  store i32 2, i32* %7, align 4
  %8 = load i32, i32* @off, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* @b, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @abort() #2
  unreachable

14:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
