; ModuleID = './pr28778.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr28778.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @find(i32* noundef readonly %0) #0 {
  %2 = alloca [32 x i32], align 16
  %.not = icmp eq i32* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 3
  store i32 42, i32* %5, align 4
  %6 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  br label %7

7:                                                ; preds = %4, %3
  %.0 = phi i32* [ %0, %3 ], [ %6, %4 ]
  %8 = bitcast i32* %.0 to i64*
  call void @aglChoosePixelFormat(i64* noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aglChoosePixelFormat(i64* nocapture noundef readonly %0) #0 {
  %2 = bitcast i64* %0 to i32*
  %3 = getelementptr inbounds i32, i32* %2, i64 3
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 42
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @find(i32* noundef null)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
