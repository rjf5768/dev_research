; ModuleID = './pr51466.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51466.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca [4 x i32], align 16
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %3
  store volatile i32 6, i32* %4, align 4
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local i32 @bar(i32 noundef %0) #0 {
  %2 = alloca [4 x i32], align 16
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %3
  store volatile i32 6, i32* %4, align 4
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %5
  store i32 8, i32* %6, align 4
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %7
  %9 = load volatile i32, i32* %8, align 4
  ret i32 %9
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local i32 @baz(i32 noundef %0) #0 {
  %2 = alloca [4 x i32], align 16
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %3
  store volatile i32 6, i32* %4, align 4
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  store i32 8, i32* %5, align 16
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %6
  %8 = load volatile i32, i32* %7, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @foo(i32 noundef 3)
  %.not = icmp eq i32 %1, 6
  br i1 %.not, label %2, label %8

2:                                                ; preds = %0
  %3 = call i32 @bar(i32 noundef 2)
  %.not1 = icmp eq i32 %3, 8
  br i1 %.not1, label %4, label %8

4:                                                ; preds = %2
  %5 = call i32 @baz(i32 noundef 0)
  %.not2 = icmp eq i32 %5, 8
  br i1 %.not2, label %6, label %8

6:                                                ; preds = %4
  %7 = call i32 @baz(i32 noundef 1)
  %.not3 = icmp eq i32 %7, 6
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %6, %4, %2, %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %6
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
