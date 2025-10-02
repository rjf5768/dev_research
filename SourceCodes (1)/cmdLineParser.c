; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/cmdLineParser.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/cmdLineParser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MyOptionSt = type { i8*, i8*, [2 x i8], i32, i8, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }

@myargs = internal global %struct.MyOptionSt* null, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A  Arguments are: \0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"   --%%-%ds\00", align 1
@longest = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" -%c  arg=%1d type=%c  %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\0A\0A    invalid switch : -%c in getopt()\0A\0A\0A\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [95 x i8] c"\0A\0A    invalid type : %c in getopt()\0A    valid values are 'e', 'z'. 'i','d','f','s', and 'c'\0A\0A\0A\00", align 1
@myOptionAlloc.iBase = internal global i32 129, align 4
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @addArg(i8* noundef %0, i8 noundef signext %1, i32 noundef %2, i8 noundef signext %3, i8* noundef %4, i32 noundef %5, i8* noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.MyOptionSt*, align 8
  %17 = alloca %struct.MyOptionSt*, align 8
  store i8* %0, i8** %9, align 8
  store i8 %1, i8* %10, align 1
  store i32 %2, i32* %11, align 4
  store i8 %3, i8* %12, align 1
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %10, align 1
  %20 = load i32, i32* %11, align 4
  %21 = load i8, i8* %12, align 1
  %22 = load i8*, i8** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i8*, i8** %15, align 8
  %25 = call %struct.MyOptionSt* @myOptionAlloc(i8* noundef %18, i8 noundef signext %19, i32 noundef %20, i8 noundef signext %21, i8* noundef %22, i32 noundef %23, i8* noundef %24)
  store %struct.MyOptionSt* %25, %struct.MyOptionSt** %16, align 8
  %26 = load %struct.MyOptionSt*, %struct.MyOptionSt** %16, align 8
  %27 = icmp ne %struct.MyOptionSt* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %42

29:                                               ; preds = %7
  %30 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %31 = icmp ne %struct.MyOptionSt* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load %struct.MyOptionSt*, %struct.MyOptionSt** %16, align 8
  store %struct.MyOptionSt* %33, %struct.MyOptionSt** @myargs, align 8
  br label %41

34:                                               ; preds = %29
  %35 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %36 = call %struct.MyOptionSt* @lastOption(%struct.MyOptionSt* noundef %35)
  store %struct.MyOptionSt* %36, %struct.MyOptionSt** %17, align 8
  %37 = load %struct.MyOptionSt*, %struct.MyOptionSt** %16, align 8
  %38 = bitcast %struct.MyOptionSt* %37 to i8*
  %39 = load %struct.MyOptionSt*, %struct.MyOptionSt** %17, align 8
  %40 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %34, %32
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.MyOptionSt* @myOptionAlloc(i8* noundef %0, i8 noundef signext %1, i32 noundef %2, i8 noundef signext %3, i8* noundef %4, i32 noundef %5, i8* noundef %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.MyOptionSt*, align 8
  store i8* %0, i8** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32 %2, i32* %10, align 4
  store i8 %3, i8* %11, align 1
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %16 = call i8* @comdCalloc(i64 noundef 1, i64 noundef 48)
  %17 = bitcast i8* %16 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %17, %struct.MyOptionSt** %15, align 8
  %18 = load i8*, i8** %14, align 8
  %19 = call i8* @dupString(i8* noundef %18)
  %20 = load %struct.MyOptionSt*, %struct.MyOptionSt** %15, align 8
  %21 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @dupString(i8* noundef %22)
  %24 = load %struct.MyOptionSt*, %struct.MyOptionSt** %15, align 8
  %25 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8, i8* %9, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %7
  %29 = load i8, i8* %9, align 1
  %30 = load %struct.MyOptionSt*, %struct.MyOptionSt** %15, align 8
  %31 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %30, i32 0, i32 2
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %31, i64 0, i64 0
  store i8 %29, i8* %32, align 8
  br label %41

33:                                               ; preds = %7
  %34 = load i32, i32* @myOptionAlloc.iBase, align 4
  %35 = trunc i32 %34 to i8
  %36 = load %struct.MyOptionSt*, %struct.MyOptionSt** %15, align 8
  %37 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %36, i32 0, i32 2
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %37, i64 0, i64 0
  store i8 %35, i8* %38, align 8
  %39 = load i32, i32* @myOptionAlloc.iBase, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @myOptionAlloc.iBase, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.MyOptionSt*, %struct.MyOptionSt** %15, align 8
  %44 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i8, i8* %11, align 1
  %46 = load %struct.MyOptionSt*, %struct.MyOptionSt** %15, align 8
  %47 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %46, i32 0, i32 4
  store i8 %45, i8* %47, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.MyOptionSt*, %struct.MyOptionSt** %15, align 8
  %50 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.MyOptionSt*, %struct.MyOptionSt** %15, align 8
  %53 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %41
  %57 = load i32, i32* @longest, align 4
  %58 = sext i32 %57 to i64
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @strlen(i8* noundef %59) #4
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @longest, align 4
  %64 = sext i32 %63 to i64
  br label %68

65:                                               ; preds = %56
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @strlen(i8* noundef %66) #4
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i64 [ %64, %62 ], [ %67, %65 ]
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* @longest, align 4
  br label %71

71:                                               ; preds = %68, %41
  %72 = load %struct.MyOptionSt*, %struct.MyOptionSt** %15, align 8
  ret %struct.MyOptionSt* %72
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.MyOptionSt* @lastOption(%struct.MyOptionSt* noundef %0) #0 {
  %2 = alloca %struct.MyOptionSt*, align 8
  %3 = alloca %struct.MyOptionSt*, align 8
  store %struct.MyOptionSt* %0, %struct.MyOptionSt** %3, align 8
  %4 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %5 = icmp ne %struct.MyOptionSt* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  store %struct.MyOptionSt* %7, %struct.MyOptionSt** %2, align 8
  br label %22

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %15, %8
  %10 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %11 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %10, i32 0, i32 7
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.MyOptionSt*
  %14 = icmp ne %struct.MyOptionSt* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %17 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %16, i32 0, i32 7
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %19, %struct.MyOptionSt** %3, align 8
  br label %9, !llvm.loop !4

20:                                               ; preds = %9
  %21 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  store %struct.MyOptionSt* %21, %struct.MyOptionSt** %2, align 8
  br label %22

22:                                               ; preds = %20, %6
  %23 = load %struct.MyOptionSt*, %struct.MyOptionSt** %2, align 8
  ret %struct.MyOptionSt* %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeArgs() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %3 = icmp ne %struct.MyOptionSt* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %6 = call %struct.MyOptionSt* @myOptionFree(%struct.MyOptionSt* noundef %5)
  store %struct.MyOptionSt* %6, %struct.MyOptionSt** @myargs, align 8
  br label %1, !llvm.loop !6

7:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.MyOptionSt* @myOptionFree(%struct.MyOptionSt* noundef %0) #0 {
  %2 = alloca %struct.MyOptionSt*, align 8
  %3 = alloca %struct.MyOptionSt*, align 8
  %4 = alloca %struct.MyOptionSt*, align 8
  store %struct.MyOptionSt* %0, %struct.MyOptionSt** %3, align 8
  %5 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %6 = icmp ne %struct.MyOptionSt* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.MyOptionSt* null, %struct.MyOptionSt** %2, align 8
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %10 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %9, i32 0, i32 7
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %12, %struct.MyOptionSt** %4, align 8
  %13 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %14 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %19 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  call void @free(i8* noundef %20) #5
  br label %21

21:                                               ; preds = %17, %8
  %22 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %23 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %28 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  call void @free(i8* noundef %29) #5
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  %32 = bitcast %struct.MyOptionSt* %31 to i8*
  call void @free(i8* noundef %32) #5
  %33 = load %struct.MyOptionSt*, %struct.MyOptionSt** %4, align 8
  store %struct.MyOptionSt* %33, %struct.MyOptionSt** %2, align 8
  br label %34

34:                                               ; preds = %30, %7
  %35 = load %struct.MyOptionSt*, %struct.MyOptionSt** %2, align 8
  ret %struct.MyOptionSt* %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printArgs() #0 {
  %1 = alloca %struct.MyOptionSt*, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  store %struct.MyOptionSt* %4, %struct.MyOptionSt** %1, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %8 = load i32, i32* @longest, align 4
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef %8) #5
  br label %10

10:                                               ; preds = %25, %0
  %11 = load %struct.MyOptionSt*, %struct.MyOptionSt** %1, align 8
  %12 = icmp ne %struct.MyOptionSt* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = load %struct.MyOptionSt*, %struct.MyOptionSt** %1, align 8
  %15 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %14, i32 0, i32 2
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %18, 255
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.MyOptionSt*, %struct.MyOptionSt** %1, align 8
  %22 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %21, i32 0, i32 2
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  store i8* %23, i8** %3, align 8
  br label %25

24:                                               ; preds = %13
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %28 = load %struct.MyOptionSt*, %struct.MyOptionSt** %1, align 8
  %29 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef %27, i8* noundef %30)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load %struct.MyOptionSt*, %struct.MyOptionSt** %1, align 8
  %38 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.MyOptionSt*, %struct.MyOptionSt** %1, align 8
  %41 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %40, i32 0, i32 4
  %42 = load i8, i8* %41, align 8
  %43 = sext i8 %42 to i32
  %44 = load %struct.MyOptionSt*, %struct.MyOptionSt** %1, align 8
  %45 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 noundef %36, i32 noundef %39, i32 noundef %43, i8* noundef %46)
  %48 = load %struct.MyOptionSt*, %struct.MyOptionSt** %1, align 8
  %49 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %48, i32 0, i32 7
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %51, %struct.MyOptionSt** %1, align 8
  br label %10, !llvm.loop !7

52:                                               ; preds = %10
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @processArgs(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.MyOptionSt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.option*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %14 = icmp ne %struct.MyOptionSt* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %188

16:                                               ; preds = %2
  %17 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  store %struct.MyOptionSt* %17, %struct.MyOptionSt** %5, align 8
  br label %18

18:                                               ; preds = %21, %16
  %19 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %20 = icmp ne %struct.MyOptionSt* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %25 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %24, i32 0, i32 7
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %27, %struct.MyOptionSt** %5, align 8
  br label %18, !llvm.loop !8

28:                                               ; preds = %18
  %29 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  store %struct.MyOptionSt* %29, %struct.MyOptionSt** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 2
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = call i8* @comdCalloc(i64 noundef %33, i64 noundef 1)
  store i8* %34, i8** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = call i8* @comdCalloc(i64 noundef %36, i64 noundef 32)
  %38 = bitcast i8* %37 to %struct.option*
  store %struct.option* %38, %struct.option** %8, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %92, %28
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %95

43:                                               ; preds = %39
  %44 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %45 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.option*, %struct.option** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.option, %struct.option* %47, i64 %49
  %51 = getelementptr inbounds %struct.option, %struct.option* %50, i32 0, i32 0
  store i8* %46, i8** %51, align 8
  %52 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %53 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.option*, %struct.option** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.option, %struct.option* %55, i64 %57
  %59 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 1
  store i32 %54, i32* %59, align 8
  %60 = load %struct.option*, %struct.option** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.option, %struct.option* %60, i64 %62
  %64 = getelementptr inbounds %struct.option, %struct.option* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %66 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %65, i32 0, i32 2
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %66, i64 0, i64 0
  %68 = load i8, i8* %67, align 8
  %69 = zext i8 %68 to i32
  %70 = load %struct.option*, %struct.option** %8, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.option, %struct.option* %70, i64 %72
  %74 = getelementptr inbounds %struct.option, %struct.option* %73, i32 0, i32 3
  store i32 %69, i32* %74, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %77 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %76, i32 0, i32 2
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %77, i64 0, i64 0
  %79 = call i8* @strcat(i8* noundef %75, i8* noundef %78) #5
  %80 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %81 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %43
  %85 = load i8*, i8** %9, align 8
  %86 = call i8* @strcat(i8* noundef %85, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %87

87:                                               ; preds = %84, %43
  %88 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %89 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %88, i32 0, i32 7
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast i8* %90 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %91, %struct.MyOptionSt** %5, align 8
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %39, !llvm.loop !9

95:                                               ; preds = %39
  br label %96

96:                                               ; preds = %95, %183
  store i32 0, i32* %11, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i8**, i8*** %4, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.option*, %struct.option** %8, align 8
  %101 = call i32 @getopt_long(i32 noundef %97, i8** noundef %98, i8* noundef %99, %struct.option* noundef %100, i32* noundef %11) #5
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %184

105:                                              ; preds = %96
  %106 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %107 = load i32, i32* %10, align 4
  %108 = trunc i32 %107 to i8
  %109 = call %struct.MyOptionSt* @findOption(%struct.MyOptionSt* noundef %106, i8 noundef zeroext %108)
  store %struct.MyOptionSt* %109, %struct.MyOptionSt** %5, align 8
  %110 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %111 = icmp ne %struct.MyOptionSt* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 noundef %114)
  br label %184

116:                                              ; preds = %105
  %117 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %118 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %123 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = bitcast i8* %124 to i32*
  store i32* %125, i32** %12, align 8
  %126 = load i32*, i32** %12, align 8
  store i32 1, i32* %126, align 4
  br label %183

127:                                              ; preds = %116
  %128 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %129 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %128, i32 0, i32 4
  %130 = load i8, i8* %129, align 8
  %131 = sext i8 %130 to i32
  switch i32 %131, label %178 [
    i32 105, label %132
    i32 102, label %139
    i32 100, label %146
    i32 115, label %153
    i32 99, label %172
  ]

132:                                              ; preds = %127
  %133 = load i8*, i8** @optarg, align 8
  %134 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %135 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %134, i32 0, i32 6
  %136 = load i8*, i8** %135, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %133, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* noundef %137) #5
  br label %182

139:                                              ; preds = %127
  %140 = load i8*, i8** @optarg, align 8
  %141 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %142 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %141, i32 0, i32 6
  %143 = load i8*, i8** %142, align 8
  %144 = bitcast i8* %143 to float*
  %145 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %140, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), float* noundef %144) #5
  br label %182

146:                                              ; preds = %127
  %147 = load i8*, i8** @optarg, align 8
  %148 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %149 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %148, i32 0, i32 6
  %150 = load i8*, i8** %149, align 8
  %151 = bitcast i8* %150 to double*
  %152 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %147, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double* noundef %151) #5
  br label %182

153:                                              ; preds = %127
  %154 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %155 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %154, i32 0, i32 6
  %156 = load i8*, i8** %155, align 8
  %157 = load i8*, i8** @optarg, align 8
  %158 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %159 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = call i8* @strncpy(i8* noundef %156, i8* noundef %157, i64 noundef %161) #5
  %163 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %164 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %163, i32 0, i32 6
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %167 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %165, i64 %170
  store i8 0, i8* %171, align 1
  br label %182

172:                                              ; preds = %127
  %173 = load i8*, i8** @optarg, align 8
  %174 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %175 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %174, i32 0, i32 6
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %173, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef %176) #5
  br label %182

178:                                              ; preds = %127
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %179, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i64 0, i64 0), i32 noundef %180)
  br label %182

182:                                              ; preds = %178, %172, %153, %146, %139, %132
  br label %183

183:                                              ; preds = %182, %121
  br label %96

184:                                              ; preds = %112, %104
  %185 = load %struct.option*, %struct.option** %8, align 8
  %186 = bitcast %struct.option* %185 to i8*
  call void @free(i8* noundef %186) #5
  %187 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %187) #5
  br label %188

188:                                              ; preds = %184, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @comdCalloc(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #5
  ret i8* %7
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.MyOptionSt* @findOption(%struct.MyOptionSt* noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.MyOptionSt*, align 8
  %4 = alloca %struct.MyOptionSt*, align 8
  %5 = alloca i8, align 1
  store %struct.MyOptionSt* %0, %struct.MyOptionSt** %4, align 8
  store i8 %1, i8* %5, align 1
  br label %6

6:                                                ; preds = %20, %2
  %7 = load %struct.MyOptionSt*, %struct.MyOptionSt** %4, align 8
  %8 = icmp ne %struct.MyOptionSt* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.MyOptionSt*, %struct.MyOptionSt** %4, align 8
  %11 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %10, i32 0, i32 2
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %13 = load i8, i8* %12, align 8
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load %struct.MyOptionSt*, %struct.MyOptionSt** %4, align 8
  store %struct.MyOptionSt* %19, %struct.MyOptionSt** %3, align 8
  br label %27

20:                                               ; preds = %9
  %21 = load %struct.MyOptionSt*, %struct.MyOptionSt** %4, align 8
  %22 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %21, i32 0, i32 7
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.MyOptionSt*
  store %struct.MyOptionSt* %24, %struct.MyOptionSt** %4, align 8
  br label %6, !llvm.loop !10

25:                                               ; preds = %6
  %26 = load %struct.MyOptionSt*, %struct.MyOptionSt** %4, align 8
  store %struct.MyOptionSt* %26, %struct.MyOptionSt** %3, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = load %struct.MyOptionSt*, %struct.MyOptionSt** %3, align 8
  ret %struct.MyOptionSt* %28
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @dupString(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* noundef %8) #4
  %10 = add i64 %9, 1
  %11 = call i8* @comdCalloc(i64 noundef %10, i64 noundef 1)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @strcpy(i8* noundef %12, i8* noundef %13) #5
  %15 = load i8*, i8** %3, align 8
  ret i8* %15
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
