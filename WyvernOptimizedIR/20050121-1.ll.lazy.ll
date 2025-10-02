; ModuleID = './20050121-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050121-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <2 x float> @foo_float(i32 noundef %0) #0 {
  %2 = alloca <2 x float>, align 8
  %3 = add nsw i32 %0, 1
  %4 = sitofp i32 %3 to float
  %5 = add nsw i32 %0, -1
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %8 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  store float %4, float* %7, align 8
  store float %6, float* %8, align 4
  %9 = load <2 x float>, <2 x float>* %2, align 8
  ret <2 x float> %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar_float(float* nocapture noundef writeonly %0) #1 {
  %2 = alloca <2 x float>, align 8
  %3 = call <2 x float> @foo_float(i32 noundef 5) #6
  store <2 x float> %3, <2 x float>* %2, align 8
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %5 = load float, float* %4, align 8
  store float %5, float* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @baz_float(float* nocapture noundef writeonly %0) #1 {
  %2 = alloca <2 x float>, align 8
  %3 = call <2 x float> @foo_float(i32 noundef 5) #6
  store <2 x float> %3, <2 x float>* %2, align 8
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  %5 = load float, float* %4, align 4
  store float %5, float* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @foo_double(i32 noundef %0) #2 {
  %2 = add nsw i32 %0, 1
  %3 = sitofp i32 %2 to double
  %4 = add nsw i32 %0, -1
  %5 = sitofp i32 %4 to double
  %6 = insertvalue { double, double } undef, double %3, 0
  %7 = insertvalue { double, double } %6, double %5, 1
  ret { double, double } %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar_double(double* nocapture noundef writeonly %0) #3 {
  %2 = call { double, double } @foo_double(i32 noundef 5) #6
  %3 = extractvalue { double, double } %2, 0
  store double %3, double* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @baz_double(double* nocapture noundef writeonly %0) #3 {
  %2 = call { double, double } @foo_double(i32 noundef 5) #6
  %3 = extractvalue { double, double } %2, 1
  store double %3, double* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { x86_fp80, x86_fp80 } @foo_ldouble_t(i32 noundef %0) #2 {
  %2 = add nsw i32 %0, 1
  %3 = sitofp i32 %2 to x86_fp80
  %4 = add nsw i32 %0, -1
  %5 = sitofp i32 %4 to x86_fp80
  %6 = insertvalue { x86_fp80, x86_fp80 } undef, x86_fp80 %3, 0
  %7 = insertvalue { x86_fp80, x86_fp80 } %6, x86_fp80 %5, 1
  ret { x86_fp80, x86_fp80 } %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar_ldouble_t(x86_fp80* nocapture noundef writeonly %0) #3 {
  %2 = call { x86_fp80, x86_fp80 } @foo_ldouble_t(i32 noundef 5) #6
  %3 = extractvalue { x86_fp80, x86_fp80 } %2, 0
  store x86_fp80 %3, x86_fp80* %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @baz_ldouble_t(x86_fp80* nocapture noundef writeonly %0) #3 {
  %2 = call { x86_fp80, x86_fp80 } @foo_ldouble_t(i32 noundef 5) #6
  %3 = extractvalue { x86_fp80, x86_fp80 } %2, 1
  store x86_fp80 %3, x86_fp80* %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i16 @foo_char(i32 noundef %0) #2 {
  %2 = alloca i16, align 2
  %tmpcast = bitcast i16* %2 to { i8, i8 }*
  %3 = trunc i32 %0 to i8
  %4 = add i8 %3, 1
  %5 = trunc i32 %0 to i8
  %6 = add i8 %5, -1
  %7 = bitcast i16* %2 to i8*
  %8 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %tmpcast, i64 0, i32 1
  store i8 %4, i8* %7, align 2
  store i8 %6, i8* %8, align 1
  %9 = load i16, i16* %2, align 2
  ret i16 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar_char(i8* nocapture noundef writeonly %0) #3 {
  %2 = alloca i16, align 2
  %3 = call i16 @foo_char(i32 noundef 5) #6
  store i16 %3, i16* %2, align 2
  %4 = bitcast i16* %2 to i8*
  %5 = load i8, i8* %4, align 2
  store i8 %5, i8* %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @baz_char(i8* nocapture noundef writeonly %0) #3 {
  %2 = alloca i16, align 2
  %tmpcast = bitcast i16* %2 to { i8, i8 }*
  %3 = call i16 @foo_char(i32 noundef 5) #6
  store i16 %3, i16* %2, align 2
  %4 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %tmpcast, i64 0, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo_short(i32 noundef %0) #2 {
  %2 = alloca i32, align 4
  %tmpcast = bitcast i32* %2 to { i16, i16 }*
  %3 = trunc i32 %0 to i16
  %4 = add i16 %3, 1
  %5 = trunc i32 %0 to i16
  %6 = add i16 %5, -1
  %7 = bitcast i32* %2 to i16*
  %8 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %tmpcast, i64 0, i32 1
  store i16 %4, i16* %7, align 4
  store i16 %6, i16* %8, align 2
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar_short(i16* nocapture noundef writeonly %0) #3 {
  %2 = alloca i32, align 4
  %3 = call i32 @foo_short(i32 noundef 5) #6
  store i32 %3, i32* %2, align 4
  %4 = bitcast i32* %2 to i16*
  %5 = load i16, i16* %4, align 4
  store i16 %5, i16* %0, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @baz_short(i16* nocapture noundef writeonly %0) #3 {
  %2 = alloca i32, align 4
  %tmpcast = bitcast i32* %2 to { i16, i16 }*
  %3 = call i32 @foo_short(i32 noundef 5) #6
  store i32 %3, i32* %2, align 4
  %4 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %tmpcast, i64 0, i32 1
  %5 = load i16, i16* %4, align 2
  store i16 %5, i16* %0, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @foo_int(i32 noundef %0) #2 {
  %2 = alloca i64, align 8
  %tmpcast = bitcast i64* %2 to { i32, i32 }*
  %3 = add nsw i32 %0, 1
  %4 = add nsw i32 %0, -1
  %5 = bitcast i64* %2 to i32*
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast, i64 0, i32 1
  store i32 %3, i32* %5, align 8
  store i32 %4, i32* %6, align 4
  %7 = load i64, i64* %2, align 8
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar_int(i32* nocapture noundef writeonly %0) #3 {
  %2 = alloca i64, align 8
  %3 = call i64 @foo_int(i32 noundef 5) #6
  store i64 %3, i64* %2, align 8
  %4 = bitcast i64* %2 to i32*
  %5 = load i32, i32* %4, align 8
  store i32 %5, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @baz_int(i32* nocapture noundef writeonly %0) #3 {
  %2 = alloca i64, align 8
  %tmpcast = bitcast i64* %2 to { i32, i32 }*
  %3 = call i64 @foo_int(i32 noundef 5) #6
  store i64 %3, i64* %2, align 8
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @foo_long(i32 noundef %0) #2 {
  %2 = add nsw i32 %0, 1
  %3 = sext i32 %2 to i64
  %4 = add nsw i32 %0, -1
  %5 = sext i32 %4 to i64
  %6 = insertvalue { i64, i64 } undef, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar_long(i64* nocapture noundef writeonly %0) #3 {
  %2 = call { i64, i64 } @foo_long(i32 noundef 5) #6
  %3 = extractvalue { i64, i64 } %2, 0
  store i64 %3, i64* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @baz_long(i64* nocapture noundef writeonly %0) #3 {
  %2 = call { i64, i64 } @foo_long(i32 noundef 5) #6
  %3 = extractvalue { i64, i64 } %2, 1
  store i64 %3, i64* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @foo_llong(i32 noundef %0) #2 {
  %2 = add nsw i32 %0, 1
  %3 = sext i32 %2 to i64
  %4 = add nsw i32 %0, -1
  %5 = sext i32 %4 to i64
  %6 = insertvalue { i64, i64 } undef, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar_llong(i64* nocapture noundef writeonly %0) #3 {
  %2 = call { i64, i64 } @foo_llong(i32 noundef 5) #6
  %3 = extractvalue { i64, i64 } %2, 0
  store i64 %3, i64* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @baz_llong(i64* nocapture noundef writeonly %0) #3 {
  %2 = call { i64, i64 } @foo_llong(i32 noundef 5) #6
  %3 = extractvalue { i64, i64 } %2, 1
  store i64 %3, i64* %0, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = alloca float, align 4
  %2 = alloca double, align 8
  %3 = alloca x86_fp80, align 16
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store float 0.000000e+00, float* %1, align 4
  call void @bar_float(float* noundef nonnull %1)
  %9 = load float, float* %1, align 4
  %10 = fcmp une float %9, 6.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #7
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %0
  store float 0.000000e+00, float* %1, align 4
  call void @baz_float(float* noundef nonnull %1)
  %13 = load float, float* %1, align 4
  %14 = fcmp une float %13, 4.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #7
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  store double 0.000000e+00, double* %2, align 8
  call void @bar_double(double* noundef nonnull %2)
  %17 = load double, double* %2, align 8
  %18 = fcmp une double %17, 6.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #7
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  store double 0.000000e+00, double* %2, align 8
  call void @baz_double(double* noundef nonnull %2)
  %21 = load double, double* %2, align 8
  %22 = fcmp une double %21, 4.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #7
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  store x86_fp80 0xK00000000000000000000, x86_fp80* %3, align 16
  call void @bar_ldouble_t(x86_fp80* noundef nonnull %3)
  %25 = load x86_fp80, x86_fp80* %3, align 16
  %26 = fcmp une x86_fp80 %25, 0xK4001C000000000000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #7
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  store x86_fp80 0xK00000000000000000000, x86_fp80* %3, align 16
  call void @baz_ldouble_t(x86_fp80* noundef nonnull %3)
  %29 = load x86_fp80, x86_fp80* %3, align 16
  %30 = fcmp une x86_fp80 %29, 0xK40018000000000000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #7
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  store i8 0, i8* %4, align 1
  call void @bar_char(i8* noundef nonnull %4)
  %33 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %33, 6
  br i1 %.not, label %35, label %34

34:                                               ; preds = %32
  call void @abort() #7
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  store i8 0, i8* %4, align 1
  call void @baz_char(i8* noundef nonnull %4)
  %36 = load i8, i8* %4, align 1
  %.not1 = icmp eq i8 %36, 4
  br i1 %.not1, label %38, label %37

37:                                               ; preds = %35
  call void @abort() #7
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %35
  store i16 0, i16* %5, align 2
  call void @bar_short(i16* noundef nonnull %5)
  %39 = load i16, i16* %5, align 2
  %.not2 = icmp eq i16 %39, 6
  br i1 %.not2, label %41, label %40

40:                                               ; preds = %38
  call void @abort() #7
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %38
  store i16 0, i16* %5, align 2
  call void @baz_short(i16* noundef nonnull %5)
  %42 = load i16, i16* %5, align 2
  %.not3 = icmp eq i16 %42, 4
  br i1 %.not3, label %44, label %43

43:                                               ; preds = %41
  call void @abort() #7
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  call void @bar_int(i32* noundef nonnull %6)
  %45 = load i32, i32* %6, align 4
  %.not4 = icmp eq i32 %45, 6
  br i1 %.not4, label %47, label %46

46:                                               ; preds = %44
  call void @abort() #7
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  call void @baz_int(i32* noundef nonnull %6)
  %48 = load i32, i32* %6, align 4
  %.not5 = icmp eq i32 %48, 4
  br i1 %.not5, label %50, label %49

49:                                               ; preds = %47
  call void @abort() #7
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %47
  store i64 0, i64* %7, align 8
  call void @bar_long(i64* noundef nonnull %7)
  %51 = load i64, i64* %7, align 8
  %.not6 = icmp eq i64 %51, 6
  br i1 %.not6, label %53, label %52

52:                                               ; preds = %50
  call void @abort() #7
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %50
  store i64 0, i64* %7, align 8
  call void @baz_long(i64* noundef nonnull %7)
  %54 = load i64, i64* %7, align 8
  %.not7 = icmp eq i64 %54, 4
  br i1 %.not7, label %56, label %55

55:                                               ; preds = %53
  call void @abort() #7
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %53
  store i64 0, i64* %8, align 8
  call void @bar_llong(i64* noundef nonnull %8)
  %57 = load i64, i64* %8, align 8
  %.not8 = icmp eq i64 %57, 6
  br i1 %.not8, label %59, label %58

58:                                               ; preds = %56
  call void @abort() #7
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %56
  store i64 0, i64* %8, align 8
  call void @baz_llong(i64* noundef nonnull %8)
  %60 = load i64, i64* %8, align 8
  %.not9 = icmp eq i64 %60, 4
  br i1 %.not9, label %62, label %61

61:                                               ; preds = %59
  call void @abort() #7
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %59
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %27, %23, %19, %15, %11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
