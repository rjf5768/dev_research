; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/SignlessTypes/factor.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SignlessTypes/factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plane = internal global [50 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %100, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp ult i32 %3, 50
  br i1 %4, label %5, label %103

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %7
  store i8 0, i8* %8, align 1
  %9 = load i32, i32* %1, align 4
  %10 = urem i32 %9, 17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %13 = load i32, i32* %1, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = or i32 %17, 128
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %15, align 1
  br label %20

20:                                               ; preds = %12, %5
  %21 = load i32, i32* %1, align 4
  %22 = urem i32 %21, 13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32, i32* %1, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = or i32 %29, 64
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  br label %32

32:                                               ; preds = %24, %20
  %33 = load i32, i32* %1, align 4
  %34 = urem i32 %33, 11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %1, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = or i32 %41, 32
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 1
  br label %44

44:                                               ; preds = %36, %32
  %45 = load i32, i32* %1, align 4
  %46 = urem i32 %45, 7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %1, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = or i32 %53, 16
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  br label %56

56:                                               ; preds = %48, %44
  %57 = load i32, i32* %1, align 4
  %58 = urem i32 %57, 5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* %1, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = or i32 %65, 8
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  br label %68

68:                                               ; preds = %60, %56
  %69 = load i32, i32* %1, align 4
  %70 = urem i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* %1, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = or i32 %77, 4
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %75, align 1
  br label %80

80:                                               ; preds = %72, %68
  %81 = load i32, i32* %1, align 4
  %82 = urem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32, i32* %1, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = or i32 %89, 2
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  br label %92

92:                                               ; preds = %84, %80
  %93 = load i32, i32* %1, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = or i32 %97, 1
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %95, align 1
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %1, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %1, align 4
  br label %2, !llvm.loop !4

103:                                              ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @fill()
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp ult i32 %8, 50
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = and i32 %15, 16
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %19)
  br label %21

21:                                               ; preds = %18, %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %7, !llvm.loop !6

25:                                               ; preds = %7
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
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
