; ModuleID = './closeFiles.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/closeFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@closeFiles.name = internal global [11 x i8] c"closeFiles\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"inputFile\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/closeFiles.c\00", align 1
@__PRETTY_FUNCTION__.closeFiles = private unnamed_addr constant [40 x i8] c"void closeFiles(FILE *, FILE *, FILE *)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"outputFile\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"metricFile\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"error closing input file\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"error closing output file\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"error closing metric file\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @closeFiles(%struct._IO_FILE* noundef %0, %struct._IO_FILE* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.closeFiles, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %.not1 = icmp eq %struct._IO_FILE* %1, null
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.closeFiles, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %.not2 = icmp eq %struct._IO_FILE* %2, null
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %9
  br label %12

11:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.closeFiles, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %0) #4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %12
  call void @errorMessage(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %15

15:                                               ; preds = %14, %12
  %16 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %1) #4
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %18, label %17

17:                                               ; preds = %15
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %18

18:                                               ; preds = %17, %15
  %19 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %2) #4
  %.not5 = icmp eq i32 %19, 0
  br i1 %.not5, label %21, label %20

20:                                               ; preds = %18
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %21

21:                                               ; preds = %20, %18
  ret void

UnifiedUnreachableBlock:                          ; preds = %11, %8, %5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
