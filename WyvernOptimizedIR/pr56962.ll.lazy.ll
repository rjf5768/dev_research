; ModuleID = './pr56962.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56962.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global [144 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i64* noundef readnone %0) #0 {
  %.not = icmp eq i64* %0, getelementptr inbounds ([144 x i64], [144 x i64]* @v, i64 0, i64 29)
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #2
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = shl nsw i64 %2, 2
  %5 = mul nsw i64 %1, 3
  %6 = add nsw i64 %4, %5
  %7 = getelementptr inbounds i64, i64* %0, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = mul nsw i64 %2, 5
  %10 = mul nsw i64 %1, 3
  %11 = add nsw i64 %9, %10
  %12 = getelementptr inbounds i64, i64* %0, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = mul nsw i64 %2, 5
  %15 = shl nsw i64 %1, 2
  %16 = add nsw i64 %14, %15
  %17 = getelementptr inbounds i64, i64* %0, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = shl nsw i64 %1, 2
  %20 = getelementptr inbounds i64, i64* %0, i64 %19
  store i64 %8, i64* %20, align 8
  %21 = mul nsw i64 %2, 5
  %22 = add nsw i64 %21, %1
  %23 = getelementptr inbounds i64, i64* %0, i64 %22
  call void @bar(i64* noundef %23)
  %24 = add nsw i64 %13, %18
  %25 = add i64 %2, %1
  %26 = mul i64 %25, 5
  %27 = getelementptr inbounds i64, i64* %0, i64 %26
  store i64 %24, i64* %27, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo(i64* noundef getelementptr inbounds ([144 x i64], [144 x i64]* @v, i64 0, i64 0), i64 noundef 24, i64 noundef 1)
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
