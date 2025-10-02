; ModuleID = './pr83383.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr83383.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i64 16, align 8
@b = dso_local global i8 -61, align 1
@c = dso_local global i64 -1, align 8
@d = dso_local global i8 1, align 1
@e = dso_local global [2 x i64] [i64 3625445792498952486, i64 0], align 16
@f = dso_local global [2 x i64] [i64 0, i64 8985037393681294663], align 16
@g = dso_local global i64 5052410635626804928, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo() #0 {
  %1 = load i64, i64* @a, align 8
  %2 = trunc i64 %1 to i32
  %sext = shl i32 %2, 24
  %3 = ashr exact i32 %sext, 24
  %4 = load i8, i8* @b, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp slt i32 %3, %5
  %7 = zext i1 %6 to i64
  store i64 %7, i64* @a, align 8
  %8 = load i8, i8* @d, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %11, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @e, i64 0, i64 0), align 16
  br label %12

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i64 [ %10, %9 ], [ 0, %11 ]
  %14 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @f, i64 0, i64 1), align 8
  %15 = load i64, i64* @a, align 8
  %16 = mul i64 %14, %15
  %.not1 = icmp eq i64 %16, 0
  br i1 %.not1, label %18, label %17

17:                                               ; preds = %12
  br label %20

18:                                               ; preds = %12
  %19 = load i64, i64* @g, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i64 [ 1, %17 ], [ %19, %18 ]
  %22 = sub i64 %13, %21
  store i64 %22, i64* @c, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo()
  %1 = load i64, i64* @a, align 8
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = load i64, i64* @c, align 8
  %.not1 = icmp eq i64 %3, 3625445792498952485
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
