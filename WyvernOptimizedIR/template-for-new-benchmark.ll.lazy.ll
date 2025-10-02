; ModuleID = './template-for-new-benchmark.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Polybench/utilities/template-for-new-benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@polybench_papi_counters_threadid = dso_local global i32 0, align 4
@polybench_program_total_flops = dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/SingleSource/Benchmarks/Polybench/utilities/polybench.h\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = dso_local global double 0.000000e+00, align 8
@polybench_t_end = dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@polybench_c_start = dso_local global i64 0, align 8
@polybench_c_end = dso_local global i64 0, align 8
@polybench_inter_array_padding_sz = internal global i64 0, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_flush_cache() #0 {
  %1 = call noalias dereferenceable_or_null(33556480) i8* @calloc(i64 noundef 4194560, i64 noundef 8) #10
  %2 = bitcast i8* %1 to double*
  br label %3

3:                                                ; preds = %6, %0
  %.01 = phi i32 [ 0, %0 ], [ %11, %6 ]
  %.0 = phi double [ 0.000000e+00, %0 ], [ %10, %6 ]
  %4 = icmp ult i32 %.01, 4194560
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds double, double* %2, i64 %7
  %9 = load double, double* %8, align 8
  %10 = fadd double %.0, %9
  %11 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

12:                                               ; preds = %3
  %13 = fcmp ugt double %.0, 1.000000e+01
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  br label %16

15:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #11
  unreachable

16:                                               ; preds = %14
  call void @free(i8* noundef %1) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_prepare_instruments() #0 {
  call void @polybench_flush_cache()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_timer_start() #0 {
  call void @polybench_prepare_instruments()
  %1 = call double @rtclock()
  store double %1, double* @polybench_t_start, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @polybench_timer_stop() #3 {
  %1 = call double @rtclock()
  store double %1, double* @polybench_t_end, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_timer_print() #0 {
  %1 = load double, double* @polybench_t_end, align 8
  %2 = load double, double* @polybench_t_start, align 8
  %3 = fsub double %1, %2
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double noundef %3) #10
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_free_data(i8* noundef %0) #0 {
  call void @free(i8* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @polybench_alloc_data(i64 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = mul i64 %3, %0
  %5 = call i8* @xmalloc(i64 noundef %4)
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @xmalloc(i64 noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* null, i8** %2, align 8
  %3 = load i64, i64* @polybench_inter_array_padding_sz, align 8
  %4 = add i64 %3, %0
  %5 = call i32 @posix_memalign(i8** noundef nonnull %2, i64 noundef 4096, i64 noundef %4) #10
  %6 = load i8*, i8** %2, align 8
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %8, label %7

7:                                                ; preds = %1
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %11, label %8

8:                                                ; preds = %7, %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %9) #12
  call void @exit(i32 noundef 1) #11
  unreachable

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = call i8* @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8)
  %4 = bitcast i8* %3 to [1024 x double]*
  call void @init_array(i32 noundef 1024, [1024 x double]* noundef %4)
  %5 = bitcast i8* %3 to [1024 x double]*
  call void @kernel_template(i32 noundef 1024, [1024 x double]* noundef %5)
  %6 = icmp sgt i32 %0, 42
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i8*, i8** %1, align 8
  %strcmpload = load i8, i8* %8, align 1
  %.not = icmp eq i8 %strcmpload, 0
  br i1 %.not, label %9, label %11

9:                                                ; preds = %7
  %10 = bitcast i8* %3 to [1024 x double]*
  call void @print_array(i32 noundef 1024, [1024 x double]* noundef %10)
  br label %11

11:                                               ; preds = %9, %7, %2
  call void @free(i8* noundef %3) #10
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal void @init_array(i32 noundef %0, [1024 x double]* nocapture noundef writeonly %1) #5 {
  br label %3

3:                                                ; preds = %15, %2
  %.01 = phi i32 [ 0, %2 ], [ %16, %15 ]
  %4 = icmp slt i32 %.01, %0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %12, %5
  %.0 = phi i32 [ 0, %5 ], [ %13, %12 ]
  %7 = icmp slt i32 %.0, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [1024 x double], [1024 x double]* %1, i64 %9, i64 %10
  store double 4.200000e+01, double* %11, align 8
  br label %12

12:                                               ; preds = %8
  %13 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !6

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !7

17:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @kernel_template(i32 noundef %0, [1024 x double]* nocapture noundef %1) #6 {
  br label %3

3:                                                ; preds = %17, %2
  %.01 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = icmp slt i32 %.01, %0
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %14, %5
  %.0 = phi i32 [ 0, %5 ], [ %15, %14 ]
  %7 = icmp slt i32 %.0, %0
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [1024 x double], [1024 x double]* %1, i64 %9, i64 %10
  %12 = load double, double* %11, align 8
  %13 = fadd double %12, 4.200000e+01
  store double %13, double* %11, align 8
  br label %14

14:                                               ; preds = %8
  %15 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !8

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

19:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %0, [1024 x double]* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %23, %2
  %.01 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %4 = icmp slt i32 %.01, %0
  br i1 %4, label %5, label %25

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %20, %5
  %.0 = phi i32 [ 0, %5 ], [ %21, %20 ]
  %7 = icmp slt i32 %.0, %0
  br i1 %7, label %8, label %22

8:                                                ; preds = %6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = zext i32 %.01 to i64
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [1024 x double], [1024 x double]* %1, i64 %10, i64 %11
  %13 = load double, double* %12, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double noundef %13) #13
  %15 = urem i32 %.01, 20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc2 = call i32 @fputc(i32 10, %struct._IO_FILE* %18)
  br label %19

19:                                               ; preds = %17, %8
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !10

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !11

25:                                               ; preds = %3
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %26)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @rtclock() #8 {
  ret double 0.000000e+00
}

; Function Attrs: nounwind
declare dso_local i32 @posix_memalign(i8** noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

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
