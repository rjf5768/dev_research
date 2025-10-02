; ModuleID = './pr43220.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43220.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i8* null, align 8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %.0 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %2 = urem i32 %.0, 1000
  %3 = add nuw nsw i32 %2, 1
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  %6 = alloca i32, i64 %4, align 16
  store i32 1, i32* %6, align 16
  %7 = urem i32 %.0, 1000
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  store i32 2, i32* %9, align 4
  %10 = bitcast i32* %6 to i8*
  store volatile i8* %10, i8** @p, align 8
  %11 = or i32 %.0, 1
  call void @llvm.stackrestore(i8* %5)
  %12 = urem i32 %11, 1000
  %13 = add nuw nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  %16 = alloca i32, i64 %14, align 16
  store i32 1, i32* %16, align 16
  %17 = urem i32 %11, 1000
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 2, i32* %19, align 4
  %20 = bitcast i32* %16 to i8*
  store volatile i8* %20, i8** @p, align 8
  call void @llvm.stackrestore(i8* %15)
  %21 = icmp ult i32 %.0, 999998
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = add nuw nsw i32 %.0, 2
  br label %1

24:                                               ; preds = %1
  ret i32 0
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
