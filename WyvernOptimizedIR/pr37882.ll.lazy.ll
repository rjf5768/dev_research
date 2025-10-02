; ModuleID = './pr37882.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37882.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8 }

@s = dso_local global %struct.S zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i64 0, i32 0), align 1
  %2 = and i8 %1, -8
  %3 = or i8 %2, 4
  store i8 %3, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i64 0, i32 0), align 1
  br i1 true, label %4, label %8

4:                                                ; preds = %0
  %5 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i64 0, i32 0), align 1
  %6 = and i8 %5, 4
  %.not.not = icmp eq i8 %6, 0
  br i1 %.not.not, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #2
  unreachable

8:                                                ; preds = %4, %0
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
