; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59221.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59221.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@b = dso_local global i32 0, align 4
@e = dso_local global i16 0, align 2
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %9, %0
  %6 = load i32, i32* @b, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* @b, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @b, align 4
  br label %5, !llvm.loop !4

12:                                               ; preds = %5
  %13 = load i32, i32* @a, align 4
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %2, align 2
  store i32 15, i32* %3, align 4
  %15 = load i16, i16* %2, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i16, i16* %2, align 2
  %20 = sext i16 %19 to i32
  br label %24

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 1, %22
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* @e, align 2
  %27 = load i16, i16* @e, align 2
  %28 = sext i16 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 83647
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  store i32 %35, i32* @d, align 4
  %36 = load i32, i32* @d, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @abort() #2
  unreachable

39:                                               ; preds = %34
  ret i32 0
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
