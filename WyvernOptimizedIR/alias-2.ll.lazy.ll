; ModuleID = './alias-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/alias-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [10 x i32] zeroinitializer, align 16
@off = dso_local global i32 0, align 4

@b = dso_local alias [10 x i32], [10 x i32]* @a

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @off, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* @b, i64 0, i64 %2
  store i32 1, i32* %3, align 4
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* @a, i64 0, i64 %4
  store i32 2, i32* %5, align 4
  %6 = load i32, i32* @off, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* @b, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %.not = icmp eq i32 %9, 2
  br i1 %.not, label %11, label %10

10:                                               ; preds = %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %0
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
