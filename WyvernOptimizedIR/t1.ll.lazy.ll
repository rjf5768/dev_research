; ModuleID = './t1.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@tabin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".TS\00", align 1
@sargc = dso_local global i32 0, align 4
@sargv = dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"-ms\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-mm\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.m\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-TX\00", align 1
@pr1403 = external dso_local global i32, align 4
@ifile = external dso_local global i8*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@iline = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c".ds f. %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Can't open file\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef bitcast (void ()* @badsig to void (i32)*)) #5
  %4 = call i32 (...) @init_options() #5
  %5 = call i32 @tbl(i32 noundef %0, i8** noundef %1)
  call void @exit(i32 noundef %5) #6
  unreachable
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @badsig() #0 {
  %1 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #5
  call void @exit(i32 noundef 0) #6
  unreachable
}

declare dso_local i32 @init_options(...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tbl(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca [8192 x i8], align 16
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** @tabin, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @tabout, align 8
  call void @setinp(i32 noundef %0, i8** noundef %1)
  br label %6

6:                                                ; preds = %16, %2
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %8 = call i8* @gets1(i8* noundef nonnull %7) #5
  %.not = icmp eq i8* %8, null
  br i1 %.not, label %17, label %9

9:                                                ; preds = %6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %11 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %11) #5
  %13 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %14 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %13) #5
  %.not1 = icmp eq i32 %14, 0
  br i1 %.not1, label %16, label %15

15:                                               ; preds = %9
  call void @tableput() #5
  br label %16

16:                                               ; preds = %15, %9
  br label %6, !llvm.loop !4

17:                                               ; preds = %6
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %19 = call i32 @fclose(%struct._IO_FILE* noundef %18) #5
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @setinp(i32 noundef %0, i8** noundef %1) #4 {
  store i32 %0, i32* @sargc, align 4
  store i8** %1, i8*** @sargv, align 8
  %3 = add nsw i32 %0, -1
  store i32 %3, i32* @sargc, align 4
  %4 = getelementptr inbounds i8*, i8** %1, i64 1
  store i8** %4, i8*** @sargv, align 8
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i32 @swapin()
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

declare dso_local i8* @gets1(i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @prefix(i8* noundef, i8* noundef) #2

declare dso_local void @tableput() #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @swapin() #4 {
  br label %1

1:                                                ; preds = %32, %0
  %2 = load i32, i32* @sargc, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load i8**, i8*** @sargv, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 45
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i1 [ false, %1 ], [ %8, %4 ]
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %9
  %12 = load i32, i32* @sargc, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %62

15:                                               ; preds = %11
  %16 = load i8**, i8*** @sargv, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @match(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17) #5
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %21, label %19

19:                                               ; preds = %15
  %20 = load i8**, i8*** @sargv, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  br label %37

21:                                               ; preds = %15
  %22 = load i8**, i8*** @sargv, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @match(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %23) #5
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %27, label %25

25:                                               ; preds = %21
  %26 = load i8**, i8*** @sargv, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %26, align 8
  br label %37

27:                                               ; preds = %21
  %28 = load i8**, i8*** @sargv, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @match(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef %29) #5
  %.not3 = icmp eq i32 %30, 0
  br i1 %.not3, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* @pr1403, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* @sargc, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* @sargc, align 4
  %35 = load i8**, i8*** @sargv, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  store i8** %36, i8*** @sargv, align 8
  br label %1, !llvm.loop !6

.loopexit:                                        ; preds = %9
  br label %37

37:                                               ; preds = %.loopexit, %25, %19
  %38 = load i32, i32* @sargc, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %62

41:                                               ; preds = %37
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %.not = icmp eq %struct._IO_FILE* %42, %43
  br i1 %.not, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %46 = call i32 @fclose(%struct._IO_FILE* noundef %45) #5
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i8**, i8*** @sargv, align 8
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** @ifile, align 8
  %50 = call noalias %struct._IO_FILE* @fopen(i8* noundef %49, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  store %struct._IO_FILE* %50, %struct._IO_FILE** @tabin, align 8
  store i32 1, i32* @iline, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %52 = load i8*, i8** @ifile, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef %52) #5
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %55 = icmp eq %struct._IO_FILE* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  call void @error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)) #5
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* @sargc, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* @sargc, align 4
  %60 = load i8**, i8*** @sargv, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8** %61, i8*** @sargv, align 8
  br label %62

62:                                               ; preds = %57, %40, %14
  %.0 = phi i32 [ 0, %14 ], [ 0, %40 ], [ 1, %57 ]
  ret i32 %.0
}

declare dso_local i32 @match(i8* noundef, i8* noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local void @error(i8* noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
