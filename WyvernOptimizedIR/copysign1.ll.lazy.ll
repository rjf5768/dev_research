; ModuleID = './copysign1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/copysign1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Df = type { float, float, float }
%struct.D = type { double, double, double }
%struct.Dl = type { x86_fp80, x86_fp80, x86_fp80 }

@Tf = internal constant [8 x %struct.Df] [%struct.Df { float 1.000000e+00, float 2.000000e+00, float 1.000000e+00 }, %struct.Df { float 1.000000e+00, float -2.000000e+00, float -1.000000e+00 }, %struct.Df { float -1.000000e+00, float -2.000000e+00, float -1.000000e+00 }, %struct.Df { float 0.000000e+00, float -2.000000e+00, float -0.000000e+00 }, %struct.Df { float -0.000000e+00, float -2.000000e+00, float -0.000000e+00 }, %struct.Df { float -0.000000e+00, float 2.000000e+00, float 0.000000e+00 }, %struct.Df { float 0x7FF0000000000000, float -0.000000e+00, float 0xFFF0000000000000 }, %struct.Df { float 0xFFF8000000000000, float 0x7FF0000000000000, float 0x7FF8000000000000 }], align 16
@T = internal constant [8 x %struct.D] [%struct.D { double 1.000000e+00, double 2.000000e+00, double 1.000000e+00 }, %struct.D { double 1.000000e+00, double -2.000000e+00, double -1.000000e+00 }, %struct.D { double -1.000000e+00, double -2.000000e+00, double -1.000000e+00 }, %struct.D { double 0.000000e+00, double -2.000000e+00, double -0.000000e+00 }, %struct.D { double -0.000000e+00, double -2.000000e+00, double -0.000000e+00 }, %struct.D { double -0.000000e+00, double 2.000000e+00, double 0.000000e+00 }, %struct.D { double 0x7FF0000000000000, double -0.000000e+00, double 0xFFF0000000000000 }, %struct.D { double 0xFFF8000000000000, double 0x7FF0000000000000, double 0x7FF8000000000000 }], align 16
@Tl = internal constant [8 x %struct.Dl] [%struct.Dl { x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK40008000000000000000, x86_fp80 0xK3FFF8000000000000000 }, %struct.Dl { x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xKBFFF8000000000000000 }, %struct.Dl { x86_fp80 0xKBFFF8000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xKBFFF8000000000000000 }, %struct.Dl { x86_fp80 0xK00000000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xK80000000000000000000 }, %struct.Dl { x86_fp80 0xK80000000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xK80000000000000000000 }, %struct.Dl { x86_fp80 0xK80000000000000000000, x86_fp80 0xK40008000000000000000, x86_fp80 0xK00000000000000000000 }, %struct.Dl { x86_fp80 0xK7FFF8000000000000000, x86_fp80 0xK80000000000000000000, x86_fp80 0xKFFFF8000000000000000 }, %struct.Dl { x86_fp80 0xKFFFFC000000000000000, x86_fp80 0xK7FFF8000000000000000, x86_fp80 0xK7FFFC000000000000000 }], align 16

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local float @cf(float noundef %0, float noundef %1) #0 {
  %3 = call float @llvm.copysign.f32(float %0, float %1)
  ret float %3
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testf() #2 {
  br label %1

1:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.0, 8
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [8 x %struct.Df], [8 x %struct.Df]* @Tf, i64 0, i64 %4, i32 0
  %6 = load float, float* %5, align 4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [8 x %struct.Df], [8 x %struct.Df]* @Tf, i64 0, i64 %7, i32 1
  %9 = load float, float* %8, align 4
  %10 = call float @cf(float noundef %6, float noundef %9)
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [8 x %struct.Df], [8 x %struct.Df]* @Tf, i64 0, i64 %11, i32 2
  %lhsv.cast = bitcast float %10 to i32
  %13 = bitcast float* %12 to i32*
  %rhsv = load i32, i32* %13, align 4
  %.not = icmp eq i32 %rhsv, %lhsv.cast
  br i1 %.not, label %15, label %14

14:                                               ; preds = %3
  call void @abort() #6
  unreachable

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

18:                                               ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local double @c(double noundef %0, double noundef %1) #0 {
  %3 = call double @llvm.copysign.f64(double %0, double %1)
  ret double %3
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #2 {
  br label %1

1:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.0, 8
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [8 x %struct.D], [8 x %struct.D]* @T, i64 0, i64 %4, i32 0
  %6 = load double, double* %5, align 8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [8 x %struct.D], [8 x %struct.D]* @T, i64 0, i64 %7, i32 1
  %9 = load double, double* %8, align 8
  %10 = call double @c(double noundef %6, double noundef %9)
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [8 x %struct.D], [8 x %struct.D]* @T, i64 0, i64 %11, i32 2
  %lhsv.cast = bitcast double %10 to i64
  %13 = bitcast double* %12 to i64*
  %rhsv = load i64, i64* %13, align 8
  %.not = icmp eq i64 %rhsv, %lhsv.cast
  br i1 %.not, label %15, label %14

14:                                               ; preds = %3
  call void @abort() #6
  unreachable

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

18:                                               ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local x86_fp80 @cl(x86_fp80 noundef %0, x86_fp80 noundef %1) #0 {
  %3 = call x86_fp80 @llvm.copysign.f80(x86_fp80 %0, x86_fp80 %1)
  ret x86_fp80 %3
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.copysign.f80(x86_fp80, x86_fp80) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testl() #2 {
  %1 = alloca x86_fp80, align 16
  br label %2

2:                                                ; preds = %18, %0
  %.0 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %3 = icmp ult i32 %.0, 8
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [8 x %struct.Dl], [8 x %struct.Dl]* @Tl, i64 0, i64 %5, i32 0
  %7 = load x86_fp80, x86_fp80* %6, align 16
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [8 x %struct.Dl], [8 x %struct.Dl]* @Tl, i64 0, i64 %8, i32 1
  %10 = load x86_fp80, x86_fp80* %9, align 16
  %11 = call x86_fp80 @cl(x86_fp80 noundef %7, x86_fp80 noundef %10)
  store x86_fp80 %11, x86_fp80* %1, align 16
  %12 = bitcast x86_fp80* %1 to i8*
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [8 x %struct.Dl], [8 x %struct.Dl]* @Tl, i64 0, i64 %13, i32 2
  %15 = bitcast x86_fp80* %14 to i8*
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %12, i8* noundef nonnull dereferenceable(10) %15, i64 10)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %17, label %16

16:                                               ; preds = %4
  call void @abort() #6
  unreachable

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !7

20:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @testf()
  call void @test()
  call void @testl()
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

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
