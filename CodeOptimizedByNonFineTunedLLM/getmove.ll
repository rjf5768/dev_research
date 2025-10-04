; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/getmove.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/getmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@play = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gnugo.dat\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@p = external dso_local global [19 x [19 x i8]], align 16
@.str.5 = private unnamed_addr constant [10 x i8] c"%d %d %d \00", align 1
@mymove = external dso_local global i32, align 4
@mk = external dso_local global i32, align 4
@uk = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@opn = external dso_local global [9 x i32], align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@pass = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"illegal move !\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"your move? \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @getmove(i8* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* @play, align 4
  br label %116

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %42, %18
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 19
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 19
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %31, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 noundef %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %24, !llvm.loop !4

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %20, !llvm.loop !6

45:                                               ; preds = %20
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %47 = load i32, i32* @mymove, align 4
  %48 = load i32, i32* @mk, align 4
  %49 = load i32, i32* @uk, align 4
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 noundef %47, i32 noundef %48, i32 noundef %49)
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %61, %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 9
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* @opn, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 noundef %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %51, !llvm.loop !7

64:                                               ; preds = %51
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %66 = call i32 @fclose(%struct._IO_FILE* noundef %65)
  store i32 -1, i32* @play, align 4
  br label %115

67:                                               ; preds = %14
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strcmp(i8* noundef %68, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @pass, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @pass, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 -1, i32* %74, align 4
  br label %114

75:                                               ; preds = %67
  store i32 0, i32* @pass, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @getij(i8* noundef %76, i32* noundef %77, i32* noundef %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %84
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [19 x i8], [19 x i8]* %85, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %81
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @suicide(i32 noundef %95, i32 noundef %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %93, %81, %75
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %102 = call i32 @feof(%struct._IO_FILE* noundef %101) #6
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  call void @exit(i32 noundef 1) #7
  unreachable

105:                                              ; preds = %100
  %106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %107 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef %108)
  %110 = load i8*, i8** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %6, align 8
  call void @getmove(i8* noundef %110, i32* noundef %111, i32* noundef %112)
  br label %113

113:                                              ; preds = %105, %93
  br label %114

114:                                              ; preds = %113, %71
  br label %115

115:                                              ; preds = %114, %64
  br label %116

116:                                              ; preds = %115, %13
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @getij(i8* noundef, i32* noundef, i32* noundef) #2

declare dso_local i32 @suicide(i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
