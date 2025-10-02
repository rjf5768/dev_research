; ModuleID = './unroll-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/unroll-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0
  %2 = call i32 @f(i32 noundef 1) #3
  %3 = call i32 @f(i32 noundef %2) #3
  %4 = call i32 @f(i32 noundef %3) #3
  %5 = call i32 @f(i32 noundef %4) #3
  %6 = call i32 @f(i32 noundef %5) #3
  %7 = call i32 @f(i32 noundef %6) #3
  %8 = call i32 @f(i32 noundef %7) #3
  %9 = call i32 @f(i32 noundef %8) #3
  %10 = call i32 @f(i32 noundef %9) #3
  %11 = call i32 @f(i32 noundef %10) #3
  %12 = icmp slt i32 %11, 12
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %1
  br i1 true, label %15, label %16

15:                                               ; preds = %14
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %15, %13
  unreachable
}

declare dso_local i32 @f(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
