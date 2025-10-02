; ModuleID = './types.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hard_raw = type { %struct.hard_raw*, %struct.hard_raw*, i64, i32, i32, i64, i32, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.def_list_t = type { i8*, i64, i32, i32 }
%struct.conf_list_t = type { i8*, i64, i32 }

@hard_raw_mod.last = internal global %struct.hard_raw* null, align 8
@hard_raw_mod.hr_empty = internal global i32 1, align 4
@hard_raw_list = external dso_local global %struct.hard_raw*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"ALERT: \09Out of memory, aborting...\0A\00", align 1
@def_table_size = external dso_local global i32, align 4
@def_table = external dso_local global %struct.def_list_t**, align 8
@conflict_list.next = internal global %struct.conf_list_t* null, align 8
@first = external dso_local global i32, align 4
@list = external dso_local global %struct.conf_list_t*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @hard_raw_mod(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) #0 {
  %8 = load i32, i32* @hard_raw_mod.hr_empty, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %28, label %9

9:                                                ; preds = %7
  %10 = call noalias dereferenceable_or_null(56) i8* @malloc(i64 noundef 56) #7
  store i8* %10, i8** bitcast (%struct.hard_raw** @hard_raw_list to i8**), align 8
  %.not2 = icmp eq i8* %10, null
  br i1 %.not2, label %11, label %14

11:                                               ; preds = %9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %12) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %9
  %15 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %16 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %15, i64 0, i32 0
  store %struct.hard_raw* null, %struct.hard_raw** %16, align 8
  %17 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %18 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %17, i64 0, i32 1
  store %struct.hard_raw* null, %struct.hard_raw** %18, align 8
  %19 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %17, i64 0, i32 2
  store i64 %0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %17, i64 0, i32 3
  store i32 %1, i32* %20, align 8
  %21 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %22 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %21, i64 0, i32 4
  store i32 %2, i32* %22, align 4
  %23 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %21, i64 0, i32 5
  store i64 %3, i64* %23, align 8
  %24 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %21, i64 0, i32 6
  store i32 %4, i32* %24, align 8
  %25 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %26 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %25, i64 0, i32 7
  store i32 %5, i32* %26, align 4
  %27 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %25, i64 0, i32 8
  store i64 %6, i64* %27, align 8
  store i32 0, i32* @hard_raw_mod.hr_empty, align 4
  store %struct.hard_raw* %25, %struct.hard_raw** @hard_raw_mod.last, align 8
  br label %53

28:                                               ; preds = %7
  %29 = call noalias dereferenceable_or_null(56) i8* @malloc(i64 noundef 56) #7
  %30 = load i8**, i8*** bitcast (%struct.hard_raw** @hard_raw_mod.last to i8***), align 8
  store i8* %29, i8** %30, align 8
  %31 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %32 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %31, i64 0, i32 0
  %33 = load %struct.hard_raw*, %struct.hard_raw** %32, align 8
  %34 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %33, i64 0, i32 1
  store %struct.hard_raw* %31, %struct.hard_raw** %34, align 8
  %35 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %31, i64 0, i32 0
  %36 = load %struct.hard_raw*, %struct.hard_raw** %35, align 8
  store %struct.hard_raw* %36, %struct.hard_raw** @hard_raw_mod.last, align 8
  %.not1 = icmp eq %struct.hard_raw* %36, null
  br i1 %.not1, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %38) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %28
  %41 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %42 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %41, i64 0, i32 0
  store %struct.hard_raw* null, %struct.hard_raw** %42, align 8
  %43 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %44 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %43, i64 0, i32 2
  store i64 %0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %43, i64 0, i32 3
  store i32 %1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %43, i64 0, i32 4
  store i32 %2, i32* %46, align 4
  %47 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %48 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %47, i64 0, i32 5
  store i64 %3, i64* %48, align 8
  %49 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %47, i64 0, i32 6
  store i32 %4, i32* %49, align 8
  %50 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %47, i64 0, i32 7
  store i32 %5, i32* %50, align 4
  %51 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %52 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %51, i64 0, i32 8
  store i64 %6, i64* %52, align 8
  br label %53

53:                                               ; preds = %40, %14
  ret void

UnifiedUnreachableBlock:                          ; preds = %37, %11
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @def_hash(i64 noundef %0) #4 {
  %2 = load i32, i32* @def_table_size, align 4
  %3 = sext i32 %2 to i64
  %4 = urem i64 %0, %3
  ret i64 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.def_list_t* @def_list_lookup(i64 noundef %0) #5 {
  %2 = call i64 @def_hash(i64 noundef %0)
  %3 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %4 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %3, i64 %2
  br label %5

5:                                                ; preds = %11, %1
  %.01.in = phi %struct.def_list_t** [ %4, %1 ], [ %12, %11 ]
  %.01 = load %struct.def_list_t*, %struct.def_list_t** %.01.in, align 8
  %.not = icmp eq %struct.def_list_t* %.01, null
  br i1 %.not, label %13, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %.01, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, %0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %14

11:                                               ; preds = %6
  %12 = bitcast %struct.def_list_t* %.01 to %struct.def_list_t**
  br label %5, !llvm.loop !4

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %10
  %.0 = phi %struct.def_list_t* [ %.01, %10 ], [ null, %13 ]
  ret %struct.def_list_t* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_list_mod(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call i64 @def_hash(i64 noundef %0)
  %5 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %6 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %5, i64 %4
  %7 = load %struct.def_list_t*, %struct.def_list_t** %6, align 8
  %8 = icmp eq %struct.def_list_t* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  %11 = bitcast i8* %10 to %struct.def_list_t*
  %.not5 = icmp eq i8* %10, null
  br i1 %.not5, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %13) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %11, i64 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %11, i64 0, i32 1
  store i64 %0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %11, i64 0, i32 2
  store i32 %1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %11, i64 0, i32 3
  store i32 %2, i32* %19, align 4
  %20 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %21 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %20, i64 %4
  %22 = bitcast %struct.def_list_t** %21 to i8**
  store i8* %10, i8** %22, align 8
  br label %49

23:                                               ; preds = %3
  %24 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %25 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %24, i64 %4
  br label %26

26:                                               ; preds = %35, %23
  %.01 = phi %struct.def_list_t* [ null, %23 ], [ %.0, %35 ]
  %.0.in = phi %struct.def_list_t** [ %25, %23 ], [ %36, %35 ]
  %.0 = load %struct.def_list_t*, %struct.def_list_t** %.0.in, align 8
  %.not = icmp eq %struct.def_list_t* %.0, null
  br i1 %.not, label %37, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %.0, i64 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, %0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %.0, i64 0, i32 2
  store i32 %1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %.0, i64 0, i32 3
  store i32 %2, i32* %33, align 4
  br label %49

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = bitcast %struct.def_list_t* %.0 to %struct.def_list_t**
  br label %26, !llvm.loop !6

37:                                               ; preds = %26
  %38 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  %39 = bitcast i8* %38 to %struct.def_list_t*
  %.not4 = icmp eq i8* %38, null
  br i1 %.not4, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %41) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %39, i64 0, i32 0
  store i8* null, i8** %44, align 8
  %45 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %39, i64 0, i32 1
  store i64 %0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %39, i64 0, i32 2
  store i32 %1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %39, i64 0, i32 3
  store i32 %2, i32* %47, align 4
  %48 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %.01, i64 0, i32 0
  store i8* %38, i8** %48, align 8
  br label %49

49:                                               ; preds = %43, %31, %15
  ret void

UnifiedUnreachableBlock:                          ; preds = %40, %12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @conflict_list(i64 noundef %0) #0 {
  %2 = load i32, i32* @first, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %14, label %3

3:                                                ; preds = %1
  %4 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  store i8* %4, i8** bitcast (%struct.conf_list_t** @list to i8**), align 8
  %.not8 = icmp eq i8* %4, null
  br i1 %.not8, label %5, label %8

5:                                                ; preds = %3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %6) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %3
  %9 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %10 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %9, i64 0, i32 0
  store i8* null, i8** %10, align 8
  %11 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %12 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %11, i64 0, i32 1
  store i64 %0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %11, i64 0, i32 2
  store i32 1, i32* %13, align 8
  store i32 0, i32* @first, align 4
  store %struct.conf_list_t* %11, %struct.conf_list_t** @conflict_list.next, align 8
  br label %40

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %25, %14
  %.02.in = phi %struct.conf_list_t** [ @list, %14 ], [ %26, %25 ]
  %.01 = phi %struct.conf_list_t* [ null, %14 ], [ %.02, %25 ]
  %.02 = load %struct.conf_list_t*, %struct.conf_list_t** %.02.in, align 8
  %.not5 = icmp eq %struct.conf_list_t* %.02, null
  br i1 %.not5, label %.loopexit, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %.02, i64 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, %0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %.02, i64 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  br label %27

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = bitcast %struct.conf_list_t* %.02 to %struct.conf_list_t**
  br label %15, !llvm.loop !7

.loopexit:                                        ; preds = %15
  br label %27

27:                                               ; preds = %.loopexit, %20
  %.1 = phi %struct.conf_list_t* [ %.02, %20 ], [ %.01, %.loopexit ]
  br i1 %.not5, label %28, label %40

28:                                               ; preds = %27
  %29 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  store i8* %29, i8** bitcast (%struct.conf_list_t** @conflict_list.next to i8**), align 8
  %.not7 = icmp eq i8* %29, null
  br i1 %.not7, label %30, label %33

30:                                               ; preds = %28
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %31) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %28
  %34 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %35 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %34, i64 0, i32 0
  store i8* null, i8** %35, align 8
  %36 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %37 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %36, i64 0, i32 1
  store i64 %0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %36, i64 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = bitcast %struct.conf_list_t* %.1 to %struct.conf_list_t**
  store %struct.conf_list_t* %36, %struct.conf_list_t** %39, align 8
  br label %40

40:                                               ; preds = %33, %27, %8
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %5
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

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
