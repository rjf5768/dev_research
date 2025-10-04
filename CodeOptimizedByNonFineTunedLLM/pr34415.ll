; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34415.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34415.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Bbb:\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @foo(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 97
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 122
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 97
  %18 = add nsw i32 %17, 65
  br label %21

19:                                               ; preds = %12, %6
  %20 = load i32, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %18, %15 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 66
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** %2, align 8
  store i8* %26, i8** %3, align 8
  br label %43

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 65
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i8*, i8** %2, align 8
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %35, %30
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %2, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %32, label %40, !llvm.loop !4

40:                                               ; preds = %35
  br label %42

41:                                               ; preds = %27
  br label %48

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %6

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i8*, i8** %2, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 58
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  store i8* %57, i8** %2, align 8
  br label %58

58:                                               ; preds = %56, %51, %48
  %59 = load i8*, i8** %2, align 8
  ret i8* %59
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @foo(i8* noundef %3)
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 2
  %7 = icmp ne i8* %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
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
