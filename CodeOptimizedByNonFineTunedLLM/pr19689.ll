; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr19689.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr19689.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 }

@f = dso_local global %struct.anon zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i16 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = sext i16 %3 to i32
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @f, i32 0, i32 0), align 4
  %6 = and i32 %4, 536870911
  %7 = and i32 %5, -536870912
  %8 = or i32 %7, %6
  store i32 %8, i32* getelementptr inbounds (%struct.anon, %struct.anon* @f, i32 0, i32 0), align 4
  %9 = shl i32 %6, 3
  %10 = ashr i32 %9, 3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(i16 noundef signext -55)
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @f, i32 0, i32 0), align 4
  %3 = shl i32 %2, 3
  %4 = ashr i32 %3, 3
  %5 = icmp ne i32 %4, -55
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
