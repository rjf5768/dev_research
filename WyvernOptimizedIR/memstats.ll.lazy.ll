; ModuleID = './memstats.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/memstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stat_fp = dso_local global %struct._IO_FILE* null, align 8
@meminfo_fp = dso_local global %struct._IO_FILE* null, align 8
@pid = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/proc/%d/status\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"fflush %s failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"fseek %s failed: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Warning: Error in reading %s for memory stats\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"VmRSS\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"VmRSS %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"VmHWM\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"fopen failed: \0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"fflush failed: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"fseek failed: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"p: |%s|\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"MemFree\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"MemTotal\00", align 1
@str = private unnamed_addr constant [15 x i8] c"fopen failed: \00", align 1
@str.1 = private unnamed_addr constant [15 x i8] c"fopen failed: \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @memstats_memused() #0 {
  %1 = alloca [50 x i8], align 16
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %.not = icmp eq %struct._IO_FILE* %2, null
  br i1 %.not, label %3, label %11

3:                                                ; preds = %0
  %4 = call i32 @getpid() #5
  store i32 %4, i32* @pid, align 4
  %5 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %4) #5
  %7 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %8 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store %struct._IO_FILE* %8, %struct._IO_FILE** @stat_fp, align 8
  %.not4 = icmp eq %struct._IO_FILE* %8, null
  br i1 %.not4, label %9, label %10

9:                                                ; preds = %3
  br label %50

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %13 = call i32 @fflush(%struct._IO_FILE* noundef %12) #5
  %.not5 = icmp eq i32 %13, 0
  br i1 %.not5, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %16 = call i8* @strerror(i32 noundef %13) #5
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %15, i8* noundef %16) #5
  br label %50

18:                                               ; preds = %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %20 = call i32 @fseek(%struct._IO_FILE* noundef %19, i64 noundef 0, i32 noundef 0) #5
  %.not6 = icmp eq i32 %20, 0
  br i1 %.not6, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %23 = call i8* @strerror(i32 noundef %20) #5
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %22, i8* noundef %23) #5
  br label %50

25:                                               ; preds = %18
  %26 = call noalias dereferenceable_or_null(140) i8* @malloc(i64 noundef 140) #5
  br label %27

27:                                               ; preds = %46, %25
  %.02 = phi i8* [ %26, %25 ], [ %32, %46 ]
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %29 = call i32 @feof(%struct._IO_FILE* noundef %28) #5
  %.not7 = icmp eq i32 %29, 0
  br i1 %.not7, label %30, label %.loopexit

30:                                               ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %32 = call i8* @fgets(i8* noundef %.02, i32 noundef 132, %struct._IO_FILE* noundef %31) #5
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %35) #5
  br label %37

37:                                               ; preds = %34, %30
  %38 = call i8* @strtok(i8* noundef %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  %39 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %38, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #6
  %.not8 = icmp eq i32 %39, 0
  br i1 %.not8, label %40, label %46

40:                                               ; preds = %37
  %41 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  %42 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  %43 = call i64 @atoll(i8* noundef %42) #6
  br i1 false, label %44, label %45

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %40
  br label %47

46:                                               ; preds = %37
  br label %27, !llvm.loop !4

.loopexit:                                        ; preds = %27
  br label %47

47:                                               ; preds = %.loopexit, %45
  %.1 = phi i8* [ %32, %45 ], [ %.02, %.loopexit ]
  %.01 = phi i64 [ %43, %45 ], [ 0, %.loopexit ]
  call void @free(i8* noundef %.1) #5
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %49 = call i32 @fclose(%struct._IO_FILE* noundef %48) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** @stat_fp, align 8
  br label %50

50:                                               ; preds = %47, %21, %14, %9
  %.0 = phi i64 [ -1, %14 ], [ -1, %21 ], [ %.01, %47 ], [ -1, %9 ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @getpid() #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @atoll(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @memstats_mempeak() #0 {
  %1 = alloca [50 x i8], align 16
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %.not = icmp eq %struct._IO_FILE* %2, null
  br i1 %.not, label %3, label %11

3:                                                ; preds = %0
  %4 = call i32 @getpid() #5
  store i32 %4, i32* @pid, align 4
  %5 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %4) #5
  %7 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %8 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store %struct._IO_FILE* %8, %struct._IO_FILE** @stat_fp, align 8
  %.not4 = icmp eq %struct._IO_FILE* %8, null
  br i1 %.not4, label %9, label %10

9:                                                ; preds = %3
  br label %50

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %13 = call i32 @fflush(%struct._IO_FILE* noundef %12) #5
  %.not5 = icmp eq i32 %13, 0
  br i1 %.not5, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %16 = call i8* @strerror(i32 noundef %13) #5
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %15, i8* noundef %16) #5
  br label %50

18:                                               ; preds = %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %20 = call i32 @fseek(%struct._IO_FILE* noundef %19, i64 noundef 0, i32 noundef 0) #5
  %.not6 = icmp eq i32 %20, 0
  br i1 %.not6, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %23 = call i8* @strerror(i32 noundef %20) #5
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %22, i8* noundef %23) #5
  br label %50

25:                                               ; preds = %18
  %26 = call noalias dereferenceable_or_null(140) i8* @malloc(i64 noundef 140) #5
  br label %27

27:                                               ; preds = %46, %25
  %.01 = phi i8* [ %26, %25 ], [ %32, %46 ]
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %29 = call i32 @feof(%struct._IO_FILE* noundef %28) #5
  %.not7 = icmp eq i32 %29, 0
  br i1 %.not7, label %30, label %.loopexit

30:                                               ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %32 = call i8* @fgets(i8* noundef %.01, i32 noundef 132, %struct._IO_FILE* noundef %31) #5
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %35) #5
  br label %37

37:                                               ; preds = %34, %30
  %38 = call i8* @strtok(i8* noundef %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  %39 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %38, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #6
  %.not8 = icmp eq i32 %39, 0
  br i1 %.not8, label %40, label %46

40:                                               ; preds = %37
  %41 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  %42 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  %43 = call i64 @atoll(i8* noundef %42) #6
  br i1 false, label %44, label %45

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %40
  br label %47

46:                                               ; preds = %37
  br label %27, !llvm.loop !6

.loopexit:                                        ; preds = %27
  br label %47

47:                                               ; preds = %.loopexit, %45
  %.02 = phi i64 [ %43, %45 ], [ 0, %.loopexit ]
  %.1 = phi i8* [ %32, %45 ], [ %.01, %.loopexit ]
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %49 = call i32 @fclose(%struct._IO_FILE* noundef %48) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** @stat_fp, align 8
  call void @free(i8* noundef %.1) #5
  br label %50

50:                                               ; preds = %47, %21, %14, %9
  %.0 = phi i64 [ -1, %14 ], [ -1, %21 ], [ %.02, %47 ], [ -1, %9 ]
  ret i64 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @memstats_memfree() #0 {
  %1 = alloca [260 x i8], align 16
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %.not = icmp eq %struct._IO_FILE* %2, null
  br i1 %.not, label %3, label %7

3:                                                ; preds = %0
  %4 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store %struct._IO_FILE* %4, %struct._IO_FILE** @meminfo_fp, align 8
  %.not2 = icmp eq %struct._IO_FILE* %4, null
  br i1 %.not2, label %5, label %6

5:                                                ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str, i64 0, i64 0))
  br label %41

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %9 = call i32 @fflush(%struct._IO_FILE* noundef %8) #5
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %7
  %11 = call i8* @strerror(i32 noundef %9) #5
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* noundef %11) #5
  br label %41

13:                                               ; preds = %7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %15 = call i32 @fseek(%struct._IO_FILE* noundef %14, i64 noundef 0, i32 noundef 0) #5
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %19, label %16

16:                                               ; preds = %13
  %17 = call i8* @strerror(i32 noundef %15) #5
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* noundef %17) #5
  br label %41

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %37, %19
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %22 = call i32 @feof(%struct._IO_FILE* noundef %21) #5
  %.not5 = icmp eq i32 %22, 0
  br i1 %.not5, label %23, label %.loopexit

23:                                               ; preds = %20
  %24 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %26 = call i8* @fgets(i8* noundef nonnull %24, i32 noundef 255, %struct._IO_FILE* noundef %25) #5
  %.not6 = icmp eq i8* %26, null
  br i1 %.not6, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %29 = call i8* @strtok(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br i1 false, label %30, label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %27
  %32 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %29, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #6
  %.not7 = icmp eq i32 %32, 0
  br i1 %.not7, label %33, label %36

33:                                               ; preds = %31
  %34 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  %35 = call i64 @atoll(i8* noundef %34) #6
  br label %38

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %23
  br label %20, !llvm.loop !7

.loopexit:                                        ; preds = %20
  br label %38

38:                                               ; preds = %.loopexit, %33
  %.01 = phi i64 [ %35, %33 ], [ -1, %.loopexit ]
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %40 = call i32 @fclose(%struct._IO_FILE* noundef %39) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** @meminfo_fp, align 8
  br label %41

41:                                               ; preds = %38, %16, %10, %5
  %.0 = phi i64 [ -1, %10 ], [ -1, %16 ], [ %.01, %38 ], [ -1, %5 ]
  ret i64 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @memstats_memtotal() #0 {
  %1 = alloca [260 x i8], align 16
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %.not = icmp eq %struct._IO_FILE* %2, null
  br i1 %.not, label %3, label %7

3:                                                ; preds = %0
  %4 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store %struct._IO_FILE* %4, %struct._IO_FILE** @meminfo_fp, align 8
  %.not2 = icmp eq %struct._IO_FILE* %4, null
  br i1 %.not2, label %5, label %6

5:                                                ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str.1, i64 0, i64 0))
  br label %41

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %9 = call i32 @fflush(%struct._IO_FILE* noundef %8) #5
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %7
  %11 = call i8* @strerror(i32 noundef %9) #5
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* noundef %11) #5
  br label %41

13:                                               ; preds = %7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %15 = call i32 @fseek(%struct._IO_FILE* noundef %14, i64 noundef 0, i32 noundef 0) #5
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %19, label %16

16:                                               ; preds = %13
  %17 = call i8* @strerror(i32 noundef %15) #5
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* noundef %17) #5
  br label %41

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %37, %19
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %22 = call i32 @feof(%struct._IO_FILE* noundef %21) #5
  %.not5 = icmp eq i32 %22, 0
  br i1 %.not5, label %23, label %.loopexit

23:                                               ; preds = %20
  %24 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %26 = call i8* @fgets(i8* noundef nonnull %24, i32 noundef 255, %struct._IO_FILE* noundef %25) #5
  %.not6 = icmp eq i8* %26, null
  br i1 %.not6, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [260 x i8], [260 x i8]* %1, i64 0, i64 0
  %29 = call i8* @strtok(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #5
  br i1 false, label %30, label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %27
  %32 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %29, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #6
  %.not7 = icmp eq i32 %32, 0
  br i1 %.not7, label %33, label %36

33:                                               ; preds = %31
  %34 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5
  %35 = call i64 @atoll(i8* noundef %34) #6
  br label %38

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %23
  br label %20, !llvm.loop !8

.loopexit:                                        ; preds = %20
  br label %38

38:                                               ; preds = %.loopexit, %33
  %.01 = phi i64 [ %35, %33 ], [ -1, %.loopexit ]
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %40 = call i32 @fclose(%struct._IO_FILE* noundef %39) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** @meminfo_fp, align 8
  br label %41

41:                                               ; preds = %38, %16, %10, %5
  %.0 = phi i64 [ -1, %10 ], [ -1, %16 ], [ %.01, %38 ], [ -1, %5 ]
  ret i64 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
