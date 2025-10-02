; ModuleID = './20040811-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040811-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i8* null, align 8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %15, %0
  %.01 = phi i32 [ 0, %0 ], [ %11, %15 ]
  %2 = urem i32 %.01, 1000
  %3 = add nuw nsw i32 %2, 1
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  %6 = alloca i32, i64 %4, align 16
  store i32 1, i32* %6, align 16
  %7 = urem i32 %.01, 1000
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  store i32 2, i32* %9, align 4
  %10 = bitcast i32* %6 to i8*
  store volatile i8* %10, i8** @p, align 8
  %11 = add nuw nsw i32 %.01, 1
  %12 = icmp ult i32 %.01, 999999
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %13
  %.02 = phi i32 [ 2, %13 ], [ 1, %14 ]
  call void @llvm.stackrestore(i8* %5)
  switch i32 %.02, label %17 [
    i32 2, label %1
    i32 1, label %16
  ]

16:                                               ; preds = %15
  ret i32 0

17:                                               ; preds = %15
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
