; ModuleID = './930603-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930603-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i8* nocapture noundef readonly %0, i32 noundef %1) #0 {
  switch i32 %1, label %10 [
    i32 100, label %3
    i32 107, label %6
  ]

3:                                                ; preds = %2
  %4 = load i8, i8* %0, align 1
  %5 = lshr i8 %4, 1
  br label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %0, i64 3
  %8 = load i8, i8* %7, align 1
  %9 = lshr i8 %8, 4
  br label %11

10:                                               ; preds = %2
  call void @abort() #3
  unreachable

11:                                               ; preds = %6, %3
  %.0.in = phi i8 [ %9, %6 ], [ %5, %3 ]
  %.0 = zext i8 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [4 x i8], align 1
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 -86, i8* %2, align 1
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 5, i8* %3, align 1
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %5 = call i32 @f(i8* noundef nonnull %4, i32 noundef 100)
  %.not = icmp eq i32 %5, 85
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
