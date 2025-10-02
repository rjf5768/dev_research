; ModuleID = './minuszero.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/minuszero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %union.anon, align 8
  %2 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0
  store double -0.000000e+00, double* %2, align 8
  br label %3

3:                                                ; preds = %13, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %4 = icmp ult i32 %.0, 4
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = bitcast %union.anon* %1 to [4 x i16]*
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 %7
  %9 = load i16, i16* %8, align 2
  %10 = icmp eq i16 %9, -32768
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

15:                                               ; preds = %3
  call void @abort() #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %15, %11
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
