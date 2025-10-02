; ModuleID = './align-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/align-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a_short = type { i8, i16 }
%struct.a_int = type { i8, i32 }
%struct.b_int = type { i16, i32 }
%struct.a_float = type { i8, float }
%struct.b_float = type { i16, float }
%struct.a_double = type { i8, double }
%struct.b_double = type { i16, double }
%struct.c_double = type { i32, double }
%struct.d_double = type { float, double }
%struct.a_ldouble = type { i8, x86_fp80 }
%struct.b_ldouble = type { i16, x86_fp80 }
%struct.c_ldouble = type { i32, x86_fp80 }
%struct.d_ldouble = type { float, x86_fp80 }
%struct.e_ldouble = type { double, x86_fp80 }

@s_c_s = dso_local global %struct.a_short { i8 97, i16 13 }, align 2
@s_c_i = dso_local global %struct.a_int { i8 98, i32 14 }, align 4
@s_s_i = dso_local global %struct.b_int { i16 15, i32 16 }, align 4
@s_c_f = dso_local global %struct.a_float { i8 99, float 1.700000e+01 }, align 4
@s_s_f = dso_local global %struct.b_float { i16 18, float 1.900000e+01 }, align 4
@s_c_d = dso_local global %struct.a_double { i8 100, double 2.000000e+01 }, align 8
@s_s_d = dso_local global %struct.b_double { i16 21, double 2.200000e+01 }, align 8
@s_i_d = dso_local global %struct.c_double { i32 23, double 2.400000e+01 }, align 8
@s_f_d = dso_local global %struct.d_double { float 2.500000e+01, double 2.600000e+01 }, align 8
@s_c_ld = dso_local global %struct.a_ldouble { i8 101, x86_fp80 0xK4003D800000000000000 }, align 16
@s_s_ld = dso_local global %struct.b_ldouble { i16 28, x86_fp80 0xK4003E800000000000000 }, align 16
@s_i_ld = dso_local global %struct.c_ldouble { i32 30, x86_fp80 0xK4003F800000000000000 }, align 16
@s_f_ld = dso_local global %struct.d_ldouble { float 3.200000e+01, x86_fp80 0xK40048400000000000000 }, align 16
@s_d_ld = dso_local global %struct.e_ldouble { double 3.400000e+01, x86_fp80 0xK40048C00000000000000 }, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.a_short, %struct.a_short* @s_c_s, i64 0, i32 0), align 2
  %.not = icmp eq i8 %1, 97
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = load i16, i16* getelementptr inbounds (%struct.a_short, %struct.a_short* @s_c_s, i64 0, i32 1), align 2
  %.not1 = icmp eq i16 %4, 13
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = load i8, i8* getelementptr inbounds (%struct.a_int, %struct.a_int* @s_c_i, i64 0, i32 0), align 4
  %.not2 = icmp eq i8 %7, 98
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = load i32, i32* getelementptr inbounds (%struct.a_int, %struct.a_int* @s_c_i, i64 0, i32 1), align 4
  %.not3 = icmp eq i32 %10, 14
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #2
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = load i16, i16* getelementptr inbounds (%struct.b_int, %struct.b_int* @s_s_i, i64 0, i32 0), align 4
  %.not4 = icmp eq i16 %13, 15
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #2
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.b_int, %struct.b_int* @s_s_i, i64 0, i32 1), align 4
  %.not5 = icmp eq i32 %16, 16
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #2
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %19 = load i8, i8* getelementptr inbounds (%struct.a_float, %struct.a_float* @s_c_f, i64 0, i32 0), align 4
  %.not6 = icmp eq i8 %19, 99
  br i1 %.not6, label %21, label %20

20:                                               ; preds = %18
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = load float, float* getelementptr inbounds (%struct.a_float, %struct.a_float* @s_c_f, i64 0, i32 1), align 4
  %23 = fcmp une float %22, 1.700000e+01
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %21
  %26 = load i16, i16* getelementptr inbounds (%struct.b_float, %struct.b_float* @s_s_f, i64 0, i32 0), align 4
  %.not7 = icmp eq i16 %26, 18
  br i1 %.not7, label %28, label %27

27:                                               ; preds = %25
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %25
  %29 = load float, float* getelementptr inbounds (%struct.b_float, %struct.b_float* @s_s_f, i64 0, i32 1), align 4
  %30 = fcmp une float %29, 1.900000e+01
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #2
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  %33 = load i8, i8* getelementptr inbounds (%struct.a_double, %struct.a_double* @s_c_d, i64 0, i32 0), align 8
  %.not8 = icmp eq i8 %33, 100
  br i1 %.not8, label %35, label %34

34:                                               ; preds = %32
  call void @abort() #2
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  %36 = load double, double* getelementptr inbounds (%struct.a_double, %struct.a_double* @s_c_d, i64 0, i32 1), align 8
  %37 = fcmp une double %36, 2.000000e+01
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @abort() #2
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %35
  %40 = load i16, i16* getelementptr inbounds (%struct.b_double, %struct.b_double* @s_s_d, i64 0, i32 0), align 8
  %.not9 = icmp eq i16 %40, 21
  br i1 %.not9, label %42, label %41

41:                                               ; preds = %39
  call void @abort() #2
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  %43 = load double, double* getelementptr inbounds (%struct.b_double, %struct.b_double* @s_s_d, i64 0, i32 1), align 8
  %44 = fcmp une double %43, 2.200000e+01
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @abort() #2
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %42
  %47 = load i32, i32* getelementptr inbounds (%struct.c_double, %struct.c_double* @s_i_d, i64 0, i32 0), align 8
  %.not10 = icmp eq i32 %47, 23
  br i1 %.not10, label %49, label %48

48:                                               ; preds = %46
  call void @abort() #2
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %46
  %50 = load double, double* getelementptr inbounds (%struct.c_double, %struct.c_double* @s_i_d, i64 0, i32 1), align 8
  %51 = fcmp une double %50, 2.400000e+01
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @abort() #2
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %49
  %54 = load float, float* getelementptr inbounds (%struct.d_double, %struct.d_double* @s_f_d, i64 0, i32 0), align 8
  %55 = fcmp une float %54, 2.500000e+01
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @abort() #2
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %53
  %58 = load double, double* getelementptr inbounds (%struct.d_double, %struct.d_double* @s_f_d, i64 0, i32 1), align 8
  %59 = fcmp une double %58, 2.600000e+01
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @abort() #2
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %57
  %62 = load i8, i8* getelementptr inbounds (%struct.a_ldouble, %struct.a_ldouble* @s_c_ld, i64 0, i32 0), align 16
  %.not11 = icmp eq i8 %62, 101
  br i1 %.not11, label %64, label %63

63:                                               ; preds = %61
  call void @abort() #2
  br label %UnifiedUnreachableBlock

64:                                               ; preds = %61
  %65 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.a_ldouble, %struct.a_ldouble* @s_c_ld, i64 0, i32 1), align 16
  %66 = fcmp une x86_fp80 %65, 0xK4003D800000000000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @abort() #2
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %64
  %69 = load i16, i16* getelementptr inbounds (%struct.b_ldouble, %struct.b_ldouble* @s_s_ld, i64 0, i32 0), align 16
  %.not12 = icmp eq i16 %69, 28
  br i1 %.not12, label %71, label %70

70:                                               ; preds = %68
  call void @abort() #2
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %68
  %72 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.b_ldouble, %struct.b_ldouble* @s_s_ld, i64 0, i32 1), align 16
  %73 = fcmp une x86_fp80 %72, 0xK4003E800000000000000
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void @abort() #2
  br label %UnifiedUnreachableBlock

75:                                               ; preds = %71
  %76 = load i32, i32* getelementptr inbounds (%struct.c_ldouble, %struct.c_ldouble* @s_i_ld, i64 0, i32 0), align 16
  %.not13 = icmp eq i32 %76, 30
  br i1 %.not13, label %78, label %77

77:                                               ; preds = %75
  call void @abort() #2
  br label %UnifiedUnreachableBlock

78:                                               ; preds = %75
  %79 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.c_ldouble, %struct.c_ldouble* @s_i_ld, i64 0, i32 1), align 16
  %80 = fcmp une x86_fp80 %79, 0xK4003F800000000000000
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void @abort() #2
  br label %UnifiedUnreachableBlock

82:                                               ; preds = %78
  %83 = load float, float* getelementptr inbounds (%struct.d_ldouble, %struct.d_ldouble* @s_f_ld, i64 0, i32 0), align 16
  %84 = fcmp une float %83, 3.200000e+01
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  call void @abort() #2
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %82
  %87 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.d_ldouble, %struct.d_ldouble* @s_f_ld, i64 0, i32 1), align 16
  %88 = fcmp une x86_fp80 %87, 0xK40048400000000000000
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call void @abort() #2
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %86
  %91 = load double, double* getelementptr inbounds (%struct.e_ldouble, %struct.e_ldouble* @s_d_ld, i64 0, i32 0), align 16
  %92 = fcmp une double %91, 3.400000e+01
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  call void @abort() #2
  br label %UnifiedUnreachableBlock

94:                                               ; preds = %90
  %95 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.e_ldouble, %struct.e_ldouble* @s_d_ld, i64 0, i32 1), align 16
  %96 = fcmp une x86_fp80 %95, 0xK40048C00000000000000
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  call void @abort() #2
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %94
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %97, %93, %89, %85, %81, %77, %74, %70, %67, %63, %60, %56, %52, %48, %45, %41, %38, %34, %31, %27, %24, %20, %17, %14, %11, %8, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
