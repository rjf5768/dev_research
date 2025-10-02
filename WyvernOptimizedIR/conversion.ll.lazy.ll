; ModuleID = './conversion.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @u2f(i32 noundef %0) #0 {
  %2 = uitofp i32 %0 to float
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @u2d(i32 noundef %0) #0 {
  %2 = uitofp i32 %0 to double
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local x86_fp80 @u2ld(i32 noundef %0) #0 {
  %2 = uitofp i32 %0 to x86_fp80
  ret x86_fp80 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @s2f(i32 noundef %0) #0 {
  %2 = sitofp i32 %0 to float
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @s2d(i32 noundef %0) #0 {
  %2 = sitofp i32 %0 to double
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local x86_fp80 @s2ld(i32 noundef %0) #0 {
  %2 = sitofp i32 %0 to x86_fp80
  ret x86_fp80 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fnear(float noundef %0, float noundef %1) #0 {
  %3 = fsub float %0, %1
  %4 = fcmp oeq float %3, 0.000000e+00
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = fdiv float %0, %3
  %7 = fcmp ogt float %6, 1.000000e+06
  %phi.cast = zext i1 %7 to i32
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 1, %2 ], [ %phi.cast, %5 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @dnear(double noundef %0, double noundef %1) #0 {
  %3 = fsub double %0, %1
  %4 = fcmp oeq double %3, 0.000000e+00
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = fdiv double %0, %3
  %7 = fcmp ogt double %6, 1.000000e+14
  %phi.cast = zext i1 %7 to i32
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 1, %2 ], [ %phi.cast, %5 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ldnear(x86_fp80 noundef %0, x86_fp80 noundef %1) #0 {
  %3 = fsub x86_fp80 %0, %1
  %4 = fcmp oeq x86_fp80 %3, 0xK00000000000000000000
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = fdiv x86_fp80 %0, %3
  %7 = fcmp ogt x86_fp80 %6, 0xK40699DC5ADA82B70B800
  %phi.cast = zext i1 %7 to i32
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 1, %2 ], [ %phi.cast, %5 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_integer_to_float() #1 {
  %1 = call float @u2f(i32 noundef 0)
  %2 = fcmp une float %1, 0.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call float @u2f(i32 noundef -1)
  %6 = call i32 @fnear(float noundef %5, float noundef 0x41F0000000000000)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = call float @u2f(i32 noundef 2147483647)
  %10 = call i32 @fnear(float noundef %9, float noundef 0x41E0000000000000)
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  %13 = call float @u2f(i32 noundef -2147483648)
  %14 = fcmp une float %13, 0x41E0000000000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = call double @u2d(i32 noundef 0)
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #4
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = call double @u2d(i32 noundef -1)
  %22 = call i32 @dnear(double noundef %21, double noundef 0x41EFFFFFFFE00000)
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #4
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = call double @u2d(i32 noundef 2147483647)
  %26 = call i32 @dnear(double noundef %25, double noundef 0x41DFFFFFFFC00000)
  %.not3 = icmp eq i32 %26, 0
  br i1 %.not3, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #4
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = call double @u2d(i32 noundef -2147483648)
  %30 = fcmp une double %29, 0x41E0000000000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #4
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  %33 = call x86_fp80 @u2ld(i32 noundef 0)
  %34 = fcmp une x86_fp80 %33, 0xK00000000000000000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #4
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %32
  %37 = call x86_fp80 @u2ld(i32 noundef -1)
  %38 = call i32 @ldnear(x86_fp80 noundef %37, x86_fp80 noundef 0xK401EFFFFFFFF00000000)
  %.not4 = icmp eq i32 %38, 0
  br i1 %.not4, label %39, label %40

39:                                               ; preds = %36
  call void @abort() #4
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %36
  %41 = call x86_fp80 @u2ld(i32 noundef 2147483647)
  %42 = call i32 @ldnear(x86_fp80 noundef %41, x86_fp80 noundef 0xK401DFFFFFFFE00000000)
  %.not5 = icmp eq i32 %42, 0
  br i1 %.not5, label %43, label %44

43:                                               ; preds = %40
  call void @abort() #4
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %40
  %45 = call x86_fp80 @u2ld(i32 noundef -2147483648)
  %46 = fcmp une x86_fp80 %45, 0xK401E8000000000000000
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #4
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %44
  %49 = call float @s2f(i32 noundef 0)
  %50 = fcmp une float %49, 0.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @abort() #4
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %48
  %53 = call float @s2f(i32 noundef -1)
  %54 = call i32 @fnear(float noundef %53, float noundef -1.000000e+00)
  %.not6 = icmp eq i32 %54, 0
  br i1 %.not6, label %55, label %56

55:                                               ; preds = %52
  call void @abort() #4
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %52
  %57 = call float @s2f(i32 noundef 2147483647)
  %58 = call i32 @fnear(float noundef %57, float noundef 0x41E0000000000000)
  %.not7 = icmp eq i32 %58, 0
  br i1 %.not7, label %59, label %60

59:                                               ; preds = %56
  call void @abort() #4
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %56
  %61 = call float @s2f(i32 noundef -2147483648)
  %62 = fcmp une float %61, 0xC1E0000000000000
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @abort() #4
  br label %UnifiedUnreachableBlock

64:                                               ; preds = %60
  %65 = call double @s2d(i32 noundef 0)
  %66 = fcmp une double %65, 0.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @abort() #4
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %64
  %69 = call double @s2d(i32 noundef -1)
  %70 = call i32 @dnear(double noundef %69, double noundef -1.000000e+00)
  %.not8 = icmp eq i32 %70, 0
  br i1 %.not8, label %71, label %72

71:                                               ; preds = %68
  call void @abort() #4
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %68
  %73 = call double @s2d(i32 noundef 2147483647)
  %74 = call i32 @dnear(double noundef %73, double noundef 0x41DFFFFFFFC00000)
  %.not9 = icmp eq i32 %74, 0
  br i1 %.not9, label %75, label %76

75:                                               ; preds = %72
  call void @abort() #4
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %72
  %77 = call double @s2d(i32 noundef -2147483648)
  %78 = fcmp une double %77, 0xC1E0000000000000
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call void @abort() #4
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %76
  %81 = call x86_fp80 @s2ld(i32 noundef 0)
  %82 = fcmp une x86_fp80 %81, 0xK00000000000000000000
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void @abort() #4
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %80
  %85 = call x86_fp80 @s2ld(i32 noundef -1)
  %86 = call i32 @ldnear(x86_fp80 noundef %85, x86_fp80 noundef 0xKBFFF8000000000000000)
  %.not10 = icmp eq i32 %86, 0
  br i1 %.not10, label %87, label %88

87:                                               ; preds = %84
  call void @abort() #4
  br label %UnifiedUnreachableBlock

88:                                               ; preds = %84
  %89 = call x86_fp80 @s2ld(i32 noundef 2147483647)
  %90 = call i32 @ldnear(x86_fp80 noundef %89, x86_fp80 noundef 0xK401DFFFFFFFE00000000)
  %.not11 = icmp eq i32 %90, 0
  br i1 %.not11, label %91, label %92

91:                                               ; preds = %88
  call void @abort() #4
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %88
  %93 = call x86_fp80 @s2ld(i32 noundef -2147483648)
  %94 = fcmp une x86_fp80 %93, 0xKC01E8000000000000000
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  call void @abort() #4
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %92
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @ull2f(i64 noundef %0) #0 {
  %2 = uitofp i64 %0 to float
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @ull2d(i64 noundef %0) #0 {
  %2 = uitofp i64 %0 to double
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local x86_fp80 @ull2ld(i64 noundef %0) #0 {
  %2 = uitofp i64 %0 to x86_fp80
  ret x86_fp80 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @sll2f(i64 noundef %0) #0 {
  %2 = sitofp i64 %0 to float
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @sll2d(i64 noundef %0) #0 {
  %2 = sitofp i64 %0 to double
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local x86_fp80 @sll2ld(i64 noundef %0) #0 {
  %2 = sitofp i64 %0 to x86_fp80
  ret x86_fp80 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_longlong_integer_to_float() #1 {
  %1 = call float @ull2f(i64 noundef 0)
  %2 = fcmp une float %1, 0.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call float @ull2f(i64 noundef -1)
  %6 = fcmp une float %5, 0x43F0000000000000
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = call float @ull2f(i64 noundef 9223372036854775807)
  %10 = fcmp une float %9, 0x43E0000000000000
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  %13 = call float @ull2f(i64 noundef -9223372036854775808)
  %14 = fcmp une float %13, 0x43E0000000000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = call double @ull2d(i64 noundef 0)
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #4
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = call double @ull2d(i64 noundef -1)
  %22 = fcmp une double %21, 0x43F0000000000000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #4
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = call double @ull2d(i64 noundef 9223372036854775807)
  %26 = fcmp une double %25, 0x43E0000000000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #4
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = call double @ull2d(i64 noundef -9223372036854775808)
  %30 = fcmp une double %29, 0x43E0000000000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #4
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  %33 = call x86_fp80 @ull2ld(i64 noundef 0)
  %34 = fcmp une x86_fp80 %33, 0xK00000000000000000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #4
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %32
  %37 = call x86_fp80 @ull2ld(i64 noundef -1)
  %38 = fcmp une x86_fp80 %37, 0xK403EFFFFFFFFFFFFFFFF
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @abort() #4
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %36
  %41 = call x86_fp80 @ull2ld(i64 noundef 9223372036854775807)
  %42 = fcmp une x86_fp80 %41, 0xK403DFFFFFFFFFFFFFFFE
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @abort() #4
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %40
  %45 = call x86_fp80 @ull2ld(i64 noundef -9223372036854775808)
  %46 = fcmp une x86_fp80 %45, 0xK403E8000000000000000
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #4
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %44
  %49 = call float @sll2f(i64 noundef 0)
  %50 = fcmp une float %49, 0.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @abort() #4
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %48
  %53 = call float @sll2f(i64 noundef -1)
  %54 = fcmp une float %53, -1.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @abort() #4
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %52
  %57 = call float @sll2f(i64 noundef 9223372036854775807)
  %58 = call i32 @fnear(float noundef %57, float noundef 0x43E0000000000000)
  %.not = icmp eq i32 %58, 0
  br i1 %.not, label %59, label %60

59:                                               ; preds = %56
  call void @abort() #4
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %56
  %61 = call float @sll2f(i64 noundef -9223372036854775808)
  %62 = fcmp une float %61, 0xC3E0000000000000
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @abort() #4
  br label %UnifiedUnreachableBlock

64:                                               ; preds = %60
  %65 = call double @sll2d(i64 noundef 0)
  %66 = fcmp une double %65, 0.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @abort() #4
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %64
  %69 = call double @sll2d(i64 noundef -1)
  %70 = fcmp une double %69, -1.000000e+00
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void @abort() #4
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %68
  %73 = call double @sll2d(i64 noundef 9223372036854775807)
  %74 = call i32 @dnear(double noundef %73, double noundef 0x43E0000000000000)
  %.not1 = icmp eq i32 %74, 0
  br i1 %.not1, label %75, label %76

75:                                               ; preds = %72
  call void @abort() #4
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %72
  %77 = call double @sll2d(i64 noundef -9223372036854775808)
  %78 = call i32 @dnear(double noundef %77, double noundef 0xC3E0000000000000)
  %.not2 = icmp eq i32 %78, 0
  br i1 %.not2, label %79, label %80

79:                                               ; preds = %76
  call void @abort() #4
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %76
  %81 = call x86_fp80 @sll2ld(i64 noundef 0)
  %82 = fcmp une x86_fp80 %81, 0xK00000000000000000000
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void @abort() #4
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %80
  %85 = call x86_fp80 @sll2ld(i64 noundef -1)
  %86 = fcmp une x86_fp80 %85, 0xKBFFF8000000000000000
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void @abort() #4
  br label %UnifiedUnreachableBlock

88:                                               ; preds = %84
  %89 = call x86_fp80 @sll2ld(i64 noundef 9223372036854775807)
  %90 = call i32 @ldnear(x86_fp80 noundef %89, x86_fp80 noundef 0xK403DFFFFFFFFFFFFFFFE)
  %.not3 = icmp eq i32 %90, 0
  br i1 %.not3, label %91, label %92

91:                                               ; preds = %88
  call void @abort() #4
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %88
  %93 = call x86_fp80 @sll2ld(i64 noundef -9223372036854775808)
  %94 = call i32 @ldnear(x86_fp80 noundef %93, x86_fp80 noundef 0xKC03E8000000000000000)
  %.not4 = icmp eq i32 %94, 0
  br i1 %.not4, label %95, label %96

95:                                               ; preds = %92
  call void @abort() #4
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %92
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7, %3
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f2u(float noundef %0) #0 {
  %2 = fptoui float %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @d2u(double noundef %0) #0 {
  %2 = fptoui double %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ld2u(x86_fp80 noundef %0) #0 {
  %2 = fptoui x86_fp80 %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f2s(float noundef %0) #0 {
  %2 = fptosi float %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @d2s(double noundef %0) #0 {
  %2 = fptosi double %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ld2s(x86_fp80 noundef %0) #0 {
  %2 = fptosi x86_fp80 %0 to i32
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_float_to_integer() #1 {
  %1 = call i32 @f2u(float noundef 0.000000e+00)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i32 @f2u(float noundef 0x3FEFF7CEE0000000)
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i32 @f2u(float noundef 1.000000e+00)
  %.not2 = icmp eq i32 %7, 1
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #4
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = call i32 @f2u(float noundef 0x3FFFD70A40000000)
  %.not3 = icmp eq i32 %10, 1
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = call i32 @f2u(float noundef 0x41E0000000000000)
  %.not4 = icmp eq i32 %13, 2147483647
  br i1 %.not4, label %17, label %14

14:                                               ; preds = %12
  %15 = call i32 @f2u(float noundef 0x41E0000000000000)
  %.not46 = icmp eq i32 %15, -2147483648
  br i1 %.not46, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #4
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14, %12
  %18 = call i32 @f2u(float noundef 0x41E0000000000000)
  %.not5 = icmp eq i32 %18, -2147483648
  br i1 %.not5, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  %21 = call i32 @d2u(double noundef 0.000000e+00)
  %.not6 = icmp eq i32 %21, 0
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #4
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %24 = call i32 @d2u(double noundef 0x3FEFF7CED916872B)
  %.not7 = icmp eq i32 %24, 0
  br i1 %.not7, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #4
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  %27 = call i32 @d2u(double noundef 1.000000e+00)
  %.not8 = icmp eq i32 %27, 1
  br i1 %.not8, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #4
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = call i32 @d2u(double noundef 1.990000e+00)
  %.not9 = icmp eq i32 %30, 1
  br i1 %.not9, label %32, label %31

31:                                               ; preds = %29
  call void @abort() #4
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  %33 = call i32 @d2u(double noundef 0x41EFFFFFFFE00000)
  %.not10 = icmp eq i32 %33, -1
  br i1 %.not10, label %35, label %34

34:                                               ; preds = %32
  call void @abort() #4
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  %36 = call i32 @d2u(double noundef 0x41DFFFFFFFC00000)
  %.not11 = icmp eq i32 %36, 2147483647
  br i1 %.not11, label %38, label %37

37:                                               ; preds = %35
  call void @abort() #4
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %35
  %39 = call i32 @d2u(double noundef 0x41E0000000000000)
  %.not12 = icmp eq i32 %39, -2147483648
  br i1 %.not12, label %41, label %40

40:                                               ; preds = %38
  call void @abort() #4
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %38
  %42 = call i32 @ld2u(x86_fp80 noundef 0xK00000000000000000000)
  %.not13 = icmp eq i32 %42, 0
  br i1 %.not13, label %44, label %43

43:                                               ; preds = %41
  call void @abort() #4
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %41
  %45 = call i32 @ld2u(x86_fp80 noundef 0xK3FFEFFBE76C8B4395800)
  %.not14 = icmp eq i32 %45, 0
  br i1 %.not14, label %47, label %46

46:                                               ; preds = %44
  call void @abort() #4
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %44
  %48 = call i32 @ld2u(x86_fp80 noundef 0xK3FFF8000000000000000)
  %.not15 = icmp eq i32 %48, 1
  br i1 %.not15, label %50, label %49

49:                                               ; preds = %47
  call void @abort() #4
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %47
  %51 = call i32 @ld2u(x86_fp80 noundef 0xK3FFFFEB851EB851EB800)
  %.not16 = icmp eq i32 %51, 1
  br i1 %.not16, label %53, label %52

52:                                               ; preds = %50
  call void @abort() #4
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %50
  %54 = call i32 @ld2u(x86_fp80 noundef 0xK401EFFFFFFFF00000000)
  %.not17 = icmp eq i32 %54, -1
  br i1 %.not17, label %56, label %55

55:                                               ; preds = %53
  call void @abort() #4
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %53
  %57 = call i32 @ld2u(x86_fp80 noundef 0xK401DFFFFFFFE00000000)
  %.not18 = icmp eq i32 %57, 2147483647
  br i1 %.not18, label %59, label %58

58:                                               ; preds = %56
  call void @abort() #4
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %56
  %60 = call i32 @ld2u(x86_fp80 noundef 0xK401E8000000000000000)
  %.not19 = icmp eq i32 %60, -2147483648
  br i1 %.not19, label %62, label %61

61:                                               ; preds = %59
  call void @abort() #4
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %59
  %63 = call i32 @f2s(float noundef 0.000000e+00)
  %.not20 = icmp eq i32 %63, 0
  br i1 %.not20, label %65, label %64

64:                                               ; preds = %62
  call void @abort() #4
  br label %UnifiedUnreachableBlock

65:                                               ; preds = %62
  %66 = call i32 @f2s(float noundef 0x3FEFF7CEE0000000)
  %.not21 = icmp eq i32 %66, 0
  br i1 %.not21, label %68, label %67

67:                                               ; preds = %65
  call void @abort() #4
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %65
  %69 = call i32 @f2s(float noundef 1.000000e+00)
  %.not22 = icmp eq i32 %69, 1
  br i1 %.not22, label %71, label %70

70:                                               ; preds = %68
  call void @abort() #4
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %68
  %72 = call i32 @f2s(float noundef 0x3FFFD70A40000000)
  %.not23 = icmp eq i32 %72, 1
  br i1 %.not23, label %74, label %73

73:                                               ; preds = %71
  call void @abort() #4
  br label %UnifiedUnreachableBlock

74:                                               ; preds = %71
  %75 = call i32 @f2s(float noundef 0xBFEFF7CEE0000000)
  %.not24 = icmp eq i32 %75, 0
  br i1 %.not24, label %77, label %76

76:                                               ; preds = %74
  call void @abort() #4
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %74
  %78 = call i32 @f2s(float noundef -1.000000e+00)
  %.not25 = icmp eq i32 %78, -1
  br i1 %.not25, label %80, label %79

79:                                               ; preds = %77
  call void @abort() #4
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %77
  %81 = call i32 @f2s(float noundef 0xBFFFD70A40000000)
  %.not26 = icmp eq i32 %81, -1
  br i1 %.not26, label %83, label %82

82:                                               ; preds = %80
  call void @abort() #4
  br label %UnifiedUnreachableBlock

83:                                               ; preds = %80
  %84 = call i32 @f2s(float noundef 0xC1E0000000000000)
  %.not27 = icmp eq i32 %84, -2147483648
  br i1 %.not27, label %86, label %85

85:                                               ; preds = %83
  call void @abort() #4
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %83
  %87 = call i32 @d2s(double noundef 0.000000e+00)
  %.not28 = icmp eq i32 %87, 0
  br i1 %.not28, label %89, label %88

88:                                               ; preds = %86
  call void @abort() #4
  br label %UnifiedUnreachableBlock

89:                                               ; preds = %86
  %90 = call i32 @d2s(double noundef 0x3FEFF7CED916872B)
  %.not29 = icmp eq i32 %90, 0
  br i1 %.not29, label %92, label %91

91:                                               ; preds = %89
  call void @abort() #4
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %89
  %93 = call i32 @d2s(double noundef 1.000000e+00)
  %.not30 = icmp eq i32 %93, 1
  br i1 %.not30, label %95, label %94

94:                                               ; preds = %92
  call void @abort() #4
  br label %UnifiedUnreachableBlock

95:                                               ; preds = %92
  %96 = call i32 @d2s(double noundef 1.990000e+00)
  %.not31 = icmp eq i32 %96, 1
  br i1 %.not31, label %98, label %97

97:                                               ; preds = %95
  call void @abort() #4
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %95
  %99 = call i32 @d2s(double noundef 0xBFEFF7CED916872B)
  %.not32 = icmp eq i32 %99, 0
  br i1 %.not32, label %101, label %100

100:                                              ; preds = %98
  call void @abort() #4
  br label %UnifiedUnreachableBlock

101:                                              ; preds = %98
  %102 = call i32 @d2s(double noundef -1.000000e+00)
  %.not33 = icmp eq i32 %102, -1
  br i1 %.not33, label %104, label %103

103:                                              ; preds = %101
  call void @abort() #4
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %101
  %105 = call i32 @d2s(double noundef -1.990000e+00)
  %.not34 = icmp eq i32 %105, -1
  br i1 %.not34, label %107, label %106

106:                                              ; preds = %104
  call void @abort() #4
  br label %UnifiedUnreachableBlock

107:                                              ; preds = %104
  %108 = call i32 @d2s(double noundef 0x41DFFFFFFFC00000)
  %.not35 = icmp eq i32 %108, 2147483647
  br i1 %.not35, label %110, label %109

109:                                              ; preds = %107
  call void @abort() #4
  br label %UnifiedUnreachableBlock

110:                                              ; preds = %107
  %111 = call i32 @d2s(double noundef 0xC1E0000000000000)
  %.not36 = icmp eq i32 %111, -2147483648
  br i1 %.not36, label %113, label %112

112:                                              ; preds = %110
  call void @abort() #4
  br label %UnifiedUnreachableBlock

113:                                              ; preds = %110
  %114 = call i32 @ld2s(x86_fp80 noundef 0xK00000000000000000000)
  %.not37 = icmp eq i32 %114, 0
  br i1 %.not37, label %116, label %115

115:                                              ; preds = %113
  call void @abort() #4
  br label %UnifiedUnreachableBlock

116:                                              ; preds = %113
  %117 = call i32 @ld2s(x86_fp80 noundef 0xK3FFEFFBE76C8B4395800)
  %.not38 = icmp eq i32 %117, 0
  br i1 %.not38, label %119, label %118

118:                                              ; preds = %116
  call void @abort() #4
  br label %UnifiedUnreachableBlock

119:                                              ; preds = %116
  %120 = call i32 @ld2s(x86_fp80 noundef 0xK3FFF8000000000000000)
  %.not39 = icmp eq i32 %120, 1
  br i1 %.not39, label %122, label %121

121:                                              ; preds = %119
  call void @abort() #4
  br label %UnifiedUnreachableBlock

122:                                              ; preds = %119
  %123 = call i32 @ld2s(x86_fp80 noundef 0xK3FFFFEB851EB851EB800)
  %.not40 = icmp eq i32 %123, 1
  br i1 %.not40, label %125, label %124

124:                                              ; preds = %122
  call void @abort() #4
  br label %UnifiedUnreachableBlock

125:                                              ; preds = %122
  %126 = call i32 @ld2s(x86_fp80 noundef 0xKBFFEFFBE76C8B4395800)
  %.not41 = icmp eq i32 %126, 0
  br i1 %.not41, label %128, label %127

127:                                              ; preds = %125
  call void @abort() #4
  br label %UnifiedUnreachableBlock

128:                                              ; preds = %125
  %129 = call i32 @ld2s(x86_fp80 noundef 0xKBFFF8000000000000000)
  %.not42 = icmp eq i32 %129, -1
  br i1 %.not42, label %131, label %130

130:                                              ; preds = %128
  call void @abort() #4
  br label %UnifiedUnreachableBlock

131:                                              ; preds = %128
  %132 = call i32 @ld2s(x86_fp80 noundef 0xKBFFFFEB851EB851EB800)
  %.not43 = icmp eq i32 %132, -1
  br i1 %.not43, label %134, label %133

133:                                              ; preds = %131
  call void @abort() #4
  br label %UnifiedUnreachableBlock

134:                                              ; preds = %131
  %135 = call i32 @ld2s(x86_fp80 noundef 0xK401DFFFFFFFE00000000)
  %.not44 = icmp eq i32 %135, 2147483647
  br i1 %.not44, label %137, label %136

136:                                              ; preds = %134
  call void @abort() #4
  br label %UnifiedUnreachableBlock

137:                                              ; preds = %134
  %138 = call i32 @ld2s(x86_fp80 noundef 0xKC01E8000000000000000)
  %.not45 = icmp eq i32 %138, -2147483648
  br i1 %.not45, label %140, label %139

139:                                              ; preds = %137
  call void @abort() #4
  br label %UnifiedUnreachableBlock

140:                                              ; preds = %137
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %11, %8, %5, %2
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f2ull(float noundef %0) #0 {
  %2 = fptoui float %0 to i64
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @d2ull(double noundef %0) #0 {
  %2 = fptoui double %0 to i64
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ld2ull(x86_fp80 noundef %0) #0 {
  %2 = fptoui x86_fp80 %0 to i64
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f2sll(float noundef %0) #0 {
  %2 = fptosi float %0 to i64
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @d2sll(double noundef %0) #0 {
  %2 = fptosi double %0 to i64
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ld2sll(x86_fp80 noundef %0) #0 {
  %2 = fptosi x86_fp80 %0 to i64
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_float_to_longlong_integer() #1 {
  %1 = call i64 @f2ull(float noundef 0.000000e+00)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i64 @f2ull(float noundef 0x3FEFF7CEE0000000)
  %.not1 = icmp eq i64 %4, 0
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i64 @f2ull(float noundef 1.000000e+00)
  %.not2 = icmp eq i64 %7, 1
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #4
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = call i64 @f2ull(float noundef 0x3FFFD70A40000000)
  %.not3 = icmp eq i64 %10, 1
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = call i64 @f2ull(float noundef 0x43E0000000000000)
  %.not4 = icmp eq i64 %13, 9223372036854775807
  br i1 %.not4, label %17, label %14

14:                                               ; preds = %12
  %15 = call i64 @f2ull(float noundef 0x43E0000000000000)
  %.not44 = icmp eq i64 %15, -9223372036854775808
  br i1 %.not44, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #4
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14, %12
  %18 = call i64 @f2ull(float noundef 0x43E0000000000000)
  %.not5 = icmp eq i64 %18, -9223372036854775808
  br i1 %.not5, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  %21 = call i64 @d2ull(double noundef 0.000000e+00)
  %.not6 = icmp eq i64 %21, 0
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #4
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %24 = call i64 @d2ull(double noundef 0x3FEFF7CED916872B)
  %.not7 = icmp eq i64 %24, 0
  br i1 %.not7, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #4
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  %27 = call i64 @d2ull(double noundef 1.000000e+00)
  %.not8 = icmp eq i64 %27, 1
  br i1 %.not8, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #4
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = call i64 @d2ull(double noundef 1.990000e+00)
  %.not9 = icmp eq i64 %30, 1
  br i1 %.not9, label %32, label %31

31:                                               ; preds = %29
  call void @abort() #4
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  %33 = call i64 @d2ull(double noundef 0x43E0000000000000)
  %.not10 = icmp eq i64 %33, 9223372036854775807
  br i1 %.not10, label %37, label %34

34:                                               ; preds = %32
  %35 = call i64 @d2ull(double noundef 0x43E0000000000000)
  %.not43 = icmp eq i64 %35, -9223372036854775808
  br i1 %.not43, label %37, label %36

36:                                               ; preds = %34
  call void @abort() #4
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %34, %32
  %38 = call i64 @d2ull(double noundef 0x43E0000000000000)
  %.not11 = icmp eq i64 %38, -9223372036854775808
  br i1 %.not11, label %40, label %39

39:                                               ; preds = %37
  call void @abort() #4
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %37
  %41 = call i64 @ld2ull(x86_fp80 noundef 0xK00000000000000000000)
  %.not12 = icmp eq i64 %41, 0
  br i1 %.not12, label %43, label %42

42:                                               ; preds = %40
  call void @abort() #4
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %40
  %44 = call i64 @ld2ull(x86_fp80 noundef 0xK3FFEFFBE76C8B4395800)
  %.not13 = icmp eq i64 %44, 0
  br i1 %.not13, label %46, label %45

45:                                               ; preds = %43
  call void @abort() #4
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %43
  %47 = call i64 @ld2ull(x86_fp80 noundef 0xK3FFF8000000000000000)
  %.not14 = icmp eq i64 %47, 1
  br i1 %.not14, label %49, label %48

48:                                               ; preds = %46
  call void @abort() #4
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %46
  %50 = call i64 @ld2ull(x86_fp80 noundef 0xK3FFFFEB851EB851EB800)
  %.not15 = icmp eq i64 %50, 1
  br i1 %.not15, label %52, label %51

51:                                               ; preds = %49
  call void @abort() #4
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %49
  %53 = call i64 @ld2ull(x86_fp80 noundef 0xK403DFFFFFFFFFFFFFFFE)
  %.not16 = icmp eq i64 %53, 9223372036854775807
  br i1 %.not16, label %57, label %54

54:                                               ; preds = %52
  %55 = call i64 @ld2ull(x86_fp80 noundef 0xK403DFFFFFFFFFFFFFFFE)
  %.not42 = icmp eq i64 %55, -9223372036854775808
  br i1 %.not42, label %57, label %56

56:                                               ; preds = %54
  call void @abort() #4
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %54, %52
  %58 = call i64 @ld2ull(x86_fp80 noundef 0xK403E8000000000000000)
  %.not17 = icmp eq i64 %58, -9223372036854775808
  br i1 %.not17, label %60, label %59

59:                                               ; preds = %57
  call void @abort() #4
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %57
  %61 = call i64 @f2sll(float noundef 0.000000e+00)
  %.not18 = icmp eq i64 %61, 0
  br i1 %.not18, label %63, label %62

62:                                               ; preds = %60
  call void @abort() #4
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %60
  %64 = call i64 @f2sll(float noundef 0x3FEFF7CEE0000000)
  %.not19 = icmp eq i64 %64, 0
  br i1 %.not19, label %66, label %65

65:                                               ; preds = %63
  call void @abort() #4
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %63
  %67 = call i64 @f2sll(float noundef 1.000000e+00)
  %.not20 = icmp eq i64 %67, 1
  br i1 %.not20, label %69, label %68

68:                                               ; preds = %66
  call void @abort() #4
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %66
  %70 = call i64 @f2sll(float noundef 0x3FFFD70A40000000)
  %.not21 = icmp eq i64 %70, 1
  br i1 %.not21, label %72, label %71

71:                                               ; preds = %69
  call void @abort() #4
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %69
  %73 = call i64 @f2sll(float noundef 0xBFEFF7CEE0000000)
  %.not22 = icmp eq i64 %73, 0
  br i1 %.not22, label %75, label %74

74:                                               ; preds = %72
  call void @abort() #4
  br label %UnifiedUnreachableBlock

75:                                               ; preds = %72
  %76 = call i64 @f2sll(float noundef -1.000000e+00)
  %.not23 = icmp eq i64 %76, -1
  br i1 %.not23, label %78, label %77

77:                                               ; preds = %75
  call void @abort() #4
  br label %UnifiedUnreachableBlock

78:                                               ; preds = %75
  %79 = call i64 @f2sll(float noundef 0xBFFFD70A40000000)
  %.not24 = icmp eq i64 %79, -1
  br i1 %.not24, label %81, label %80

80:                                               ; preds = %78
  call void @abort() #4
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %78
  %82 = call i64 @f2sll(float noundef 0xC3E0000000000000)
  %.not25 = icmp eq i64 %82, -9223372036854775808
  br i1 %.not25, label %84, label %83

83:                                               ; preds = %81
  call void @abort() #4
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %81
  %85 = call i64 @d2sll(double noundef 0.000000e+00)
  %.not26 = icmp eq i64 %85, 0
  br i1 %.not26, label %87, label %86

86:                                               ; preds = %84
  call void @abort() #4
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %84
  %88 = call i64 @d2sll(double noundef 0x3FEFF7CED916872B)
  %.not27 = icmp eq i64 %88, 0
  br i1 %.not27, label %90, label %89

89:                                               ; preds = %87
  call void @abort() #4
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %87
  %91 = call i64 @d2sll(double noundef 1.000000e+00)
  %.not28 = icmp eq i64 %91, 1
  br i1 %.not28, label %93, label %92

92:                                               ; preds = %90
  call void @abort() #4
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %90
  %94 = call i64 @d2sll(double noundef 1.990000e+00)
  %.not29 = icmp eq i64 %94, 1
  br i1 %.not29, label %96, label %95

95:                                               ; preds = %93
  call void @abort() #4
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %93
  %97 = call i64 @d2sll(double noundef 0xBFEFF7CED916872B)
  %.not30 = icmp eq i64 %97, 0
  br i1 %.not30, label %99, label %98

98:                                               ; preds = %96
  call void @abort() #4
  br label %UnifiedUnreachableBlock

99:                                               ; preds = %96
  %100 = call i64 @d2sll(double noundef -1.000000e+00)
  %.not31 = icmp eq i64 %100, -1
  br i1 %.not31, label %102, label %101

101:                                              ; preds = %99
  call void @abort() #4
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %99
  %103 = call i64 @d2sll(double noundef -1.990000e+00)
  %.not32 = icmp eq i64 %103, -1
  br i1 %.not32, label %105, label %104

104:                                              ; preds = %102
  call void @abort() #4
  br label %UnifiedUnreachableBlock

105:                                              ; preds = %102
  %106 = call i64 @d2sll(double noundef 0xC3E0000000000000)
  %.not33 = icmp eq i64 %106, -9223372036854775808
  br i1 %.not33, label %108, label %107

107:                                              ; preds = %105
  call void @abort() #4
  br label %UnifiedUnreachableBlock

108:                                              ; preds = %105
  %109 = call i64 @ld2sll(x86_fp80 noundef 0xK00000000000000000000)
  %.not34 = icmp eq i64 %109, 0
  br i1 %.not34, label %111, label %110

110:                                              ; preds = %108
  call void @abort() #4
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %108
  %112 = call i64 @ld2sll(x86_fp80 noundef 0xK3FFEFFBE76C8B4395800)
  %.not35 = icmp eq i64 %112, 0
  br i1 %.not35, label %114, label %113

113:                                              ; preds = %111
  call void @abort() #4
  br label %UnifiedUnreachableBlock

114:                                              ; preds = %111
  %115 = call i64 @ld2sll(x86_fp80 noundef 0xK3FFF8000000000000000)
  %.not36 = icmp eq i64 %115, 1
  br i1 %.not36, label %117, label %116

116:                                              ; preds = %114
  call void @abort() #4
  br label %UnifiedUnreachableBlock

117:                                              ; preds = %114
  %118 = call i64 @ld2sll(x86_fp80 noundef 0xK3FFFFEB851EB851EB800)
  %.not37 = icmp eq i64 %118, 1
  br i1 %.not37, label %120, label %119

119:                                              ; preds = %117
  call void @abort() #4
  br label %UnifiedUnreachableBlock

120:                                              ; preds = %117
  %121 = call i64 @ld2sll(x86_fp80 noundef 0xKBFFEFFBE76C8B4395800)
  %.not38 = icmp eq i64 %121, 0
  br i1 %.not38, label %123, label %122

122:                                              ; preds = %120
  call void @abort() #4
  br label %UnifiedUnreachableBlock

123:                                              ; preds = %120
  %124 = call i64 @ld2sll(x86_fp80 noundef 0xKBFFF8000000000000000)
  %.not39 = icmp eq i64 %124, -1
  br i1 %.not39, label %126, label %125

125:                                              ; preds = %123
  call void @abort() #4
  br label %UnifiedUnreachableBlock

126:                                              ; preds = %123
  %127 = call i64 @ld2sll(x86_fp80 noundef 0xKBFFFFEB851EB851EB800)
  %.not40 = icmp eq i64 %127, -1
  br i1 %.not40, label %129, label %128

128:                                              ; preds = %126
  call void @abort() #4
  br label %UnifiedUnreachableBlock

129:                                              ; preds = %126
  %130 = call i64 @ld2sll(x86_fp80 noundef 0xKC03E8000000000000000)
  %.not41 = icmp eq i64 %130, -9223372036854775808
  br i1 %.not41, label %132, label %131

131:                                              ; preds = %129
  call void @abort() #4
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %129
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %131, %128, %125, %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %51, %48, %45, %42, %39, %36, %31, %28, %25, %22, %19, %16, %11, %8, %5, %2
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 @test_integer_to_float()
  %2 = call i32 @test_float_to_integer()
  %3 = call i32 @test_longlong_integer_to_float()
  %4 = call i32 @test_float_to_longlong_integer()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
