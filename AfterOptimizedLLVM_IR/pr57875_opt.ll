; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57875.c'
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
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i32, i32* @i, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = load i32, i32* @d, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @c, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 2, i32* @f, align 4
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, i32* @f, align 4
  %14 = xor i32 %13, 0
  store i32 %14, i32* @f, align 4
  %15 = load i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @e, i64 0, i64 0), align 1
  %16 = sext i8 %15 to i32
  %17 = and i32 %16, %14
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @e, i64 0, i64 0), align 1
  br label %19

19:                                               ; preds = %12, %5
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* @i, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @i, align 4
  br label %2, !llvm.loop !4

23:                                               ; preds = %2
  %24 = load i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @e, i64 0, i64 0), align 1
  %25 = sext i8 %24 to i32
  %26 = ashr i32 %25, 1
  %27 = and i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @b, align 4
  %31 = load i32, i32* @b, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  call void @abort() #2
  unreachable

34:                                               ; preds = %23
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
