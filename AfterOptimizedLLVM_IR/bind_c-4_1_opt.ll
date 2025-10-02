; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-4_1.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/lto/bind_c-4_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myctype_t = type { float, double, x86_fp80, { float, float }, { double, double }, { x86_fp80, x86_fp80 }, i8, [15 x i8] }

@myVar = external dso_local global %struct.myctype_t, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.myctype_t*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call %struct.myctype_t* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(%struct.myctype_t* @myVar) #3, !srcloc !4
  store %struct.myctype_t* %7, %struct.myctype_t** %6, align 8
  %8 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %9 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %8, i32 0, i32 0
  store float 1.000000e+00, float* %9, align 16
  call void @types_test1()
  %10 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %11 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %10, i32 0, i32 0
  %12 = load float, float* %11, align 16
  %13 = fcmp une float %12, 2.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @abort() #4
  unreachable

15:                                               ; preds = %2
  %16 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %17 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %16, i32 0, i32 1
  store double 1.000000e+00, double* %17, align 8
  call void @types_test2()
  %18 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %19 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = fcmp une double %20, 2.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  call void @abort() #4
  unreachable

23:                                               ; preds = %15
  %24 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %25 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %24, i32 0, i32 2
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %25, align 16
  call void @types_test3()
  %26 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %27 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %26, i32 0, i32 2
  %28 = load x86_fp80, x86_fp80* %27, align 16
  %29 = fcmp une x86_fp80 %28, 0xK40008000000000000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  call void @abort() #4
  unreachable

31:                                               ; preds = %23
  %32 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %33 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %32, i32 0, i32 3
  %34 = getelementptr inbounds { float, float }, { float, float }* %33, i32 0, i32 0
  %35 = getelementptr inbounds { float, float }, { float, float }* %33, i32 0, i32 1
  store float 1.000000e+00, float* %34, align 16
  store float 0.000000e+00, float* %35, align 4
  call void @types_test4()
  %36 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %37 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %36, i32 0, i32 3
  %38 = getelementptr inbounds { float, float }, { float, float }* %37, i32 0, i32 0
  %39 = load float, float* %38, align 16
  %40 = getelementptr inbounds { float, float }, { float, float }* %37, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = fcmp une float %39, 2.000000e+00
  %43 = fcmp une float %41, 0.000000e+00
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  call void @abort() #4
  unreachable

46:                                               ; preds = %31
  %47 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %48 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %47, i32 0, i32 4
  %49 = getelementptr inbounds { double, double }, { double, double }* %48, i32 0, i32 0
  %50 = getelementptr inbounds { double, double }, { double, double }* %48, i32 0, i32 1
  store double 1.000000e+00, double* %49, align 8
  store double 0.000000e+00, double* %50, align 8
  call void @types_test5()
  %51 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %52 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %51, i32 0, i32 4
  %53 = getelementptr inbounds { double, double }, { double, double }* %52, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = getelementptr inbounds { double, double }, { double, double }* %52, i32 0, i32 1
  %56 = load double, double* %55, align 8
  %57 = fcmp une double %54, 2.000000e+00
  %58 = fcmp une double %56, 0.000000e+00
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  call void @abort() #4
  unreachable

61:                                               ; preds = %46
  %62 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %63 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %62, i32 0, i32 5
  %64 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %63, i32 0, i32 0
  %65 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %63, i32 0, i32 1
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %64, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %65, align 16
  call void @types_test6()
  %66 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %67 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %66, i32 0, i32 5
  %68 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %67, i32 0, i32 0
  %69 = load x86_fp80, x86_fp80* %68, align 16
  %70 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %67, i32 0, i32 1
  %71 = load x86_fp80, x86_fp80* %70, align 16
  %72 = fcmp une x86_fp80 %69, 0xK40008000000000000000
  %73 = fcmp une x86_fp80 %71, 0xK00000000000000000000
  %74 = or i1 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  call void @abort() #4
  unreachable

76:                                               ; preds = %61
  %77 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %78 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %77, i32 0, i32 6
  store i8 0, i8* %78, align 16
  call void @types_test7()
  %79 = load %struct.myctype_t*, %struct.myctype_t** %6, align 8
  %80 = getelementptr inbounds %struct.myctype_t, %struct.myctype_t* %79, i32 0, i32 6
  %81 = load i8, i8* %80, align 16
  %82 = trunc i8 %81 to i1
  %83 = zext i1 %82 to i32
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  call void @abort() #4
  unreachable

86:                                               ; preds = %76
  ret i32 0
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
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 747}
