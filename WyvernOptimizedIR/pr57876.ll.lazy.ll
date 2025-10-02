; ModuleID = './pr57876.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57876.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 1, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32* @c, align 8
@f = dso_local global i32 0, align 4
@e = internal global i32 0, align 4
@j = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@g = dso_local global i32* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %23, %0
  %.0 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %3 = icmp ult i32 %.0, 2
  br i1 %3, label %4, label %25

4:                                                ; preds = %2
  %5 = load i32, i32* @b, align 4
  %6 = sext i32 %5 to i64
  br label %7

7:                                                ; preds = %19, %4
  %storemerge = phi i32 [ 0, %4 ], [ %21, %19 ]
  store i32 %storemerge, i32* @f, align 4
  %8 = icmp slt i32 %storemerge, 8
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = load i32*, i32** @d, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* @j, align 4
  %12 = load i32, i32* @a, align 4
  %13 = mul nsw i32 %12, %11
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @h, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = icmp slt i64 %16, %6
  %18 = zext i1 %17 to i32
  store i32 %18, i32* @e, align 4
  store i32* %1, i32** @g, align 8
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* @f, align 4
  %21 = add nsw i32 %20, 1
  br label %7, !llvm.loop !4

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

25:                                               ; preds = %2
  %26 = load i32, i32* @e, align 4
  %.not = icmp eq i32 %26, 1
  br i1 %.not, label %28, label %27

27:                                               ; preds = %25
  call void @abort() #2
  unreachable

28:                                               ; preds = %25
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
