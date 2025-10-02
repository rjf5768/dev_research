; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-5.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q1 = dso_local global <4 x i16> <i16 1, i16 2, i16 0, i16 0>, align 8
@q2 = dso_local global <4 x i16> <i16 3, i16 4, i16 0, i16 0>, align 8
@q3 = dso_local global <4 x i16> <i16 5, i16 6, i16 0, i16 0>, align 8
@q4 = dso_local global <4 x i16> <i16 7, i16 8, i16 0, i16 0>, align 8
@dummy = dso_local global i32 0, align 4
@w1 = dso_local global <4 x i16> zeroinitializer, align 8
@w2 = dso_local global <4 x i16> zeroinitializer, align 8
@w3 = dso_local global <4 x i16> zeroinitializer, align 8
@w4 = dso_local global <4 x i16> zeroinitializer, align 8
@z1 = dso_local global <4 x i16> zeroinitializer, align 8
@z2 = dso_local global <4 x i16> zeroinitializer, align 8
@z3 = dso_local global <4 x i16> zeroinitializer, align 8
@z4 = dso_local global <4 x i16> zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @func0() #0 {
  store volatile i32 1, i32* @dummy, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func1() #0 {
  %1 = alloca <4 x i16>, align 8
  %2 = alloca <4 x i16>, align 8
  %3 = load <4 x i16>, <4 x i16>* @q1, align 8
  %4 = load <4 x i16>, <4 x i16>* @q2, align 8
  %5 = mul <4 x i16> %3, %4
  store <4 x i16> %5, <4 x i16>* %1, align 8
  %6 = load <4 x i16>, <4 x i16>* @q3, align 8
  %7 = load <4 x i16>, <4 x i16>* @q4, align 8
  %8 = mul <4 x i16> %6, %7
  store <4 x i16> %8, <4 x i16>* %2, align 8
  %9 = load <4 x i16>, <4 x i16>* %1, align 8
  store <4 x i16> %9, <4 x i16>* @w1, align 8
  %10 = load <4 x i16>, <4 x i16>* %2, align 8
  store <4 x i16> %10, <4 x i16>* @w2, align 8
  call void @func0()
  %11 = load <4 x i16>, <4 x i16>* %1, align 8
  store <4 x i16> %11, <4 x i16>* @w3, align 8
  %12 = load <4 x i16>, <4 x i16>* %2, align 8
  store <4 x i16> %12, <4 x i16>* @w4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func2() #0 {
  %1 = alloca <4 x i16>, align 8
  %2 = alloca <4 x i16>, align 8
  %3 = load <4 x i16>, <4 x i16>* @q1, align 8
  %4 = load <4 x i16>, <4 x i16>* @q2, align 8
  %5 = add <4 x i16> %3, %4
  store <4 x i16> %5, <4 x i16>* %1, align 8
  %6 = load <4 x i16>, <4 x i16>* @q3, align 8
  %7 = load <4 x i16>, <4 x i16>* @q4, align 8
  %8 = sub <4 x i16> %6, %7
  store <4 x i16> %8, <4 x i16>* %2, align 8
  %9 = load <4 x i16>, <4 x i16>* %1, align 8
  store <4 x i16> %9, <4 x i16>* @z1, align 8
  %10 = load <4 x i16>, <4 x i16>* %2, align 8
  store <4 x i16> %10, <4 x i16>* @z2, align 8
  call void @func1()
  %11 = load <4 x i16>, <4 x i16>* %1, align 8
  store <4 x i16> %11, <4 x i16>* @z3, align 8
  %12 = load <4 x i16>, <4 x i16>* %2, align 8
  store <4 x i16> %12, <4 x i16>* @z4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @func2()
  %2 = call i32 @memcmp(i8* noundef bitcast (<4 x i16>* @w1 to i8*), i8* noundef bitcast (<4 x i16>* @w3 to i8*), i64 noundef 8)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  %6 = call i32 @memcmp(i8* noundef bitcast (<4 x i16>* @w2 to i8*), i8* noundef bitcast (<4 x i16>* @w4 to i8*), i64 noundef 8)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #3
  unreachable

9:                                                ; preds = %5
  %10 = call i32 @memcmp(i8* noundef bitcast (<4 x i16>* @z1 to i8*), i8* noundef bitcast (<4 x i16>* @z3 to i8*), i64 noundef 8)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #3
  unreachable

13:                                               ; preds = %9
  %14 = call i32 @memcmp(i8* noundef bitcast (<4 x i16>* @z2 to i8*), i8* noundef bitcast (<4 x i16>* @z4 to i8*), i64 noundef 8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #3
  unreachable

17:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
