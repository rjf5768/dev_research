; ModuleID = './pr64756.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64756.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmp = dso_local global i32* null, align 8
@c = dso_local global i32** @tmp, align 8
@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@e = internal global i32** @tmp, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @fn1(i32* noundef nonnull @a)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @fn1(i32* noundef %0) #0 {
  br label %2

2:                                                ; preds = %21, %1
  %3 = load i32, i32* @f, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %18, %5
  %.0 = phi i32 [ 1, %5 ], [ %19, %18 ]
  %7 = icmp sgt i32 %.0, -1
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = load volatile i32, i32* @d, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %12

10:                                               ; preds = %8
  %11 = load volatile i32, i32* @d, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32**, i32*** @c, align 8
  store i32* %0, i32** %13, align 8
  %14 = load i32*, i32** @tmp, align 8
  %.not1 = icmp eq i32* %14, @a
  br i1 %.not1, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  %17 = load i32**, i32*** @e, align 8
  store volatile i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %16
  %19 = add nsw i32 %.0, -1
  br label %6, !llvm.loop !4

20:                                               ; preds = %6
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* @f, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* @f, align 4
  br label %2, !llvm.loop !6

24:                                               ; preds = %2
  ret void
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
