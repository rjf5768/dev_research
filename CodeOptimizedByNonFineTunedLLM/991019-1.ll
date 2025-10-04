; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991019-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991019-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.material_type = type { double }

; Function Attrs: noinline nounwind uwtable
define dso_local double @foo(double noundef %0) #0 {
  %2 = alloca %struct.material_type, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fadd double 1.000000e+00, %4
  %6 = getelementptr inbounds %struct.material_type, %struct.material_type* %2, i32 0, i32 0
  store double %5, double* %6, align 8
  %7 = getelementptr inbounds %struct.material_type, %struct.material_type* %2, i32 0, i32 0
  %8 = load double, double* %7, align 8
  ret double %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.material_type, align 8
  %4 = alloca %struct.material_type, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %18, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = call double @foo(double noundef 1.000000e+00)
  %10 = getelementptr inbounds %struct.material_type, %struct.material_type* %4, i32 0, i32 0
  store double %9, double* %10, align 8
  %11 = bitcast %struct.material_type* %3 to i8*
  %12 = bitcast %struct.material_type* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %struct.material_type, %struct.material_type* %3, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fcmp une double %14, 2.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  call void @abort() #3
  unreachable

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %5, !llvm.loop !4

21:                                               ; preds = %5
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
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
