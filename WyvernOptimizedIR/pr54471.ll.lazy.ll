; ModuleID = './pr54471.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr54471.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @foo(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = bitcast i128* %5 to { i64, i64 }*
  %7 = bitcast i128* %5 to i64*
  store i64 %0, i64* %7, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i128, i128* %5, align 16
  br label %10

10:                                               ; preds = %12, %3
  %.02 = phi i128 [ 1, %3 ], [ %14, %12 ]
  %.01 = phi i32 [ %2, %3 ], [ %15, %12 ]
  %.0 = phi i128 [ %9, %3 ], [ %13, %12 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %16, label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  %13 = mul nsw i128 %.0, %.0
  %14 = mul i128 %.02, %.0
  %15 = add i32 %.01, -1
  br label %10, !llvm.loop !4

16:                                               ; preds = %10
  %.not3 = icmp eq i128 %.02, 14348907
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %16
  call void @abort() #2
  unreachable

18:                                               ; preds = %16
  store i128 %.02, i128* %4, align 16
  %19 = bitcast i128* %4 to { i64, i64 }*
  %.elt = bitcast i128* %4 to i64*
  %.unpack = load i64, i64* %.elt, align 16
  %20 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i64 0, i32 1
  %.unpack5 = load i64, i64* %.elt4, align 8
  %21 = insertvalue { i64, i64 } %20, i64 %.unpack5, 1
  ret { i64, i64 } %21
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i128, align 16
  store i128 3, i128* %1, align 16
  %2 = bitcast i128* %1 to { i64, i64 }*
  %3 = bitcast i128* %1 to i64*
  %4 = load i64, i64* %3, align 16
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { i64, i64 } @foo(i64 noundef %4, i64 noundef %6, i32 noundef 4)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
