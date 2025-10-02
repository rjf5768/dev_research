; ModuleID = './pr81281.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81281.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %1, -2147483647
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = add i32 %0, %2
  %8 = add i32 %0, %1
  %9 = sub nsw i32 %8, %7
  %.not = icmp eq i32 %9, 2147483647
  br i1 %.not, label %11, label %10

10:                                               ; preds = %6
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  ret void

UnifiedUnreachableBlock:                          ; preds = %10, %5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, -2147483647
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %.not = icmp eq i32 %1, -2147483648
  br i1 %.not, label %7, label %6

6:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  ret void

UnifiedUnreachableBlock:                          ; preds = %6, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo(i32 noundef -1, i32 noundef -2147483648, i32 noundef 1)
  call void @bar(i32 noundef -1, i32 noundef -2147483648)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
