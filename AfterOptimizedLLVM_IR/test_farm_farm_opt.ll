; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/test_farm_farm.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/test_farm_farm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.machine = type { i8*, i32, i32 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.protoent = type { i8*, i8**, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__dirstream = type opaque
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.machine*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 @fputs(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* noundef %10)
  store i32 1, i32* %3, align 4
  br label %67

12:                                               ; preds = %2
  store %struct.machine* getelementptr inbounds ([4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 0), %struct.machine** %6, align 8
  br label %13

13:                                               ; preds = %53, %12
  %14 = load %struct.machine*, %struct.machine** %6, align 8
  %15 = getelementptr inbounds %struct.machine, %struct.machine* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %13
  %19 = load %struct.machine*, %struct.machine** %6, align 8
  %20 = getelementptr inbounds %struct.machine, %struct.machine* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @resolve(i8* noundef %21)
  %23 = load %struct.machine*, %struct.machine** %6, align 8
  %24 = getelementptr inbounds %struct.machine, %struct.machine* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.machine*, %struct.machine** %6, align 8
  %26 = getelementptr inbounds %struct.machine, %struct.machine* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load %struct.machine*, %struct.machine** %6, align 8
  %32 = getelementptr inbounds %struct.machine, %struct.machine* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* noundef %33)
  store i32 1, i32* %3, align 4
  br label %67

35:                                               ; preds = %18
  %36 = load %struct.machine*, %struct.machine** %6, align 8
  %37 = getelementptr inbounds %struct.machine, %struct.machine* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @start(i32 noundef %38)
  %40 = load %struct.machine*, %struct.machine** %6, align 8
  %41 = getelementptr inbounds %struct.machine, %struct.machine* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.machine*, %struct.machine** %6, align 8
  %43 = getelementptr inbounds %struct.machine, %struct.machine* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load %struct.machine*, %struct.machine** %6, align 8
  %49 = getelementptr inbounds %struct.machine, %struct.machine* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef %50)
  br label %52

52:                                               ; preds = %46, %35
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.machine*, %struct.machine** %6, align 8
  %55 = getelementptr inbounds %struct.machine, %struct.machine* %54, i32 1
  store %struct.machine* %55, %struct.machine** %6, align 8
  br label %13, !llvm.loop !4

56:                                               ; preds = %13
  %57 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #7
  br label %58

58:                                               ; preds = %63, %56
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  call void @dir(i8* noundef %65)
  br label %58, !llvm.loop !6

66:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %29, %9
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @resolve(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @inet_addr(i8* noundef %6) #7
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct.hostent* @gethostbyname(i8* noundef %11)
  store %struct.hostent* %12, %struct.hostent** %5, align 8
  %13 = load %struct.hostent*, %struct.hostent** %5, align 8
  %14 = icmp eq %struct.hostent* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* noundef %17)
  store i32 -1, i32* %2, align 4
  br label %28

19:                                               ; preds = %10
  %20 = bitcast i32* %4 to i8*
  %21 = load %struct.hostent*, %struct.hostent** %5, align 8
  %22 = getelementptr inbounds %struct.hostent, %struct.hostent* %21, i32 0, i32 4
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 1 %25, i64 4, i1 false)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @start(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.protoent*, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  store i32 %0, i32* %3, align 4
  %7 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i16 2, i16* %8, align 4
  %9 = call zeroext i16 @htons(i16 noundef zeroext 3310) #8
  %10 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i16 %9, i16* %10, align 2
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = call %struct.protoent* @getprotobyname(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  store %struct.protoent* %14, %struct.protoent** %5, align 8
  %15 = load %struct.protoent*, %struct.protoent** %5, align 8
  %16 = icmp eq %struct.protoent* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 @fputs(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), %struct._IO_FILE* noundef %18)
  store i32 -1, i32* %2, align 4
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.protoent*, %struct.protoent** %5, align 8
  %22 = getelementptr inbounds %struct.protoent, %struct.protoent* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef %23) #7
  store i32 %24, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %47

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %30 = call i32 @connect(i32 noundef %28, %struct.sockaddr* noundef %29, i32 noundef 16)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  call void @perror(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @close(i32 noundef %33)
  store i32 -1, i32* %2, align 4
  br label %47

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @send(i32 noundef %36, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i64 noundef 8, i32 noundef 0)
  %38 = icmp slt i64 %37, 8
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @close(i32 noundef %40)
  store i32 -1, i32* %2, align 4
  br label %47

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %39, %32, %26, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @dir(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.machine*, align 8
  %7 = alloca %struct.__dirstream*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.args*, align 8
  %13 = alloca [4096 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call %struct.__dirstream* @opendir(i8* noundef %17)
  store %struct.__dirstream* %18, %struct.__dirstream** %7, align 8
  %19 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %20 = icmp eq %struct.__dirstream* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i8*, i8** %2, align 8
  call void @perror(i8* noundef %22)
  br label %298

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store %struct.machine* getelementptr inbounds ([4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 0), %struct.machine** %6, align 8
  br label %24

24:                                               ; preds = %38, %23
  %25 = load %struct.machine*, %struct.machine** %6, align 8
  %26 = getelementptr inbounds %struct.machine, %struct.machine* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.machine*, %struct.machine** %6, align 8
  %31 = getelementptr inbounds %struct.machine, %struct.machine* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.machine*, %struct.machine** %6, align 8
  %40 = getelementptr inbounds %struct.machine, %struct.machine* %39, i32 1
  store %struct.machine* %40, %struct.machine** %6, align 8
  br label %24, !llvm.loop !7

41:                                               ; preds = %24
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 @fputs(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* noundef %45)
  %47 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %48 = call i32 @closedir(%struct.__dirstream* noundef %47)
  br label %298

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = call noalias i8* @malloc(i64 noundef %52) #7
  %54 = bitcast i8* %53 to i8**
  store i8** %54, i8*** %8, align 8
  %55 = load i8**, i8*** %8, align 8
  %56 = icmp eq i8** %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %298

58:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  store %struct.machine* getelementptr inbounds ([4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 0), %struct.machine** %6, align 8
  br label %59

59:                                               ; preds = %89, %58
  %60 = load %struct.machine*, %struct.machine** %6, align 8
  %61 = getelementptr inbounds %struct.machine, %struct.machine* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = load %struct.machine*, %struct.machine** %6, align 8
  %66 = getelementptr inbounds %struct.machine, %struct.machine* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = call noalias i8* @malloc(i64 noundef 128) #7
  %71 = load i8**, i8*** %8, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %70, i8** %74, align 8
  %75 = load i8**, i8*** %8, align 8
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %69
  %83 = load i8**, i8*** %8, align 8
  %84 = bitcast i8** %83 to i8*
  call void @free(i8* noundef %84) #7
  %85 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %86 = call i32 @closedir(%struct.__dirstream* noundef %85)
  br label %298

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.machine*, %struct.machine** %6, align 8
  %91 = getelementptr inbounds %struct.machine, %struct.machine* %90, i32 1
  store %struct.machine* %91, %struct.machine** %6, align 8
  br label %59, !llvm.loop !8

92:                                               ; preds = %59
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %98 = call i32 @fputs(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* noundef %97)
  %99 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %100 = call i32 @closedir(%struct.__dirstream* noundef %99)
  br label %298

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %294, %119, %111, %101
  %103 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %104 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %103)
  store %struct.dirent* %104, %struct.dirent** %5, align 8
  %105 = icmp ne %struct.dirent* %104, null
  br i1 %105, label %106, label %295

106:                                              ; preds = %102
  %107 = load %struct.dirent*, %struct.dirent** %5, align 8
  %108 = getelementptr inbounds %struct.dirent, %struct.dirent* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %102, !llvm.loop !9

112:                                              ; preds = %106
  %113 = load %struct.dirent*, %struct.dirent** %5, align 8
  %114 = getelementptr inbounds %struct.dirent, %struct.dirent* %113, i32 0, i32 4
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %114, i64 0, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 46
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %102, !llvm.loop !9

120:                                              ; preds = %112
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 8
  %124 = call noalias i8* @malloc(i64 noundef %123) #7
  %125 = bitcast i8* %124 to i64*
  store i64* %125, i64** %11, align 8
  %126 = load i64*, i64** %11, align 8
  %127 = icmp eq i64* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load i8**, i8*** %8, align 8
  %130 = bitcast i8** %129 to i8*
  call void @free(i8* noundef %130) #7
  %131 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %132 = call i32 @closedir(%struct.__dirstream* noundef %131)
  br label %298

133:                                              ; preds = %120
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 24
  %137 = call noalias i8* @malloc(i64 noundef %136) #7
  %138 = bitcast i8* %137 to %struct.args*
  store %struct.args* %138, %struct.args** %12, align 8
  %139 = load %struct.args*, %struct.args** %12, align 8
  %140 = icmp eq %struct.args* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %133
  %142 = load i64*, i64** %11, align 8
  %143 = bitcast i64* %142 to i8*
  call void @free(i8* noundef %143) #7
  %144 = load i8**, i8*** %8, align 8
  %145 = bitcast i8** %144 to i8*
  call void @free(i8* noundef %145) #7
  %146 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %147 = call i32 @closedir(%struct.__dirstream* noundef %146)
  br label %298

148:                                              ; preds = %133
  %149 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %150 = load i8*, i8** %2, align 8
  %151 = load %struct.dirent*, %struct.dirent** %5, align 8
  %152 = getelementptr inbounds %struct.dirent, %struct.dirent* %151, i32 0, i32 4
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %152, i64 0, i64 0
  %154 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %149, i64 noundef 4095, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef %150, i8* noundef %153) #7
  store i32 0, i32* %9, align 4
  store %struct.machine* getelementptr inbounds ([4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 0), %struct.machine** %6, align 8
  br label %155

155:                                              ; preds = %201, %148
  %156 = load %struct.machine*, %struct.machine** %6, align 8
  %157 = getelementptr inbounds %struct.machine, %struct.machine* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %204

160:                                              ; preds = %155
  %161 = load %struct.machine*, %struct.machine** %6, align 8
  %162 = getelementptr inbounds %struct.machine, %struct.machine* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %201

166:                                              ; preds = %160
  %167 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %168 = load %struct.args*, %struct.args** %12, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.args, %struct.args* %168, i64 %170
  %172 = getelementptr inbounds %struct.args, %struct.args* %171, i32 0, i32 0
  store i8* %167, i8** %172, align 8
  %173 = load %struct.machine*, %struct.machine** %6, align 8
  %174 = load %struct.args*, %struct.args** %12, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.args, %struct.args* %174, i64 %176
  %178 = getelementptr inbounds %struct.args, %struct.args* %177, i32 0, i32 1
  store %struct.machine* %173, %struct.machine** %178, align 8
  %179 = load i8**, i8*** %8, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.args*, %struct.args** %12, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.args, %struct.args* %184, i64 %186
  %188 = getelementptr inbounds %struct.args, %struct.args* %187, i32 0, i32 2
  store i8* %183, i8** %188, align 8
  %189 = load i64*, i64** %11, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load %struct.args*, %struct.args** %12, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.args, %struct.args* %193, i64 %195
  %197 = bitcast %struct.args* %196 to i8*
  %198 = call i32 @pthread_create(i64* noundef %192, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @scan, i8* noundef %197) #7
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %166, %165
  %202 = load %struct.machine*, %struct.machine** %6, align 8
  %203 = getelementptr inbounds %struct.machine, %struct.machine* %202, i32 1
  store %struct.machine* %203, %struct.machine** %6, align 8
  br label %155, !llvm.loop !10

204:                                              ; preds = %155
  store i32 0, i32* %10, align 4
  br label %205

205:                                              ; preds = %209, %204
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %9, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = load i64*, i64** %11, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @pthread_join(i64 noundef %214, i8** noundef null)
  br label %205, !llvm.loop !11

216:                                              ; preds = %205
  %217 = load %struct.args*, %struct.args** %12, align 8
  %218 = bitcast %struct.args* %217 to i8*
  call void @free(i8* noundef %218) #7
  %219 = load i64*, i64** %11, align 8
  %220 = bitcast i64* %219 to i8*
  call void @free(i8* noundef %220) #7
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %291, %216
  %222 = load i32, i32* %3, align 4
  %223 = load i32, i32* %4, align 4
  %224 = sub nsw i32 %223, 2
  %225 = icmp sle i32 %222, %224
  br i1 %225, label %226, label %294

226:                                              ; preds = %221
  %227 = load i32, i32* %3, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %287, %226
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %4, align 4
  %232 = sub nsw i32 %231, 1
  %233 = icmp sle i32 %230, %232
  br i1 %233, label %234, label %290

234:                                              ; preds = %229
  %235 = load i8**, i8*** %8, align 8
  %236 = load i32, i32* %3, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = call i8* @strchr(i8* noundef %239, i32 noundef 32) #9
  store i8* %240, i8** %15, align 8
  %241 = load i8**, i8*** %8, align 8
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = call i8* @strchr(i8* noundef %245, i32 noundef 32) #9
  store i8* %246, i8** %16, align 8
  %247 = load i8*, i8** %15, align 8
  %248 = icmp eq i8* %247, null
  br i1 %248, label %257, label %249

249:                                              ; preds = %234
  %250 = load i8*, i8** %16, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %257, label %252

252:                                              ; preds = %249
  %253 = load i8*, i8** %15, align 8
  %254 = load i8*, i8** %16, align 8
  %255 = call i32 @strcmp(i8* noundef %253, i8* noundef %254) #9
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %286

257:                                              ; preds = %252, %249, %234
  %258 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %259 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %258)
  %260 = load i32, i32* %3, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 %261
  %263 = getelementptr inbounds %struct.machine, %struct.machine* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 16
  %265 = load i8*, i8** %15, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %269

267:                                              ; preds = %257
  %268 = load i8*, i8** %15, align 8
  br label %270

269:                                              ; preds = %257
  br label %270

270:                                              ; preds = %269, %267
  %271 = phi i8* [ %268, %267 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %269 ]
  %272 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* noundef %264, i8* noundef %271)
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [4 x %struct.machine], [4 x %struct.machine]* @machines, i64 0, i64 %274
  %276 = getelementptr inbounds %struct.machine, %struct.machine* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 16
  %278 = load i8*, i8** %16, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %270
  %281 = load i8*, i8** %16, align 8
  br label %283

282:                                              ; preds = %270
  br label %283

283:                                              ; preds = %282, %280
  %284 = phi i8* [ %281, %280 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %282 ]
  %285 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* noundef %277, i8* noundef %284)
  store i32 1, i32* %10, align 4
  br label %286

286:                                              ; preds = %283, %252
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %14, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %14, align 4
  br label %229, !llvm.loop !12

290:                                              ; preds = %229
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %3, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %3, align 4
  br label %221, !llvm.loop !13

294:                                              ; preds = %221
  br label %102, !llvm.loop !9

295:                                              ; preds = %102
  %296 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8
  %297 = call i32 @closedir(%struct.__dirstream* noundef %296)
  br label %298

298:                                              ; preds = %295, %141, %128, %96, %82, %57, %44, %21
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
define internal i8* @scan(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.args*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.machine*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [262 x i8], align 16
  %14 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.args*
  store %struct.args* %16, %struct.args** %4, align 8
  %17 = load %struct.args*, %struct.args** %4, align 8
  %18 = getelementptr inbounds %struct.args, %struct.args* %17, i32 0, i32 1
  %19 = load %struct.machine*, %struct.machine** %18, align 8
  store %struct.machine* %19, %struct.machine** %11, align 8
  %20 = load %struct.machine*, %struct.machine** %11, align 8
  %21 = getelementptr inbounds %struct.machine, %struct.machine* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %227

25:                                               ; preds = %1
  %26 = load %struct.machine*, %struct.machine** %11, align 8
  %27 = getelementptr inbounds %struct.machine, %struct.machine* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @htonl(i32 noundef 2130706433) #8
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %25
  %32 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  %33 = load %struct.args*, %struct.args** %4, align 8
  %34 = getelementptr inbounds %struct.args, %struct.args* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %32, i64 noundef 261, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* noundef %35) #7
  %37 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  %38 = call i64 @strlen(i8* noundef %37) #9
  store i64 %38, i64* %8, align 8
  %39 = load %struct.machine*, %struct.machine** %11, align 8
  %40 = getelementptr inbounds %struct.machine, %struct.machine* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @send(i32 noundef %41, i8* noundef %42, i64 noundef %43, i32 noundef 0)
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load %struct.machine*, %struct.machine** %11, align 8
  %49 = getelementptr inbounds %struct.machine, %struct.machine* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  call void @perror(i8* noundef %50)
  store i8* null, i8** %2, align 8
  br label %227

51:                                               ; preds = %31
  %52 = load %struct.machine*, %struct.machine** %11, align 8
  %53 = getelementptr inbounds %struct.machine, %struct.machine* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.args*, %struct.args** %4, align 8
  %56 = getelementptr inbounds %struct.args, %struct.args* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @recv(i32 noundef %54, i8* noundef %57, i64 noundef 128, i32 noundef 0)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.machine*, %struct.machine** %11, align 8
  %63 = getelementptr inbounds %struct.machine, %struct.machine* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  call void @perror(i8* noundef %64)
  store i8* null, i8** %2, align 8
  br label %227

65:                                               ; preds = %51
  %66 = load %struct.args*, %struct.args** %4, align 8
  %67 = getelementptr inbounds %struct.args, %struct.args* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub nsw i64 %69, 1
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 0, i8* %71, align 1
  store i8* null, i8** %2, align 8
  br label %227

72:                                               ; preds = %25
  %73 = load %struct.args*, %struct.args** %4, align 8
  %74 = getelementptr inbounds %struct.args, %struct.args* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call noalias %struct._IO_FILE* @fopen(i8* noundef %75, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store %struct._IO_FILE* %76, %struct._IO_FILE** %5, align 8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %78 = icmp eq %struct._IO_FILE* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.args*, %struct.args** %4, align 8
  %81 = getelementptr inbounds %struct.args, %struct.args* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  call void @perror(i8* noundef %82)
  store i8* null, i8** %2, align 8
  br label %227

83:                                               ; preds = %72
  %84 = load %struct.machine*, %struct.machine** %11, align 8
  %85 = getelementptr inbounds %struct.machine, %struct.machine* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @send(i32 noundef %86, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i64 noundef 7, i32 noundef 0)
  %88 = icmp ne i64 %87, 7
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.machine*, %struct.machine** %11, align 8
  %91 = getelementptr inbounds %struct.machine, %struct.machine* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  call void @perror(i8* noundef %92)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %94 = call i32 @fclose(%struct._IO_FILE* noundef %93)
  store i8* null, i8** %2, align 8
  br label %227

95:                                               ; preds = %83
  %96 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  store i32 %96, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = call i32 @fputs(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), %struct._IO_FILE* noundef %99)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %102 = call i32 @fclose(%struct._IO_FILE* noundef %101)
  store i8* null, i8** %2, align 8
  br label %227

103:                                              ; preds = %95
  %104 = load %struct.machine*, %struct.machine** %11, align 8
  %105 = getelementptr inbounds %struct.machine, %struct.machine* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %108 = call i64 @recv(i32 noundef %106, i8* noundef %107, i64 noundef 1024, i32 noundef 0)
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %7, align 8
  %110 = icmp sle i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load %struct.machine*, %struct.machine** %11, align 8
  %113 = getelementptr inbounds %struct.machine, %struct.machine* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  call void @perror(i8* noundef %114)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @close(i32 noundef %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %118 = call i32 @fclose(%struct._IO_FILE* noundef %117)
  store i8* null, i8** %2, align 8
  br label %227

119:                                              ; preds = %103
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 %120
  store i8 0, i8* %121, align 1
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %123 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %122, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i16* noundef %9) #7
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %126, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i8* noundef %127)
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @close(i32 noundef %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %132 = call i32 @fclose(%struct._IO_FILE* noundef %131)
  store i8* null, i8** %2, align 8
  br label %227

133:                                              ; preds = %119
  %134 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %134, i8 0, i64 16, i1 false)
  %135 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %135, align 4
  %136 = load i16, i16* %9, align 2
  %137 = call zeroext i16 @htons(i16 noundef zeroext %136) #8
  %138 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %137, i16* %138, align 2
  %139 = load %struct.machine*, %struct.machine** %11, align 8
  %140 = getelementptr inbounds %struct.machine, %struct.machine* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %143 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %6, align 4
  %145 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %146 = call i32 @connect(i32 noundef %144, %struct.sockaddr* noundef %145, i32 noundef 16)
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %133
  %149 = load %struct.machine*, %struct.machine** %11, align 8
  %150 = getelementptr inbounds %struct.machine, %struct.machine* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  call void @perror(i8* noundef %151)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %153 = load i16, i16* %9, align 2
  %154 = zext i16 %153 to i32
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 noundef %154)
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @close(i32 noundef %156)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %159 = call i32 @fclose(%struct._IO_FILE* noundef %158)
  store i8* null, i8** %2, align 8
  br label %227

160:                                              ; preds = %133
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @shutdown(i32 noundef %161, i32 noundef 0) #7
  br label %163

163:                                              ; preds = %195, %160
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %166 = call i64 @fread(i8* noundef %164, i64 noundef 1, i64 noundef 1024, %struct._IO_FILE* noundef %165)
  store i64 %166, i64* %8, align 8
  %167 = icmp ugt i64 %166, 0
  br i1 %167, label %168, label %196

168:                                              ; preds = %163
  %169 = load i32, i32* %6, align 4
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %171 = load i64, i64* %8, align 8
  %172 = call i64 @send(i32 noundef %169, i8* noundef %170, i64 noundef %171, i32 noundef 0)
  store i64 %172, i64* %14, align 8
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %8, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %168
  %177 = load i64, i64* %14, align 8
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.machine*, %struct.machine** %11, align 8
  %181 = getelementptr inbounds %struct.machine, %struct.machine* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  call void @perror(i8* noundef %182)
  br label %194

183:                                              ; preds = %176
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %185 = load %struct.args*, %struct.args** %4, align 8
  %186 = getelementptr inbounds %struct.args, %struct.args* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load i64, i64* %8, align 8
  %190 = load %struct.machine*, %struct.machine** %11, align 8
  %191 = getelementptr inbounds %struct.machine, %struct.machine* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %184, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* noundef %187, i64 noundef %188, i64 noundef %189, i8* noundef %192)
  br label %194

194:                                              ; preds = %183, %179
  br label %196

195:                                              ; preds = %168
  br label %163, !llvm.loop !14

196:                                              ; preds = %194, %163
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @close(i32 noundef %197)
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %200 = call i32 @fclose(%struct._IO_FILE* noundef %199)
  %201 = load %struct.machine*, %struct.machine** %11, align 8
  %202 = getelementptr inbounds %struct.machine, %struct.machine* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.args*, %struct.args** %4, align 8
  %205 = getelementptr inbounds %struct.args, %struct.args* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @recv(i32 noundef %203, i8* noundef %206, i64 noundef 128, i32 noundef 0)
  store i64 %207, i64* %7, align 8
  %208 = load i64, i64* %7, align 8
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %196
  %211 = load %struct.machine*, %struct.machine** %11, align 8
  %212 = getelementptr inbounds %struct.machine, %struct.machine* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  call void @perror(i8* noundef %213)
  store i8* null, i8** %2, align 8
  br label %227

214:                                              ; preds = %196
  %215 = load %struct.args*, %struct.args** %4, align 8
  %216 = getelementptr inbounds %struct.args, %struct.args* %215, i32 0, i32 2
  %217 = load i8*, i8** %216, align 8
  %218 = load i64, i64* %7, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = load i64, i64* %7, align 8
  %222 = sub nsw i64 %221, 1
  br label %224

223:                                              ; preds = %214
  br label %224

224:                                              ; preds = %223, %220
  %225 = phi i64 [ %222, %220 ], [ 0, %223 ]
  %226 = getelementptr inbounds i8, i8* %217, i64 %225
  store i8 0, i8* %226, align 1
  store i8* null, i8** %2, align 8
  br label %227

227:                                              ; preds = %224, %210, %148, %125, %111, %98, %89, %79, %65, %61, %47, %24
  %228 = load i8*, i8** %2, align 8
  ret i8* %228
}

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @htonl(i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local zeroext i16 @htons(i16 noundef zeroext) #4

declare dso_local i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @shutdown(i32 noundef, i32 noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @inet_addr(i8* noundef) #2

declare dso_local %struct.hostent* @gethostbyname(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local %struct.protoent* @getprotobyname(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { nounwind readonly willreturn }

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
