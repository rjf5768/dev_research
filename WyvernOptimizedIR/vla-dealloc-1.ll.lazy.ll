; ModuleID = './vla-dealloc-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vla-dealloc-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i8* null, align 8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br i1 false, label %1, label %3

1:                                                ; preds = %0
  br label %2

2:                                                ; preds = %17, %1
  %.01 = phi i32 [ 0, %1 ], [ %13, %17 ]
  br label %3

3:                                                ; preds = %2, %0
  %.12 = phi i32 [ %.01, %2 ], [ 0, %0 ]
  %4 = srem i32 %.12, 1000
  %5 = add nsw i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  %8 = alloca i32, i64 %6, align 16
  store i32 1, i32* %8, align 16
  %9 = srem i32 %.12, 1000
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32 2, i32* %11, align 4
  %12 = bitcast i32* %8 to i8*
  store volatile i8* %12, i8** @p, align 8
  %13 = add nsw i32 %.12, 1
  %14 = icmp slt i32 %.12, 999999
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %15
  %.03 = phi i32 [ 2, %15 ], [ 1, %16 ]
  call void @llvm.stackrestore(i8* %7)
  switch i32 %.03, label %19 [
    i32 2, label %2
    i32 1, label %18
  ]

18:                                               ; preds = %17
  ret i32 0

19:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
