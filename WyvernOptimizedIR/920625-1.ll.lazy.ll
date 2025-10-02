; ModuleID = './920625-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920625-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { double, double }
%struct.ipoint = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@pts = dso_local global [4 x %struct.point] [%struct.point { double 1.000000e+00, double 2.000000e+00 }, %struct.point { double 3.000000e+00, double 4.000000e+00 }, %struct.point { double 5.000000e+00, double 6.000000e+00 }, %struct.point { double 7.000000e+00, double 8.000000e+00 }], align 16
@ipts = dso_local global [4 x %struct.ipoint] [%struct.ipoint { i32 1, i32 2 }, %struct.ipoint { i32 3, i32 4 }, %struct.ipoint { i32 5, i32 6 }, %struct.ipoint { i32 7, i32 8 }], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load double, double* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 0, i32 0), align 16
  %2 = load double, double* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 0, i32 1), align 8
  %3 = load double, double* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 1, i32 0), align 16
  %4 = load double, double* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 1, i32 1), align 8
  %5 = load double, double* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 2, i32 0), align 16
  %6 = load double, double* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 2, i32 1), align 8
  %7 = load double, double* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 3, i32 0), align 16
  %8 = load double, double* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 3, i32 1), align 8
  %9 = call i32 (i32, ...) @va1(i32 noundef 4, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8)
  %10 = load i64, i64* bitcast ([4 x %struct.ipoint]* @ipts to i64*), align 16
  %11 = load i64, i64* bitcast (%struct.ipoint* getelementptr inbounds ([4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 1) to i64*), align 8
  %12 = load i64, i64* bitcast (%struct.ipoint* getelementptr inbounds ([4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 2) to i64*), align 16
  %13 = load i64, i64* bitcast (%struct.ipoint* getelementptr inbounds ([4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 3) to i64*), align 8
  %14 = call i32 (i32, ...) @va2(i32 noundef 4, i64 %10, i64 %11, i64 %12, i64 %13)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @va1(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca %struct.point, align 8
  %4 = alloca { double, double }, align 8
  %5 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  br label %6

6:                                                ; preds = %50, %1
  %.0 = phi i32 [ 0, %1 ], [ %51, %50 ]
  %7 = icmp slt i32 %.0, %0
  br i1 %7, label %8, label %52

8:                                                ; preds = %6
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %10, 145
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %14 = load i8*, i8** %13, align 16
  %15 = sext i32 %10 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 16
  %18 = bitcast i8* %16 to double*
  %19 = load double, double* %18, align 16
  %20 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 0
  store double %19, double* %20, align 8
  %21 = bitcast i8* %17 to double*
  %22 = load double, double* %21, align 16
  %23 = getelementptr inbounds { double, double }, { double, double }* %4, i64 0, i32 1
  store double %22, double* %23, align 8
  %24 = bitcast { double, double }* %4 to %struct.point*
  %25 = add i32 %10, 32
  store i32 %25, i32* %9, align 4
  br label %31

26:                                               ; preds = %8
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.point*
  %30 = getelementptr i8, i8* %28, i64 16
  store i8* %30, i8** %27, align 8
  br label %31

31:                                               ; preds = %26, %12
  %32 = phi %struct.point* [ %24, %12 ], [ %29, %26 ]
  %33 = bitcast %struct.point* %3 to i8*
  %34 = bitcast %struct.point* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %33, i8* noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false)
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds [4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 %35, i32 0
  %37 = load double, double* %36, align 16
  %38 = getelementptr inbounds %struct.point, %struct.point* %3, i64 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fcmp une double %37, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %31
  %42 = zext i32 %.0 to i64
  %43 = getelementptr inbounds [4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 %42, i32 1
  %44 = load double, double* %43, align 8
  %45 = getelementptr inbounds %struct.point, %struct.point* %3, i64 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = fcmp une double %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %31
  call void @abort() #5
  unreachable

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

52:                                               ; preds = %6
  %53 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %53)
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @va2(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca i64, align 8
  %tmpcast = bitcast i64* %3 to %struct.ipoint*
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  br label %5

5:                                                ; preds = %37, %1
  %.0 = phi i32 [ 0, %1 ], [ %38, %37 ]
  %6 = icmp slt i32 %.0, %0
  br i1 %6, label %7, label %39

7:                                                ; preds = %5
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = sext i32 %9 to i64
  %15 = getelementptr i8, i8* %13, i64 %14
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %21

21:                                               ; preds = %17, %11
  %.in = phi i8* [ %15, %11 ], [ %19, %17 ]
  %22 = bitcast i8* %.in to i64*
  %23 = load i64, i64* %22, align 4
  store i64 %23, i64* %3, align 8
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds [4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 %24, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = bitcast i64* %3 to i32*
  %28 = load i32, i32* %27, align 8
  %.not = icmp eq i32 %26, %28
  br i1 %.not, label %29, label %35

29:                                               ; preds = %21
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds [4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 %30, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ipoint, %struct.ipoint* %tmpcast, i64 0, i32 1
  %34 = load i32, i32* %33, align 4
  %.not1 = icmp eq i32 %32, %34
  br i1 %.not1, label %36, label %35

35:                                               ; preds = %29, %21
  call void @abort() #5
  unreachable

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !6

39:                                               ; preds = %5
  %40 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %40)
  ret i32 undef
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
