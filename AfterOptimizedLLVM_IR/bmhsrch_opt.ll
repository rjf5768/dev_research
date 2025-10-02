; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-stringsearch/bmhsrch.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-stringsearch/bmhsrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pat = internal global i8* null, align 8
@patlen = internal global i32 0, align 4
@skip = internal global [256 x i32] zeroinitializer, align 16
@skip2 = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bmh_init(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** @pat, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* noundef %6) #2
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @patlen, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %17, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 255
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* @patlen, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %15
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %9, !llvm.loop !4

20:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @patlen, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32, i32* @patlen, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i8*, i8** @pat, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %35
  store i32 %29, i32* %36, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %21, !llvm.loop !6

40:                                               ; preds = %21
  %41 = load i8*, i8** @pat, align 8
  %42 = load i32, i32* @patlen, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %49
  store i32 32767, i32* %50, align 4
  %51 = load i32, i32* @patlen, align 4
  store i32 %51, i32* @skip2, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %72, %40
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @patlen, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i8*, i8** @pat, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load i32, i32* @patlen, align 4
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* @skip2, align 4
  br label %71

71:                                               ; preds = %66, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %52, !llvm.loop !7

75:                                               ; preds = %52
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @bmh_search(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @patlen, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %85

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %84, %16
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %22, !llvm.loop !8

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 32767, %37
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* null, i8** %3, align 8
  br label %85

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 32767
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @patlen, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %72, %41
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8*, i8** @pat, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %62, %68
  br label %70

70:                                               ; preds = %56, %52
  %71 = phi i1 [ false, %52 ], [ %69, %56 ]
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  br label %52, !llvm.loop !9

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8
  store i8* %77, i8** %3, align 8
  br label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @skip2, align 4
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i8* null, i8** %3, align 8
  br label %85

84:                                               ; preds = %78
  br label %21

85:                                               ; preds = %83, %76, %40, %15
  %86 = load i8*, i8** %3, align 8
  ret i8* %86
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
