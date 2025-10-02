; ModuleID = './files.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@finput = dso_local global %struct._IO_FILE* null, align 8
@foutput = dso_local global %struct._IO_FILE* null, align 8
@fdefines = dso_local global %struct._IO_FILE* null, align 8
@ftable = dso_local global %struct._IO_FILE* null, align 8
@fattrs = dso_local global %struct._IO_FILE* null, align 8
@fguard = dso_local global %struct._IO_FILE* null, align 8
@faction = dso_local global %struct._IO_FILE* null, align 8
@fparser = dso_local global %struct._IO_FILE* null, align 8
@fixed_outfiles = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/tmp/b.\00", align 1
@spec_outfile = dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".tab\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_tab\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"y.y\00", align 1
@infile = dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c".y\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@verboseflag = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c".output\00", align 1
@outfile = dso_local global i8* null, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@definesflag = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@defsfile = dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"act.XXXXXX\00", align 1
@actfile = dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"attrs.XXXXXX\00", align 1
@tmpattrsfile = dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"tab.XXXXXX\00", align 1
@tmptabfile = dso_local global i8* null, align 8
@tabfile = dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c".stype.h\00", align 1
@attrsfile = dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c".guard.c\00", align 1
@guardfile = dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"BISON_HAIRY\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"parse.y.in\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"bison: \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stringappend(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef readonly %2) #0 {
  br label %4

4:                                                ; preds = %6, %3
  %.03 = phi i8* [ %2, %3 ], [ %7, %6 ]
  %.0 = phi i32 [ 0, %3 ], [ %8, %6 ]
  %5 = load i8, i8* %.03, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %9, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %.03, i64 1
  %8 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

9:                                                ; preds = %4
  %10 = add nsw i32 %.0, %1
  %11 = add nsw i32 %10, 1
  %12 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %11) #7
  br label %13

13:                                               ; preds = %17, %9
  %.14 = phi i8* [ %12, %9 ], [ %18, %17 ]
  %.01 = phi i8* [ %0, %9 ], [ %19, %17 ]
  %.1 = phi i32 [ 0, %9 ], [ %20, %17 ]
  %14 = icmp slt i32 %.1, %1
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load i8, i8* %.01, align 1
  store i8 %16, i8* %.14, align 1
  br label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, i8* %.14, i64 1
  %19 = getelementptr inbounds i8, i8* %.01, i64 1
  %20 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !6

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %24, %21
  %.2 = phi i8* [ %.14, %21 ], [ %25, %24 ]
  %.12 = phi i8* [ %2, %21 ], [ %26, %24 ]
  %23 = load i8, i8* %.12, align 1
  store i8 %23, i8* %.2, align 1
  %.not5 = icmp eq i8 %23, 0
  br i1 %.not5, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, i8* %.2, i64 1
  %26 = getelementptr inbounds i8, i8* %.12, i64 1
  br label %22, !llvm.loop !7

27:                                               ; preds = %22
  ret i8* %12
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @openfiles() #0 {
  %1 = load i8*, i8** @spec_outfile, align 8
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %28, label %2

2:                                                ; preds = %0
  %3 = load i8*, i8** @spec_outfile, align 8
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #8
  %5 = trunc i64 %4 to i32
  %sext15 = shl i64 %4, 32
  %6 = ashr exact i64 %sext15, 32
  %7 = getelementptr inbounds i8, i8* %3, i64 %6
  %8 = getelementptr inbounds i8, i8* %7, i64 -2
  %9 = call i32 @strcmp(i8* noundef nonnull %8, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8
  %.not16 = icmp eq i32 %9, 0
  br i1 %.not16, label %10, label %12

10:                                               ; preds = %2
  %11 = add nsw i32 %5, -2
  br label %12

12:                                               ; preds = %10, %2
  %.05 = phi i32 [ %5, %2 ], [ %11, %10 ]
  %13 = sext i32 %.05 to i64
  %14 = getelementptr inbounds i8, i8* %3, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -4
  %16 = call i32 @strcmp(i8* noundef nonnull %15, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8
  %.not17 = icmp eq i32 %16, 0
  br i1 %.not17, label %17, label %19

17:                                               ; preds = %12
  %18 = add nsw i32 %.05, -4
  br label %27

19:                                               ; preds = %12
  %20 = sext i32 %.05 to i64
  %21 = getelementptr inbounds i8, i8* %3, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -4
  %23 = call i32 @strcmp(i8* noundef nonnull %22, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #8
  %.not18 = icmp eq i32 %23, 0
  br i1 %.not18, label %24, label %26

24:                                               ; preds = %19
  %25 = add nsw i32 %.05, -4
  br label %26

26:                                               ; preds = %24, %19
  %.02 = phi i32 [ %.05, %19 ], [ %25, %24 ]
  br label %27

27:                                               ; preds = %26, %17
  %.13 = phi i32 [ %.02, %26 ], [ %18, %17 ]
  br label %58

28:                                               ; preds = %0
  %29 = load i32, i32* @fixed_outfiles, align 4
  %.not8 = icmp eq i32 %29, 0
  br i1 %.not8, label %31, label %30

30:                                               ; preds = %28
  br label %33

31:                                               ; preds = %28
  %32 = load i8*, i8** @infile, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %30 ], [ %32, %31 ]
  %.not9 = icmp eq i8* %34, null
  br i1 %.not9, label %35, label %36

35:                                               ; preds = %33
  call void @exit(i32 noundef 1) #9
  unreachable

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %44, %36
  %.01 = phi i8* [ %34, %36 ], [ %45, %44 ]
  %.0 = phi i8* [ %34, %36 ], [ %.1, %44 ]
  %38 = load i8, i8* %.01, align 1
  %.not10 = icmp eq i8 %38, 0
  br i1 %.not10, label %46, label %39

39:                                               ; preds = %37
  %40 = load i8, i8* %.01, align 1
  %41 = icmp eq i8 %40, 47
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %44

44:                                               ; preds = %42, %39
  %.1 = phi i8* [ %43, %42 ], [ %.0, %39 ]
  %45 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %37, !llvm.loop !8

46:                                               ; preds = %37
  %47 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.0) #8
  %48 = trunc i64 %47 to i32
  %sext = shl i64 %47, 32
  %49 = ashr exact i64 %sext, 32
  %50 = getelementptr inbounds i8, i8* %.0, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -2
  %52 = call i32 @strcmp(i8* noundef nonnull %51, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8
  %.not11 = icmp eq i32 %52, 0
  br i1 %.not11, label %53, label %55

53:                                               ; preds = %46
  %54 = add nsw i32 %48, -2
  br label %55

55:                                               ; preds = %53, %46
  %.16 = phi i32 [ %48, %46 ], [ %54, %53 ]
  %56 = call i8* @stringappend(i8* noundef %.0, i32 noundef %.16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %57 = add nsw i32 %.16, 4
  br label %58

58:                                               ; preds = %55, %27
  %.27 = phi i32 [ %.05, %27 ], [ %57, %55 ]
  %.24 = phi i32 [ %.13, %27 ], [ %.16, %55 ]
  %.2 = phi i8* [ %3, %27 ], [ %56, %55 ]
  %59 = load i8*, i8** @infile, align 8
  %60 = call %struct._IO_FILE* @tryopen(i8* noundef %59, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %60, %struct._IO_FILE** @finput, align 8
  %61 = load i32, i32* @verboseflag, align 4
  %.not12 = icmp eq i32 %61, 0
  br i1 %.not12, label %65, label %62

62:                                               ; preds = %58
  %63 = call i8* @stringappend(i8* noundef %.2, i32 noundef %.24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %63, i8** @outfile, align 8
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %64, %struct._IO_FILE** @foutput, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* @definesflag, align 4
  %.not13 = icmp eq i32 %66, 0
  br i1 %.not13, label %70, label %67

67:                                               ; preds = %65
  %68 = call i8* @stringappend(i8* noundef %.2, i32 noundef %.27, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i8* %68, i8** @defsfile, align 8
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %69, %struct._IO_FILE** @fdefines, align 8
  br label %70

70:                                               ; preds = %67, %65
  %71 = call i8* @stringappend(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %72 = call i8* @mktemp(i8* noundef %71) #7
  store i8* %72, i8** @actfile, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %73, %struct._IO_FILE** @faction, align 8
  %74 = call i8* @stringappend(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 7, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %75 = call i8* @mktemp(i8* noundef %74) #7
  store i8* %75, i8** @tmpattrsfile, align 8
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %76, %struct._IO_FILE** @fattrs, align 8
  %77 = call i8* @stringappend(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %78 = call i8* @mktemp(i8* noundef %77) #7
  store i8* %78, i8** @tmptabfile, align 8
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %79, %struct._IO_FILE** @ftable, align 8
  %80 = load i8*, i8** @spec_outfile, align 8
  %.not14 = icmp eq i8* %80, null
  br i1 %.not14, label %83, label %81

81:                                               ; preds = %70
  %82 = load i8*, i8** @spec_outfile, align 8
  br label %85

83:                                               ; preds = %70
  %84 = call i8* @stringappend(i8* noundef %.2, i32 noundef %.27, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %81
  %storemerge = phi i8* [ %84, %83 ], [ %82, %81 ]
  store i8* %storemerge, i8** @tabfile, align 8
  %86 = call i8* @stringappend(i8* noundef %.2, i32 noundef %.24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i8* %86, i8** @attrsfile, align 8
  %87 = call i8* @stringappend(i8* noundef %.2, i32 noundef %.24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  store i8* %87, i8** @guardfile, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @mktemp(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @open_extra_files() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %2 = call i32 @fclose(%struct._IO_FILE* noundef %1) #7
  %3 = call i8* @getenv(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #7
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i8* [ %3, %4 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), %5 ]
  %8 = call %struct._IO_FILE* @tryopen(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %8, %struct._IO_FILE** @fparser, align 8
  %9 = load i8*, i8** @attrsfile, align 8
  %10 = call %struct._IO_FILE* @tryopen(i8* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  call void @rewind(%struct._IO_FILE* noundef %11) #7
  br label %12

12:                                               ; preds = %15, %6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %14 = call i32 @getc(%struct._IO_FILE* noundef %13) #7
  %.not1 = icmp eq i32 %14, -1
  br i1 %.not1, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @putc(i32 noundef %14, %struct._IO_FILE* noundef %10) #7
  br label %12, !llvm.loop !9

17:                                               ; preds = %12
  store %struct._IO_FILE* %10, %struct._IO_FILE** @fattrs, align 8
  %18 = load i8*, i8** @guardfile, align 8
  %19 = call %struct._IO_FILE* @tryopen(i8* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** @fguard, align 8
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #4

declare dso_local void @rewind(%struct._IO_FILE* noundef) #1

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct._IO_FILE* @tryopen(i8* noundef %0, i8* noundef %1) #0 {
  %3 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef %1) #7
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %6) #10
  call void @perror(i8* noundef %0) #11
  call void @done(i32 noundef 2)
  br label %8

8:                                                ; preds = %5, %2
  ret %struct._IO_FILE* %3
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @perror(i8* noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @done(i32 noundef %0) #5 {
  call void @exit(i32 noundef %0) #9
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
