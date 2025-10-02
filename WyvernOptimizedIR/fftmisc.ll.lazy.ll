; ModuleID = './fftmisc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/telecomm-FFT/fftmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @IsPowerOfTwo(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %8

4:                                                ; preds = %1
  %5 = call i32 @llvm.ctpop.i32(i32 %0), !range !4
  %.not = icmp ult i32 %5, 2
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %6 ], [ 1, %7 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NumberOfBitsNeeded(i32 noundef %0) #1 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #6
  call void @exit(i32 noundef 1) #7
  unreachable

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %12, %6
  %.0 = phi i32 [ 0, %6 ], [ %13, %12 ]
  %8 = shl i32 1, %.0
  %9 = and i32 %8, %0
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %7
  ret i32 %.0

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11
  %13 = add i32 %.0, 1
  br label %7
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @ReverseBits(i32 noundef %0, i32 noundef %1) #4 {
  br label %3

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %.01 = phi i32 [ 0, %2 ], [ %10, %6 ]
  %.0 = phi i32 [ %0, %2 ], [ %7, %6 ]
  %4 = icmp ult i32 %.02, %1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = lshr i32 %.0, 1
  %8 = shl i32 %.01, 1
  %9 = and i32 %.0, 1
  %10 = or i32 %8, %9
  %11 = add i32 %.02, 1
  br label %3, !llvm.loop !5

12:                                               ; preds = %3
  ret i32 %.01
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @Index_to_frequency(i32 noundef %0, i32 noundef %1) #0 {
  %.not = icmp ugt i32 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %17

4:                                                ; preds = %2
  %5 = lshr i32 %0, 1
  %.not1 = icmp ult i32 %5, %1
  br i1 %.not1, label %10, label %6

6:                                                ; preds = %4
  %7 = uitofp i32 %1 to double
  %8 = uitofp i32 %0 to double
  %9 = fdiv double %7, %8
  br label %17

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10
  %12 = sub i32 %0, %1
  %13 = uitofp i32 %12 to double
  %14 = fneg double %13
  %15 = uitofp i32 %0 to double
  %16 = fdiv double %14, %15
  br label %17

17:                                               ; preds = %11, %6, %3
  %.0 = phi double [ 0.000000e+00, %3 ], [ %9, %6 ], [ %16, %11 ]
  ret double %.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i32 0, i32 33}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
