; ModuleID = './990324-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990324-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @f(i64 noundef %0) #0 {
  %sext.mask1 = and i64 %0, 128
  %.not = icmp eq i64 %sext.mask1, 0
  br i1 %.not, label %2, label %4

2:                                                ; preds = %1
  %sext.mask2 = and i64 %0, 255
  %3 = icmp eq i64 %sext.mask2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2, %1
  call void @abort() #2
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  call void @f(i64 noundef 4294967041)
  ret i32 0
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
