; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr67037.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr67037.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@badfunc.ntfsW = internal constant [5 x i16] [i16 78, i16 84, i16 70, i16 83, i16 0], align 2
@extfunc = dso_local global i64 (...)* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @badfunc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16* noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [5348 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i16*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i16* %4, i16** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %17 = load i64 (...)*, i64 (...)** @extfunc, align 8
  %18 = call i64 (...) %17()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %38

21:                                               ; preds = %6
  %22 = load i64 (...)*, i64 (...)** @extfunc, align 8
  %23 = call i64 (...) %22()
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to i16*
  store i16* %25, i16** %16, align 8
  %26 = load i16*, i16** %16, align 8
  %27 = icmp ne i16* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %36

29:                                               ; preds = %21
  %30 = load i64 (...)*, i64 (...)** @extfunc, align 8
  %31 = getelementptr inbounds [5348 x i8], [5348 x i8]* %14, i64 0, i64 0
  %32 = bitcast i64 (...)* %30 to i64 (i8*, ...)*
  %33 = call i64 (i8*, ...) %32(i8* noundef %31)
  %34 = load i16*, i16** %12, align 8
  %35 = load i32, i32* %13, align 4
  call void @lstrcpynW(i16* noundef %34, i16* noundef getelementptr inbounds ([5 x i16], [5 x i16]* @badfunc.ntfsW, i64 0, i64 0), i32 noundef %35)
  store i32 1, i32* %15, align 4
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define internal void @lstrcpynW(i16* noundef %0, i16* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %19, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i16*, i16** %5, align 8
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %7, align 4
  %22 = load i16*, i16** %5, align 8
  %23 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %23, i16** %5, align 8
  %24 = load i16, i16* %22, align 2
  %25 = load i16*, i16** %4, align 8
  %26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %26, i16** %4, align 8
  store i16 %24, i16* %25, align 2
  br label %9, !llvm.loop !4

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i16*, i16** %4, align 8
  store i16 0, i16* %31, align 2
  br label %32

32:                                               ; preds = %30, %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i16], align 2
  store i32 0, i32* %1, align 4
  store i64 (...)* bitcast (i64 ()* @f to i64 (...)*), i64 (...)** @extfunc, align 8
  %3 = getelementptr inbounds [6 x i16], [6 x i16]* %2, i64 0, i64 0
  %4 = call i32 @badfunc(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i16* noundef %3, i32 noundef 6)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @f() #0 {
  ret i64 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
