; ModuleID = './20000910-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000910-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.a = internal global [3 x i32] [i32 0, i32 1, i32 2], align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32* [ getelementptr inbounds ([3 x i32], [3 x i32]* @main.a, i64 1, i64 0), %0 ], [ %2, %4 ]
  %2 = getelementptr inbounds i32, i32* %.0, i64 -1
  %3 = icmp ugt i32* %.0, getelementptr inbounds ([3 x i32], [3 x i32]* @main.a, i64 0, i64 0)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @foo(i32* noundef nonnull %2)
  br label %1, !llvm.loop !4

5:                                                ; preds = %1
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32* nocapture noundef readonly %0) #1 {
  %2 = load i32, i32* %0, align 4
  call void @bar(i32 noundef %2)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #1 {
  call void @baz(i32 noundef %0, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(i32 noundef %0, i32 noundef %1) #1 {
  %.not = icmp eq i32 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #3
  unreachable

4:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
