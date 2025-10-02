; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64718.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64718.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal global i32 4660, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 4660, i32* %2, align 4
  %3 = load i32, i32* @a, align 4
  %4 = call i32 @swap(i32 noundef %3)
  %5 = icmp ne i32 %4, 13330
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @swap(i32 noundef %8)
  %10 = icmp ne i32 %9, 13330
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @abort() #2
  unreachable

12:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @swap(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = trunc i32 %3 to i16
  %5 = zext i16 %4 to i32
  %6 = shl i32 %5, 8
  %7 = load i32, i32* %2, align 4
  %8 = trunc i32 %7 to i16
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 8
  %11 = or i32 %6, %10
  %12 = trunc i32 %11 to i16
  %13 = zext i16 %12 to i32
  ret i32 %13
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
