; ModuleID = './bind_c-4_1.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-4_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myctype_t = type { float, double, x86_fp80, { float, float }, { double, double }, { x86_fp80, x86_fp80 }, i8, [15 x i8] }

@myVar = external dso_local global %struct.myctype_t, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call %struct.myctype_t* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(%struct.myctype_t* nonnull @myVar) #3, !srcloc !4
  %4 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 0
  store float 1.000000e+00, float* %4, align 16
  call void @types_test1() #4
  %5 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 0
  %6 = load float, float* %5, align 16
  %7 = fcmp une float %6, 2.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 1
  store double 1.000000e+00, double* %10, align 8
  call void @types_test2() #4
  %11 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = fcmp une double %12, 2.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 2
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %16, align 16
  call void @types_test3() #4
  %17 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 2
  %18 = load x86_fp80, x86_fp80* %17, align 16
  %19 = fcmp une x86_fp80 %18, 0xK40008000000000000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  call void @abort() #5
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 3, i32 0
  %23 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 3, i32 1
  store float 1.000000e+00, float* %22, align 16
  store float 0.000000e+00, float* %23, align 4
  call void @types_test4() #4
  %24 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 3, i32 0
  %25 = load float, float* %24, align 16
  %26 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 3, i32 1
  %27 = load float, float* %26, align 4
  %28 = fcmp une float %25, 2.000000e+00
  %29 = fcmp une float %27, 0.000000e+00
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  call void @abort() #5
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 4, i32 0
  %34 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 4, i32 1
  store double 1.000000e+00, double* %33, align 8
  store double 0.000000e+00, double* %34, align 8
  call void @types_test5() #4
  %35 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 4, i32 0
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 4, i32 1
  %38 = load double, double* %37, align 8
  %39 = fcmp une double %36, 2.000000e+00
  %40 = fcmp une double %38, 0.000000e+00
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  call void @abort() #5
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 5, i32 0
  %45 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 5, i32 1
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %44, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %45, align 16
  call void @types_test6() #4
  %46 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 5, i32 0
  %47 = load x86_fp80, x86_fp80* %46, align 16
  %48 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 5, i32 1
  %49 = load x86_fp80, x86_fp80* %48, align 16
  %50 = fcmp une x86_fp80 %47, 0xK40008000000000000000
  %51 = fcmp une x86_fp80 %49, 0xK00000000000000000000
  %52 = or i1 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  call void @abort() #5
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 6
  store i8 0, i8* %55, align 16
  call void @types_test7() #4
  %56 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %3, i64 0, i32 6
  %57 = load i8, i8* %56, align 16
  %58 = and i8 %57, 1
  %.not.not = icmp eq i8 %58, 0
  br i1 %.not.not, label %59, label %60

59:                                               ; preds = %54
  call void @abort() #5
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %54
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %59, %53, %42, %31, %20, %14, %8
  unreachable
}

declare dso_local void @types_test1() #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

declare dso_local void @types_test2() #1

declare dso_local void @types_test3() #1

declare dso_local void @types_test4() #1

declare dso_local void @types_test5() #1

declare dso_local void @types_test6() #1

declare dso_local void @types_test7() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 747}
