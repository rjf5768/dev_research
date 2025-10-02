; ModuleID = './20050929-1.ll'
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
  %1 = load %struct.B*, %struct.B** getelementptr inbounds (%struct.C, %struct.C* @e, i64 0, i32 0), align 8
  %2 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 0
  %3 = load %struct.A*, %struct.A** %2, align 8
  %4 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 1
  br i1 %.not, label %6, label %12

6:                                                ; preds = %0
  %7 = load %struct.B*, %struct.B** getelementptr inbounds (%struct.C, %struct.C* @e, i64 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.B, %struct.B* %7, i64 0, i32 0
  %9 = load %struct.A*, %struct.A** %8, align 8
  %10 = getelementptr inbounds %struct.A, %struct.A* %9, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %.not1 = icmp eq i32 %11, 2
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %6, %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %6
  %14 = load %struct.B*, %struct.B** getelementptr inbounds (%struct.C, %struct.C* @e, i64 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.B, %struct.B* %14, i64 0, i32 1
  %16 = load %struct.A*, %struct.A** %15, align 8
  %17 = getelementptr inbounds %struct.A, %struct.A* %16, i64 0, i32 0
  %18 = load i32, i32* %17, align 4
  %.not2 = icmp eq i32 %18, 3
  br i1 %.not2, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.B*, %struct.B** getelementptr inbounds (%struct.C, %struct.C* @e, i64 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.B, %struct.B* %20, i64 0, i32 1
  %22 = load %struct.A*, %struct.A** %21, align 8
  %23 = getelementptr inbounds %struct.A, %struct.A* %22, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %.not3 = icmp eq i32 %24, 4
  br i1 %.not3, label %26, label %25

25:                                               ; preds = %19, %13
  call void @abort() #2
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %19
  %27 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.C, %struct.C* @e, i64 0, i32 1), align 8
  %28 = getelementptr inbounds %struct.A, %struct.A* %27, i64 0, i32 0
  %29 = load i32, i32* %28, align 4
  %.not4 = icmp eq i32 %29, 5
  br i1 %.not4, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.A*, %struct.A** getelementptr inbounds (%struct.C, %struct.C* @e, i64 0, i32 1), align 8
  %32 = getelementptr inbounds %struct.A, %struct.A* %31, i64 0, i32 1
  %33 = load i32, i32* %32, align 4
  %.not5 = icmp eq i32 %33, 6
  br i1 %.not5, label %35, label %34

34:                                               ; preds = %30, %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %30
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %34, %25, %12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
