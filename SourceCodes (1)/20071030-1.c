; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071030-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071030-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_s = type { i32, i32, [64 x %struct.client_frame_t] }
%struct.client_frame_t = type { double, float, %struct.packet_entities_t }
%struct.packet_entities_t = type { i32, %struct.entity_state_t* }
%struct.entity_state_t = type { i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CalcPing(%struct.client_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.client_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.client_frame_t*, align 8
  store %struct.client_s* %0, %struct.client_s** %3, align 8
  %8 = load %struct.client_s*, %struct.client_s** %3, align 8
  %9 = getelementptr inbounds %struct.client_s, %struct.client_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.client_s*, %struct.client_s** %3, align 8
  %14 = getelementptr inbounds %struct.client_s, %struct.client_s* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  store float 0.000000e+00, float* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct.client_s*, %struct.client_s** %3, align 8
  %18 = getelementptr inbounds %struct.client_s, %struct.client_s* %17, i32 0, i32 2
  %19 = getelementptr inbounds [64 x %struct.client_frame_t], [64 x %struct.client_frame_t]* %18, i64 0, i64 0
  store %struct.client_frame_t* %19, %struct.client_frame_t** %7, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %37, %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 64
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.client_frame_t*, %struct.client_frame_t** %7, align 8
  %25 = getelementptr inbounds %struct.client_frame_t, %struct.client_frame_t* %24, i32 0, i32 1
  %26 = load float, float* %25, align 8
  %27 = fcmp ogt float %26, 0.000000e+00
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.client_frame_t*, %struct.client_frame_t** %7, align 8
  %30 = getelementptr inbounds %struct.client_frame_t, %struct.client_frame_t* %29, i32 0, i32 1
  %31 = load float, float* %30, align 8
  %32 = load float, float* %4, align 4
  %33 = fadd float %32, %31
  store float %33, float* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %28, %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.client_frame_t*, %struct.client_frame_t** %7, align 8
  %41 = getelementptr inbounds %struct.client_frame_t, %struct.client_frame_t* %40, i32 1
  store %struct.client_frame_t* %41, %struct.client_frame_t** %7, align 8
  br label %20, !llvm.loop !4

42:                                               ; preds = %20
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store i32 9999, i32* %2, align 4
  br label %54

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = sitofp i32 %47 to float
  %49 = load float, float* %4, align 4
  %50 = fdiv float %49, %48
  store float %50, float* %4, align 4
  %51 = load float, float* %4, align 4
  %52 = fmul float %51, 1.000000e+03
  %53 = fptosi float %52 to i32
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %45, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.client_s, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.client_s* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 2056, i1 false)
  %4 = getelementptr inbounds %struct.client_s, %struct.client_s* %2, i32 0, i32 2
  %5 = getelementptr inbounds [64 x %struct.client_frame_t], [64 x %struct.client_frame_t]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %struct.client_frame_t, %struct.client_frame_t* %5, i32 0, i32 1
  store float 1.000000e+00, float* %6, align 8
  %7 = call i32 @CalcPing(%struct.client_s* noundef %2)
  %8 = icmp ne i32 %7, 1000
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #3
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
