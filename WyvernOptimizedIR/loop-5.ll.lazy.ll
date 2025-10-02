; ModuleID = './loop-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal global [4 x i32] zeroinitializer, align 16
@__const.testit.ir = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@t = internal global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  call void @testit()
  %1 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @a, i64 0, i64 0), align 16
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @a, i64 0, i64 1), align 4
  %.not1 = icmp eq i32 %4, 3
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @a, i64 0, i64 2), align 8
  %.not2 = icmp eq i32 %7, 2
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #4
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @a, i64 0, i64 3), align 4
  %.not3 = icmp eq i32 %10, 1
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %12, %11, %8, %5, %2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @testit() #1 {
  br label %1

1:                                                ; preds = %14, %0
  %.01 = phi i32 [ 1, %0 ], [ %.02, %14 ]
  %.0 = phi i32 [ 1, %0 ], [ %15, %14 ]
  %2 = icmp ult i32 %.0, 5
  br i1 %2, label %3, label %16

3:                                                ; preds = %1
  %4 = icmp eq i32 %.01, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %8

6:                                                ; preds = %3
  %7 = add nsw i32 %.01, -1
  br label %8

8:                                                ; preds = %6, %5
  %.02 = phi i32 [ 4, %5 ], [ %7, %6 ]
  %9 = add nsw i32 %.01, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* @__const.testit.ir, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ap(i32 noundef %12)
  br label %14

14:                                               ; preds = %8
  %15 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

16:                                               ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @ap(i32 noundef %0) #1 {
  %2 = load i32, i32* @t, align 4
  %3 = icmp sgt i32 %2, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @abort() #4
  unreachable

5:                                                ; preds = %1
  %6 = load i32, i32* @t, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @t, align 4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %8
  store i32 %0, i32* %9, align 4
  ret i32 1
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
