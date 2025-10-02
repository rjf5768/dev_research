; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i8 0, align 1
@d = dso_local global i8 0, align 1
@c = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @fn1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  br label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %10, %11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = trunc i32 %15 to i16
  ret i16 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32* @a, i32** %2, align 8
  store i32* @a, i32** %3, align 8
  store i8 1, i8* @b, align 1
  br label %4

4:                                                ; preds = %34, %0
  %5 = load i8, i8* @b, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp sle i32 %6, 9
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 5
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i8, i8* @d, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ true, %8 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* @c, align 2
  %20 = load i16, i16* @c, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i8, i8* @b, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %23, %16
  %28 = phi i1 [ true, %16 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @a, align 4
  %31 = call signext i16 @fn1(i32 noundef %29, i32 noundef %30)
  %32 = sext i16 %31 to i32
  %33 = load i32*, i32** %3, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i8, i8* @b, align 1
  %36 = add i8 %35, 1
  store i8 %36, i8* @b, align 1
  br label %4, !llvm.loop !4

37:                                               ; preds = %4
  %38 = load i32, i32* @a, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @abort() #2
  unreachable

42:                                               ; preds = %37
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

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
