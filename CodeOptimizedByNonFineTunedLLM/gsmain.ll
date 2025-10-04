; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsmain.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_main(i32 noundef %0, i8** noundef %1, i8* noundef %2, i32 (i8, i8*)* noundef %3, void (i8*, i32)* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8, i8*)*, align 8
  %10 = alloca void (i8*, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (i8, i8*)* %3, i32 (i8, i8*)** %9, align 8
  store void (i8*, i32)* %4, void (i8*, i32)** %10, align 8
  store i32 1, i32* %11, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* @proc_reloc, align 8
  call void (...) @gp_init()
  br label %19

19:                                               ; preds = %114, %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %117

23:                                               ; preds = %19
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %108

33:                                               ; preds = %23
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %14, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %38 [
    i32 90, label %51
    i32 84, label %53
  ]

38:                                               ; preds = %33
  %39 = load i32 (i8, i8*)*, i32 (i8, i8*)** %9, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i32 %39(i8 noundef signext %41, i8* noundef %43)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* noundef %48)
  br label %50

50:                                               ; preds = %46, %38
  br label %107

51:                                               ; preds = %33
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %107

53:                                               ; preds = %33
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %55 = icmp eq %struct._IO_FILE* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = call %struct._IO_FILE* @trace_open_map(i8* noundef %57, i64* noundef @proc_reloc)
  store %struct._IO_FILE* %58, %struct._IO_FILE** %12, align 8
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %60 = icmp eq %struct._IO_FILE* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* noundef %62)
  br label %107

64:                                               ; preds = %56
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 noundef ptrtoint (i32 (...)* @main to i64))
  br label %66

66:                                               ; preds = %64, %53
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %67 = load i8*, i8** %14, align 8
  %68 = call i8* @strchr(i8* noundef %67, i32 noundef 58) #5
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load i8*, i8** %15, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %73, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %18) #6
  %75 = load i8*, i8** %15, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = call i8* @strchr(i8* noundef %77, i32 noundef 58) #5
  store i8* %78, i8** %15, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %17, align 8
  br label %84

84:                                               ; preds = %81, %71
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i8*, i8** %14, align 8
  %87 = call i64 @strlen(i8* noundef %86) #5
  %88 = add i64 %87, 1
  %89 = trunc i64 %88 to i32
  %90 = call i8* @gs_malloc(i32 noundef %89, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %90, i8** %16, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i8* @strcpy(i8* noundef %91, i8* noundef %92) #6
  %94 = load i8*, i8** %16, align 8
  store i8 95, i8* %94, align 1
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 (i8*, ...) bitcast (i32 (...)* @strupr to i32 (i8*, ...)*)(i8* noundef %95)
  %97 = load i8*, i8** %16, align 8
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = load i32, i32* %18, align 4
  %101 = call i32 (i8*, %struct._IO_FILE*, i8*, i32, ...) bitcast (i32 (...)* @trace_name to i32 (i8*, %struct._IO_FILE*, i8*, i32, ...)*)(i8* noundef %97, %struct._IO_FILE* noundef %98, i8* noundef %99, i32 noundef %100)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %85
  %104 = load i8*, i8** %16, align 8
  %105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* noundef %104)
  br label %106

106:                                              ; preds = %103, %85
  store i32 1, i32* @trace_flush_flag, align 4
  br label %107

107:                                              ; preds = %106, %61, %51, %50
  br label %113

108:                                              ; preds = %23
  %109 = load void (i8*, i32)*, void (i8*, i32)** %10, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  call void %109(i8* noundef %110, i32 noundef %111)
  br label %113

113:                                              ; preds = %108, %107
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %19, !llvm.loop !4

117:                                              ; preds = %19
  %118 = load i32, i32* %13, align 4
  ret i32 %118
}

declare dso_local void @gp_init(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local %struct._IO_FILE* @trace_open_map(i8* noundef, i64* noundef) #1

declare dso_local i32 @main(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local i32 @strupr(...) #1

declare dso_local i32 @trace_name(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_exit(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gx_device_s**, align 8
  store i32 %0, i32* %2, align 4
  store %struct.gx_device_s** getelementptr inbounds ([0 x %struct.gx_device_s*], [0 x %struct.gx_device_s*]* @gx_device_list, i64 0, i64 0), %struct.gx_device_s*** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* noundef %7)
  br label %9

9:                                                ; preds = %6, %1
  br label %10

10:                                               ; preds = %31, %9
  %11 = load %struct.gx_device_s**, %struct.gx_device_s*** %3, align 8
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %13 = icmp ne %struct.gx_device_s* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load %struct.gx_device_s**, %struct.gx_device_s*** %3, align 8
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %15, align 8
  %17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.gx_device_s**, %struct.gx_device_s*** %3, align 8
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %21, align 8
  %23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 1
  %24 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %23, align 8
  %25 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %24, i32 0, i32 4
  %26 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %25, align 8
  %27 = load %struct.gx_device_s**, %struct.gx_device_s*** %3, align 8
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %27, align 8
  %29 = call i32 %26(%struct.gx_device_s* noundef %28)
  br label %30

30:                                               ; preds = %20, %14
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.gx_device_s**, %struct.gx_device_s*** %3, align 8
  %33 = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %32, i32 1
  store %struct.gx_device_s** %33, %struct.gx_device_s*** %3, align 8
  br label %10, !llvm.loop !6

34:                                               ; preds = %10
  %35 = load i32, i32* %2, align 4
  call void @exit(i32 noundef %35) #7
  unreachable
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_dump_C_stack() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i8* (...) @stack_top_frame()
  store i8* %3, i8** %1, align 8
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i8*, i8** %1, align 8
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @stack_return(i8* noundef %8)
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @stack_return(i8* noundef %10)
  %12 = load i64, i64* @proc_reloc, align 8
  %13 = sub i64 %11, %12
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 noundef %7, i64 noundef %9, i64 noundef %13)
  %15 = load i8*, i8** %2, align 8
  %16 = call i8* @stack_next_frame(i8* noundef %15)
  store i8* %16, i8** %1, align 8
  br label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %1, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %4, label %20, !llvm.loop !7

20:                                               ; preds = %17
  ret void
}

declare dso_local i8* @stack_top_frame(...) #1

declare dso_local i64 @stack_return(i8* noundef) #1

declare dso_local i8* @stack_next_frame(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
