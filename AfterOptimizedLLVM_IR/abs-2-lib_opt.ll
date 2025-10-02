; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/abs-2-lib.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/abs-2-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind readnone uwtable willreturn
define dso_local i32 @abs(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = sub nsw i32 0, %8
  br label %12

10:                                               ; preds = %4
  %11 = load i32, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %9, %7 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind readnone uwtable willreturn
define dso_local i64 @labs(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  br label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3
  %5 = load i64, i64* %2, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = sub nsw i64 0, %8
  br label %12

10:                                               ; preds = %4
  %11 = load i64, i64* %2, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i64 [ %9, %7 ], [ %11, %10 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind readnone uwtable willreturn
define dso_local i64 @llabs(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  br label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3
  %5 = load i64, i64* %2, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = sub nsw i64 0, %8
  br label %12

10:                                               ; preds = %4
  %11 = load i64, i64* %2, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i64 [ %9, %7 ], [ %11, %10 ]
  ret i64 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @imaxabs(i64 noundef %0) #1 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  br label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3
  %5 = load i64, i64* %2, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = sub nsw i64 0, %8
  br label %12

10:                                               ; preds = %4
  %11 = load i64, i64* %2, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i64 [ %9, %7 ], [ %11, %10 ]
  ret i64 %13
}

attributes #0 = { noinline nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
