; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/8b10b/testbench.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/8b10b/testbench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%8.8X\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @runTestbench(i32 noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = mul i64 %18, 2
  %20 = call noalias i8* @malloc(i64 noundef %19) #3
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %9, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call noalias %struct._IO_FILE* @fopen(i8* noundef %27, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %10, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %34 = call i64 @fread(i8* noundef %30, i64 noundef %32, i64 noundef 4, %struct._IO_FILE* noundef %33)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %36 = call i32 @fclose(%struct._IO_FILE* noundef %35)
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %65, %3
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, 255
  %54 = load i32, i32* %13, align 4
  %55 = lshr i32 %54, 8
  %56 = call i32 @calc(i32 noundef %53, i32 noundef %55)
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %42, !llvm.loop !4

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %37, !llvm.loop !6

68:                                               ; preds = %37
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %69, %struct._IO_FILE** %11, align 8
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %83, %68
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %13, align 4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 noundef %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 128
  store i32 %85, i32* %14, align 4
  br label %70, !llvm.loop !7

86:                                               ; preds = %70
  %87 = load i32*, i32** %7, align 8
  %88 = bitcast i32* %87 to i8*
  call void @free(i8* noundef %88) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @calc(i32 noundef, i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
