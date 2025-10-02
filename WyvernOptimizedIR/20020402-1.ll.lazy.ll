; ModuleID = './20020402-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020402-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.listElem = private unnamed_addr constant [4 x i32] [i32 30, i32 2, i32 10, i32 5], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [2 x i32], align 4
  br label %2

2:                                                ; preds = %19, %0
  %.04 = phi i32 [ -1, %0 ], [ %.15, %19 ]
  %.01 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %.0 = phi i32 [ -1, %0 ], [ %.1, %19 ]
  %3 = icmp ult i32 %.01, 2
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* @__const.main.listElem, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* @__const.main.listElem, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, %.0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* @__const.main.listElem, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  br label %18

18:                                               ; preds = %14, %4
  %.15 = phi i32 [ %.01, %14 ], [ %.04, %4 ]
  %.1 = phi i32 [ %17, %14 ], [ %.0, %4 ]
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %53, %21
  %.26 = phi i32 [ %.04, %21 ], [ %.59, %53 ]
  %.12 = phi i32 [ 2, %21 ], [ %54, %53 ]
  %.2 = phi i32 [ %.0, %21 ], [ %.5, %53 ]
  %23 = icmp ult i32 %.12, 4
  br i1 %23, label %24, label %55

24:                                               ; preds = %22
  %25 = zext i32 %.12 to i64
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* @__const.main.listElem, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, %.2
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = zext i32 %.12 to i64
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* @__const.main.listElem, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %.26 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %33
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %49, %29
  %.37 = phi i32 [ 0, %29 ], [ %.48, %49 ]
  %.03 = phi i32 [ 1, %29 ], [ %50, %49 ]
  %.3 = phi i32 [ %36, %29 ], [ %.4, %49 ]
  %38 = icmp ult i32 %.03, 2
  br i1 %38, label %39, label %51

39:                                               ; preds = %37
  %40 = zext i32 %.03 to i64
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, %.3
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = zext i32 %.03 to i64
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  br label %48

48:                                               ; preds = %44, %39
  %.48 = phi i32 [ %.03, %44 ], [ %.37, %39 ]
  %.4 = phi i32 [ %47, %44 ], [ %.3, %39 ]
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i32 %.03, 1
  br label %37, !llvm.loop !6

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %24
  %.59 = phi i32 [ %.37, %51 ], [ %.26, %24 ]
  %.5 = phi i32 [ %.3, %51 ], [ %.2, %24 ]
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %.12, 1
  br label %22, !llvm.loop !7

55:                                               ; preds = %22
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %.not = icmp eq i32 %57, 5
  br i1 %.not, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %.not10 = icmp eq i32 %60, 2
  br i1 %.not10, label %62, label %61

61:                                               ; preds = %58, %55
  call void @abort() #3
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %58
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %62, %61
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
