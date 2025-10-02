; ModuleID = './20060412-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060412-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i64, [82 x %struct.S] }
%struct.S = type { i64 }

@t = dso_local global %struct.T zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi %struct.S* [ bitcast (i64* getelementptr inbounds (%struct.T, %struct.T* @t, i64 1, i32 0) to %struct.S*), %0 ], [ %2, %4 ]
  %2 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 -1
  %3 = icmp ugt %struct.S* %2, getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 1, i64 0)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  store i64 -1, i64* %5, align 8
  br label %1, !llvm.loop !4

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  store i64 0, i64* %7, align 8
  br i1 false, label %8, label %9

8:                                                ; preds = %6
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = ptrtoint %struct.S* %2 to i64
  %11 = sub i64 %10, ptrtoint (%struct.S* getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 1, i64 0) to i64)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @abort() #2
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %9
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %13, %8
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
