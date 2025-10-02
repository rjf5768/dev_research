; ModuleID = './complex-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global { float, float } { float 1.000000e+00, float 1.400000e+01 }, align 4
@y = dso_local global { float, float } { float 7.000000e+00, float 5.000000e+00 }, align 4
@w = dso_local global { float, float } { float 8.000000e+00, float 1.900000e+01 }, align 4
@z = dso_local global { float, float } zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <2 x float> @p(<2 x float> noundef %0, <2 x float> noundef %1) #0 {
  %3 = alloca <2 x float>, align 8
  %4 = alloca <2 x float>, align 8
  %5 = alloca <2 x float>, align 8
  store <2 x float> %0, <2 x float>* %4, align 8
  store <2 x float> %1, <2 x float>* %5, align 8
  %6 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 0
  %7 = load float, float* %6, align 8
  %8 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 1
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 0
  %11 = load float, float* %10, align 8
  %12 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 1
  %13 = load float, float* %12, align 4
  %14 = fadd float %7, %11
  %15 = fadd float %9, %13
  %16 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 0
  %17 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 1
  store float %14, float* %16, align 8
  store float %15, float* %17, align 4
  %18 = load <2 x float>, <2 x float>* %3, align 8
  ret <2 x float> %18
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca <2 x float>, align 8
  %2 = alloca <2 x float>, align 8
  %3 = alloca <2 x float>, align 8
  %4 = alloca <2 x float>, align 8
  %5 = alloca <2 x float>, align 8
  %6 = alloca <2 x float>, align 8
  %7 = alloca <2 x float>, align 8
  %8 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @x, i64 0, i32 0), align 4
  %9 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @x, i64 0, i32 1), align 4
  %10 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @y, i64 0, i32 0), align 4
  %11 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @y, i64 0, i32 1), align 4
  %12 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 0
  %13 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 1
  store float %8, float* %12, align 8
  store float %9, float* %13, align 4
  %14 = load <2 x float>, <2 x float>* %1, align 8
  %15 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %16 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  store float %10, float* %15, align 8
  store float %11, float* %16, align 4
  %17 = load <2 x float>, <2 x float>* %2, align 8
  %18 = call <2 x float> @p(<2 x float> noundef %14, <2 x float> noundef %17)
  store <2 x float> %18, <2 x float>* %3, align 8
  %19 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 0
  %20 = load float, float* %19, align 8
  %21 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 1
  %22 = load float, float* %21, align 4
  store float %20, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i64 0, i32 0), align 4
  store float %22, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i64 0, i32 1), align 4
  %23 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @x, i64 0, i32 0), align 4
  %24 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @x, i64 0, i32 1), align 4
  %25 = call <2 x float> @__divsc3(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %20, float noundef %22) #3
  store <2 x float> %25, <2 x float>* %4, align 8
  %26 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 0
  %27 = load float, float* %26, align 8
  %28 = getelementptr inbounds <2 x float>, <2 x float>* %4, i64 0, i64 1
  %29 = load float, float* %28, align 4
  %30 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 0
  %31 = getelementptr inbounds <2 x float>, <2 x float>* %5, i64 0, i64 1
  store float %23, float* %30, align 8
  store float %24, float* %31, align 4
  %32 = load <2 x float>, <2 x float>* %5, align 8
  %33 = getelementptr inbounds <2 x float>, <2 x float>* %6, i64 0, i64 0
  %34 = getelementptr inbounds <2 x float>, <2 x float>* %6, i64 0, i64 1
  store float %27, float* %33, align 8
  store float %29, float* %34, align 4
  %35 = load <2 x float>, <2 x float>* %6, align 8
  %36 = call <2 x float> @p(<2 x float> noundef %32, <2 x float> noundef %35)
  store <2 x float> %36, <2 x float>* %7, align 8
  %37 = getelementptr inbounds <2 x float>, <2 x float>* %7, i64 0, i64 0
  %38 = load float, float* %37, align 8
  %39 = getelementptr inbounds <2 x float>, <2 x float>* %7, i64 0, i64 1
  %40 = load float, float* %39, align 4
  store float %38, float* getelementptr inbounds ({ float, float }, { float, float }* @y, i64 0, i32 0), align 4
  store float %40, float* getelementptr inbounds ({ float, float }, { float, float }* @y, i64 0, i32 1), align 4
  %41 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i64 0, i32 0), align 4
  %42 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @z, i64 0, i32 1), align 4
  %43 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @w, i64 0, i32 0), align 4
  %44 = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @w, i64 0, i32 1), align 4
  %45 = fcmp une float %41, %43
  %46 = fcmp une float %42, %44
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %49, %48
  unreachable
}

declare dso_local <2 x float> @__divsc3(float, float, float, float)

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
