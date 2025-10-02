; ModuleID = './parse_settings.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/parse_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [13 x i8] c"LOAD_PENALTY\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"STORE_PENALTY\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SPEED\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"EARLY_SPEED\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NO_FORWARDING\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"INST_MIX\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"QUIET\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"EPOCH_LENGTH\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"KERNEL\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"CPULIMIT\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CONFIGS\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"SHOW_SPEEDUP\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"THREAD_PEN\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"COMMIT_PEN\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"EPOCH_LENGTH_AS_NUM_EPOCHS\00", align 1
@pattern = dso_local global [17 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0)], align 16
@settings = dso_local global [17 x i32] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [24 x i8] c"Could not find file %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_settings(i8* noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(100) i8* @malloc(i64 noundef 100) #5
  br label %3

3:                                                ; preds = %8, %1
  %.0 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %4 = icmp ult i32 %.0, 17
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [17 x i32], [17 x i32]* @settings, i64 0, i64 %6
  store i32 -1, i32* %7, align 4
  br label %8

8:                                                ; preds = %5
  %9 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

10:                                               ; preds = %3
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8* noundef %0) #6
  call void @exit(i32 noundef 1) #7
  unreachable

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %.backedge, %16
  %18 = call i32 @feof(%struct._IO_FILE* noundef nonnull %11) #5
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %43

19:                                               ; preds = %17
  %20 = call i8* @fgets(i8* noundef %2, i32 noundef 100, %struct._IO_FILE* noundef nonnull %11) #5
  %21 = load i8, i8* %2, align 1
  %22 = icmp eq i8 %21, 35
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %.backedge

.backedge:                                        ; preds = %23, %42
  br label %17, !llvm.loop !6

24:                                               ; preds = %19
  %25 = call i8* @strtok(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %26

26:                                               ; preds = %40, %24
  %.1 = phi i32 [ 0, %24 ], [ %41, %40 ]
  %27 = icmp ult i32 %.1, 17
  br i1 %27, label %28, label %42

28:                                               ; preds = %26
  %29 = zext i32 %.1 to i64
  %30 = getelementptr inbounds [17 x i8*], [17 x i8*]* @pattern, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %31, i8* noundef nonnull %2) #8
  %.not1 = icmp eq i32 %32, 0
  br i1 %.not1, label %33, label %40

33:                                               ; preds = %28
  %34 = call i64 @strlen(i8* noundef nonnull %2) #8
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %2, i64 %35
  %37 = call i32 @atoi(i8* noundef nonnull %36) #8
  %38 = zext i32 %.1 to i64
  %39 = getelementptr inbounds [17 x i32], [17 x i32]* @settings, i64 0, i64 %38
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %28
  %41 = add nuw nsw i32 %.1, 1
  br label %26, !llvm.loop !7

42:                                               ; preds = %26
  br label %.backedge

43:                                               ; preds = %17
  call void @free(i8* noundef %2) #5
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }

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
