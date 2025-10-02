; ModuleID = './pr85156.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85156.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@y = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = load i32, i32* @x, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = load i32, i32* @y, align 4
  %5 = icmp eq i32 %4, 0
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i1 [ %5, %3 ], [ true, %6 ]
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  br label %12

10:                                               ; preds = %7
  %11 = add nsw i32 %0, 1
  br label %12

12:                                               ; preds = %10, %9
  %.0 = phi i32 [ 7, %9 ], [ %11, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 1, i32* @x, align 4
  call void asm sideeffect "", "=*m,=*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull elementtype(i32) @x, i32* nonnull elementtype(i32) @y, i32* nonnull elementtype(i32) @x, i32* nonnull elementtype(i32) @y) #3, !srcloc !4
  %1 = call i32 @foo(i32 noundef 10)
  %.not = icmp eq i32 %1, 11
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 202}
