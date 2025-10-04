; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/term.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @erase() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @move(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @inverse() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @normal() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @backup() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @terminit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.winsize, align 2
  %3 = bitcast %struct.winsize* %2 to i8*
  %4 = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21523, i8* noundef %3) #7
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 1
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 1
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  store i32 %14, i32* @co, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 0
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 0
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  store i32 %23, i32* @li, align 4
  br label %24

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %24, %0
  %26 = call i8* @getenv(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #7
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i8* @getenv(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #7
  %30 = call i32 @atoi(i8* noundef %29) #8
  store i32 %30, i32* @co, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = call i8* @getenv(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = call i8* @getenv(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7
  %36 = call i32 @atoi(i8* noundef %35) #8
  store i32 %36, i32* @li, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @contextsize, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @li, align 4
  %42 = mul nsw i32 %41, 10
  %43 = sdiv i32 %42, 100
  store i32 %43, i32* @contextsize, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @contextsize, align 4
  %46 = icmp sgt i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 10, i32* @contextsize, align 4
  br label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @contextsize, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 2, i32* @contextsize, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* @li, align 4
  %55 = load i32, i32* @contextsize, align 4
  %56 = add nsw i32 %55, 8
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i32, i32* @contextsize, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* @li, align 4
  %63 = sub nsw i32 %62, 8
  store i32 %63, i32* @contextsize, align 4
  %64 = load i32, i32* @contextsize, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 2, i32* @contextsize, align 4
  br label %67

67:                                               ; preds = %66, %61
  br label %68

68:                                               ; preds = %67, %58, %53
  %69 = load i32, i32* @li, align 4
  %70 = icmp slt i32 %69, 10
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef 10)
  br label %74

74:                                               ; preds = %71, %68
  %75 = call i32 @isatty(i32 noundef 0) #7
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #9
  unreachable

80:                                               ; preds = %74
  %81 = call i32 @tcgetattr(i32 noundef 0, %struct.termios* noundef @osbuf) #7
  store i32 1, i32* @termchanged, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.termios* @sbuf to i8*), i8* align 4 bitcast (%struct.termios* @osbuf to i8*), i64 60, i1 false)
  %82 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 3), align 4
  %83 = and i32 %82, -107
  store i32 %83, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 3), align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 1), align 4
  %85 = and i32 %84, -2
  store i32 %85, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 1), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 0), align 4
  %87 = and i32 %86, -449
  store i32 %87, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 0), align 4
  store i8 1, i8* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 5, i64 6), align 1
  store i8 1, i8* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 5, i64 5), align 1
  %88 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef @sbuf) #7
  %89 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @osbuf, i32 0, i32 5, i64 2), align 1
  %90 = zext i8 %89 to i32
  store i32 %90, i32* @uerasechar, align 4
  %91 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @osbuf, i32 0, i32 5, i64 3), align 1
  %92 = zext i8 %91 to i32
  store i32 %92, i32* @ukillchar, align 4
  %93 = bitcast i32* %1 to i8*
  %94 = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21519, i8* noundef %93) #7
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %80
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %97, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #9
  unreachable

99:                                               ; preds = %80
  %100 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #7
  %101 = bitcast void (i32)* %100 to void (...)*
  store void (...)* %101, void (...)** @oldint, align 8
  %102 = icmp ne void (...)* %101, inttoptr (i64 1 to void (...)*)
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef @done) #7
  br label %105

105:                                              ; preds = %103, %99
  %106 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #7
  %107 = bitcast void (i32)* %106 to void (...)*
  store void (...)* %107, void (...)** @oldterm, align 8
  %108 = icmp ne void (...)* %107, inttoptr (i64 1 to void (...)*)
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef @done) #7
  br label %111

111:                                              ; preds = %109, %105
  %112 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #7
  %113 = bitcast void (i32)* %112 to void (...)*
  store void (...)* %113, void (...)** @oldttin, align 8
  %114 = icmp ne void (...)* %113, inttoptr (i64 1 to void (...)*)
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef @onstop) #7
  br label %117

117:                                              ; preds = %115, %111
  %118 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #7
  %119 = bitcast void (i32)* %118 to void (...)*
  store void (...)* %119, void (...)** @oldttou, align 8
  %120 = icmp ne void (...)* %119, inttoptr (i64 1 to void (...)*)
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef @onstop) #7
  br label %123

123:                                              ; preds = %121, %117
  %124 = call void (i32)* @signal(i32 noundef 20, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #7
  %125 = bitcast void (i32)* %124 to void (...)*
  store void (...)* %125, void (...)** @oldtstp, align 8
  %126 = icmp ne void (...)* %125, inttoptr (i64 1 to void (...)*)
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call void (i32)* @signal(i32 noundef 20, void (i32)* noundef @onstop) #7
  br label %129

129:                                              ; preds = %127, %123
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @ioctl(i32 noundef, i64 noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @tcgetattr(i32 noundef, %struct.termios* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i32 @tcsetattr(i32 noundef, i32 noundef, %struct.termios* noundef) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @done(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i64 0, i64 0), align 16
  %4 = sext i8 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @unlink(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i64 0, i64 0)) #7
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @termchanged, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %8
  call void @exit(i32 noundef 0) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @onstop(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef @osbuf) #7
  %4 = load i32, i32* %2, align 4
  %5 = call void (i32)* @signal(i32 noundef %4, void (i32)* noundef null) #7
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @kill(i32 noundef 0, i32 noundef %6) #7
  %8 = load i32, i32* %2, align 4
  %9 = call void (i32)* @signal(i32 noundef %8, void (i32)* noundef @onstop) #7
  %10 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef @sbuf) #7
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stop() #0 {
  call void @onstop(i32 noundef 20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @shellescape(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [100 x i8*], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %69, %1
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %70

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %26, %13
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 9
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ true, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  br label %14, !llvm.loop !4

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %70

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 %39
  store i8* %36, i8** %40, align 8
  br label %41

41:                                               ; preds = %58, %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 32
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 9
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %51, %46, %41
  %57 = phi i1 [ false, %46 ], [ false, %41 ], [ %55, %51 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  br label %41, !llvm.loop !6

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  store i8 0, i8* %67, align 1
  br label %69

69:                                               ; preds = %66, %61
  br label %8, !llvm.loop !7

70:                                               ; preds = %34, %8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 %72
  store i8* null, i8** %73, align 8
  %74 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef @osbuf) #7
  %75 = load void (...)*, void (...)** @oldint, align 8
  %76 = bitcast void (...)* %75 to void (i32)*
  %77 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef %76) #7
  %78 = load void (...)*, void (...)** @oldterm, align 8
  %79 = bitcast void (...)* %78 to void (i32)*
  %80 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef %79) #7
  %81 = load void (...)*, void (...)** @oldttin, align 8
  %82 = bitcast void (...)* %81 to void (i32)*
  %83 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef %82) #7
  %84 = load void (...)*, void (...)** @oldttou, align 8
  %85 = bitcast void (...)* %84 to void (i32)*
  %86 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef %85) #7
  %87 = load void (...)*, void (...)** @oldtstp, align 8
  %88 = bitcast void (...)* %87 to void (i32)*
  %89 = call void (i32)* @signal(i32 noundef 20, void (i32)* noundef %88) #7
  %90 = call i32 @fork() #7
  store i32 %90, i32* %5, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %70
  %93 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 0
  %94 = load i8*, i8** %93, align 16
  %95 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 0
  %96 = call i32 @execvp(i8* noundef %94, i8** noundef %95) #7
  call void @_exit(i32 noundef 123) #10
  unreachable

97:                                               ; preds = %70
  %98 = load i32, i32* %5, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %105, %100
  %102 = call i32 (i32*, ...) bitcast (i32 (...)* @wait to i32 (i32*, ...)*)(i32* noundef %6)
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %101, !llvm.loop !8

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 31488
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 0, i32 -1
  store i32 %110, i32* %6, align 4
  br label %113

111:                                              ; preds = %97
  %112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %106
  br label %114

114:                                              ; preds = %113
  %115 = load void (...)*, void (...)** @oldint, align 8
  %116 = icmp ne void (...)* %115, inttoptr (i64 1 to void (...)*)
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef @done) #7
  br label %119

119:                                              ; preds = %117, %114
  %120 = load void (...)*, void (...)** @oldterm, align 8
  %121 = icmp ne void (...)* %120, inttoptr (i64 1 to void (...)*)
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef @done) #7
  br label %124

124:                                              ; preds = %122, %119
  %125 = load void (...)*, void (...)** @oldttin, align 8
  %126 = icmp ne void (...)* %125, inttoptr (i64 1 to void (...)*)
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call void (i32)* @signal(i32 noundef 21, void (i32)* noundef @onstop) #7
  br label %129

129:                                              ; preds = %127, %124
  %130 = load void (...)*, void (...)** @oldttou, align 8
  %131 = icmp ne void (...)* %130, inttoptr (i64 1 to void (...)*)
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call void (i32)* @signal(i32 noundef 22, void (i32)* noundef @onstop) #7
  br label %134

134:                                              ; preds = %132, %129
  %135 = load void (...)*, void (...)** @oldtstp, align 8
  %136 = icmp ne void (...)* %135, inttoptr (i64 1 to void (...)*)
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call void (i32)* @signal(i32 noundef 20, void (i32)* noundef @onstop) #7
  br label %139

139:                                              ; preds = %137, %134
  %140 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, %struct.termios* noundef @sbuf) #7
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %146 = call i32 @fflush(%struct._IO_FILE* noundef %145)
  br label %147

147:                                              ; preds = %150, %143
  %148 = call i32 @getchar()
  %149 = icmp ne i32 %148, 32
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %147, !llvm.loop !9

151:                                              ; preds = %147
  br label %152

152:                                              ; preds = %151, %139
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare dso_local i32 @fork() #1

; Function Attrs: nounwind
declare dso_local i32 @execvp(i8* noundef, i8** noundef) #1

; Function Attrs: noreturn
declare dso_local void @_exit(i32 noundef) #6

declare dso_local i32 @wait(...) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

declare dso_local i32 @getchar() #3

; Function Attrs: nounwind
declare dso_local i32 @kill(i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }

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
