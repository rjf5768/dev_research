; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70222-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70222-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@b = dso_local global i32 2, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @c, align 4
  %3 = load i32, i32* @c, align 4
  %4 = icmp sge i32 %2, %3
  %5 = zext i1 %4 to i32
  %6 = sub nsw i32 0, %5
  %7 = load i32, i32* @b, align 4
  %8 = icmp ult i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @a, align 4
  %11 = load i32, i32* @a, align 4
  %12 = sdiv i32 %10, %11
  %13 = mul nsw i32 %12, 15
  %14 = zext i32 %13 to i64
  %15 = lshr i64 -1, %14
  %16 = trunc i64 %15 to i32
  %17 = icmp sgt i32 %9, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* @d, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  %2 = load i32, i32* @d, align 4
  call void @bar(i32 noundef %2)
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
