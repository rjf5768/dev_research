; ModuleID = './nestfunc-4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/nestfunc-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@level = dso_local global i64 0, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i64 @foo()
  %2 = icmp eq i64 %1, -42
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %4, %3
  unreachable
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @foo() #1 {
  %1 = load i64, i64* @level, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @level, align 8
  %3 = call i64 @bar()
  %4 = add nsw i64 %3, %2
  ret i64 %4
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @bar() #1 {
  %1 = load i64, i64* @level, align 8
  %2 = icmp sgt i64 %1, 499
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %6

4:                                                ; preds = %0
  %5 = call i64 @foo()
  br label %6

6:                                                ; preds = %4, %3
  %.pn = phi i64 [ -42, %3 ], [ %5, %4 ]
  %7 = sub nsw i64 %.pn, %1
  ret i64 %7
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
