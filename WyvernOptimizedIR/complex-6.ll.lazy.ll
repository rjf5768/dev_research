; ModuleID = './complex-6.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"test_float failed\0A\00", align 1
@err = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"test_double failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"test_long_double failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"test_int failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"test_long_int failed\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"test_float failed\00", align 1
@str.1 = private unnamed_addr constant [19 x i8] c"test_double failed\00", align 1
@str.2 = private unnamed_addr constant [24 x i8] c"test_long_double failed\00", align 1
@str.3 = private unnamed_addr constant [16 x i8] c"test_int failed\00", align 1
@str.4 = private unnamed_addr constant [21 x i8] c"test_long_int failed\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <2 x float> @ctest_float(<2 x float> noundef %0) #0 {
  %2 = alloca <2 x float>, align 8
  %3 = alloca <2 x float>, align 8
  store <2 x float> %0, <2 x float>* %3, align 8
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 0
  %5 = load float, float* %4, align 8
  %6 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 1
  %7 = load float, float* %6, align 4
  %8 = fneg float %7
  %9 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %10 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  store float %5, float* %9, align 8
  store float %8, float* %10, align 4
  %11 = load <2 x float>, <2 x float>* %2, align 8
  ret <2 x float> %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_float() #1 {
  %1 = alloca <2 x float>, align 8
  %2 = alloca <2 x float>, align 8
  %3 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 0
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 1
  store float 1.000000e+00, float* %3, align 8
  store float 2.000000e+00, float* %4, align 4
  %5 = load <2 x float>, <2 x float>* %1, align 8
  %6 = call <2 x float> @ctest_float(<2 x float> noundef %5)
  store <2 x float> %6, <2 x float>* %2, align 8
  %7 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %8 = load float, float* %7, align 8
  %9 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  %10 = load float, float* %9, align 4
  %11 = fcmp une float %8, 1.000000e+00
  %12 = fcmp une float %10, -2.000000e+00
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  %15 = load i32, i32* @err, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @err, align 4
  br label %17

17:                                               ; preds = %14, %0
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @ctest_double(double noundef %0, double noundef %1) #3 {
  %3 = fneg double %1
  %4 = insertvalue { double, double } undef, double %0, 0
  %5 = insertvalue { double, double } %4, double %3, 1
  ret { double, double } %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_double() #4 {
  %1 = call { double, double } @ctest_double(double noundef 1.000000e+00, double noundef 2.000000e+00)
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  %4 = fcmp une double %2, 1.000000e+00
  %5 = fcmp une double %3, -2.000000e+00
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.1, i64 0, i64 0))
  %8 = load i32, i32* @err, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @err, align 4
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local { x86_fp80, x86_fp80 } @ctest_long_double({ x86_fp80, x86_fp80 }* nocapture noundef readonly byval({ x86_fp80, x86_fp80 }) align 16 %0) #5 {
  %2 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %0, i64 0, i32 0
  %3 = load x86_fp80, x86_fp80* %2, align 16
  %4 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %0, i64 0, i32 1
  %5 = load x86_fp80, x86_fp80* %4, align 16
  %6 = fneg x86_fp80 %5
  %7 = insertvalue { x86_fp80, x86_fp80 } undef, x86_fp80 %3, 0
  %8 = insertvalue { x86_fp80, x86_fp80 } %7, x86_fp80 %6, 1
  ret { x86_fp80, x86_fp80 } %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_long_double() #4 {
  %1 = alloca { x86_fp80, x86_fp80 }, align 16
  %2 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i64 0, i32 0
  %3 = getelementptr inbounds { x86_fp80, x86_fp80 }, { x86_fp80, x86_fp80 }* %1, i64 0, i32 1
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %2, align 16
  store x86_fp80 0xK40008000000000000000, x86_fp80* %3, align 16
  %4 = call { x86_fp80, x86_fp80 } @ctest_long_double({ x86_fp80, x86_fp80 }* noundef nonnull byval({ x86_fp80, x86_fp80 }) align 16 %1)
  %5 = extractvalue { x86_fp80, x86_fp80 } %4, 0
  %6 = extractvalue { x86_fp80, x86_fp80 } %4, 1
  %7 = fcmp une x86_fp80 %5, 0xK3FFF8000000000000000
  %8 = fcmp une x86_fp80 %6, 0xKC0008000000000000000
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str.2, i64 0, i64 0))
  %11 = load i32, i32* @err, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @err, align 4
  br label %13

13:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @ctest_int(i64 noundef %0) #3 {
  %2 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %2 to { i32, i32 }*
  %3 = alloca i64, align 8
  %tmpcast = bitcast i64* %3 to { i32, i32 }*
  store i64 %0, i64* %3, align 8
  %4 = bitcast i64* %3 to i32*
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = sub i32 0, %7
  %9 = bitcast i64* %2 to i32*
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast1, i64 0, i32 1
  store i32 %5, i32* %9, align 8
  store i32 %8, i32* %10, align 4
  %11 = load i64, i64* %2, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_int() #4 {
  %1 = alloca i64, align 8
  %tmpcast = bitcast i64* %1 to { i32, i32 }*
  %2 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %2 to { i32, i32 }*
  %3 = bitcast i64* %1 to i32*
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast, i64 0, i32 1
  store i32 1, i32* %3, align 8
  store i32 2, i32* %4, align 4
  %5 = load i64, i64* %1, align 8
  %6 = call i64 @ctest_int(i64 noundef %5)
  store i64 %6, i64* %2, align 8
  %7 = bitcast i64* %2 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast1, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %8, 1
  %12 = icmp ne i32 %10, -2
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.3, i64 0, i64 0))
  %15 = load i32, i32* @err, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @err, align 4
  br label %17

17:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @ctest_long_int(i64 noundef %0, i64 noundef %1) #3 {
  %3 = sub i64 0, %1
  %4 = insertvalue { i64, i64 } undef, i64 %0, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_long_int() #4 {
  %1 = call { i64, i64 } @ctest_long_int(i64 noundef 1, i64 noundef 2)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = icmp ne i64 %2, 1
  %5 = icmp ne i64 %3, -2
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.4, i64 0, i64 0))
  %8 = load i32, i32* @err, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @err, align 4
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #4 {
  store i32 0, i32* @err, align 4
  call void @test_float()
  call void @test_double()
  call void @test_long_double()
  call void @test_int()
  call void @test_long_int()
  %1 = load i32, i32* @err, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #8
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
