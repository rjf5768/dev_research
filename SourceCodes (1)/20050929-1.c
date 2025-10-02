; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050929-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050929-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32 }
%struct.B = type { %struct.A*, %struct.A* }
%struct.C = type { %struct.B*, %struct.A* }

@.compoundliteral = internal global %struct.A { i32 1, i32 2 }, align 4
@.compoundliteral.1 = internal global %struct.A { i32 3, i32 4 }, align 4
@.compoundliteral.2 = internal global %struct.B { %struct.A* @.compoundliteral, %struct.A* @.compoundliteral.1 }, align 8
@.compoundliteral.3 = internal global %struct.A { i32 5, i32 6 }, align 4
@e = dso_local global %struct.C { %struct.B* @.compoundliteral.2, %struct.A* @.compoundliteral.3 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load %struct.B*, %struct.B** getelementptr inbounds (%struct.C, %struct.C* @e, i32 0, i32 0), align 8
  %3 = getelementptr inbounds %struct.B, %struct.B* %2, i32 0, i32 0
  %4 = load %struct.A*, %struct.A** %3, align 8
  %5 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %15, label %8

8:                                                ; preds = %0
  %9 = load %struct.B*, %struct.B** getelementptr inbounds (%struct.C, %struct.C* @e, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.B, %struct.B* %9, i32 0, i32 0
  %11 = load %struct.A*, %struct.A** %10, align 8
  %12 = getelementptr inbounds %struct.A, %struct.A* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %0
  call void @abort() #2
  unreachable

16:                                               ; preds = %8
  %17 = load %struct.B*, %struct.B** getelementptr inbounds (%struct.C, %struct.C* @e, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.B, %struct.B* %17, i32 0, i32 1
  %19 = load %struct.A*, %struct.A** %18, align 8
  %20 = getelementptr inbounds %struct.A, %struct.A* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.B*, %struct.B** getelementptr inbounds (%struct.C, %struct.C* @e, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.B, %struct.B* %24, i32 0, i32 1
  %26 = load %struct.A*, %struct.A** %25, align 8
  %27 = getelementptr inbounds %struct.A, %struct.A* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %16
  call void @abort() #2
  unreachable

31:                                               ; preds = %23
  %32 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.C, %struct.C* @e, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.A, %struct.A* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 5
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.C, %struct.C* @e, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.A, %struct.A* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 6
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  call void @abort() #2
  unreachable

42:                                               ; preds = %36
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
