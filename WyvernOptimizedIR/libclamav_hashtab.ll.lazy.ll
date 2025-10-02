; ModuleID = './libclamav_hashtab.ll'
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
@str = private unnamed_addr constant [32 x i8] c"/* TODO: include GPL headers */\00", align 1
@str.1 = private unnamed_addr constant [21 x i8] c"#include <hashtab.h>\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"\0A};\00", align 1
@str.4 = private unnamed_addr constant [12 x i8] c"\09{NULL, 0},\00", align 1
@str.5 = private unnamed_addr constant [18 x i8] c"\09{DELETED_KEY,0},\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_init(%struct.hashtable* noundef %0, i64 noundef %1) #0 {
  %.not = icmp eq %struct.hashtable* %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %15

4:                                                ; preds = %2
  %5 = call i64 @get_nearest_capacity(i64 noundef %1)
  %6 = call i8* @cli_calloc(i64 noundef %5, i64 noundef 16) #9
  %7 = bitcast %struct.hashtable* %0 to i8**
  store i8* %6, i8** %7, align 8
  %.not1 = icmp eq i8* %6, null
  br i1 %.not1, label %8, label %9

8:                                                ; preds = %4
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  store i64 %5, i64* %10, align 8
  %11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = shl i64 %5, 3
  %13 = udiv i64 %12, 10
  %14 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 3
  store i64 %13, i64* %14, align 8
  br label %15

15:                                               ; preds = %9, %8, %3
  %.0 = phi i32 [ 0, %9 ], [ -114, %8 ], [ -111, %3 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @get_nearest_capacity(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %12, %1
  %.01 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %3 = icmp ult i64 %.01, 27
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = getelementptr inbounds [27 x i64], [27 x i64]* @prime_list, i64 0, i64 %.01
  %6 = load i64, i64* %5, align 8
  %7 = icmp ugt i64 %6, %0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds [27 x i64], [27 x i64]* @prime_list, i64 0, i64 %.01
  %10 = load i64, i64* %9, align 8
  br label %15

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11
  %13 = add i64 %.01, 1
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  call void (i8*, ...) @cli_errmsg(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0)) #9
  br label %15

15:                                               ; preds = %14, %8
  %.0 = phi i64 [ %10, %8 ], [ 3221225473, %14 ]
  ret i64 %.0
}

declare dso_local i8* @cli_calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local %struct.element* @hashtab_find(%struct.hashtable* noundef readonly %0, i8* noundef readonly %1, i64 noundef %2) #2 {
  %.not = icmp eq %struct.hashtable* %0, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %40

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @hash(i8* noundef %1, i64 noundef %2, i64 noundef %7)
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %10 = load %struct.element*, %struct.element** %9, align 8
  %11 = getelementptr inbounds %struct.element, %struct.element* %10, i64 %8
  br label %12

12:                                               ; preds = %36, %5
  %.03 = phi %struct.element* [ %11, %5 ], [ %33, %36 ]
  %.02 = phi i64 [ 1, %5 ], [ %26, %36 ]
  %.01 = phi i64 [ %8, %5 ], [ %30, %36 ]
  %13 = getelementptr inbounds %struct.element, %struct.element* %.03, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %.not6 = icmp eq i8* %14, null
  br i1 %.not6, label %15, label %16

15:                                               ; preds = %12
  br label %40

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.element, %struct.element* %.03, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %.not7 = icmp eq i8* %18, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %.not7, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.element, %struct.element* %.03, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strncmp(i8* noundef %1, i8* noundef %21, i64 noundef %2) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %40

25:                                               ; preds = %19, %16
  %26 = add i64 %.02, 1
  %27 = add i64 %.01, %.02
  %28 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = urem i64 %27, %29
  %31 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %32 = load %struct.element*, %struct.element** %31, align 8
  %33 = getelementptr inbounds %struct.element, %struct.element* %32, i64 %30
  br label %34

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %38 = load i64, i64* %37, align 8
  %.not8 = icmp ugt i64 %26, %38
  br i1 %.not8, label %39, label %12, !llvm.loop !6

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %24, %15, %4
  %.0 = phi %struct.element* [ %.03, %24 ], [ null, %39 ], [ null, %15 ], [ null, %4 ]
  ret %struct.element* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i64 @hash(i8* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #3 {
  br label %4

4:                                                ; preds = %6, %3
  %.01 = phi i64 [ 0, %3 ], [ %13, %6 ]
  %.0 = phi i64 [ %1, %3 ], [ %14, %6 ]
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %15, label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5
  %7 = shl i64 %.01, 8
  %8 = add i64 %.0, -1
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i64
  %12 = or i64 %7, %11
  %13 = urem i64 %12, %2
  %14 = add i64 %.0, -1
  br label %4, !llvm.loop !7

15:                                               ; preds = %4
  ret i64 %.01
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_insert(%struct.hashtable* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %.not = icmp eq %struct.hashtable* %0, null
  br i1 %.not, label %5, label %6

5:                                                ; preds = %4
  br label %74

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %70, %6
  %.04 = phi %struct.element* [ null, %6 ], [ %.26, %70 ]
  %.02 = phi i64 [ 1, %6 ], [ %.2, %70 ]
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @hash(i8* noundef %1, i64 noundef %2, i64 noundef %9)
  %11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %12 = load %struct.element*, %struct.element** %11, align 8
  %13 = getelementptr inbounds %struct.element, %struct.element* %12, i64 %10
  br label %14

14:                                               ; preds = %64, %7
  %.07 = phi %struct.element* [ %13, %7 ], [ %.29, %64 ]
  %.15 = phi %struct.element* [ %.04, %7 ], [ %.26, %64 ]
  %.13 = phi i64 [ %.02, %7 ], [ %.2, %64 ]
  %.01 = phi i64 [ %10, %7 ], [ %.1, %64 ]
  %15 = getelementptr inbounds %struct.element, %struct.element* %.07, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %.not14 = icmp eq i8* %16, null
  br i1 %.not14, label %17, label %40

17:                                               ; preds = %14
  %.not15 = icmp eq %struct.element* %.15, null
  br i1 %.not15, label %19, label %18

18:                                               ; preds = %17
  br label %20

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %18
  %.18 = phi %struct.element* [ %.15, %18 ], [ %.07, %19 ]
  %21 = add i64 %2, 1
  %22 = call i8* @cli_malloc(i64 noundef %21) #9
  %.not16 = icmp eq i8* %22, null
  br i1 %.not16, label %23, label %24

23:                                               ; preds = %20
  br label %74

24:                                               ; preds = %20
  %25 = add i64 %2, 1
  %26 = call i8* @strncpy(i8* noundef nonnull %22, i8* noundef %1, i64 noundef %25) #9
  %27 = getelementptr inbounds %struct.element, %struct.element* %.18, i64 0, i32 0
  store i8* %22, i8** %27, align 8
  %28 = getelementptr inbounds %struct.element, %struct.element* %.18, i64 0, i32 1
  store i64 %3, i64* %28, align 8
  %29 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %37 = load i64, i64* %36, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), %struct.hashtable* noundef nonnull %0, i64 noundef %37) #9
  %38 = call i32 @hashtab_grow(%struct.hashtable* noundef nonnull %0)
  br label %39

39:                                               ; preds = %35, %24
  br label %74

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.element, %struct.element* %.07, i64 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %62

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.element, %struct.element* %.07, i64 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strncmp(i8* noundef %1, i8* noundef %47, i64 noundef %2) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.element, %struct.element* %.07, i64 0, i32 1
  store i64 %3, i64* %51, align 8
  br label %74

52:                                               ; preds = %45
  %53 = add i64 %.01, %.13
  %54 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = urem i64 %53, %55
  br label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %59 = load %struct.element*, %struct.element** %58, align 8
  %60 = getelementptr inbounds %struct.element, %struct.element* %59, i64 %56
  %61 = add i64 %.13, 1
  br label %62

62:                                               ; preds = %57, %44
  %.29 = phi %struct.element* [ %.07, %44 ], [ %60, %57 ]
  %.26 = phi %struct.element* [ %.07, %44 ], [ %.15, %57 ]
  %.2 = phi i64 [ %.13, %44 ], [ %61, %57 ]
  %.1 = phi i64 [ %.01, %44 ], [ %56, %57 ]
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %66 = load i64, i64* %65, align 8
  %.not17 = icmp ugt i64 %.2, %66
  br i1 %.not17, label %67, label %14, !llvm.loop !8

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %69 = load i64, i64* %68, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), %struct.hashtable* noundef nonnull %0, i64 noundef %69) #9
  br label %70

70:                                               ; preds = %67
  %71 = call i32 @hashtab_grow(%struct.hashtable* noundef nonnull %0)
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %7, label %73, !llvm.loop !9

73:                                               ; preds = %70
  call void (i8*, ...) @cli_warnmsg(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)) #9
  br label %74

74:                                               ; preds = %73, %50, %39, %23, %5
  %.0 = phi i32 [ -114, %73 ], [ 0, %50 ], [ 0, %39 ], [ -114, %23 ], [ -111, %5 ]
  ret i32 %.0
}

declare dso_local i8* @cli_malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #5

declare dso_local void @cli_dbgmsg(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @hashtab_grow(%struct.hashtable* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @get_nearest_capacity(i64 noundef %3)
  %5 = call i8* @cli_calloc(i64 noundef %4, i64 noundef 16) #9
  %6 = bitcast i8* %5 to %struct.element*
  %7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %4, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %11, label %12

11:                                               ; preds = %10, %1
  br label %69

12:                                               ; preds = %10
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([143 x i8], [143 x i8]* @.str.16, i64 0, i64 0)) #9
  br label %13

13:                                               ; preds = %58, %12
  %.04 = phi i64 [ 0, %12 ], [ %59, %58 ]
  %.03 = phi i64 [ 0, %12 ], [ %.1, %58 ]
  %14 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %.04, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %19 = load %struct.element*, %struct.element** %18, align 8
  %20 = getelementptr inbounds %struct.element, %struct.element* %19, i64 %.04, i32 0
  %21 = load i8*, i8** %20, align 8
  %.not7 = icmp eq i8* %21, null
  br i1 %.not7, label %57, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %24 = load %struct.element*, %struct.element** %23, align 8
  %25 = getelementptr inbounds %struct.element, %struct.element* %24, i64 %.04, i32 0
  %26 = load i8*, i8** %25, align 8
  %.not8 = icmp eq i8* %26, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %.not8, label %57, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %29 = load %struct.element*, %struct.element** %28, align 8
  %30 = getelementptr inbounds %struct.element, %struct.element* %29, i64 %.04, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %31) #10
  %33 = call i64 @hash(i8* noundef %31, i64 noundef %32, i64 noundef %4)
  br label %34

34:                                               ; preds = %41, %27
  %.05 = phi i64 [ %33, %27 ], [ %44, %41 ]
  %.01 = phi i64 [ 1, %27 ], [ %42, %41 ]
  %.02 = getelementptr inbounds %struct.element, %struct.element* %6, i64 %.05
  %35 = getelementptr inbounds %struct.element, %struct.element* %.02, i64 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %.not9 = icmp eq i8* %36, null
  br i1 %.not9, label %39, label %37

37:                                               ; preds = %34
  %38 = icmp ule i64 %.01, %4
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i1 [ false, %34 ], [ %38, %37 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = add i64 %.01, 1
  %43 = add i64 %.05, %.01
  %44 = urem i64 %43, %4
  br label %34, !llvm.loop !10

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.element, %struct.element* %.02, i64 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %.not10 = icmp eq i8* %47, null
  br i1 %.not10, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %50 = load %struct.element*, %struct.element** %49, align 8
  %51 = getelementptr inbounds %struct.element, %struct.element* %50, i64 %.04
  %52 = bitcast %struct.element* %.02 to i8*
  %53 = bitcast %struct.element* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %52, i8* noundef nonnull align 8 dereferenceable(16) %53, i64 16, i1 false)
  br label %55

54:                                               ; preds = %45
  call void (i8*, ...) @cli_errmsg(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0)) #9
  br label %69

55:                                               ; preds = %48
  %56 = add i64 %.03, 1
  br label %57

57:                                               ; preds = %55, %22, %17
  %.1 = phi i64 [ %56, %55 ], [ %.03, %22 ], [ %.03, %17 ]
  br label %58

58:                                               ; preds = %57
  %59 = add i64 %.04, 1
  br label %13, !llvm.loop !11

60:                                               ; preds = %13
  %61 = bitcast %struct.hashtable* %0 to i8**
  %62 = load i8*, i8** %61, align 8
  call void @free(i8* noundef %62) #9
  %63 = bitcast %struct.hashtable* %0 to i8**
  store i8* %5, i8** %63, align 8
  %64 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 2
  store i64 %.03, i64* %64, align 8
  %65 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  store i64 %4, i64* %65, align 8
  %66 = shl i64 %4, 3
  %67 = udiv i64 %66, 10
  %68 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 3
  store i64 %67, i64* %68, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), %struct.hashtable* noundef %0, i64 noundef %4) #9
  br label %69

69:                                               ; preds = %60, %54, %11
  %.0 = phi i32 [ -114, %11 ], [ -114, %54 ], [ 0, %60 ]
  ret i32 %.0
}

declare dso_local void @cli_warnmsg(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hashtab_delete(%struct.hashtable* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = call %struct.element* @hashtab_find(%struct.hashtable* noundef %0, i8* noundef %1, i64 noundef %2)
  %.not = icmp eq %struct.element* %4, null
  br i1 %.not, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.element, %struct.element* %4, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %.not1 = icmp eq i8* %7, null
  br i1 %.not1, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.element, %struct.element* %4, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %10) #9
  %11 = getelementptr inbounds %struct.element, %struct.element* %4, i64 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %8, %5, %3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @hashtab_clear(%struct.hashtable* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %22, %1
  %.0 = phi i64 [ 0, %1 ], [ %23, %22 ]
  %3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %.0, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %8 = load %struct.element*, %struct.element** %7, align 8
  %9 = getelementptr inbounds %struct.element, %struct.element* %8, i64 %.0, i32 0
  %10 = load i8*, i8** %9, align 8
  %.not = icmp eq i8* %10, null
  br i1 %.not, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %13 = load %struct.element*, %struct.element** %12, align 8
  %14 = getelementptr inbounds %struct.element, %struct.element* %13, i64 %.0, i32 0
  %15 = load i8*, i8** %14, align 8
  %.not1 = icmp eq i8* %15, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %.not1, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %18 = load %struct.element*, %struct.element** %17, align 8
  %19 = getelementptr inbounds %struct.element, %struct.element* %18, i64 %.0, i32 0
  %20 = load i8*, i8** %19, align 8
  call void @free(i8* noundef %20) #9
  br label %21

21:                                               ; preds = %16, %11, %6
  br label %22

22:                                               ; preds = %21
  %23 = add i64 %.0, 1
  br label %2, !llvm.loop !12

24:                                               ; preds = %2
  %25 = bitcast %struct.hashtable* %0 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %28 = load i64, i64* %27, align 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 %28, i1 false)
  %29 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 2
  store i64 0, i64* %29, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_store(%struct.hashtable* nocapture noundef readonly %0, %struct._IO_FILE* noundef %1) #0 {
  br label %3

3:                                                ; preds = %23, %2
  %.0 = phi i64 [ 0, %2 ], [ %24, %23 ]
  %4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ult i64 %.0, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %9 = load %struct.element*, %struct.element** %8, align 8
  %10 = getelementptr inbounds %struct.element, %struct.element* %9, i64 %.0
  %11 = getelementptr inbounds %struct.element, %struct.element* %10, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %.not = icmp eq i8* %12, null
  br i1 %.not, label %22, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.element, %struct.element* %10, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %.not1 = icmp eq i8* %15, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %.not1, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.element, %struct.element* %9, i64 %.0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.element, %struct.element* %10, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 noundef %18, i8* noundef %20) #9
  br label %22

22:                                               ; preds = %16, %13, %7
  br label %23

23:                                               ; preds = %22
  %24 = add i64 %.0, 1
  br label %3, !llvm.loop !13

25:                                               ; preds = %3
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_generate_c(%struct.hashtable* nocapture noundef readonly %0, i8* noundef %1) #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.1, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* noundef %1) #9
  br label %4

4:                                                ; preds = %28, %2
  %.0 = phi i64 [ 0, %2 ], [ %29, %28 ]
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ult i64 %.0, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 0
  %10 = load %struct.element*, %struct.element** %9, align 8
  %11 = getelementptr inbounds %struct.element, %struct.element* %10, i64 %.0
  %12 = getelementptr inbounds %struct.element, %struct.element* %11, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %.not = icmp eq i8* %13, null
  br i1 %.not, label %14, label %15

14:                                               ; preds = %8
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.4, i64 0, i64 0))
  br label %27

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.element, %struct.element* %11, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, getelementptr inbounds ([1 x i8], [1 x i8]* @DELETED_KEY, i64 0, i64 0)
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.5, i64 0, i64 0))
  br label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.element, %struct.element* %11, i64 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.element, %struct.element* %10, i64 %.0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* noundef %22, i64 noundef %24) #9
  br label %26

26:                                               ; preds = %20, %19
  br label %27

27:                                               ; preds = %26, %14
  br label %28

28:                                               ; preds = %27
  %29 = add i64 %.0, 1
  br label %4, !llvm.loop !14

30:                                               ; preds = %4
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.2, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* noundef %1) #9
  %32 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i64 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* noundef %1, i64 noundef %33, i64 noundef %35, i64 noundef %37) #9
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hashtab_load(%struct._IO_FILE* noundef %0, %struct.hashtable* noundef %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  br label %6

6:                                                ; preds = %9, %2
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %8 = call i8* @fgets(i8* noundef nonnull %7, i32 noundef 1024, %struct._IO_FILE* noundef %0) #9
  %.not = icmp eq i8* %8, null
  br i1 %.not, label %19, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* noundef nonnull %5, i8* noundef nonnull %11) #9
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %15 = call i64 @strlen(i8* noundef nonnull %14) #10
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = call i32 @hashtab_insert(%struct.hashtable* noundef %1, i8* noundef nonnull %13, i64 noundef %15, i64 noundef %17)
  br label %6, !llvm.loop !15

19:                                               ; preds = %6
  ret i32 0
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

declare dso_local void @cli_errmsg(i8* noundef, ...) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

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
