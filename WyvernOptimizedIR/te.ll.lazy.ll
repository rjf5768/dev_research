; ModuleID = './te.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/te.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"\0A%s: line %d: %s\0A\00", align 1
@ifile = external dso_local global i8*, align 8
@iline = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"tbl quits\0A\00", align 1
@tabin = external dso_local global %struct._IO_FILE*, align 8
@linstart = external dso_local global i32, align 4
@backup = dso_local global [500 x i8] zeroinitializer, align 16
@backp = dso_local global i8* getelementptr inbounds ([500 x i8], [500 x i8]* @backup, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"too much backup\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @error(i8* noundef %0) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** @ifile, align 8
  %4 = load i32, i32* @iline, align 4
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef %0) #5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %6) #6
  call void @exit(i32 noundef 1) #7
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @gets1(i8* noundef %0) #3 {
  %2 = load i32, i32* @iline, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @iline, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %5 = call i8* @fgets(i8* noundef %0, i32 noundef 8192, %struct._IO_FILE* noundef %4) #8
  br label %6

6:                                                ; preds = %12, %1
  %.02 = phi i8* [ %5, %1 ], [ %14, %12 ]
  %7 = icmp eq i8* %.02, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = call i32 @swapin() #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %46

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %14 = call i8* @fgets(i8* noundef %0, i32 noundef 8192, %struct._IO_FILE* noundef %13) #8
  br label %6, !llvm.loop !4

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %18, %15
  %.01 = phi i8* [ %0, %15 ], [ %19, %18 ]
  %17 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %17, 0
  br i1 %.not, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %16, !llvm.loop !6

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, i8* %.01, i64 -1
  %22 = load i8, i8* %21, align 1
  %23 = icmp eq i8 %22, 10
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, i8* %.01, i64 -2
  store i8 0, i8* %21, align 1
  br label %26

26:                                               ; preds = %24, %20
  %.1 = phi i8* [ %25, %24 ], [ %21, %20 ]
  br label %27

27:                                               ; preds = %35, %26
  %.03 = phi i32 [ 0, %26 ], [ %36, %35 ]
  %.2 = phi i8* [ %.1, %26 ], [ %37, %35 ]
  %28 = load i8, i8* %.2, align 1
  %29 = icmp eq i8 %28, 92
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = icmp ugt i8* %.2, %.02
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i1 [ false, %27 ], [ %31, %30 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = add nuw nsw i32 %.03, 1
  %37 = getelementptr inbounds i8, i8* %.2, i64 -1
  br label %27, !llvm.loop !7

38:                                               ; preds = %32
  %39 = load i32, i32* @linstart, align 4
  %.not5 = icmp eq i32 %39, 0
  br i1 %.not5, label %45, label %40

40:                                               ; preds = %38
  %41 = and i32 %.03, 1
  %.not6 = icmp eq i32 %41, 0
  br i1 %.not6, label %45, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds i8, i8* %.2, i64 1
  %44 = call i8* @gets1(i8* noundef nonnull %43)
  br label %45

45:                                               ; preds = %42, %40, %38
  br label %46

46:                                               ; preds = %45, %11
  %.0 = phi i8* [ null, %11 ], [ %.02, %45 ]
  ret i8* %.0
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @swapin() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @un1getc(i32 noundef %0) #3 {
  %2 = icmp eq i32 %0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load i32, i32* @iline, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* @iline, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = trunc i32 %0 to i8
  %8 = load i8*, i8** @backp, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %9, i8** @backp, align 8
  store i8 %7, i8* %8, align 1
  %10 = load i8*, i8** @backp, align 8
  %.not = icmp ult i8* %10, getelementptr inbounds ([500 x i8], [500 x i8]* @backup, i64 1, i64 0)
  br i1 %.not, label %12, label %11

11:                                               ; preds = %6
  call void @error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get1char() #3 {
  %1 = load i8*, i8** @backp, align 8
  %2 = icmp ugt i8* %1, getelementptr inbounds ([500 x i8], [500 x i8]* @backup, i64 0, i64 0)
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i8*, i8** @backp, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 -1
  store i8* %5, i8** @backp, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  br label %11

8:                                                ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %10 = call i32 @getc(%struct._IO_FILE* noundef %9) #8
  br label %11

11:                                               ; preds = %8, %3
  %.0 = phi i32 [ %7, %3 ], [ %10, %8 ]
  %12 = icmp eq i32 %.0, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = call i32 @swapin() #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %19 = call i32 @getc(%struct._IO_FILE* noundef %18) #8
  br label %20

20:                                               ; preds = %17, %11
  %.1 = phi i32 [ %19, %17 ], [ %.0, %11 ]
  %21 = icmp eq i32 %.1, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i32, i32* @iline, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @iline, align 4
  br label %25

25:                                               ; preds = %22, %20
  ret i32 %.1
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
