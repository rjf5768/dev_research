; ModuleID = './printgph.ll'
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
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %3 = load i8*, i8** @cktName, align 8
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %2, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %3) #3
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #3
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %8 = load i8*, i8** @cktName, align 8
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %7, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %8) #3
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %12

12:                                               ; preds = %72, %0
  %.01 = phi i32 [ 1, %0 ], [ %73, %72 ]
  %13 = load i32, i32* @eNum, align 4
  %.not = icmp sgt i32 %.01, %13
  br i1 %.not, label %74, label %14

14:                                               ; preds = %12
  %15 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds %struct.ebox, %struct.ebox* %15, i64 %16, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %14
  %21 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds %struct.ebox, %struct.ebox* %21, i64 %22, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds %struct.ebox, %struct.ebox* %21, i64 %25, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @edgeTransition, align 4
  %.not2 = icmp sgt i32 %.01, %28
  br i1 %.not2, label %38, label %29

29:                                               ; preds = %20
  %30 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %31 = sext i32 %27 to i64
  %32 = getelementptr inbounds %struct.rect, %struct.rect* %30, i64 %31, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %24 to i64
  %35 = getelementptr inbounds %struct.rect, %struct.rect* %30, i64 %34, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  br label %47

38:                                               ; preds = %20
  %39 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %40 = sext i32 %27 to i64
  %41 = getelementptr inbounds %struct.rect, %struct.rect* %39, i64 %40, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %24 to i64
  %44 = getelementptr inbounds %struct.rect, %struct.rect* %39, i64 %43, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  br label %47

47:                                               ; preds = %38, %29
  %.0 = phi i32 [ %37, %29 ], [ %46, %38 ]
  %48 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %49 = zext i32 %.01 to i64
  %50 = getelementptr inbounds %struct.ebox, %struct.ebox* %48, i64 %49, i32 5
  store i32 %.0, i32* %50, align 4
  %51 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %52 = zext i32 %.01 to i64
  %53 = getelementptr inbounds %struct.ebox, %struct.ebox* %51, i64 %52, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 noundef %24, i32 noundef %27, i32 noundef %.0, i32 noundef %54) #3
  %56 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %57 = sext i32 %24 to i64
  %58 = getelementptr inbounds %struct.rect, %struct.rect* %56, i64 %57, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %24 to i64
  %61 = getelementptr inbounds %struct.rect, %struct.rect* %56, i64 %60, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %64 = sext i32 %27 to i64
  %65 = getelementptr inbounds %struct.rect, %struct.rect* %63, i64 %64, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %27 to i64
  %68 = getelementptr inbounds %struct.rect, %struct.rect* %63, i64 %67, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), i32 noundef %24, i32 noundef %59, i32 noundef %62, i32 noundef %27, i32 noundef %66, i32 noundef %69, i32 noundef %.0, i32 noundef %54) #3
  br label %71

71:                                               ; preds = %47, %14
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.01, 1
  br label %12, !llvm.loop !4

74:                                               ; preds = %12
  %75 = call i32 @fclose(%struct._IO_FILE* noundef %11) #3
  %76 = call i32 @fclose(%struct._IO_FILE* noundef %6) #3
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
