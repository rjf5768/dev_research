; ModuleID = './cmdLineParser.ll'
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
  %8 = call %struct.MyOptionSt* @myOptionAlloc(i8* noundef %0, i8 noundef signext %1, i32 noundef %2, i8 noundef signext %3, i8* noundef %4, i32 noundef %5, i8* noundef %6)
  %.not = icmp eq %struct.MyOptionSt* %8, null
  br i1 %.not, label %9, label %10

9:                                                ; preds = %7
  br label %19

10:                                               ; preds = %7
  %11 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %.not1 = icmp eq %struct.MyOptionSt* %11, null
  br i1 %.not1, label %12, label %13

12:                                               ; preds = %10
  store %struct.MyOptionSt* %8, %struct.MyOptionSt** @myargs, align 8
  br label %18

13:                                               ; preds = %10
  %14 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %15 = call %struct.MyOptionSt* @lastOption(%struct.MyOptionSt* noundef %14)
  %16 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %15, i64 0, i32 7
  %17 = bitcast i8** %16 to %struct.MyOptionSt**
  store %struct.MyOptionSt* %8, %struct.MyOptionSt** %17, align 8
  br label %18

18:                                               ; preds = %13, %12
  br label %19

19:                                               ; preds = %18, %9
  %.0 = phi i32 [ 0, %18 ], [ 1, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal noalias %struct.MyOptionSt* @myOptionAlloc(i8* noundef %0, i8 noundef signext %1, i32 noundef %2, i8 noundef signext %3, i8* noundef %4, i32 noundef %5, i8* noundef %6) #0 {
  %8 = call i8* @comdCalloc(i64 noundef 1, i64 noundef 48)
  %9 = call i8* @dupString(i8* noundef %6)
  %10 = bitcast i8* %8 to i8**
  store i8* %9, i8** %10, align 8
  %11 = call i8* @dupString(i8* noundef %0)
  %12 = getelementptr inbounds i8, i8* %8, i64 8
  %13 = bitcast i8* %12 to i8**
  store i8* %11, i8** %13, align 8
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %8, i64 16
  store i8 %1, i8* %15, align 8
  br label %21

16:                                               ; preds = %7
  %17 = load i32, i32* @myOptionAlloc.iBase, align 4
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds i8, i8* %8, i64 16
  store i8 %18, i8* %19, align 8
  %20 = add nsw i32 %17, 1
  store i32 %20, i32* @myOptionAlloc.iBase, align 4
  br label %21

21:                                               ; preds = %16, %14
  %22 = getelementptr inbounds i8, i8* %8, i64 20
  %23 = bitcast i8* %22 to i32*
  store i32 %2, i32* %23, align 4
  %24 = getelementptr inbounds i8, i8* %8, i64 24
  store i8 %3, i8* %24, align 8
  %25 = getelementptr inbounds i8, i8* %8, i64 32
  %26 = bitcast i8* %25 to i8**
  store i8* %4, i8** %26, align 8
  %27 = getelementptr inbounds i8, i8* %8, i64 28
  %28 = bitcast i8* %27 to i32*
  store i32 %5, i32* %28, align 4
  %.not1 = icmp eq i8* %0, null
  br i1 %.not1, label %42, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @longest, align 4
  %31 = sext i32 %30 to i64
  %32 = call i64 @strlen(i8* noundef nonnull %0) #7
  %33 = icmp ult i64 %32, %31
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @longest, align 4
  %36 = sext i32 %35 to i64
  br label %39

37:                                               ; preds = %29
  %38 = call i64 @strlen(i8* noundef nonnull %0) #7
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i64 [ %36, %34 ], [ %38, %37 ]
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @longest, align 4
  br label %42

42:                                               ; preds = %39, %21
  %43 = bitcast i8* %8 to %struct.MyOptionSt*
  ret %struct.MyOptionSt* %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal %struct.MyOptionSt* @lastOption(%struct.MyOptionSt* noundef readonly %0) #1 {
  %.not = icmp eq %struct.MyOptionSt* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %13

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %8, %3
  %.01 = phi %struct.MyOptionSt* [ %0, %3 ], [ %11, %8 ]
  %5 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.01, i64 0, i32 7
  %6 = bitcast i8** %5 to %struct.MyOptionSt**
  %7 = load %struct.MyOptionSt*, %struct.MyOptionSt** %6, align 8
  %.not2 = icmp eq %struct.MyOptionSt* %7, null
  br i1 %.not2, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.01, i64 0, i32 7
  %10 = bitcast i8** %9 to %struct.MyOptionSt**
  %11 = load %struct.MyOptionSt*, %struct.MyOptionSt** %10, align 8
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %2
  %.0 = phi %struct.MyOptionSt* [ %.01, %12 ], [ %0, %2 ]
  ret %struct.MyOptionSt* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeArgs() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %2 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %.not = icmp eq %struct.MyOptionSt* %2, null
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %5 = call %struct.MyOptionSt* @myOptionFree(%struct.MyOptionSt* noundef %4)
  store %struct.MyOptionSt* %5, %struct.MyOptionSt** @myargs, align 8
  br label %1, !llvm.loop !6

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.MyOptionSt* @myOptionFree(%struct.MyOptionSt* noundef %0) #0 {
  %.not = icmp eq %struct.MyOptionSt* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %20

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %0, i64 0, i32 7
  %5 = bitcast i8** %4 to %struct.MyOptionSt**
  %6 = load %struct.MyOptionSt*, %struct.MyOptionSt** %5, align 8
  %7 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %0, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %.not1 = icmp eq i8* %8, null
  br i1 %.not1, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %0, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8
  call void @free(i8* noundef %11) #8
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %0, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %.not2 = icmp eq i8* %14, null
  br i1 %.not2, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %0, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8
  call void @free(i8* noundef %17) #8
  br label %18

18:                                               ; preds = %15, %12
  %19 = bitcast %struct.MyOptionSt* %0 to i8*
  call void @free(i8* noundef %19) #8
  br label %20

20:                                               ; preds = %18, %2
  %.0 = phi %struct.MyOptionSt* [ %6, %18 ], [ null, %2 ]
  ret %struct.MyOptionSt* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printArgs() #0 {
  %1 = alloca [4096 x i8], align 16
  %2 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %3)
  %5 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %6 = load i32, i32* @longest, align 4
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6) #8
  br label %8

8:                                                ; preds = %15, %0
  %.0 = phi %struct.MyOptionSt* [ %2, %0 ], [ %34, %15 ]
  %.not = icmp eq %struct.MyOptionSt* %.0, null
  br i1 %.not, label %35, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.0, i64 0, i32 2, i64 0
  %11 = load i8, i8* %10, align 8
  %.not2 = icmp eq i8 %11, -1
  br i1 %.not2, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.0, i64 0, i32 2, i64 0
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %12
  %.01 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %14 ]
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %18 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.0, i64 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef nonnull %17, i8* noundef %19) #8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = load i8, i8* %.01, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.0, i64 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.0, i64 0, i32 4
  %27 = load i8, i8* %26, align 8
  %28 = sext i8 %27 to i32
  %29 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.0, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 noundef %23, i32 noundef %25, i32 noundef %28, i8* noundef %30) #8
  %32 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.0, i64 0, i32 7
  %33 = bitcast i8** %32 to %struct.MyOptionSt**
  %34 = load %struct.MyOptionSt*, %struct.MyOptionSt** %33, align 8
  br label %8, !llvm.loop !7

35:                                               ; preds = %8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %36)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @processArgs(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %.not = icmp eq %struct.MyOptionSt* %4, null
  br i1 %.not, label %5, label %6

5:                                                ; preds = %2
  br label %118

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %8, %6
  %.02.in = phi %struct.MyOptionSt** [ @myargs, %6 ], [ %11, %8 ]
  %.01 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %.02 = load %struct.MyOptionSt*, %struct.MyOptionSt** %.02.in, align 8
  %.not4 = icmp eq %struct.MyOptionSt* %.02, null
  br i1 %.not4, label %12, label %8

8:                                                ; preds = %7
  %9 = add nuw nsw i32 %.01, 1
  %10 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.02, i64 0, i32 7
  %11 = bitcast i8** %10 to %struct.MyOptionSt**
  br label %7, !llvm.loop !8

12:                                               ; preds = %7
  %13 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %14 = shl nuw i32 %.01, 1
  %15 = add i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = call i8* @comdCalloc(i64 noundef %16, i64 noundef 1)
  %18 = zext i32 %.01 to i64
  %19 = call i8* @comdCalloc(i64 noundef %18, i64 noundef 32)
  %20 = bitcast i8* %19 to %struct.option*
  br label %21

21:                                               ; preds = %46, %12
  %.1 = phi %struct.MyOptionSt* [ %13, %12 ], [ %49, %46 ]
  %.0 = phi i32 [ 0, %12 ], [ %50, %46 ]
  %22 = icmp ult i32 %.0, %.01
  br i1 %22, label %23, label %51

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.1, i64 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = zext i32 %.0 to i64
  %27 = getelementptr inbounds %struct.option, %struct.option* %20, i64 %26, i32 0
  store i8* %25, i8** %27, align 8
  %28 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.1, i64 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds %struct.option, %struct.option* %20, i64 %30, i32 1
  store i32 %29, i32* %31, align 8
  %32 = zext i32 %.0 to i64
  %33 = getelementptr inbounds %struct.option, %struct.option* %20, i64 %32, i32 2
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.1, i64 0, i32 2, i64 0
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = zext i32 %.0 to i64
  %38 = getelementptr inbounds %struct.option, %struct.option* %20, i64 %37, i32 3
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.1, i64 0, i32 2, i64 0
  %40 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %17, i8* noundef nonnull %39) #8
  %41 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.1, i64 0, i32 3
  %42 = load i32, i32* %41, align 4
  %.not7 = icmp eq i32 %42, 0
  br i1 %.not7, label %45, label %43

43:                                               ; preds = %23
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) %17)
  %endptr = getelementptr i8, i8* %17, i64 %strlen
  %44 = bitcast i8* %endptr to i16*
  store i16 58, i16* %44, align 1
  br label %45

45:                                               ; preds = %43, %23
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.1, i64 0, i32 7
  %48 = bitcast i8** %47 to %struct.MyOptionSt**
  %49 = load %struct.MyOptionSt*, %struct.MyOptionSt** %48, align 8
  %50 = add nuw nsw i32 %.0, 1
  br label %21, !llvm.loop !9

51:                                               ; preds = %21
  br label %52

52:                                               ; preds = %116, %51
  store i32 0, i32* %3, align 4
  %53 = call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %17, %struct.option* noundef %20, i32* noundef nonnull %3) #8
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %117

56:                                               ; preds = %52
  %57 = load %struct.MyOptionSt*, %struct.MyOptionSt** @myargs, align 8
  %58 = trunc i32 %53 to i8
  %59 = call %struct.MyOptionSt* @findOption(%struct.MyOptionSt* noundef %57, i8 noundef zeroext %58)
  %.not5 = icmp eq %struct.MyOptionSt* %59, null
  br i1 %.not5, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 noundef %53) #8
  br label %117

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 3
  %65 = load i32, i32* %64, align 4
  %.not6 = icmp eq i32 %65, 0
  br i1 %.not6, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 6
  %68 = bitcast i8** %67 to i32**
  %69 = load i32*, i32** %68, align 8
  store i32 1, i32* %69, align 4
  br label %116

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 4
  %72 = load i8, i8* %71, align 8
  %73 = sext i8 %72 to i32
  switch i32 %73, label %112 [
    i32 105, label %74
    i32 102, label %80
    i32 100, label %86
    i32 115, label %92
    i32 99, label %107
  ]

74:                                               ; preds = %70
  %75 = load i8*, i8** @optarg, align 8
  %76 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 6
  %77 = bitcast i8** %76 to i32**
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %75, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* noundef %78) #8
  br label %115

80:                                               ; preds = %70
  %81 = load i8*, i8** @optarg, align 8
  %82 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 6
  %83 = bitcast i8** %82 to float**
  %84 = load float*, float** %83, align 8
  %85 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %81, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), float* noundef %84) #8
  br label %115

86:                                               ; preds = %70
  %87 = load i8*, i8** @optarg, align 8
  %88 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 6
  %89 = bitcast i8** %88 to double**
  %90 = load double*, double** %89, align 8
  %91 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %87, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double* noundef %90) #8
  br label %115

92:                                               ; preds = %70
  %93 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 6
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** @optarg, align 8
  %96 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %94, i8* noundef %95, i64 noundef %98) #8
  %100 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 6
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, -1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  store i8 0, i8* %106, align 1
  br label %115

107:                                              ; preds = %70
  %108 = load i8*, i8** @optarg, align 8
  %109 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %59, i64 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %108, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef %110) #8
  br label %115

112:                                              ; preds = %70
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i64 0, i64 0), i32 noundef %53) #8
  br label %115

115:                                              ; preds = %112, %107, %92, %86, %80, %74
  br label %116

116:                                              ; preds = %115, %66
  br label %52

117:                                              ; preds = %60, %55
  call void @free(i8* noundef %19) #8
  call void @free(i8* noundef %17) #8
  br label %118

118:                                              ; preds = %117, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @comdCalloc(i64 noundef %0, i64 noundef %1) #0 {
  %3 = call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #8
  ret i8* %3
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal %struct.MyOptionSt* @findOption(%struct.MyOptionSt* noundef readonly %0, i8 noundef zeroext %1) #1 {
  br label %3

3:                                                ; preds = %9, %2
  %.01 = phi %struct.MyOptionSt* [ %0, %2 ], [ %12, %9 ]
  %.not = icmp eq %struct.MyOptionSt* %.01, null
  br i1 %.not, label %13, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.01, i64 0, i32 2, i64 0
  %6 = load i8, i8* %5, align 8
  %7 = icmp eq i8 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MyOptionSt, %struct.MyOptionSt* %.01, i64 0, i32 7
  %11 = bitcast i8** %10 to %struct.MyOptionSt**
  %12 = load %struct.MyOptionSt*, %struct.MyOptionSt** %11, align 8
  br label %3, !llvm.loop !10

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %8
  ret %struct.MyOptionSt* %.01
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @dupString(i8* noundef %0) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1
  %.0 = phi i8* [ %0, %1 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), %2 ]
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.0) #7
  %5 = add i64 %4, 1
  %6 = call i8* @comdCalloc(i64 noundef %5, i64 noundef 1)
  %7 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %.0) #8
  ret i8* %6
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly willreturn }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
