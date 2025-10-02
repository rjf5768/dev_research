; ModuleID = './pr58662.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58662.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @a, align 4
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @foo(i32 noundef %3, i16 noundef signext -30000)
  store i32 %4, i32* @d, align 4
  %5 = srem i32 %4, 14
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @c, align 4
  %8 = icmp ne i32 %7, 0
  %phi.cast = zext i1 %8 to i32
  br label %9

9:                                                ; preds = %6, %0
  %10 = phi i32 [ 0, %0 ], [ %phi.cast, %6 ]
  store volatile i32 %10, i32* @b, align 4
  %11 = load volatile i32, i32* @b, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %9
  call void @abort() #3
  unreachable

13:                                               ; preds = %9
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @foo(i32 noundef %0, i16 noundef signext %1) #1 {
  %3 = sext i16 %1 to i32
  %4 = sdiv i32 %0, %3
  ret i32 %4
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
