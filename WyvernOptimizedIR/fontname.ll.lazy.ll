; ModuleID = './fontname.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/fontname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@font_id = dso_local global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"error in matching fontname: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Fontname `%s' ignored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"typewriter\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"courier\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"modern\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"oblique\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"times\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"roman\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Unrecognized font name `%s' ignored.\0A\00", align 1

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @match(i8* noundef readonly %0, i8* noundef %1) #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #4
  %4 = trunc i64 %3 to i32
  br label %5

5:                                                ; preds = %14, %2
  %.01 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %6 = icmp slt i32 %.01, %4
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds i8, i8* %1, i64 %8
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %9) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %17

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !4

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %16, %12
  %.0 = phi i32 [ 1, %12 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fontname(i8* noundef %0) #2 {
  %2 = call i32 (i8*, ...) bitcast (i32 (...)* @re_comp to i32 (i8*, ...)*)(i8* noundef %0) #5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %3

3:                                                ; preds = %1
  %4 = sext i32 %2 to i64
  %5 = inttoptr i64 %4 to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %5) #6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #6
  br label %39

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #5
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %12, label %14

12:                                               ; preds = %10
  %13 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %12, %10
  store i32 5, i32* @font_id, align 4
  br label %38

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #5
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %15
  store i32 4, i32* @font_id, align 4
  br label %37

18:                                               ; preds = %15
  %19 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #5
  %.not4 = icmp eq i32 %19, 0
  br i1 %.not4, label %20, label %22

20:                                               ; preds = %18
  %21 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #5
  %.not5 = icmp eq i32 %21, 0
  br i1 %.not5, label %23, label %22

22:                                               ; preds = %20, %18
  store i32 3, i32* @font_id, align 4
  br label %36

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #5
  %.not6 = icmp eq i32 %24, 0
  br i1 %.not6, label %26, label %25

25:                                               ; preds = %23
  store i32 2, i32* @font_id, align 4
  br label %35

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #5
  %.not7 = icmp eq i32 %27, 0
  br i1 %.not7, label %28, label %30

28:                                               ; preds = %26
  %29 = call i32 (i8*, ...) bitcast (i32 (...)* @re_exec to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #5
  %.not8 = icmp eq i32 %29, 0
  br i1 %.not8, label %31, label %30

30:                                               ; preds = %28, %26
  store i32 2, i32* @font_id, align 4
  br label %34

31:                                               ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0) #6
  br label %34

34:                                               ; preds = %31, %30
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %17
  br label %38

38:                                               ; preds = %37, %14
  br label %39

39:                                               ; preds = %38, %3
  ret i32 0
}

declare dso_local i32 @re_comp(...) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @re_exec(...) #3

attributes #0 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
