; ModuleID = './960513-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960513-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local x86_fp80 @f(x86_fp80 noundef %0, i32 noundef %1) #0 {
  %3 = fneg x86_fp80 %0
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = fmul x86_fp80 %0, 0xKC0008000000000000000
  br label %7

7:                                                ; preds = %5, %2
  %.0 = phi x86_fp80 [ %6, %5 ], [ %3, %2 ]
  %8 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %0, x86_fp80 %.0, x86_fp80 %.0)
  %9 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %0, x86_fp80 %8, x86_fp80 %8)
  %10 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %0, x86_fp80 %9, x86_fp80 %9)
  %11 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %0, x86_fp80 %10, x86_fp80 %10)
  %12 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %0, x86_fp80 %11, x86_fp80 %11)
  ret x86_fp80 %12
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call x86_fp80 @f(x86_fp80 noundef 0xK40008000000000000000, i32 noundef 1)
  %2 = fptosi x86_fp80 %1 to i32
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %4, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
