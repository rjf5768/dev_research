; ModuleID = './test_farm_farm.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/test_farm_farm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.machine = type { i8*, i32, i32 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.protoent = type { i8*, i8**, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.args = type { i8*, %struct.machine*, i8* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"Arg count\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@machines = internal global [4 x %struct.machine] [%struct.machine { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 -1 }, %struct.machine { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 -1 }, %struct.machine { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 -1 }, %struct.machine { i8* null, i32 0, i32 -1 }], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"Can't resolve %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s is down\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"eric\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Needs at least 2 machines up to run\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Failed sanity check\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\09%s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SCAN %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"STREAM\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Failed to create TCPSocket to talk to clamd\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"PORT %hu\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"Expected port information from clamd, got '%s'\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Couldn't connect to port %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"%s: only sent %d bytes of %d to %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Unknown host %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Unknown prototol tcp, check /etc/protocols\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"SESSION\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"send\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %5) #8
  br label %44

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %34, %7
  %.01 = phi %struct.machine* [ getelementptr inbounds ([4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 0), %7 ], [ %35, %34 ]
  %9 = getelementptr inbounds %struct.machine, %struct.machine* %.01, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %.not = icmp eq i8* %10, null
  br i1 %.not, label %36, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.machine, %struct.machine* %.01, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @resolve(i8* noundef %13)
  %15 = getelementptr inbounds %struct.machine, %struct.machine* %.01, i64 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = icmp eq i32 %14, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = getelementptr inbounds %struct.machine, %struct.machine* %.01, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* noundef %20) #9
  br label %44

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.machine, %struct.machine* %.01, i64 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @start(i32 noundef %24)
  %26 = getelementptr inbounds %struct.machine, %struct.machine* %.01, i64 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = icmp slt i32 %25, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = getelementptr inbounds %struct.machine, %struct.machine* %.01, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef %31) #9
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.machine, %struct.machine* %.01, i64 1
  br label %8, !llvm.loop !4

36:                                               ; preds = %8
  %37 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #10
  br label %38

38:                                               ; preds = %41, %36
  %.02 = phi i8** [ %1, %36 ], [ %39, %41 ]
  %39 = getelementptr inbounds i8*, i8** %.02, i64 1
  %40 = load i8*, i8** %39, align 8
  %.not4 = icmp eq i8* %40, null
  br i1 %.not4, label %43, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %39, align 8
  call void @dir(i8* noundef %42)
  br label %38, !llvm.loop !6

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %17, %4
  %.0 = phi i32 [ 1, %4 ], [ 1, %17 ], [ 0, %43 ]
  ret i32 %.0
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @resolve(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = call i32 @inet_addr(i8* noundef %0) #10
  store i32 %3, i32* %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = call %struct.hostent* @gethostbyname(i8* noundef %0) #10
  %7 = icmp eq %struct.hostent* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef %0) #9
  br label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.hostent, %struct.hostent* %6, i64 0, i32 4
  %13 = bitcast i8*** %12 to i32***
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 1
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %8
  %.0 = phi i32 [ -1, %8 ], [ %18, %17 ]
  ret i32 %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @start(i32 noundef %0) #0 {
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = bitcast %struct.sockaddr_in* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 0
  store i16 2, i16* %4, align 4
  %5 = call zeroext i16 @htons(i16 noundef zeroext 3310) #11
  %6 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 1
  store i16 %5, i16* %6, align 2
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 2, i32 0
  store i32 %0, i32* %7, align 4
  %8 = call %struct.protoent* @getprotobyname(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #10
  %9 = icmp eq %struct.protoent* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %11) #8
  br label %34

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.protoent, %struct.protoent* %8, i64 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef %15) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #9
  br label %34

19:                                               ; preds = %13
  %20 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %21 = call i32 @connect(i32 noundef %16, %struct.sockaddr* noundef nonnull %20, i32 noundef 16) #10
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  call void @perror(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #9
  %24 = call i32 @close(i32 noundef %16) #10
  br label %34

25:                                               ; preds = %19
  %26 = call i64 @send(i32 noundef %16, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i64 noundef 8, i32 noundef 0) #10
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)) #9
  %29 = call i32 @close(i32 noundef %16) #10
  br label %34

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33, %28, %23, %18, %10
  %.0 = phi i32 [ -1, %10 ], [ -1, %18 ], [ -1, %23 ], [ -1, %28 ], [ %16, %33 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @dir(i8* noundef %0) #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = call %struct.__dirstream* @opendir(i8* noundef %0) #10
  %4 = icmp eq %struct.__dirstream* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @perror(i8* noundef %0) #9
  br label %177

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %17, %6
  %.04 = phi %struct.machine* [ getelementptr inbounds ([4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 0), %6 ], [ %18, %17 ]
  %.02 = phi i32 [ 0, %6 ], [ %.13, %17 ]
  %8 = getelementptr inbounds %struct.machine, %struct.machine* %.04, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %.not = icmp eq i8* %9, null
  br i1 %.not, label %19, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.machine, %struct.machine* %.04, i64 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = add nsw i32 %.02, 1
  br label %16

16:                                               ; preds = %14, %10
  %.13 = phi i32 [ %15, %14 ], [ %.02, %10 ]
  br label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.machine, %struct.machine* %.04, i64 1
  br label %7, !llvm.loop !7

19:                                               ; preds = %7
  %20 = icmp slt i32 %.02, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %22) #8
  %24 = call i32 @closedir(%struct.__dirstream* noundef nonnull %3) #10
  br label %177

25:                                               ; preds = %19
  %26 = sext i32 %.02 to i64
  %27 = shl nsw i64 %26, 3
  %28 = call noalias i8* @malloc(i64 noundef %27) #10
  %29 = bitcast i8* %28 to i8**
  %30 = icmp eq i8* %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %177

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %53, %32
  %.15 = phi %struct.machine* [ getelementptr inbounds ([4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 0), %32 ], [ %54, %53 ]
  %.01 = phi i32 [ 0, %32 ], [ %.1, %53 ]
  %34 = getelementptr inbounds %struct.machine, %struct.machine* %.15, i64 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %.not12 = icmp eq i8* %35, null
  br i1 %.not12, label %55, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.machine, %struct.machine* %.15, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = call noalias dereferenceable_or_null(128) i8* @malloc(i64 noundef 128) #10
  %42 = sext i32 %.01 to i64
  %43 = getelementptr inbounds i8*, i8** %29, i64 %42
  store i8* %41, i8** %43, align 8
  %44 = sext i32 %.01 to i64
  %45 = getelementptr inbounds i8*, i8** %29, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  call void @free(i8* noundef %28) #10
  %49 = call i32 @closedir(%struct.__dirstream* noundef nonnull %3) #10
  br label %177

50:                                               ; preds = %40
  %51 = add nsw i32 %.01, 1
  br label %52

52:                                               ; preds = %50, %36
  %.1 = phi i32 [ %51, %50 ], [ %.01, %36 ]
  br label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.machine, %struct.machine* %.15, i64 1
  br label %33, !llvm.loop !8

55:                                               ; preds = %33
  %.not13 = icmp eq i32 %.01, %.02
  br i1 %.not13, label %60, label %56

56:                                               ; preds = %55
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %57) #8
  %59 = call i32 @closedir(%struct.__dirstream* noundef nonnull %3) #10
  br label %177

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %.backedge, %60
  %62 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %3) #10
  %.not14 = icmp eq %struct.dirent* %62, null
  br i1 %.not14, label %175, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i64 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %.backedge

.backedge:                                        ; preds = %67, %72, %174
  br label %61, !llvm.loop !9

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i64 0, i32 4, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 46
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %.backedge

73:                                               ; preds = %68
  %74 = sext i32 %.02 to i64
  %75 = shl nsw i64 %74, 3
  %76 = call noalias i8* @malloc(i64 noundef %75) #10
  %77 = bitcast i8* %76 to i64*
  %78 = icmp eq i8* %76, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  call void @free(i8* noundef %28) #10
  %80 = call i32 @closedir(%struct.__dirstream* noundef nonnull %3) #10
  br label %177

81:                                               ; preds = %73
  %82 = sext i32 %.02 to i64
  %83 = mul nsw i64 %82, 24
  %84 = call noalias i8* @malloc(i64 noundef %83) #10
  %85 = bitcast i8* %84 to %struct.args*
  %86 = icmp eq i8* %84, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  call void @free(i8* noundef %76) #10
  call void @free(i8* noundef %28) #10
  %88 = call i32 @closedir(%struct.__dirstream* noundef nonnull %3) #10
  br label %177

89:                                               ; preds = %81
  %90 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i64 0, i32 4, i64 0
  %92 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %90, i64 noundef 4095, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef %0, i8* noundef nonnull %91) #10
  br label %93

93:                                               ; preds = %119, %89
  %.07 = phi i32 [ 0, %89 ], [ %.18, %119 ]
  %.26 = phi %struct.machine* [ getelementptr inbounds ([4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 0), %89 ], [ %120, %119 ]
  %94 = getelementptr inbounds %struct.machine, %struct.machine* %.26, i64 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %.not15 = icmp eq i8* %95, null
  br i1 %.not15, label %121, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.machine, %struct.machine* %.26, i64 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %119

101:                                              ; preds = %96
  %102 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %103 = sext i32 %.07 to i64
  %104 = getelementptr inbounds %struct.args, %struct.args* %85, i64 %103, i32 0
  store i8* %102, i8** %104, align 8
  %105 = sext i32 %.07 to i64
  %106 = getelementptr inbounds %struct.args, %struct.args* %85, i64 %105, i32 1
  store %struct.machine* %.26, %struct.machine** %106, align 8
  %107 = sext i32 %.07 to i64
  %108 = getelementptr inbounds i8*, i8** %29, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = sext i32 %.07 to i64
  %111 = getelementptr inbounds %struct.args, %struct.args* %85, i64 %110, i32 2
  store i8* %109, i8** %111, align 8
  %112 = sext i32 %.07 to i64
  %113 = getelementptr inbounds i64, i64* %77, i64 %112
  %114 = sext i32 %.07 to i64
  %115 = getelementptr inbounds %struct.args, %struct.args* %85, i64 %114
  %116 = bitcast %struct.args* %115 to i8*
  %117 = call i32 @pthread_create(i64* noundef nonnull %113, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @scan, i8* noundef nonnull %116) #10
  %118 = add nsw i32 %.07, 1
  br label %119

119:                                              ; preds = %101, %100
  %.18 = phi i32 [ %.07, %100 ], [ %118, %101 ]
  %120 = getelementptr inbounds %struct.machine, %struct.machine* %.26, i64 1
  br label %93, !llvm.loop !10

121:                                              ; preds = %93
  br label %122

122:                                              ; preds = %125, %121
  %.29 = phi i32 [ %.07, %121 ], [ %123, %125 ]
  %123 = add nsw i32 %.29, -1
  %124 = icmp sgt i32 %.29, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = sext i32 %123 to i64
  %127 = getelementptr inbounds i64, i64* %77, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @pthread_join(i64 noundef %128, i8** noundef null) #10
  br label %122, !llvm.loop !11

130:                                              ; preds = %122
  call void @free(i8* noundef %84) #10
  call void @free(i8* noundef %76) #10
  br label %131

131:                                              ; preds = %172, %130
  %.2 = phi i32 [ 0, %130 ], [ %173, %172 ]
  %132 = add nsw i32 %.02, -2
  %.not16 = icmp sgt i32 %.2, %132
  br i1 %.not16, label %174, label %133

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %170, %133
  %.0.in = phi i32 [ %.2, %133 ], [ %.0, %170 ]
  %.0 = add nuw nsw i32 %.0.in, 1
  %135 = add nsw i32 %.02, -1
  %.not17.not = icmp slt i32 %.0.in, %135
  br i1 %.not17.not, label %136, label %171

136:                                              ; preds = %134
  %137 = zext i32 %.2 to i64
  %138 = getelementptr inbounds i8*, i8** %29, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %139, i32 noundef 32) #12
  %141 = zext i32 %.0 to i64
  %142 = getelementptr inbounds i8*, i8** %29, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %143, i32 noundef 32) #12
  %145 = icmp eq i8* %140, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %136
  %147 = icmp eq i8* %144, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %146
  %149 = call i32 @strcmp(i8* noundef nonnull %140, i8* noundef nonnull %144) #12
  %.not18 = icmp eq i32 %149, 0
  br i1 %.not18, label %169, label %150

150:                                              ; preds = %148, %146, %136
  %151 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %152 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %151) #10
  %153 = zext i32 %.2 to i64
  %154 = getelementptr inbounds [4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 %153, i32 0
  %155 = load i8*, i8** %154, align 16
  %.not19 = icmp eq i8* %140, null
  br i1 %.not19, label %157, label %156

156:                                              ; preds = %150
  br label %158

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %156
  %159 = phi i8* [ %140, %156 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %157 ]
  %160 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* noundef %155, i8* noundef %159) #10
  %161 = zext i32 %.0 to i64
  %162 = getelementptr inbounds [4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 %161, i32 0
  %163 = load i8*, i8** %162, align 16
  %.not20 = icmp eq i8* %144, null
  br i1 %.not20, label %165, label %164

164:                                              ; preds = %158
  br label %166

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165, %164
  %167 = phi i8* [ %144, %164 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %165 ]
  %168 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* noundef %163, i8* noundef %167) #10
  br label %169

169:                                              ; preds = %166, %148
  br label %170

170:                                              ; preds = %169
  br label %134, !llvm.loop !12

171:                                              ; preds = %134
  br label %172

172:                                              ; preds = %171
  %173 = add nuw nsw i32 %.2, 1
  br label %131, !llvm.loop !13

174:                                              ; preds = %131
  br label %.backedge

175:                                              ; preds = %61
  %176 = call i32 @closedir(%struct.__dirstream* noundef nonnull %3) #10
  br label %177

177:                                              ; preds = %175, %87, %79, %56, %48, %31, %21, %5
  ret void
}

declare dso_local %struct.__dirstream* @opendir(i8* noundef) #1

declare dso_local void @perror(i8* noundef) #1

declare dso_local i32 @closedir(%struct.__dirstream* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local %struct.dirent* @readdir(%struct.__dirstream* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @scan(i8* nocapture noundef readonly %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [262 x i8], align 16
  %6 = getelementptr inbounds i8, i8* %0, i64 8
  %7 = bitcast i8* %6 to %struct.machine**
  %8 = load %struct.machine*, %struct.machine** %7, align 8
  %9 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %159

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @htonl(i32 noundef 2130706433) #11
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = getelementptr inbounds [262 x i8], [262 x i8]* %5, i64 0, i64 0
  %20 = bitcast i8* %0 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %19, i64 noundef 261, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* noundef %21) #10
  %23 = getelementptr inbounds [262 x i8], [262 x i8]* %5, i64 0, i64 0
  %24 = call i64 @strlen(i8* noundef nonnull %23) #12
  %25 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [262 x i8], [262 x i8]* %5, i64 0, i64 0
  %28 = call i64 @send(i32 noundef %26, i8* noundef nonnull %27, i64 noundef %24, i32 noundef 0) #10
  %.not7 = icmp eq i64 %28, %24
  br i1 %.not7, label %32, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  call void @perror(i8* noundef %31) #9
  br label %159

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds i8, i8* %0, i64 16
  %36 = bitcast i8* %35 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @recv(i32 noundef %34, i8* noundef %37, i64 noundef 128, i32 noundef 0) #10
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 0
  %42 = load i8*, i8** %41, align 8
  call void @perror(i8* noundef %42) #9
  br label %159

43:                                               ; preds = %32
  %44 = getelementptr inbounds i8, i8* %0, i64 16
  %45 = bitcast i8* %44 to i8**
  %46 = load i8*, i8** %45, align 8
  %47 = add nsw i64 %38, -1
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  br label %159

49:                                               ; preds = %13
  %50 = bitcast i8* %0 to i8**
  %51 = load i8*, i8** %50, align 8
  %52 = call noalias %struct._IO_FILE* @fopen(i8* noundef %51, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #10
  %53 = icmp eq %struct._IO_FILE* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = bitcast i8* %0 to i8**
  %56 = load i8*, i8** %55, align 8
  call void @perror(i8* noundef %56) #9
  br label %159

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @send(i32 noundef %59, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i64 noundef 7, i32 noundef 0) #10
  %.not = icmp eq i64 %60, 7
  br i1 %.not, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 0
  %63 = load i8*, i8** %62, align 8
  call void @perror(i8* noundef %63) #9
  %64 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %52) #10
  br label %159

65:                                               ; preds = %57
  %66 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #10
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #9
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %69) #8
  %71 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %52) #10
  br label %159

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %76 = call i64 @recv(i32 noundef %74, i8* noundef nonnull %75, i64 noundef 1024, i32 noundef 0) #10
  %77 = icmp slt i64 %76, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 0
  %80 = load i8*, i8** %79, align 8
  call void @perror(i8* noundef %80) #9
  %81 = call i32 @close(i32 noundef %66) #10
  %82 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %52) #10
  br label %159

83:                                               ; preds = %72
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 %76
  store i8 0, i8* %84, align 1
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %86 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %85, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i16* noundef nonnull %2) #10
  %.not3 = icmp eq i32 %86, 1
  br i1 %.not3, label %93, label %87

87:                                               ; preds = %83
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %89) #9
  %91 = call i32 @close(i32 noundef %66) #10
  %92 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %52) #10
  br label %159

93:                                               ; preds = %83
  %94 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %94, i8 0, i64 16, i1 false)
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 0
  store i16 2, i16* %95, align 4
  %96 = load i16, i16* %2, align 2
  %97 = call zeroext i16 @htons(i16 noundef zeroext %96) #11
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 1
  store i16 %97, i16* %98, align 2
  %99 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 2, i32 0
  store i32 %100, i32* %101, align 4
  %102 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %103 = call i32 @connect(i32 noundef %66, %struct.sockaddr* noundef nonnull %102, i32 noundef 16) #10
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %93
  %106 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 0
  %107 = load i8*, i8** %106, align 8
  call void @perror(i8* noundef %107) #9
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = load i16, i16* %2, align 2
  %110 = zext i16 %109 to i32
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 noundef %110) #9
  %112 = call i32 @close(i32 noundef %66) #10
  %113 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %52) #10
  br label %159

114:                                              ; preds = %93
  %115 = call i32 @shutdown(i32 noundef %66, i32 noundef 0) #10
  br label %116

116:                                              ; preds = %135, %114
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %118 = call i64 @fread(i8* noundef nonnull %117, i64 noundef 1, i64 noundef 1024, %struct._IO_FILE* noundef nonnull %52) #10
  %.not4 = icmp eq i64 %118, 0
  br i1 %.not4, label %.loopexit, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %121 = call i64 @send(i32 noundef %66, i8* noundef nonnull %120, i64 noundef %118, i32 noundef 0) #10
  %.not6 = icmp eq i64 %121, %118
  br i1 %.not6, label %135, label %122

122:                                              ; preds = %119
  %123 = icmp slt i64 %121, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 0
  %126 = load i8*, i8** %125, align 8
  call void @perror(i8* noundef %126) #9
  br label %134

127:                                              ; preds = %122
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %129 = bitcast i8* %0 to i8**
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %128, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* noundef %130, i64 noundef %121, i64 noundef %118, i8* noundef %132) #9
  br label %134

134:                                              ; preds = %127, %124
  br label %136

135:                                              ; preds = %119
  br label %116, !llvm.loop !14

.loopexit:                                        ; preds = %116
  br label %136

136:                                              ; preds = %.loopexit, %134
  %137 = call i32 @close(i32 noundef %66) #10
  %138 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %52) #10
  %139 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds i8, i8* %0, i64 16
  %142 = bitcast i8* %141 to i8**
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @recv(i32 noundef %140, i8* noundef %143, i64 noundef 128, i32 noundef 0) #10
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.machine, %struct.machine* %8, i64 0, i32 0
  %148 = load i8*, i8** %147, align 8
  call void @perror(i8* noundef %148) #9
  br label %159

149:                                              ; preds = %136
  %150 = getelementptr inbounds i8, i8* %0, i64 16
  %151 = bitcast i8* %150 to i8**
  %152 = load i8*, i8** %151, align 8
  %.not5 = icmp eq i64 %144, 0
  br i1 %.not5, label %155, label %153

153:                                              ; preds = %149
  %154 = add nsw i64 %144, -1
  br label %156

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i64 [ %154, %153 ], [ 0, %155 ]
  %158 = getelementptr inbounds i8, i8* %152, i64 %157
  store i8 0, i8* %158, align 1
  br label %159

159:                                              ; preds = %156, %146, %105, %87, %78, %68, %61, %54, %43, %40, %29, %12
  ret i8* null
}

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @htonl(i32 noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i64 @send(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @recv(i32 noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @socket(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @close(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 noundef zeroext) #4

declare dso_local i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @shutdown(i32 noundef, i32 noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8* noundef) #2

declare dso_local %struct.hostent* @gethostbyname(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local %struct.protoent* @getprotobyname(i8* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { nounwind readonly willreturn }

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
