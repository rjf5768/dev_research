; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921113-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_t = type { float, float }
%struct.struct_list = type { float }

@pos = dso_local global [1 x %struct.vector_t] zeroinitializer, align 4
@limit = dso_local global [2 x %struct.vector_t] [%struct.vector_t zeroinitializer, %struct.vector_t { float 1.000000e+00, float 1.000000e+00 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @w(float noundef %0, float noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load i32, i32* %3, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(float noundef %0, float noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp une float %6, 0.000000e+00
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load float, float* %5, align 4
  %10 = fcmp une float %9, 0.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(float noundef %0, float noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp une float %6, 1.000000e+00
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load float, float* %5, align 4
  %10 = fcmp une float %9, 1.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gitter(i32 noundef %0, %struct.vector_t* noundef %1, %struct.struct_list* noundef %2, i32* noundef %3, %struct.vector_t* noundef %4, float noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vector_t*, align 8
  %10 = alloca %struct.struct_list*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vector_t*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [128 x [128 x i32]], align 16
  store i32 %0, i32* %8, align 4
  store %struct.vector_t* %1, %struct.vector_t** %9, align 8
  store %struct.struct_list* %2, %struct.struct_list** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.vector_t* %4, %struct.vector_t** %12, align 8
  store float %5, float* %13, align 4
  %16 = load %struct.vector_t*, %struct.vector_t** %12, align 8
  %17 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %16, i64 0
  %18 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = load %struct.vector_t*, %struct.vector_t** %12, align 8
  %21 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %20, i64 0
  %22 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %21, i32 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = call i32 @f1(float noundef %19, float noundef %23)
  %25 = load %struct.vector_t*, %struct.vector_t** %12, align 8
  %26 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %25, i64 1
  %27 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %26, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = load %struct.vector_t*, %struct.vector_t** %12, align 8
  %30 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %29, i64 1
  %31 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = call i32 @f2(float noundef %28, float noundef %32)
  %34 = load i32*, i32** %11, align 8
  store i32 0, i32* %34, align 4
  %35 = load %struct.vector_t*, %struct.vector_t** %9, align 8
  %36 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %35, i64 0
  %37 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %36, i32 0, i32 0
  %38 = load float, float* %37, align 4
  store float %38, float* %14, align 4
  %39 = load float, float* %14, align 4
  %40 = fpext float %39 to double
  %41 = fcmp ole double %40, 0.000000e+00
  br i1 %41, label %42, label %60

42:                                               ; preds = %6
  %43 = load float, float* %14, align 4
  %44 = load float, float* %13, align 4
  %45 = call i32 @w(float noundef %43, float noundef %44)
  %46 = load float, float* %14, align 4
  %47 = fpext float %46 to double
  %48 = load float, float* %13, align 4
  %49 = fpext float %48 to double
  %50 = fmul double %49, 5.000000e-01
  %51 = fcmp ole double %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load float, float* %14, align 4
  %54 = load float, float* %13, align 4
  %55 = call i32 @w(float noundef %53, float noundef %54)
  %56 = load %struct.struct_list*, %struct.struct_list** %10, align 8
  %57 = getelementptr inbounds %struct.struct_list, %struct.struct_list* %56, i64 0
  %58 = getelementptr inbounds %struct.struct_list, %struct.struct_list* %57, i32 0, i32 0
  store float 1.000000e+00, float* %58, align 4
  br label %59

59:                                               ; preds = %52, %42
  br label %60

60:                                               ; preds = %59, %6
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.struct_list, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @gitter(i32 noundef 1, %struct.vector_t* noundef getelementptr inbounds ([1 x %struct.vector_t], [1 x %struct.vector_t]* @pos, i64 0, i64 0), %struct.struct_list* noundef %3, i32* noundef %2, %struct.vector_t* noundef getelementptr inbounds ([2 x %struct.vector_t], [2 x %struct.vector_t]* @limit, i64 0, i64 0), float noundef 1.000000e+00)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
