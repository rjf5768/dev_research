; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/nbench/sysspec.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/nbench/sysspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_align = external dso_local global i32, align 4
@mem_array_ents = external dso_local global i32, align 4
@mem_array = external dso_local global [2 x [20 x i64]], align 16
@.str = private unnamed_addr constant [29 x i8] c"ERROR CONDITION\0AContext: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Code: %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @AllocateMemory(i64 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @global_align, align 4
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 2, %11
  %13 = add i64 %9, %12
  %14 = call noalias i8* @malloc(i64 noundef %13) #5
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  store i32 1, i32* %18, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %7, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* @global_align, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @AddMemArray(i64 noundef %27, i64 noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  store i32 2, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %3, align 8
  br label %80

35:                                               ; preds = %21
  %36 = load i32, i32* @global_align, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = urem i64 %39, 2
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %42, %38
  br label %69

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %53, %46
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @global_align, align 4
  %50 = sext i32 %49 to i64
  %51 = urem i64 %48, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %47, !llvm.loop !4

56:                                               ; preds = %47
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @global_align, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = urem i64 %57, %60
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32, i32* @global_align, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i64, i64* %8, align 8
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @AddMemArray(i64 noundef %72, i64 noundef %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32*, i32** %5, align 8
  store i32 2, i32* %77, align 4
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %3, align 8
  br label %80

80:                                               ; preds = %78, %33
  %81 = load i8*, i8** %3, align 8
  ret i8* %81
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AddMemArray(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @mem_array_ents, align 4
  %7 = icmp sge i32 %6, 20
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @mem_array_ents, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0), i64 0, i64 %12
  store i64 %10, i64* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @mem_array_ents, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1), i64 0, i64 %16
  store i64 %14, i64* %17, align 8
  %18 = load i32, i32* @mem_array_ents, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @mem_array_ents, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %9, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeMemory(i8* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @RemoveMemArray(i64 noundef %9, i64* noundef %6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  store i32 3, i32* %13, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  call void @free(i8* noundef %17) #5
  %18 = load i32*, i32** %4, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @RemoveMemArray(i64 noundef %0, i64* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %54, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @mem_array_ents, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1), i64 0, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0), i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %5, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %31, %19
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @mem_array_ents, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0), i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0), i64 0, i64 %38
  store i64 %36, i64* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1), i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1), i64 0, i64 %46
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %26, !llvm.loop !6

50:                                               ; preds = %26
  %51 = load i32, i32* @mem_array_ents, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* @mem_array_ents, align 4
  store i32 0, i32* %3, align 4
  br label %58

53:                                               ; preds = %12
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %8, !llvm.loop !7

57:                                               ; preds = %8
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @MoveMemory(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 %9, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitMemArray() #0 {
  store i32 0, i32* @mem_array_ents, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CreateFile(i8* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReportError(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef %5)
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef %7)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @ErrorExit() #0 {
  call void @exit(i32 noundef 1) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @StartStopwatch() #0 {
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @StopStopwatch(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  ret i64 1000
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TicksToSecs(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @TicksToFracSecs(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  ret double 0.000000e+00
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
