; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2008-04-20-LoopBug2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2008-04-20-LoopBug2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 3, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sub i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %6, label %23, !llvm.loop !4

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 5, i32* %8, align 16
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  store i32 6, i32* %9, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  store i32 7, i32* %10, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  store i32 8, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  call void @foo(i32 noundef %12, i32* noundef %13)
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4, !llvm.loop !6

17:                                               ; preds = %4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 5, i32* %18, align 16
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  store i32 6, i32* %19, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  store i32 7, i32* %20, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  store i32 8, i32* %21, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  call void @foo(i32 noundef -1, i32* noundef %22)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
