; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @atoi(i8* noundef %19) #3
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ 46, %21 ]
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %76, %22
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %72, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %68, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %56, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %49, !llvm.loop !4

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %44, !llvm.loop !6

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %39, !llvm.loop !7

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %34, !llvm.loop !8

71:                                               ; preds = %34
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %29, !llvm.loop !9

75:                                               ; preds = %29
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %24, !llvm.loop !10

79:                                               ; preds = %24
  %80 = load i32, i32* %13, align 4
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %80)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
!10 = distinct !{!10, !5}
