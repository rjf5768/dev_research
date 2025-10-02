; ModuleID = './pr22237-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/pr22237-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef returned writeonly %0, i8* noundef readonly %1, i64 noundef %2) #0 {
  %4 = icmp ult i8* %0, %1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr i8, i8* %0, i64 %2
  %7 = icmp ugt i8* %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %5
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr i8, i8* %1, i64 %2
  %12 = icmp ugt i8* %11, %0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @abort() #2
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %9
  br label %16

16:                                               ; preds = %17, %15
  %.02 = phi i64 [ %2, %15 ], [ %18, %17 ]
  %.01 = phi i8* [ %1, %15 ], [ %19, %17 ]
  %.0 = phi i8* [ %0, %15 ], [ %21, %17 ]
  %.not = icmp eq i64 %.02, 0
  br i1 %.not, label %22, label %17

17:                                               ; preds = %16
  %18 = add i64 %.02, -1
  %19 = getelementptr inbounds i8, i8* %.01, i64 1
  %20 = load i8, i8* %.01, align 1
  %21 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %20, i8* %.0, align 1
  br label %16, !llvm.loop !4

22:                                               ; preds = %16
  ret i8* %0

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
