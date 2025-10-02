; ModuleID = './pr44202-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44202-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @add512(i32 noundef %0, i32* nocapture noundef writeonly %1) #0 {
  %3 = add nsw i32 %0, 512
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  store i32 %0, i32* %1, align 4
  br label %5

5:                                                ; preds = %4, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @add513(i32 noundef %0, i32* nocapture noundef writeonly %1) #0 {
  %3 = add nsw i32 %0, 513
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i32 %0, i32* %1, align 4
  br label %6

6:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  %3 = call i32 @add512(i32 noundef -512, i32* noundef nonnull %1)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4
  %.not1 = icmp eq i32 %5, -1
  br i1 %.not1, label %6, label %10

6:                                                ; preds = %4
  %7 = call i32 @add513(i32 noundef -513, i32* noundef nonnull %2)
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %8, label %10

8:                                                ; preds = %6
  %9 = load i32, i32* %2, align 4
  %.not3 = icmp eq i32 %9, -513
  br i1 %.not3, label %11, label %10

10:                                               ; preds = %8, %6, %4, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %11, %10
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
