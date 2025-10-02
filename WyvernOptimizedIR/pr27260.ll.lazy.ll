; ModuleID = './pr27260.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr27260.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [65 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @foo(i32 noundef %0) #0 {
  %.not = icmp ne i32 %0, 2
  %2 = zext i1 %.not to i8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) getelementptr inbounds ([65 x i8], [65 x i8]* @buf, i64 0, i64 0), i8 %2, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  store i8 2, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @buf, i64 0, i64 64), align 16
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %2 = icmp ult i32 %.0, 64
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [65 x i8], [65 x i8]* @buf, i64 0, i64 %4
  %6 = load i8, i8* %5, align 1
  %.not3 = icmp eq i8 %6, 0
  br i1 %.not3, label %8, label %7

7:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

11:                                               ; preds = %1
  call void @foo(i32 noundef 0)
  br label %12

12:                                               ; preds = %20, %11
  %.1 = phi i32 [ 0, %11 ], [ %21, %20 ]
  %13 = icmp ult i32 %.1, 64
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = zext i32 %.1 to i64
  %16 = getelementptr inbounds [65 x i8], [65 x i8]* @buf, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %.not2 = icmp eq i8 %17, 1
  br i1 %.not2, label %19, label %18

18:                                               ; preds = %14
  call void @abort() #4
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.1, 1
  br label %12, !llvm.loop !6

22:                                               ; preds = %12
  call void @foo(i32 noundef 2)
  br label %23

23:                                               ; preds = %31, %22
  %.2 = phi i32 [ 0, %22 ], [ %32, %31 ]
  %24 = icmp ult i32 %.2, 64
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = zext i32 %.2 to i64
  %27 = getelementptr inbounds [65 x i8], [65 x i8]* @buf, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %.not1 = icmp eq i8 %28, 0
  br i1 %.not1, label %30, label %29

29:                                               ; preds = %25
  call void @abort() #4
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30
  %32 = add nuw nsw i32 %.2, 1
  br label %23, !llvm.loop !7

33:                                               ; preds = %23
  %34 = load i8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @buf, i64 0, i64 64), align 16
  %.not = icmp eq i8 %34, 2
  br i1 %.not, label %36, label %35

35:                                               ; preds = %33
  call void @abort() #4
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %35, %29, %18, %7
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
