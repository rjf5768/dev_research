; ModuleID = './pr48973-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48973-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [3 x i8] }

@v = dso_local global i32 -1, align 4
@s = dso_local global %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, -1
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
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @v, align 4
  %2 = trunc i32 %1 to i8
  %3 = and i8 %2, 1
  %4 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i64 0, i32 0), align 4
  %5 = and i8 %4, -2
  %6 = or i8 %5, %3
  store i8 %6, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i64 0, i32 0), align 4
  %7 = and i32 %1, 1
  %8 = sub nsw i32 0, %7
  call void @foo(i32 noundef %8)
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
