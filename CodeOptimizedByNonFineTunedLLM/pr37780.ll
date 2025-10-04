; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37780.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37780.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fooctz(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @llvm.cttz.i32(i32 %7, i1 true)
  %9 = sext i32 %8 to i64
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i64 [ 32, %5 ], [ %9, %6 ]
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fooctz2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @llvm.cttz.i32(i32 %6, i1 true)
  %8 = sext i32 %7 to i64
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 32, %9 ]
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fooctz3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ugt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @llvm.cttz.i32(i32 %6, i1 true)
  %8 = sext i32 %7 to i64
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 32, %9 ]
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fooclz(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @llvm.ctlz.i32(i32 %7, i1 true)
  %9 = sext i32 %8 to i64
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i64 [ 32, %5 ], [ %9, %6 ]
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fooclz2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @llvm.ctlz.i32(i32 %6, i1 true)
  %8 = sext i32 %7 to i64
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 32, %9 ]
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fooclz3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ugt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @llvm.ctlz.i32(i32 %6, i1 true)
  %8 = sext i32 %7 to i64
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 32, %9 ]
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @fooctz(i32 noundef 0)
  %3 = sext i32 %2 to i64
  %4 = icmp ne i64 %3, 32
  br i1 %4, label %25, label %5

5:                                                ; preds = %0
  %6 = call i32 @fooctz2(i32 noundef 0)
  %7 = sext i32 %6 to i64
  %8 = icmp ne i64 %7, 32
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = call i32 @fooctz3(i32 noundef 0)
  %11 = zext i32 %10 to i64
  %12 = icmp ne i64 %11, 32
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = call i32 @fooclz(i32 noundef 0)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 32
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = call i32 @fooclz2(i32 noundef 0)
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 32
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call i32 @fooclz3(i32 noundef 0)
  %23 = zext i32 %22 to i64
  %24 = icmp ne i64 %23, 32
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %13, %9, %5, %0
  call void @abort() #3
  unreachable

26:                                               ; preds = %21
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
