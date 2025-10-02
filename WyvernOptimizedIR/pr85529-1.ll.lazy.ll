; ModuleID = './pr85529-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85529-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@c = dso_local global i32 1, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@s = dso_local global %struct.S zeroinitializer, align 4
@g = internal global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @foo(i8 noundef signext %0, i32 noundef %1) #0 {
  %3 = icmp slt i8 %0, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = sext i8 %0 to i32
  br label %9

6:                                                ; preds = %2
  %7 = sext i8 %0 to i32
  %8 = shl i32 %7, %1
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  br label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @e, align 4
  %.not2 = icmp eq i32 %4, 0
  br i1 %.not2, label %5, label %8

5:                                                ; preds = %3
  %6 = load i32, i32* @f, align 4
  %7 = icmp ne i32 %6, 0
  %phi.cast = zext i1 %7 to i8
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i8 [ 1, %3 ], [ %phi.cast, %5 ]
  br label %10

10:                                               ; preds = %8, %2
  %.0 = phi i8 [ %9, %8 ], [ -83, %2 ]
  br label %11

11:                                               ; preds = %23, %10
  %.1 = phi i8 [ %.0, %10 ], [ %.2, %23 ]
  %12 = load i32, i32* @b, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load volatile i32, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i64 0, i32 0), align 4
  %16 = call signext i8 @foo(i8 noundef signext %.1, i32 noundef 2)
  %17 = icmp slt i8 %.1, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @g, align 4
  %20 = trunc i32 %19 to i8
  %sext = shl i32 %19, 24
  %21 = ashr exact i32 %sext, 24
  store i32 %21, i32* @c, align 4
  br label %22

22:                                               ; preds = %18, %14
  %.2 = phi i8 [ %20, %18 ], [ %.1, %14 ]
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @b, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @b, align 4
  br label %11, !llvm.loop !4

26:                                               ; preds = %11
  %27 = load i32, i32* @c, align 4
  %.not1 = icmp eq i32 %27, 1
  br i1 %.not1, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #3
  unreachable

29:                                               ; preds = %26
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
