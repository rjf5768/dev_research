; ModuleID = './simd-5.ll'
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

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @func0() #0 {
  store volatile i32 1, i32* @dummy, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @func1() #0 {
  %1 = load <4 x i16>, <4 x i16>* @q1, align 8
  %2 = load <4 x i16>, <4 x i16>* @q2, align 8
  %3 = mul <4 x i16> %1, %2
  %4 = load <4 x i16>, <4 x i16>* @q3, align 8
  %5 = load <4 x i16>, <4 x i16>* @q4, align 8
  %6 = mul <4 x i16> %4, %5
  store <4 x i16> %3, <4 x i16>* @w1, align 8
  store <4 x i16> %6, <4 x i16>* @w2, align 8
  call void @func0()
  store <4 x i16> %3, <4 x i16>* @w3, align 8
  store <4 x i16> %6, <4 x i16>* @w4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @func2() #0 {
  %1 = load <4 x i16>, <4 x i16>* @q1, align 8
  %2 = load <4 x i16>, <4 x i16>* @q2, align 8
  %3 = add <4 x i16> %1, %2
  %4 = load <4 x i16>, <4 x i16>* @q3, align 8
  %5 = load <4 x i16>, <4 x i16>* @q4, align 8
  %6 = sub <4 x i16> %4, %5
  store <4 x i16> %3, <4 x i16>* @z1, align 8
  store <4 x i16> %6, <4 x i16>* @z2, align 8
  call void @func1()
  store <4 x i16> %3, <4 x i16>* @z3, align 8
  store <4 x i16> %6, <4 x i16>* @z4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @func2()
  %lhsv = load i64, i64* bitcast (<4 x i16>* @w1 to i64*), align 8
  %rhsv = load i64, i64* bitcast (<4 x i16>* @w3 to i64*), align 8
  %.not = icmp eq i64 %lhsv, %rhsv
  br i1 %.not, label %2, label %1

1:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

2:                                                ; preds = %0
  %lhsv1 = load i64, i64* bitcast (<4 x i16>* @w2 to i64*), align 8
  %rhsv2 = load i64, i64* bitcast (<4 x i16>* @w4 to i64*), align 8
  %.not3 = icmp eq i64 %lhsv1, %rhsv2
  br i1 %.not3, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  %lhsv4 = load i64, i64* bitcast (<4 x i16>* @z1 to i64*), align 8
  %rhsv5 = load i64, i64* bitcast (<4 x i16>* @z3 to i64*), align 8
  %.not6 = icmp eq i64 %lhsv4, %rhsv5
  br i1 %.not6, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %lhsv7 = load i64, i64* bitcast (<4 x i16>* @z2 to i64*), align 8
  %rhsv8 = load i64, i64* bitcast (<4 x i16>* @z4 to i64*), align 8
  %.not9 = icmp eq i64 %lhsv7, %rhsv8
  br i1 %.not9, label %8, label %7

7:                                                ; preds = %6
  call void @abort() #4
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %7, %5, %3, %1
  unreachable
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
