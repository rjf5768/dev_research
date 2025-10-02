; ModuleID = './cvrmisc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cvrmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@cube = external dso_local global %struct.cube_struct, align 8
@cdata = external dso_local global %struct.cdata_struct, align 8
@fmt_cost.s = internal global [200 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [25 x i8] c"c=%d in=%d out=%d tot=%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"c=%d in=%d mv=%d out=%d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"# %s\09Cost is %s\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"# %s\09Time was %s, cost is %s\0A\00", align 1
@total_time = external dso_local global [16 x i64], align 16
@total_calls = external dso_local global [16 x i32], align 16
@trace = external dso_local global i32, align 4
@total_name = external dso_local global [16 x i8*], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"espresso: %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cover_cost(%struct.set_family* noundef %0, %struct.cost_struct* nocapture noundef %1) #0 {
  %3 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #6
  call void (i32**, ...) bitcast (void (...)* @massive_count to void (i32**, ...)*)(i32** noundef %3) #6
  %4 = load i32*, i32** %3, align 8
  %.not = icmp eq i32* %4, null
  br i1 %.not, label %8, label %5

5:                                                ; preds = %2
  %6 = bitcast i32** %3 to i8**
  %7 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %7)
  store i32* null, i32** %3, align 8
  br label %8

8:                                                ; preds = %5, %2
  br i1 true, label %9, label %11

9:                                                ; preds = %8
  %10 = bitcast i32** %3 to i8*
  call void @free(i8* noundef %10)
  br label %11

11:                                               ; preds = %9, %8
  %12 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 5
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 4
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %31, %11
  %.0 = phi i32 [ 0, %11 ], [ %32, %31 ]
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %22 = icmp slt i32 %.0, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23
  %32 = add nuw nsw i32 %.0, 1
  br label %20, !llvm.loop !4

33:                                               ; preds = %20
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  br label %35

35:                                               ; preds = %69, %33
  %.1 = phi i32 [ %34, %33 ], [ %70, %69 ]
  %36 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %37 = add nsw i32 %36, -1
  %38 = icmp slt i32 %.1, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16), align 8
  %41 = sext i32 %.1 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %.not3 = icmp eq i32 %43, 0
  br i1 %.not3, label %60, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 5), align 8
  %48 = sext i32 %.1 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %46, %50
  %52 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %53 = sext i32 %.1 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %51, %55
  %57 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %68

60:                                               ; preds = %39
  %61 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %62 = sext i32 %.1 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %60, %44
  br label %69

69:                                               ; preds = %68
  %70 = add nsw i32 %.1, 1
  br label %35, !llvm.loop !6

71:                                               ; preds = %35
  %72 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %.not2 = icmp eq i32 %72, %73
  br i1 %.not2, label %90, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %76 = add nsw i32 %75, -1
  %77 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 5), align 8
  %80 = sext i32 %76 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %78, %82
  %84 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %85 = sext i32 %76 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %83, %87
  %89 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 2
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %74, %71
  %91 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %94, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %92, i64 %98
  br label %100

100:                                              ; preds = %108, %90
  %.01 = phi i32* [ %92, %90 ], [ %112, %108 ]
  %101 = icmp ult i32* %.01, %99
  br i1 %101, label %102, label %113

102:                                              ; preds = %100
  %103 = load i32, i32* %.01, align 4
  %104 = lshr i32 %103, 15
  %.lobit = and i32 %104, 1
  %105 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %.lobit
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %.01, i64 %111
  br label %100, !llvm.loop !7

113:                                              ; preds = %100
  %114 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %115, %117
  %119 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %118, %120
  %122 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 4
  store i32 %121, i32* %122, align 4
  ret void
}

declare dso_local void @massive_count(...) #1

declare dso_local i32** @cube1list(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @fmt_cost(%struct.cost_struct* nocapture noundef readonly %0) #0 {
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %4 = add nsw i32 %3, -1
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @fmt_cost.s, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #6
  br label %26

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([200 x i8], [200 x i8]* @fmt_cost.s, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #6
  br label %26

26:                                               ; preds = %16, %6
  ret i8* getelementptr inbounds ([200 x i8], [200 x i8]* @fmt_cost.s, i64 0, i64 0)
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @print_cost(%struct.set_family* noundef %0) #0 {
  %2 = alloca %struct.cost_struct, align 4
  call void @cover_cost(%struct.set_family* noundef %0, %struct.cost_struct* noundef nonnull %2)
  %3 = call i8* @fmt_cost(%struct.cost_struct* noundef nonnull %2)
  ret i8* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @copy_cost(%struct.cost_struct* nocapture noundef readonly %0, %struct.cost_struct* nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %0, i64 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %1, i64 0, i32 5
  store i32 %19, i32* %20, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @size_stamp(%struct.set_family* noundef %0, i8* noundef %1) #0 {
  %3 = call i8* @print_cost(%struct.set_family* noundef %0)
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1, i8* noundef %3) #6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5) #6
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_trace(%struct.set_family* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = call i8* @util_print_time(i64 noundef %2) #6
  %5 = call i8* @print_cost(%struct.set_family* noundef %0)
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1, i8* noundef %4, i8* noundef %5) #6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* noundef %7) #6
  ret void
}

declare dso_local i8* @util_print_time(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @totals(i64 noundef %0, i32 noundef %1, %struct.set_family* noundef %2, %struct.cost_struct* nocapture noundef %3) #0 {
  %5 = call i64 (...) @util_cpu_time() #6
  %6 = sub nsw i64 %5, %0
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [16 x i64], [16 x i64]* @total_time, i64 0, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, %6
  store i64 %10, i64* %8, align 8
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* @total_calls, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  call void @cover_cost(%struct.set_family* noundef %2, %struct.cost_struct* noundef %3)
  %15 = load i32, i32* @trace, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %25, label %16

16:                                               ; preds = %4
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds [16 x i8*], [16 x i8*]* @total_name, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @util_print_time(i64 noundef %6) #6
  %21 = call i8* @fmt_cost(%struct.cost_struct* noundef %3)
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19, i8* noundef %20, i8* noundef %21) #6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 @fflush(%struct._IO_FILE* noundef %23) #6
  br label %25

25:                                               ; preds = %16, %4
  ret void
}

declare dso_local i64 @util_cpu_time(...) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @fatal(i8* noundef %0) #4 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* noundef %0) #7
  call void @exit(i32 noundef 1) #8
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }

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
