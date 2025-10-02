; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37882.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37882.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8 }

@s = dso_local global %struct.S zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 1
  %3 = and i8 %2, -8
  %4 = or i8 %3, 4
  store i8 %4, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 1
  %5 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 1
  %6 = and i8 %5, 7
  %7 = zext i8 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 1
  %11 = and i8 %10, 7
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  call void @abort() #2
  unreachable

15:                                               ; preds = %9, %0
  ret i32 0
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
