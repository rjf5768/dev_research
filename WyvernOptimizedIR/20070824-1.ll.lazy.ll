; ModuleID = './20070824-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070824-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { %struct.S*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.S*, align 8
  store %struct.S* null, %struct.S** %1, align 8
  br label %2

2:                                                ; preds = %5, %0
  %.0 = phi %struct.S** [ %1, %0 ], [ %7, %5 ]
  %3 = load %struct.S*, %struct.S** %.0, align 8
  %.not = icmp eq %struct.S* %3, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = load %struct.S*, %struct.S** %.0, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i64 0, i32 0
  br label %2, !llvm.loop !4

8:                                                ; preds = %2
  %9 = alloca %struct.S, align 16
  %10 = load %struct.S*, %struct.S** %.0, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %9, i64 0, i32 0
  store %struct.S* %10, %struct.S** %11, align 16
  %12 = getelementptr inbounds %struct.S, %struct.S* %9, i64 0, i32 1
  store i32 1, i32* %12, align 8
  store %struct.S* %9, %struct.S** %.0, align 8
  %13 = load %struct.S*, %struct.S** %1, align 8
  %.not1 = icmp eq %struct.S* %13, null
  br i1 %.not1, label %14, label %15

14:                                               ; preds = %8
  call void @abort() #2
  unreachable

15:                                               ; preds = %8
  ret i32 0
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
