; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71631.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71631.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@b = dso_local global i32 1, align 4
@c = dso_local global i32 1, align 4
@v = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"AB\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** %2, align 8
  %6 = load i8, i8* %4, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  store volatile i8 %10, i8* @v, align 1
  br label %3, !llvm.loop !4

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  store volatile i32 1, i32* %2, align 4
  store volatile i32 1, i32* %3, align 4
  %13 = load i32, i32* @a, align 4
  %14 = sdiv i32 1, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ult i32 1, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 2, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 3, %20
  store i32 %21, i32* %7, align 4
  %22 = load volatile i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %0
  %25 = load i32, i32* @b, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %0
  %28 = phi i1 [ false, %0 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @c, align 4
  %31 = icmp eq i32 1, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load volatile i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 -1, %36
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %11, align 2
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i16, i16* %11, align 2
  %44 = sext i16 %43 to i32
  %45 = mul nsw i32 %42, %44
  %46 = mul nsw i32 %41, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %12, align 2
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %27
  call void @foo(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i16, i16* %12, align 2
  %53 = sext i16 %52 to i32
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call void @abort() #2
  unreachable

56:                                               ; preds = %51
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
