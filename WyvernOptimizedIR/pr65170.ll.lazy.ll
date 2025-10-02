; ModuleID = './pr65170.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65170.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = bitcast i128* %5 to { i64, i64 }*
  %8 = bitcast i128* %5 to i64*
  store i64 %0, i64* %8, align 16
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  store i64 %1, i64* %9, align 8
  %10 = load i128, i128* %5, align 16
  %11 = bitcast i128* %6 to { i64, i64 }*
  %12 = bitcast i128* %6 to i64*
  store i64 %2, i64* %12, align 16
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i64 0, i32 1
  store i64 %3, i64* %13, align 8
  %14 = load i128, i128* %6, align 16
  %15 = and i128 %10, 18446744073709551615
  %16 = and i128 %14, 18446744073709551615
  %17 = mul nuw i128 %15, %16
  %.not = icmp eq i128 %17, 1
  br i1 %.not, label %19, label %18

18:                                               ; preds = %4
  call void @abort() #2
  unreachable

19:                                               ; preds = %4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i128, align 16
  %2 = alloca i128, align 16
  store i128 1, i128* %1, align 16
  %3 = bitcast i128* %1 to { i64, i64 }*
  %4 = bitcast i128* %1 to i64*
  %5 = load i64, i64* %4, align 16
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i128 1, i128* %2, align 16
  %8 = bitcast i128* %2 to { i64, i64 }*
  %9 = bitcast i128* %2 to i64*
  %10 = load i64, i64* %9, align 16
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  call void @foo(i64 noundef %5, i64 noundef %7, i64 noundef %10, i64 noundef %12)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
