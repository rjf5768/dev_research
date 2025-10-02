; ModuleID = './pr57875.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57875.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@e = dso_local global [1 x i8] zeroinitializer, align 1
@a = dso_local global [1 x i32] zeroinitializer, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %15, %0
  %2 = load i32, i32* @i, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  %5 = load i32, i32* @d, align 4
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %6, label %14

6:                                                ; preds = %4
  %7 = load i32, i32* @c, align 4
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %8, label %9

8:                                                ; preds = %6
  store i32 2, i32* @f, align 4
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i32, i32* @f, align 4
  %11 = load i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @e, i64 0, i64 0), align 1
  %12 = trunc i32 %10 to i8
  %13 = and i8 %11, %12
  store i8 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @e, i64 0, i64 0), align 1
  br label %14

14:                                               ; preds = %9, %4
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* @i, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @i, align 4
  br label %1, !llvm.loop !4

18:                                               ; preds = %1
  %19 = load i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @e, i64 0, i64 0), align 1
  %20 = lshr i8 %19, 1
  %21 = and i8 %20, 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @b, align 4
  %.not = icmp eq i32 %24, 0
  br i1 %.not, label %26, label %25

25:                                               ; preds = %18
  call void @abort() #2
  unreachable

26:                                               ; preds = %18
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
