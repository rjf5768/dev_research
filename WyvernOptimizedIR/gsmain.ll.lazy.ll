; ModuleID = './gsmain.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@proc_reloc = internal global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unknown switch %s - ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Not a debugging configuration, -Z switch ignored\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Map file %s is apparently missing or malformed\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"[T]main = %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"-T switch\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s not found\0A\00", align 1
@trace_flush_flag = external dso_local global i32, align 4
@gx_device_list = external dso_local global [0 x %struct.gx_device_s*], align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"frame %8lx called from %8lx (%8lx)\0A\00", align 1
@str = private unnamed_addr constant [49 x i8] c"Not a debugging configuration, -Z switch ignored\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_main(i32 noundef %0, i8** nocapture noundef readonly %1, i8* noundef %2, i32 (i8, i8*)* nocapture noundef readonly %3, void (i8*, i32)* nocapture noundef readonly %4) #0 {
  %6 = alloca i32, align 4
  store i64 0, i64* @proc_reloc, align 8
  call void (...) @gp_init() #7
  br label %7

7:                                                ; preds = %64, %5
  %.05 = phi i32 [ 1, %5 ], [ %65, %64 ]
  %.03 = phi %struct._IO_FILE* [ null, %5 ], [ %.3, %64 ]
  %.01 = phi i32 [ 0, %5 ], [ %.12, %64 ]
  %8 = icmp slt i32 %.05, %0
  br i1 %8, label %9, label %66

9:                                                ; preds = %7
  %10 = zext i32 %.05 to i64
  %11 = getelementptr inbounds i8*, i8** %1, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 45
  br i1 %14, label %15, label %61

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, i8* %12, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %19 [
    i32 90, label %27
    i32 84, label %28
  ]

19:                                               ; preds = %15
  %20 = load i8, i8* %16, align 1
  %21 = getelementptr inbounds i8, i8* %12, i64 2
  %22 = call i32 %3(i8 noundef signext %20, i8* noundef nonnull %21) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %12) #7
  br label %26

26:                                               ; preds = %24, %19
  br label %60

27:                                               ; preds = %15
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str, i64 0, i64 0))
  br label %60

28:                                               ; preds = %15
  %29 = icmp eq %struct._IO_FILE* %.03, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %28
  %31 = call %struct._IO_FILE* @trace_open_map(i8* noundef %2, i64* noundef nonnull @proc_reloc) #7
  %32 = icmp eq %struct._IO_FILE* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #7
  br label %60

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 noundef ptrtoint (i32 (...)* @main to i64)) #7
  br label %37

37:                                               ; preds = %35, %28
  %.14 = phi %struct._IO_FILE* [ %31, %35 ], [ %.03, %28 ]
  store i32 0, i32* %6, align 4
  %38 = call i8* @strchr(i8* noundef nonnull %16, i32 noundef 58) #8
  %.not = icmp eq i8* %38, null
  br i1 %.not, label %47, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, i8* %38, i64 1
  %41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %40, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %6) #7
  store i8 0, i8* %38, align 1
  %42 = getelementptr inbounds i8, i8* %38, i64 1
  %43 = call i8* @strchr(i8* noundef nonnull %42, i32 noundef 58) #8
  %.not6 = icmp eq i8* %43, null
  br i1 %.not6, label %46, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, i8* %43, i64 1
  br label %46

46:                                               ; preds = %44, %39
  %.0 = phi i8* [ %45, %44 ], [ null, %39 ]
  br label %47

47:                                               ; preds = %46, %37
  %.1 = phi i8* [ %.0, %46 ], [ null, %37 ]
  %48 = call i64 @strlen(i8* noundef nonnull %16) #8
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, 1
  %51 = call i8* @gs_malloc(i32 noundef %50, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #7
  %52 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %51, i8* noundef nonnull %16) #7
  store i8 95, i8* %51, align 1
  %53 = call i32 (i8*, ...) bitcast (i32 (...)* @strupr to i32 (i8*, ...)*)(i8* noundef nonnull %51) #7
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, %struct._IO_FILE*, i8*, i32, ...) bitcast (i32 (...)* @trace_name to i32 (i8*, %struct._IO_FILE*, i8*, i32, ...)*)(i8* noundef nonnull %51, %struct._IO_FILE* noundef %.14, i8* noundef %.1, i32 noundef %54) #7
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %51) #7
  br label %59

59:                                               ; preds = %57, %47
  store i32 1, i32* @trace_flush_flag, align 4
  br label %60

60:                                               ; preds = %59, %33, %27, %26
  %.2 = phi %struct._IO_FILE* [ %.03, %26 ], [ %31, %33 ], [ %.14, %59 ], [ %.03, %27 ]
  br label %63

61:                                               ; preds = %9
  %62 = add nsw i32 %.01, 1
  call void %4(i8* noundef nonnull %12, i32 noundef %.01) #7
  br label %63

63:                                               ; preds = %61, %60
  %.3 = phi %struct._IO_FILE* [ %.2, %60 ], [ %.03, %61 ]
  %.12 = phi i32 [ %.01, %60 ], [ %62, %61 ]
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.05, 1
  br label %7, !llvm.loop !4

66:                                               ; preds = %7
  ret i32 %.01
}

declare dso_local void @gp_init(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local %struct._IO_FILE* @trace_open_map(i8* noundef, i64* noundef) #1

declare dso_local i32 @main(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local i32 @strupr(...) #1

declare dso_local i32 @trace_name(...) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @gs_exit(i32 noundef %0) #4 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %5, label %2

2:                                                ; preds = %1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3) #7
  br label %5

5:                                                ; preds = %2, %1
  br label %6

6:                                                ; preds = %20, %5
  %.0 = phi %struct.gx_device_s** [ getelementptr inbounds ([0 x %struct.gx_device_s*], [0 x %struct.gx_device_s*]* @gx_device_list, i64 0, i64 0), %5 ], [ %21, %20 ]
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %.0, align 8
  %.not1 = icmp eq %struct.gx_device_s* %7, null
  br i1 %.not1, label %22, label %8

8:                                                ; preds = %6
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %.0, align 8
  %10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i64 0, i32 10
  %11 = load i32, i32* %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %19, label %12

12:                                               ; preds = %8
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %.0, align 8
  %14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i64 0, i32 1
  %15 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %14, align 8
  %16 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %15, i64 0, i32 4
  %17 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %16, align 8
  %18 = call i32 %17(%struct.gx_device_s* noundef %13) #7
  br label %19

19:                                               ; preds = %12, %8
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %.0, i64 1
  br label %6, !llvm.loop !6

22:                                               ; preds = %6
  call void @exit(i32 noundef %0) #9
  unreachable
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_dump_C_stack() #0 {
  %1 = call i8* (...) @stack_top_frame() #7
  br label %2

2:                                                ; preds = %10, %0
  %.0 = phi i8* [ %1, %0 ], [ %9, %10 ]
  %3 = ptrtoint i8* %.0 to i64
  %4 = call i64 @stack_return(i8* noundef %.0) #7
  %5 = call i64 @stack_return(i8* noundef %.0) #7
  %6 = load i64, i64* @proc_reloc, align 8
  %7 = sub i64 %5, %6
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 noundef %3, i64 noundef %4, i64 noundef %7) #7
  %9 = call i8* @stack_next_frame(i8* noundef %.0) #7
  br label %10

10:                                               ; preds = %2
  %.not = icmp eq i8* %9, null
  br i1 %.not, label %11, label %2, !llvm.loop !7

11:                                               ; preds = %10
  ret void
}

declare dso_local i8* @stack_top_frame(...) #1

declare dso_local i64 @stack_return(i8* noundef) #1

declare dso_local i8* @stack_next_frame(i8* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
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
