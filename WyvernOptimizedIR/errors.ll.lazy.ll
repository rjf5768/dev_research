; ModuleID = './errors.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/treecc/errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@TreeCCErrorFile = dso_local global %struct._IO_FILE* null, align 8
@TreeCCErrorStripPath = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"line %ld: \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"virtual memory exhausted\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%ld: \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCError(%struct.TreeCCInput* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %.not = icmp eq %struct.TreeCCInput* %0, null
  br i1 %.not, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i64 0, i32 4
  %7 = load i8*, i8** %6, align 8
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i8* [ %7, %5 ], [ null, %8 ]
  %.not1 = icmp eq %struct.TreeCCInput* %0, null
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i64 0, i32 5
  %13 = load i64, i64* %12, align 8
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i64 [ %13, %11 ], [ 0, %14 ]
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @ReportError(i8* noundef %10, i64 noundef %16, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %17)
  %18 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %18)
  %.not2 = icmp eq %struct.TreeCCInput* %0, null
  br i1 %.not2, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i64 0, i32 7
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @ReportError(i8* noundef %0, i64 noundef %1, i8* noundef %2, %struct.__va_list_tag* noundef %3) #0 {
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %.not = icmp eq %struct._IO_FILE* %5, null
  br i1 %.not, label %6, label %8

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** @TreeCCErrorFile, align 8
  br label %8

8:                                                ; preds = %6, %4
  %.not2 = icmp eq i8* %0, null
  br i1 %.not2, label %39, label %9

9:                                                ; preds = %8
  %10 = load i32, i32* @TreeCCErrorStripPath, align 4
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %34, label %11

11:                                               ; preds = %9
  %12 = call i64 @strlen(i8* noundef nonnull %0) #7
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %29, %11
  %.01 = phi i32 [ %13, %11 ], [ %30, %29 ]
  %15 = icmp sgt i32 %.01, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = add nsw i32 %.01, -1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %0, i64 %18
  %20 = load i8, i8* %19, align 1
  %.not4 = icmp eq i8 %20, 47
  br i1 %.not4, label %27, label %21

21:                                               ; preds = %16
  %22 = add nsw i32 %.01, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 92
  br label %27

27:                                               ; preds = %21, %16, %14
  %28 = phi i1 [ false, %16 ], [ false, %14 ], [ %26, %21 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = add nsw i32 %.01, -1
  br label %14, !llvm.loop !4

31:                                               ; preds = %27
  %32 = sext i32 %.01 to i64
  %33 = getelementptr inbounds i8, i8* %0, i64 %32
  br label %34

34:                                               ; preds = %31, %9
  %.0 = phi i8* [ %33, %31 ], [ %0, %9 ]
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %36 = call i32 @fputs(i8* noundef %.0, %struct._IO_FILE* noundef %35) #8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %38 = call i32 @putc(i32 noundef 58, %struct._IO_FILE* noundef %37) #8
  br label %39

39:                                               ; preds = %34, %8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef %1) #8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %43 = call i32 @vfprintf(%struct._IO_FILE* noundef %42, i8* noundef %2, %struct.__va_list_tag* noundef %3) #8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %45 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %44) #8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %47 = call i32 @fflush(%struct._IO_FILE* noundef %46) #8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCErrorOnLine(%struct.TreeCCInput* noundef writeonly %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, ...) #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_start(i8* nonnull %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @ReportError(i8* noundef %1, i64 noundef %2, i8* noundef %3, %struct.__va_list_tag* noundef nonnull %7)
  %8 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_end(i8* %8)
  %.not = icmp eq %struct.TreeCCInput* %0, null
  br i1 %.not, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i64 0, i32 7
  store i32 1, i32* %10, align 8
  br label %11

11:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @TreeCCAbort(%struct.TreeCCInput* noundef readonly %0, i8* noundef %1, ...) #2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %.not = icmp eq %struct.TreeCCInput* %0, null
  br i1 %.not, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i64 0, i32 4
  %7 = load i8*, i8** %6, align 8
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i8* [ %7, %5 ], [ null, %8 ]
  %.not1 = icmp eq %struct.TreeCCInput* %0, null
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i64 0, i32 5
  %13 = load i64, i64* %12, align 8
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i64 [ %13, %11 ], [ 0, %14 ]
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @ReportError(i8* noundef %10, i64 noundef %16, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %17)
  %18 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %18)
  call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCDebug(i64 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 noundef %0) #8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = call i32 @vfprintf(%struct._IO_FILE* noundef %6, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %7) #8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %9) #8
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = call i32 @fflush(%struct._IO_FILE* noundef %12) #8
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #4

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @TreeCCOutOfMemory(%struct.TreeCCInput* noundef readonly %0) #2 {
  %.not = icmp eq %struct.TreeCCInput* %0, null
  br i1 %.not, label %12, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i64 0, i32 2
  %4 = load i8*, i8** %3, align 8
  %.not1 = icmp eq i8* %4, null
  br i1 %.not1, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 @fputs(i8* noundef %7, %struct._IO_FILE* noundef %8) #10
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %10) #11
  br label %12

12:                                               ; preds = %5, %2, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %13) #11
  call void @exit(i32 noundef 1) #9
  unreachable
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
