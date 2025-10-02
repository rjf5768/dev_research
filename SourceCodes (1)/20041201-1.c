; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041201-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041201-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scc2 = type { { i8, i8 }, { i8, i8 } }

@s = dso_local global %struct.Scc2 { { i8, i8 } { i8 1, i8 2 }, { i8, i8 } { i8 3, i8 4 } }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @checkScc2(i32 %0) #0 {
  %2 = alloca %struct.Scc2, align 1
  %3 = bitcast %struct.Scc2* %2 to i32*
  store i32 %0, i32* %3, align 1
  %4 = getelementptr inbounds %struct.Scc2, %struct.Scc2* %2, i32 0, i32 0
  %5 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %4, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  %7 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %4, i32 0, i32 1
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %6 to i32
  %10 = sext i8 %8 to i32
  %11 = icmp ne i32 %9, 1
  %12 = icmp ne i32 %10, 2
  %13 = or i1 %11, %12
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Scc2, %struct.Scc2* %2, i32 0, i32 1
  %16 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %15, i32 0, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %17 to i32
  %21 = sext i8 %19 to i32
  %22 = icmp ne i32 %20, 3
  %23 = icmp ne i32 %21, 4
  %24 = or i1 %22, %23
  br label %25

25:                                               ; preds = %14, %1
  %26 = phi i1 [ true, %1 ], [ %24, %14 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* bitcast (%struct.Scc2* @s to i32*), align 1
  %3 = call i32 @checkScc2(i32 %2)
  ret i32 %3
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
