; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2002-12-13-MishaTest.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2002-12-13-MishaTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sum(i16* noundef %0, i16* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = trunc i32 %2 to i16
  store i16* %0, i16** %5, align 8
  store i16* %1, i16** %6, align 8
  store i16 %9, i16* %7, align 2
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i16, i16* %7, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i16*, i16** %6, align 8
  %17 = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %17, i16** %6, align 8
  %18 = load i16, i16* %16, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16*, i16** %5, align 8
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = add nsw i32 %22, %19
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %20, align 2
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %10, !llvm.loop !4

28:                                               ; preds = %10
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i16], align 2
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i16 0, i16* %3, align 2
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i16
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x i16], [2 x i16]* %2, i64 0, i64 %12
  store i16 %10, i16* %13, align 2
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %5, !llvm.loop !6

17:                                               ; preds = %5
  %18 = getelementptr inbounds [2 x i16], [2 x i16]* %2, i64 0, i64 0
  %19 = call i32 @sum(i16* noundef %3, i16* noundef %18, i32 noundef 2)
  %20 = load i16, i16* %3, align 2
  %21 = sext i16 %20 to i32
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %21)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

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
