; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/printgph.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/printgph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [7 x i8] c"%s.rte\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.gph\00", align 1
@eNum = external dso_local global i32, align 4
@eArray = external dso_local global %struct.ebox*, align 8
@edgeTransition = external dso_local global i32, align 4
@rectArray = external dso_local global %struct.rect*, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"edge %5d %5d   length %8d  capacity %8d\0A\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"edge  node: %5d  xloc: %d  yloc: %d    node: %5d  xloc: %d  yloc: %d   length: %d   capacity: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printgph() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %10 = load i8*, i8** @cktName, align 8
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %10) #3
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %3, align 8
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %15 = load i8*, i8** @cktName, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %15) #3
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %18 = call noalias %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %2, align 8
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %125, %0
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @eNum, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %128

23:                                               ; preds = %19
  %24 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ebox, %struct.ebox* %24, i64 %26
  %28 = getelementptr inbounds %struct.ebox, %struct.ebox* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %124

31:                                               ; preds = %23
  %32 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ebox, %struct.ebox* %32, i64 %34
  %36 = getelementptr inbounds %struct.ebox, %struct.ebox* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ebox, %struct.ebox* %38, i64 %40
  %42 = getelementptr inbounds %struct.ebox, %struct.ebox* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @edgeTransition, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %31
  %48 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.rect, %struct.rect* %48, i64 %50
  %52 = getelementptr inbounds %struct.rect, %struct.rect* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.rect, %struct.rect* %54, i64 %56
  %58 = getelementptr inbounds %struct.rect, %struct.rect* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %53, %59
  store i32 %60, i32* %7, align 4
  br label %75

61:                                               ; preds = %31
  %62 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.rect, %struct.rect* %62, i64 %64
  %66 = getelementptr inbounds %struct.rect, %struct.rect* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.rect, %struct.rect* %68, i64 %70
  %72 = getelementptr inbounds %struct.rect, %struct.rect* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %67, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %61, %47
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ebox, %struct.ebox* %77, i64 %79
  %81 = getelementptr inbounds %struct.ebox, %struct.ebox* %80, i32 0, i32 5
  store i32 %76, i32* %81, align 4
  %82 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ebox, %struct.ebox* %82, i64 %84
  %86 = getelementptr inbounds %struct.ebox, %struct.ebox* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %8, align 4
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef %92)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.rect, %struct.rect* %96, i64 %98
  %100 = getelementptr inbounds %struct.rect, %struct.rect* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.rect, %struct.rect* %102, i64 %104
  %106 = getelementptr inbounds %struct.rect, %struct.rect* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.rect, %struct.rect* %109, i64 %111
  %113 = getelementptr inbounds %struct.rect, %struct.rect* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.rect, %struct.rect* %115, i64 %117
  %119 = getelementptr inbounds %struct.rect, %struct.rect* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), i32 noundef %95, i32 noundef %101, i32 noundef %107, i32 noundef %108, i32 noundef %114, i32 noundef %120, i32 noundef %121, i32 noundef %122)
  br label %124

124:                                              ; preds = %75, %23
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %19, !llvm.loop !4

128:                                              ; preds = %19
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %130 = call i32 @fclose(%struct._IO_FILE* noundef %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %132 = call i32 @fclose(%struct._IO_FILE* noundef %131)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

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
