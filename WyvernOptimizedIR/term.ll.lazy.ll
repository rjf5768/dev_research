; ModuleID = './term.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }

@co = external dso_local global i32, align 4
@li = external dso_local global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@contextsize = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Screen too small:  need at least %d lines\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Can't deal with non-interactive use yet.\0A\00", align 1
@osbuf = internal global %struct.termios zeroinitializer, align 4
@termchanged = internal global i32 0, align 4
@sbuf = internal global %struct.termios zeroinitializer, align 4
@uerasechar = external dso_local global i32, align 4
@ukillchar = external dso_local global i32, align 4
@oldint = internal global void (...)* null, align 8
@oldterm = internal global void (...)* null, align 8
@oldttin = internal global void (...)* null, align 8
@oldttou = internal global void (...)* null, align 8
@oldtstp = internal global void (...)* null, align 8
@tempfile = external dso_local global [4096 x i8], align 16
@.str.4 = private unnamed_addr constant [28 x i8] c"Couldn't fork, try later.\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\0A-- Type space to continue --\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@str = private unnamed_addr constant [27 x i8] c"Couldn't fork, try later.\0D\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @erase() #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @move(i32 noundef %0, i32 noundef %1) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @inverse() #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @normal() #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @backup() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @terminit() #1 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.winsize, align 2
  %3 = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21523, %struct.winsize* noundef nonnull %2) #10
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i64 0, i32 1
  %7 = load i16, i16* %6, align 2
  %.not9 = icmp eq i16 %7, 0
  br i1 %.not9, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i64 0, i32 1
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  store i32 %11, i32* @co, align 4
  br label %12

12:                                               ; preds = %8, %5
  %13 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i64 0, i32 0
  %14 = load i16, i16* %13, align 2
  %.not10 = icmp eq i16 %14, 0
  br i1 %.not10, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i64 0, i32 0
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  store i32 %18, i32* @li, align 4
  br label %19

19:                                               ; preds = %15, %12
  br label %20

20:                                               ; preds = %19, %0
  %21 = call i8* @getenv(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #10
  %.not = icmp eq i8* %21, null
  br i1 %.not, label %25, label %22

22:                                               ; preds = %20
  %23 = call i8* @getenv(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #10
  %24 = call i32 @atoi(i8* noundef %23) #11
  store i32 %24, i32* @co, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = call i8* @getenv(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #10
  %.not1 = icmp eq i8* %26, null
  br i1 %.not1, label %30, label %27

27:                                               ; preds = %25
  %28 = call i8* @getenv(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #10
  %29 = call i32 @atoi(i8* noundef %28) #11
  store i32 %29, i32* @li, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* @contextsize, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @li, align 4
  %35 = sdiv i32 %34, 10
  store i32 %35, i32* @contextsize, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @contextsize, align 4
  %38 = icmp sgt i32 %37, 10
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 10, i32* @contextsize, align 4
  br label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @contextsize, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 2, i32* @contextsize, align 4
  br label %44

44:                                               ; preds = %43, %40
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* @li, align 4
  %47 = load i32, i32* @contextsize, align 4
  %48 = add nsw i32 %47, 8
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* @contextsize, align 4
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @li, align 4
  %55 = add nsw i32 %54, -8
  %56 = icmp slt i32 %54, 10
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %53
  %storemerge = phi i32 [ 2, %57 ], [ %55, %53 ]
  store i32 %storemerge, i32* @contextsize, align 4
  br label %59

59:                                               ; preds = %58, %50, %45
  %60 = load i32, i32* @li, align 4
  %61 = icmp slt i32 %60, 10
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef 10) #12
  br label %65

65:                                               ; preds = %62, %59
  %66 = call i32 @isatty(i32 noundef 0) #10
  %.not2 = icmp eq i32 %66, 0
  br i1 %.not2, label %67, label %70

67:                                               ; preds = %65
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %68) #13
  call void @exit(i32 noundef 1) #14
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %65
  %71 = call i32 @tcgetattr(i32 noundef 0, %struct.termios* noundef nonnull @osbuf) #10
  store i32 1, i32* @termchanged, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(60) bitcast (%struct.termios* @sbuf to i8*), i8* noundef nonnull align 4 dereferenceable(60) bitcast (%struct.termios* @osbuf to i8*), i64 60, i1 false)
  %72 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i64 0, i32 3), align 4
  %73 = and i32 %72, -107
  store i32 %73, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i64 0, i32 3), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i64 0, i32 1), align 4
  %75 = and i32 %74, -2
  store i32 %75, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i64 0, i32 1), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i64 0, i32 0), align 4
  %77 = and i32 %76, -449
  store i32 %77, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i64 0, i32 0), align 4
  store i8 1, i8* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i64 0, i32 5, i64 6), align 1
  store i8 1, i8* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i64 0, i32 5, i64 5), align 2
  %78 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef nonnull @sbuf) #10
  %79 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @osbuf, i64 0, i32 5, i64 2), align 1
  %80 = zext i8 %79 to i32
  store i32 %80, i32* @uerasechar, align 4
  %81 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @osbuf, i64 0, i32 5, i64 3), align 4
  %82 = zext i8 %81 to i32
  store i32 %82, i32* @ukillchar, align 4
  %83 = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21519, i32* noundef nonnull %1) #10
  %.not3 = icmp eq i32 %83, 0
  br i1 %.not3, label %87, label %84

84:                                               ; preds = %70
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %85) #13
  call void @exit(i32 noundef 1) #14
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %70
  %88 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #10
  store void (i32)* %88, void (i32)** bitcast (void (...)** @oldint to void (i32)**), align 8
  %.not4 = icmp eq void (i32)* %88, inttoptr (i64 1 to void (i32)*)
  br i1 %.not4, label %91, label %89

89:                                               ; preds = %87
  %90 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull @done) #10
  br label %91

91:                                               ; preds = %89, %87
  %92 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #10
  store void (i32)* %92, void (i32)** bitcast (void (...)** @oldterm to void (i32)**), align 8
  %.not5 = icmp eq void (i32)* %92, inttoptr (i64 1 to void (i32)*)
  br i1 %.not5, label %95, label %93

93:                                               ; preds = %91
  %94 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef nonnull @done) #10
  br label %95

95:                                               ; preds = %93, %91
  %96 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #10
  store void (i32)* %96, void (i32)** bitcast (void (...)** @oldttin to void (i32)**), align 8
  %.not6 = icmp eq void (i32)* %96, inttoptr (i64 1 to void (i32)*)
  br i1 %.not6, label %99, label %97

97:                                               ; preds = %95
  %98 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef nonnull @onstop) #10
  br label %99

99:                                               ; preds = %97, %95
  %100 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #10
  store void (i32)* %100, void (i32)** bitcast (void (...)** @oldttou to void (i32)**), align 8
  %.not7 = icmp eq void (i32)* %100, inttoptr (i64 1 to void (i32)*)
  br i1 %.not7, label %103, label %101

101:                                              ; preds = %99
  %102 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef nonnull @onstop) #10
  br label %103

103:                                              ; preds = %101, %99
  %104 = call void (i32)* @signal(i32 noundef 20, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #10
  store void (i32)* %104, void (i32)** bitcast (void (...)** @oldtstp to void (i32)**), align 8
  %.not8 = icmp eq void (i32)* %104, inttoptr (i64 1 to void (i32)*)
  br i1 %.not8, label %107, label %105

105:                                              ; preds = %103
  %106 = call void (i32)* @signal(i32 noundef 20, void (i32)* noundef nonnull @onstop) #10
  br label %107

107:                                              ; preds = %105, %103
  ret void

UnifiedUnreachableBlock:                          ; preds = %84, %67
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @ioctl(i32 noundef, i64 noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: nounwind
declare dso_local i32 @tcgetattr(i32 noundef, %struct.termios* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare dso_local i32 @tcsetattr(i32 noundef, i32 noundef, %struct.termios* noundef) #2

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @done(i32 noundef %0) #7 {
  %2 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i64 0, i64 0), align 16
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = call i32 @unlink(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i64 0, i64 0)) #10
  br label %5

5:                                                ; preds = %3, %1
  %6 = load i32, i32* @termchanged, align 4
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %5
  call void @exit(i32 noundef 0) #14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @onstop(i32 noundef %0) #1 {
  %2 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef nonnull @osbuf) #10
  %3 = call void (i32)* @signal(i32 noundef %0, void (i32)* noundef null) #10
  %4 = call i32 @kill(i32 noundef 0, i32 noundef %0) #10
  %5 = call void (i32)* @signal(i32 noundef %0, void (i32)* noundef nonnull @onstop) #10
  %6 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef nonnull @sbuf) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @stop() #1 {
  call void @onstop(i32 noundef 20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @shellescape(i8* noundef %0) #1 {
  %2 = alloca [100 x i8*], align 16
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %40, %1
  %.01 = phi i8* [ %0, %1 ], [ %.3, %40 ]
  %.0 = phi i32 [ 0, %1 ], [ %22, %40 ]
  %5 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %.loopexit, label %6

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %15, %6
  %.1 = phi i8* [ %.01, %6 ], [ %16, %15 ]
  %8 = load i8, i8* %.1, align 1
  %9 = icmp eq i8 %8, 32
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i8, i8* %.1, align 1
  %12 = icmp eq i8 %11, 9
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ true, %7 ], [ %12, %10 ]
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %7, !llvm.loop !4

17:                                               ; preds = %13
  %18 = load i8, i8* %.1, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %41

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %.0, 1
  %23 = zext i32 %.0 to i64
  %24 = getelementptr inbounds [100 x i8*], [100 x i8*]* %2, i64 0, i64 %23
  store i8* %.1, i8** %24, align 8
  br label %25

25:                                               ; preds = %34, %21
  %.2 = phi i8* [ %.1, %21 ], [ %35, %34 ]
  %26 = load i8, i8* %.2, align 1
  %.not12 = icmp eq i8 %26, 32
  br i1 %.not12, label %32, label %27

27:                                               ; preds = %25
  %28 = load i8, i8* %.2, align 1
  %.not14 = icmp eq i8 %28, 9
  br i1 %.not14, label %32, label %29

29:                                               ; preds = %27
  %30 = load i8, i8* %.2, align 1
  %31 = icmp ne i8 %30, 0
  br label %32

32:                                               ; preds = %29, %27, %25
  %33 = phi i1 [ false, %27 ], [ false, %25 ], [ %31, %29 ]
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %25, !llvm.loop !6

36:                                               ; preds = %32
  %37 = load i8, i8* %.2, align 1
  %.not13 = icmp eq i8 %37, 0
  br i1 %.not13, label %40, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, i8* %.2, i64 1
  store i8 0, i8* %.2, align 1
  br label %40

40:                                               ; preds = %38, %36
  %.3 = phi i8* [ %39, %38 ], [ %.2, %36 ]
  br label %4, !llvm.loop !7

.loopexit:                                        ; preds = %4
  br label %41

41:                                               ; preds = %.loopexit, %20
  %42 = zext i32 %.0 to i64
  %43 = getelementptr inbounds [100 x i8*], [100 x i8*]* %2, i64 0, i64 %42
  store i8* null, i8** %43, align 8
  %44 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef nonnull @osbuf) #10
  %45 = load void (i32)*, void (i32)** bitcast (void (...)** @oldint to void (i32)**), align 8
  %46 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef %45) #10
  %47 = load void (i32)*, void (i32)** bitcast (void (...)** @oldterm to void (i32)**), align 8
  %48 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef %47) #10
  %49 = load void (i32)*, void (i32)** bitcast (void (...)** @oldttin to void (i32)**), align 8
  %50 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef %49) #10
  %51 = load void (i32)*, void (i32)** bitcast (void (...)** @oldttou to void (i32)**), align 8
  %52 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef %51) #10
  %53 = load void (i32)*, void (i32)** bitcast (void (...)** @oldtstp to void (i32)**), align 8
  %54 = call void (i32)* @signal(i32 noundef 20, void (i32)* noundef %53) #10
  %55 = call i32 @fork() #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = getelementptr inbounds [100 x i8*], [100 x i8*]* %2, i64 0, i64 0
  %59 = load i8*, i8** %58, align 16
  %60 = getelementptr inbounds [100 x i8*], [100 x i8*]* %2, i64 0, i64 0
  %61 = call i32 @execvp(i8* noundef %59, i8** noundef nonnull %60) #10
  call void @_exit(i32 noundef 123) #14
  unreachable

62:                                               ; preds = %41
  %63 = icmp sgt i32 %55, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %67, %64
  %66 = call i32 (i32*, ...) bitcast (i32 (...)* @wait to i32 (i32*, ...)*)(i32* noundef nonnull %3) #10
  %.not11 = icmp eq i32 %66, %55
  br i1 %.not11, label %68, label %67

67:                                               ; preds = %65
  br label %65, !llvm.loop !8

68:                                               ; preds = %65
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 31488
  %71 = sext i1 %70 to i32
  br label %73

72:                                               ; preds = %62
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %72, %68
  %storemerge = phi i32 [ -1, %72 ], [ %71, %68 ]
  store i32 %storemerge, i32* %3, align 4
  br label %74

74:                                               ; preds = %73
  %75 = load void (...)*, void (...)** @oldint, align 8
  %.not4 = icmp eq void (...)* %75, inttoptr (i64 1 to void (...)*)
  br i1 %.not4, label %78, label %76

76:                                               ; preds = %74
  %77 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull @done) #10
  br label %78

78:                                               ; preds = %76, %74
  %79 = load void (...)*, void (...)** @oldterm, align 8
  %.not5 = icmp eq void (...)* %79, inttoptr (i64 1 to void (...)*)
  br i1 %.not5, label %82, label %80

80:                                               ; preds = %78
  %81 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef nonnull @done) #10
  br label %82

82:                                               ; preds = %80, %78
  %83 = load void (...)*, void (...)** @oldttin, align 8
  %.not6 = icmp eq void (...)* %83, inttoptr (i64 1 to void (...)*)
  br i1 %.not6, label %86, label %84

84:                                               ; preds = %82
  %85 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef nonnull @onstop) #10
  br label %86

86:                                               ; preds = %84, %82
  %87 = load void (...)*, void (...)** @oldttou, align 8
  %.not7 = icmp eq void (...)* %87, inttoptr (i64 1 to void (...)*)
  br i1 %.not7, label %90, label %88

88:                                               ; preds = %86
  %89 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef nonnull @onstop) #10
  br label %90

90:                                               ; preds = %88, %86
  %91 = load void (...)*, void (...)** @oldtstp, align 8
  %.not8 = icmp eq void (...)* %91, inttoptr (i64 1 to void (...)*)
  br i1 %.not8, label %94, label %92

92:                                               ; preds = %90
  %93 = call void (i32)* @signal(i32 noundef 20, void (i32)* noundef nonnull @onstop) #10
  br label %94

94:                                               ; preds = %92, %90
  %95 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef nonnull @sbuf) #10
  %96 = load i32, i32* %3, align 4
  %.not9 = icmp eq i32 %96, 0
  br i1 %.not9, label %105, label %97

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)) #10
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %100 = call i32 @fflush(%struct._IO_FILE* noundef %99) #10
  br label %101

101:                                              ; preds = %103, %97
  %102 = call i32 @getchar() #10
  %.not10 = icmp eq i32 %102, 32
  br i1 %.not10, label %104, label %103

103:                                              ; preds = %101
  br label %101, !llvm.loop !9

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104, %94
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare dso_local i32 @fork() #2

; Function Attrs: nounwind
declare dso_local i32 @execvp(i8* noundef, i8** noundef) #2

; Function Attrs: noreturn
declare dso_local void @_exit(i32 noundef) #8

declare dso_local i32 @wait(...) #4

declare dso_local i32 @printf(i8* noundef, ...) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

declare dso_local i32 @getchar() #4

; Function Attrs: nounwind
declare dso_local i32 @kill(i32 noundef, i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

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
