; ModuleID = './pr45695.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr45695.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(i32 noundef %0) #0 {
  %2 = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #2, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %3
  %.0 = phi i32 [ %1, %5 ], [ -1, %3 ]
  %7 = add nsw i32 %1, %2
  call void @g(i32 noundef %7)
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 0) #3, !srcloc !5
  %2 = add nsw i32 %1, 1
  %3 = add nsw i32 %1, 4
  %4 = call i32 @f(i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %.not = icmp eq i32 %4, -1
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  %7 = add nsw i32 %1, 4
  %8 = add nsw i32 %1, 1
  %9 = add nsw i32 %1, 4
  %10 = call i32 @f(i32 noundef %7, i32 noundef %8, i32 noundef %9)
  %.not1 = icmp eq i32 %10, 1
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %6
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %6
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %11, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 121}
!5 = !{i64 307}
