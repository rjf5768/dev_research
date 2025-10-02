; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20120427-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20120427-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sreal = type { i32, i32 }

@a = dso_local global [4 x %struct.sreal] [%struct.sreal zeroinitializer, %struct.sreal { i32 1, i32 0 }, %struct.sreal { i32 0, i32 1 }, %struct.sreal { i32 1, i32 1 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sreal_compare(%struct.sreal* noundef %0, %struct.sreal* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sreal*, align 8
  %5 = alloca %struct.sreal*, align 8
  store %struct.sreal* %0, %struct.sreal** %4, align 8
  store %struct.sreal* %1, %struct.sreal** %5, align 8
  %6 = load %struct.sreal*, %struct.sreal** %4, align 8
  %7 = getelementptr inbounds %struct.sreal, %struct.sreal* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sreal*, %struct.sreal** %5, align 8
  %10 = getelementptr inbounds %struct.sreal, %struct.sreal* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.sreal*, %struct.sreal** %4, align 8
  %16 = getelementptr inbounds %struct.sreal, %struct.sreal* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sreal*, %struct.sreal** %5, align 8
  %19 = getelementptr inbounds %struct.sreal, %struct.sreal* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %42

23:                                               ; preds = %14
  %24 = load %struct.sreal*, %struct.sreal** %4, align 8
  %25 = getelementptr inbounds %struct.sreal, %struct.sreal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sreal*, %struct.sreal** %5, align 8
  %28 = getelementptr inbounds %struct.sreal, %struct.sreal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load %struct.sreal*, %struct.sreal** %4, align 8
  %34 = getelementptr inbounds %struct.sreal, %struct.sreal* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sreal*, %struct.sreal** %5, align 8
  %37 = getelementptr inbounds %struct.sreal, %struct.sreal* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %31, %22, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %58, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 3
  br i1 %6, label %7, label %61

7:                                                ; preds = %4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %54, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %57

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %17
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %20
  %22 = call i32 @sreal_compare(%struct.sreal* noundef %18, %struct.sreal* noundef %21)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  call void @abort() #2
  unreachable

25:                                               ; preds = %15, %11
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %31
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %34
  %36 = call i32 @sreal_compare(%struct.sreal* noundef %32, %struct.sreal* noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  call void @abort() #2
  unreachable

39:                                               ; preds = %29, %25
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %45
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %48
  %50 = call i32 @sreal_compare(%struct.sreal* noundef %46, %struct.sreal* noundef %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  call void @abort() #2
  unreachable

53:                                               ; preds = %43, %39
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %8, !llvm.loop !4

57:                                               ; preds = %8
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %4, !llvm.loop !6

61:                                               ; preds = %4
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
!6 = distinct !{!6, !5}
