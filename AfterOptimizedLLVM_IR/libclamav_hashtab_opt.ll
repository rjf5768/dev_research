; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_hashtab.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_hashtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtable = type { %struct.element*, i64, i64, i64 }
%struct.element = type { i8*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@DELETED_KEY = internal global [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [79 x i8] c"hashtab.c:Growing hashtable %p, because it has exceeded maxfill, old size:%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"hashtab.c: Growing hashtable %p, because its full, old size:%ld.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"hashtab.c: Unable to grow hashtable\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%ld %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"/* TODO: include GPL headers */\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"#include <hashtab.h>\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"static struct element %s_elements[] = {\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\09{NULL, 0},\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\09{DELETED_KEY,0},\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\09{(const unsigned char*)\22%s\22, %ld},\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"const struct hashtable %s = {\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\09%s_elements, %ld, %ld, %ld\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%d %1023s\00", align 1
@prime_list = internal constant [27 x i64] [i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473], align 16
@.str.15 = private unnamed_addr constant [37 x i8] c"Requested hashtable size is too big!\00", align 1
@.str.16 = private unnamed_addr constant [143 x i8] c"hashtab.c: Warning: growing open-addressing hashtables is slow. Either allocate more storage when initializing, or use other hashtable types!\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"hashtab.c: Impossible - unable to rehash table\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Table %p size after grow:%ld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_init(%struct.hashtable* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashtable*, align 8
  %5 = alloca i64, align 8
  store %struct.hashtable* %0, %struct.hashtable** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %7 = icmp ne %struct.hashtable* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 -111, i32* %3, align 4
  br label %33

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @get_nearest_capacity(i64 noundef %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @cli_calloc(i64 noundef %12, i64 noundef 16)
  %14 = bitcast i8* %13 to %struct.element*
  %15 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  store %struct.element* %14, %struct.element** %16, align 8
  %17 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %18 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %17, i32 0, i32 0
  %19 = load %struct.element*, %struct.element** %18, align 8
  %20 = icmp ne %struct.element* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  store i32 -114, i32* %3, align 4
  br label %33

22:                                               ; preds = %9
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %25 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %27 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = mul i64 8, %28
  %30 = udiv i64 %29, 10
  %31 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %32 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %21, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @get_nearest_capacity(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 27
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds [27 x i64], [27 x i64]* @prime_list, i64 0, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds [27 x i64], [27 x i64]* @prime_list, i64 0, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %2, align 8
  br label %24

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %5, !llvm.loop !4

22:                                               ; preds = %5
  call void (i8*, ...) @cli_errmsg(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  %23 = load i64, i64* getelementptr inbounds ([27 x i64], [27 x i64]* @prime_list, i64 0, i64 26), align 16
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %22, %14
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i8* @cli_calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.element* @hashtab_find(%struct.hashtable* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.element*, align 8
  %5 = alloca %struct.hashtable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.element*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hashtable* %0, %struct.hashtable** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 1, i64* %9, align 8
  %11 = load %struct.hashtable*, %struct.hashtable** %5, align 8
  %12 = icmp ne %struct.hashtable* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.element* null, %struct.element** %4, align 8
  br label %70

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.hashtable*, %struct.hashtable** %5, align 8
  %18 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @hash(i8* noundef %15, i64 noundef %16, i64 noundef %19)
  store i64 %20, i64* %10, align 8
  %21 = load %struct.hashtable*, %struct.hashtable** %5, align 8
  %22 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 0
  %23 = load %struct.element*, %struct.element** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.element, %struct.element* %23, i64 %24
  store %struct.element* %25, %struct.element** %8, align 8
  br label %26

26:                                               ; preds = %63, %14
  %27 = load %struct.element*, %struct.element** %8, align 8
  %28 = getelementptr inbounds %struct.element, %struct.element* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store %struct.element* null, %struct.element** %4, align 8
  br label %70

32:                                               ; preds = %26
  %33 = load %struct.element*, %struct.element** %8, align 8
  %34 = getelementptr inbounds %struct.element, %struct.element* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.element*, %struct.element** %8, align 8
  %40 = getelementptr inbounds %struct.element, %struct.element* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @strncmp(i8* noundef %38, i8* noundef %41, i64 noundef %42) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load %struct.element*, %struct.element** %8, align 8
  store %struct.element* %46, %struct.element** %4, align 8
  br label %70

47:                                               ; preds = %37, %32
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  %51 = add i64 %48, %49
  %52 = load %struct.hashtable*, %struct.hashtable** %5, align 8
  %53 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = urem i64 %51, %54
  store i64 %55, i64* %10, align 8
  %56 = load %struct.hashtable*, %struct.hashtable** %5, align 8
  %57 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %56, i32 0, i32 0
  %58 = load %struct.element*, %struct.element** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.element, %struct.element* %58, i64 %59
  store %struct.element* %60, %struct.element** %8, align 8
  br label %61

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.hashtable*, %struct.hashtable** %5, align 8
  %66 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ule i64 %64, %67
  br i1 %68, label %26, label %69, !llvm.loop !6

69:                                               ; preds = %63
  store %struct.element* null, %struct.element** %4, align 8
  br label %70

70:                                               ; preds = %69, %45, %31, %13
  %71 = load %struct.element*, %struct.element** %4, align 8
  ret %struct.element* %71
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @hash(i8* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %8, align 8
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i64, i64* %8, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = shl i64 %14, 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = add i64 %15, %21
  %23 = load i64, i64* %6, align 8
  %24 = urem i64 %22, %23
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %13
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %8, align 8
  br label %10, !llvm.loop !7

28:                                               ; preds = %10
  %29 = load i64, i64* %7, align 8
  ret i64 %29
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_insert(%struct.hashtable* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hashtable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.element*, align 8
  %11 = alloca %struct.element*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.hashtable* %0, %struct.hashtable** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.element* null, %struct.element** %11, align 8
  store i64 1, i64* %12, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %16 = icmp ne %struct.hashtable* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -111, i32* %5, align 4
  br label %134

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %129, %18
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %23 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @hash(i8* noundef %20, i64 noundef %21, i64 noundef %24)
  store i64 %25, i64* %13, align 8
  %26 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %27 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %26, i32 0, i32 0
  %28 = load %struct.element*, %struct.element** %27, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds %struct.element, %struct.element* %28, i64 %29
  store %struct.element* %30, %struct.element** %10, align 8
  br label %31

31:                                               ; preds = %117, %19
  %32 = load %struct.element*, %struct.element** %10, align 8
  %33 = getelementptr inbounds %struct.element, %struct.element* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %81, label %36

36:                                               ; preds = %31
  %37 = load %struct.element*, %struct.element** %11, align 8
  %38 = icmp ne %struct.element* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load %struct.element*, %struct.element** %11, align 8
  store %struct.element* %40, %struct.element** %10, align 8
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  %45 = call i8* @cli_malloc(i64 noundef %44)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 -114, i32* %5, align 4
  br label %134

49:                                               ; preds = %42
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  %54 = call i8* @strncpy(i8* noundef %50, i8* noundef %51, i64 noundef %53) #7
  %55 = load i8*, i8** %14, align 8
  %56 = load %struct.element*, %struct.element** %10, align 8
  %57 = getelementptr inbounds %struct.element, %struct.element* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.element*, %struct.element** %10, align 8
  %60 = getelementptr inbounds %struct.element, %struct.element* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %62 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %66 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %69 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ugt i64 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %49
  %73 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %74 = bitcast %struct.hashtable* %73 to i8*
  %75 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %76 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* noundef %74, i64 noundef %77)
  %78 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %79 = call i32 @hashtab_grow(%struct.hashtable* noundef %78)
  br label %80

80:                                               ; preds = %72, %49
  store i32 0, i32* %5, align 4
  br label %134

81:                                               ; preds = %31
  %82 = load %struct.element*, %struct.element** %10, align 8
  %83 = getelementptr inbounds %struct.element, %struct.element* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp eq i8* %84, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load %struct.element*, %struct.element** %10, align 8
  store %struct.element* %87, %struct.element** %11, align 8
  br label %115

88:                                               ; preds = %81
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.element*, %struct.element** %10, align 8
  %91 = getelementptr inbounds %struct.element, %struct.element* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @strncmp(i8* noundef %89, i8* noundef %92, i64 noundef %93) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.element*, %struct.element** %10, align 8
  %99 = getelementptr inbounds %struct.element, %struct.element* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  store i32 0, i32* %5, align 4
  br label %134

100:                                              ; preds = %88
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %12, align 8
  %104 = add i64 %101, %102
  %105 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %106 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = urem i64 %104, %107
  store i64 %108, i64* %13, align 8
  %109 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %110 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %109, i32 0, i32 0
  %111 = load %struct.element*, %struct.element** %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds %struct.element, %struct.element* %111, i64 %112
  store %struct.element* %113, %struct.element** %10, align 8
  br label %114

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %86
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %120 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ule i64 %118, %121
  br i1 %122, label %31, label %123, !llvm.loop !8

123:                                              ; preds = %117
  %124 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %125 = bitcast %struct.hashtable* %124 to i8*
  %126 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %127 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* noundef %125, i64 noundef %128)
  br label %129

129:                                              ; preds = %123
  %130 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %131 = call i32 @hashtab_grow(%struct.hashtable* noundef %130)
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %19, label %133, !llvm.loop !9

133:                                              ; preds = %129
  call void (i8*, ...) @cli_warnmsg(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -114, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %96, %80, %48, %17
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i8* @cli_malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local void @cli_dbgmsg(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @hashtab_grow(%struct.hashtable* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hashtable*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.element*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.element*, align 8
  %10 = alloca i64, align 8
  store %struct.hashtable* %0, %struct.hashtable** %3, align 8
  %11 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @get_nearest_capacity(i64 noundef %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i8* @cli_calloc(i64 noundef %15, i64 noundef 16)
  %17 = bitcast i8* %16 to %struct.element*
  store %struct.element* %17, %struct.element** %5, align 8
  store i64 0, i64* %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %20 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load %struct.element*, %struct.element** %5, align 8
  %25 = icmp ne %struct.element* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %1
  store i32 -114, i32* %2, align 4
  br label %140

27:                                               ; preds = %23
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([143 x i8], [143 x i8]* @.str.16, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %113, %27
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %31 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %28
  %35 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %36 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %35, i32 0, i32 0
  %37 = load %struct.element*, %struct.element** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.element, %struct.element* %37, i64 %38
  %40 = getelementptr inbounds %struct.element, %struct.element* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %112

43:                                               ; preds = %34
  %44 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %45 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %44, i32 0, i32 0
  %46 = load %struct.element*, %struct.element** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.element, %struct.element* %46, i64 %47
  %49 = getelementptr inbounds %struct.element, %struct.element* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %51, label %52, label %112

52:                                               ; preds = %43
  store i64 1, i64* %10, align 8
  %53 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %54 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %53, i32 0, i32 0
  %55 = load %struct.element*, %struct.element** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.element, %struct.element* %55, i64 %56
  %58 = getelementptr inbounds %struct.element, %struct.element* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %61 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %60, i32 0, i32 0
  %62 = load %struct.element*, %struct.element** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.element, %struct.element* %62, i64 %63
  %65 = getelementptr inbounds %struct.element, %struct.element* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strlen(i8* noundef %66) #6
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @hash(i8* noundef %59, i64 noundef %67, i64 noundef %68)
  store i64 %69, i64* %7, align 8
  %70 = load %struct.element*, %struct.element** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.element, %struct.element* %70, i64 %71
  store %struct.element* %72, %struct.element** %9, align 8
  br label %73

73:                                               ; preds = %84, %52
  %74 = load %struct.element*, %struct.element** %9, align 8
  %75 = getelementptr inbounds %struct.element, %struct.element* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp ule i64 %79, %80
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i1 [ false, %73 ], [ %81, %78 ]
  br i1 %83, label %84, label %94

84:                                               ; preds = %82
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %10, align 8
  %88 = add i64 %85, %86
  %89 = load i64, i64* %4, align 8
  %90 = urem i64 %88, %89
  store i64 %90, i64* %7, align 8
  %91 = load %struct.element*, %struct.element** %5, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.element, %struct.element* %91, i64 %92
  store %struct.element* %93, %struct.element** %9, align 8
  br label %73, !llvm.loop !10

94:                                               ; preds = %82
  %95 = load %struct.element*, %struct.element** %9, align 8
  %96 = getelementptr inbounds %struct.element, %struct.element* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = load %struct.element*, %struct.element** %9, align 8
  %101 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %102 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %101, i32 0, i32 0
  %103 = load %struct.element*, %struct.element** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.element, %struct.element* %103, i64 %104
  %106 = bitcast %struct.element* %100 to i8*
  %107 = bitcast %struct.element* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 16, i1 false)
  %108 = load i64, i64* %8, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %8, align 8
  br label %111

110:                                              ; preds = %94
  call void (i8*, ...) @cli_errmsg(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0))
  store i32 -114, i32* %2, align 4
  br label %140

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %43, %34
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %6, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %6, align 8
  br label %28, !llvm.loop !11

116:                                              ; preds = %28
  %117 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %118 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %117, i32 0, i32 0
  %119 = load %struct.element*, %struct.element** %118, align 8
  %120 = bitcast %struct.element* %119 to i8*
  call void @free(i8* noundef %120) #7
  %121 = load %struct.element*, %struct.element** %5, align 8
  %122 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %123 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %122, i32 0, i32 0
  store %struct.element* %121, %struct.element** %123, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %126 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* %4, align 8
  %128 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %129 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load i64, i64* %4, align 8
  %131 = mul i64 %130, 8
  %132 = udiv i64 %131, 10
  %133 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %134 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %136 = bitcast %struct.hashtable* %135 to i8*
  %137 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %138 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* noundef %136, i64 noundef %139)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %116, %110, %26
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local void @cli_warnmsg(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hashtab_delete(%struct.hashtable* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.hashtable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.element*, align 8
  store %struct.hashtable* %0, %struct.hashtable** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call %struct.element* @hashtab_find(%struct.hashtable* noundef %8, i8* noundef %9, i64 noundef %10)
  store %struct.element* %11, %struct.element** %7, align 8
  %12 = load %struct.element*, %struct.element** %7, align 8
  %13 = icmp ne %struct.element* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.element*, %struct.element** %7, align 8
  %16 = getelementptr inbounds %struct.element, %struct.element* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.element*, %struct.element** %7, align 8
  %21 = getelementptr inbounds %struct.element, %struct.element* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  call void @free(i8* noundef %22) #7
  %23 = load %struct.element*, %struct.element** %7, align 8
  %24 = getelementptr inbounds %struct.element, %struct.element* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %26 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %19, %14, %3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @hashtab_clear(%struct.hashtable* noundef %0) #0 {
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i64, align 8
  store %struct.hashtable* %0, %struct.hashtable** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %37, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %4
  %11 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  %13 = load %struct.element*, %struct.element** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.element, %struct.element* %13, i64 %14
  %16 = getelementptr inbounds %struct.element, %struct.element* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %10
  %20 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %21 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 0
  %22 = load %struct.element*, %struct.element** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.element, %struct.element* %22, i64 %23
  %25 = getelementptr inbounds %struct.element, %struct.element* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %30 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %29, i32 0, i32 0
  %31 = load %struct.element*, %struct.element** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.element, %struct.element* %31, i64 %32
  %34 = getelementptr inbounds %struct.element, %struct.element* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  call void @free(i8* noundef %35) #7
  br label %36

36:                                               ; preds = %28, %19, %10
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %4, !llvm.loop !12

40:                                               ; preds = %4
  %41 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %42 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %41, i32 0, i32 0
  %43 = load %struct.element*, %struct.element** %42, align 8
  %44 = bitcast %struct.element* %43 to i8*
  %45 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %46 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %44, i8 0, i64 %47, i1 false)
  %48 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %49 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_store(%struct.hashtable* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.hashtable*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.element*, align 8
  store %struct.hashtable* %0, %struct.hashtable** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %38, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %15 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 0
  %16 = load %struct.element*, %struct.element** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.element, %struct.element* %16, i64 %17
  store %struct.element* %18, %struct.element** %6, align 8
  %19 = load %struct.element*, %struct.element** %6, align 8
  %20 = getelementptr inbounds %struct.element, %struct.element* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = load %struct.element*, %struct.element** %6, align 8
  %25 = getelementptr inbounds %struct.element, %struct.element* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %30 = load %struct.element*, %struct.element** %6, align 8
  %31 = getelementptr inbounds %struct.element, %struct.element* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.element*, %struct.element** %6, align 8
  %34 = getelementptr inbounds %struct.element, %struct.element* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 noundef %32, i8* noundef %35)
  br label %37

37:                                               ; preds = %28, %23, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %7, !llvm.loop !13

41:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_generate_c(%struct.hashtable* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.hashtable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.element*, align 8
  store %struct.hashtable* %0, %struct.hashtable** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* noundef %9)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %14 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 0
  %20 = load %struct.element*, %struct.element** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.element, %struct.element* %20, i64 %21
  store %struct.element* %22, %struct.element** %6, align 8
  %23 = load %struct.element*, %struct.element** %6, align 8
  %24 = getelementptr inbounds %struct.element, %struct.element* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %45

29:                                               ; preds = %17
  %30 = load %struct.element*, %struct.element** %6, align 8
  %31 = getelementptr inbounds %struct.element, %struct.element* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %44

36:                                               ; preds = %29
  %37 = load %struct.element*, %struct.element** %6, align 8
  %38 = getelementptr inbounds %struct.element, %struct.element* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.element*, %struct.element** %6, align 8
  %41 = getelementptr inbounds %struct.element, %struct.element* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* noundef %39, i64 noundef %42)
  br label %44

44:                                               ; preds = %36, %34
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %11, !llvm.loop !14

49:                                               ; preds = %11
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* noundef %51)
  %53 = load i8*, i8** %4, align 8
  %54 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %55 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %58 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %61 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* noundef %53, i64 noundef %56, i64 noundef %59, i64 noundef %62)
  %64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_load(%struct._IO_FILE* noundef %0, %struct.hashtable* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.hashtable*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.hashtable* %1, %struct.hashtable** %4, align 8
  br label %8

8:                                                ; preds = %13, %2
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %11 = call i8* @fgets(i8* noundef %9, i32 noundef 1024, %struct._IO_FILE* noundef %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %14, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* noundef %7, i8* noundef %15) #7
  %17 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %20 = call i64 @strlen(i8* noundef %19) #6
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = call i32 @hashtab_insert(%struct.hashtable* noundef %17, i8* noundef %18, i64 noundef %20, i64 noundef %22)
  br label %8, !llvm.loop !15

24:                                               ; preds = %8
  ret i32 0
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @cli_errmsg(i8* noundef, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
!15 = distinct !{!15, !5}
