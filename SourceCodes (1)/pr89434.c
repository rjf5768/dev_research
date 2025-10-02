; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89434.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr89434.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = call i64 @foo(i64 noundef 9162596898)
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, -9162596898
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @foo(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @g, align 8
  %5 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 -1, i64 %4)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = trunc i64 %7 to i32
  %9 = zext i32 %8 to i64
  %10 = icmp ne i64 %7, %9
  %11 = or i1 %6, %10
  store i32 %8, i32* %3, align 4
  %12 = load i64, i64* %2, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = trunc i32 %14 to i16
  %16 = zext i16 %15 to i32
  %17 = icmp ult i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %2, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = load i64, i64* %2, align 8
  %25 = sub i64 %23, %24
  ret i64 %25
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
