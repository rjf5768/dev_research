; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920625-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920625-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { double, double }
%struct.ipoint = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@pts = dso_local global [4 x %struct.point] [%struct.point { double 1.000000e+00, double 2.000000e+00 }, %struct.point { double 3.000000e+00, double 4.000000e+00 }, %struct.point { double 5.000000e+00, double 6.000000e+00 }, %struct.point { double 7.000000e+00, double 8.000000e+00 }], align 16
@ipts = dso_local global [4 x %struct.ipoint] [%struct.ipoint { i32 1, i32 2 }, %struct.ipoint { i32 3, i32 4 }, %struct.ipoint { i32 5, i32 6 }, %struct.ipoint { i32 7, i32 8 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast ([4 x %struct.point]* @pts to { double, double }*), i32 0, i32 0), align 16
  %3 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast ([4 x %struct.point]* @pts to { double, double }*), i32 0, i32 1), align 8
  %4 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast (%struct.point* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 1) to { double, double }*), i32 0, i32 0), align 16
  %5 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast (%struct.point* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 1) to { double, double }*), i32 0, i32 1), align 8
  %6 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast (%struct.point* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 2) to { double, double }*), i32 0, i32 0), align 16
  %7 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast (%struct.point* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 2) to { double, double }*), i32 0, i32 1), align 8
  %8 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast (%struct.point* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 3) to { double, double }*), i32 0, i32 0), align 16
  %9 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* bitcast (%struct.point* getelementptr inbounds ([4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 3) to { double, double }*), i32 0, i32 1), align 8
  %10 = call i32 (i32, ...) @va1(i32 noundef 4, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9)
  %11 = load i64, i64* bitcast ([4 x %struct.ipoint]* @ipts to i64*), align 16
  %12 = load i64, i64* bitcast (%struct.ipoint* getelementptr inbounds ([4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 1) to i64*), align 8
  %13 = load i64, i64* bitcast (%struct.ipoint* getelementptr inbounds ([4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 2) to i64*), align 16
  %14 = load i64, i64* bitcast (%struct.ipoint* getelementptr inbounds ([4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 3) to i64*), align 8
  %15 = call i32 (i32, ...) @va2(i32 noundef 4, i64 %11, i64 %12, i64 %13, i64 %14)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @va1(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.point, align 8
  %7 = alloca %struct.point, align 8
  store i32 %0, i32* %3, align 4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %61, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ule i32 %17, 144
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 3
  %21 = load i8*, i8** %20, align 16
  %22 = getelementptr i8, i8* %21, i32 %17
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast %struct.point* %7 to { double, double }*
  %25 = bitcast i8* %22 to double*
  %26 = load double, double* %25, align 16
  %27 = getelementptr inbounds { double, double }, { double, double }* %24, i32 0, i32 0
  store double %26, double* %27, align 8
  %28 = bitcast i8* %23 to double*
  %29 = load double, double* %28, align 16
  %30 = getelementptr inbounds { double, double }, { double, double }* %24, i32 0, i32 1
  store double %29, double* %30, align 8
  %31 = bitcast { double, double }* %24 to %struct.point*
  %32 = add i32 %17, 32
  store i32 %32, i32* %16, align 4
  br label %38

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.point*
  %37 = getelementptr i8, i8* %35, i32 16
  store i8* %37, i8** %34, align 8
  br label %38

38:                                               ; preds = %33, %19
  %39 = phi %struct.point* [ %31, %19 ], [ %36, %33 ]
  %40 = bitcast %struct.point* %6 to i8*
  %41 = bitcast %struct.point* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.point, %struct.point* %44, i32 0, i32 0
  %46 = load double, double* %45, align 16
  %47 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fcmp une double %46, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x %struct.point], [4 x %struct.point]* @pts, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.point, %struct.point* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = fcmp une double %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50, %38
  call void @abort() #4
  unreachable

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %10, !llvm.loop !4

64:                                               ; preds = %10
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %66 = bitcast %struct.__va_list_tag* %65 to i8*
  call void @llvm.va_end(i8* %66)
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @va2(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipoint, align 4
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ule i32 %16, 40
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 3
  %20 = load i8*, i8** %19, align 16
  %21 = getelementptr i8, i8* %20, i32 %16
  %22 = bitcast i8* %21 to %struct.ipoint*
  %23 = add i32 %16, 8
  store i32 %23, i32* %15, align 16
  br label %29

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.ipoint*
  %28 = getelementptr i8, i8* %26, i32 8
  store i8* %28, i8** %25, align 8
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi %struct.ipoint* [ %22, %18 ], [ %27, %24 ]
  %31 = bitcast %struct.ipoint* %6 to i8*
  %32 = bitcast %struct.ipoint* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.ipoint, %struct.ipoint* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.ipoint, %struct.ipoint* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x %struct.ipoint], [4 x %struct.ipoint]* @ipts, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.ipoint, %struct.ipoint* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ipoint, %struct.ipoint* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41, %29
  call void @abort() #4
  unreachable

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %9, !llvm.loop !6

55:                                               ; preds = %9
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %57 = bitcast %struct.__va_list_tag* %56 to i8*
  call void @llvm.va_end(i8* %57)
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
