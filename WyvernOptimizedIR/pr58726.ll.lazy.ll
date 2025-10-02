; ModuleID = './pr58726.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58726.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@a = dso_local global i32 0, align 4
@b = dso_local global %union.anon zeroinitializer, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local signext i16 @foo(i16 noundef signext %0) #0 {
  %2 = icmp slt i16 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = sext i16 %0 to i32
  br label %7

5:                                                ; preds = %1
  %6 = load i32, i32* @a, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %4, %3 ], [ %6, %5 ]
  %9 = trunc i32 %8 to i16
  ret i16 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 56374, i32* getelementptr inbounds (%union.anon, %union.anon* @b, i64 0, i32 0), align 4
  br i1 true, label %1, label %3

1:                                                ; preds = %0
  %2 = load i32, i32* getelementptr inbounds (%union.anon, %union.anon* @b, i64 0, i32 0), align 4
  %phi.cast = trunc i32 %2 to i16
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i16 [ %phi.cast, %1 ], [ 0, %3 ]
  %6 = call signext i16 @foo(i16 noundef signext %5)
  %7 = sext i16 %6 to i32
  store i32 %7, i32* @c, align 4
  %.not = icmp eq i16 %6, -9162
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  call void @abort() #3
  unreachable

9:                                                ; preds = %4
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
