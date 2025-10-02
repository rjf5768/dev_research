; ModuleID = './990128-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990128-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { %struct.s* }

@count = dso_local global i32 0, align 4
@ss = dso_local global %struct.s zeroinitializer, align 8
@p = dso_local global %struct.s* null, align 8
@sss = dso_local global [10 x %struct.s] zeroinitializer, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.s*, align 8
  store %struct.s* @ss, %struct.s** @p, align 8
  br label %2

2:                                                ; preds = %8, %0
  %.01 = phi %struct.s* [ @ss, %0 ], [ %10, %8 ]
  %.0 = phi i32 [ 0, %0 ], [ %11, %8 ]
  %3 = icmp ult i32 %.0, 10
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [10 x %struct.s], [10 x %struct.s]* @sss, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.s, %struct.s* %.01, i64 0, i32 0
  store %struct.s* %6, %struct.s** %7, align 8
  br label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.s, %struct.s* %.01, i64 0, i32 0
  %10 = load %struct.s*, %struct.s** %9, align 8
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.s, %struct.s* %.01, i64 0, i32 0
  store %struct.s* null, %struct.s** %13, align 8
  %14 = load %struct.s*, %struct.s** @p, align 8
  call void @sub(%struct.s* noundef %14, %struct.s** noundef nonnull %1)
  %15 = load i32, i32* @count, align 4
  %.not = icmp eq i32 %15, 12
  br i1 %.not, label %17, label %16

16:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %12
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %17, %16
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @sub(%struct.s* noundef %0, %struct.s** nocapture noundef writeonly %1) #1 {
  br label %3

3:                                                ; preds = %8, %2
  %.0 = phi %struct.s* [ %0, %2 ], [ %10, %8 ]
  %4 = call i32 @look(%struct.s* noundef %.0, %struct.s** noundef %1)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.loopexit, label %5

5:                                                ; preds = %3
  %.not1 = icmp eq %struct.s* %.0, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.s, %struct.s* %.0, i64 0, i32 0
  %10 = load %struct.s*, %struct.s** %9, align 8
  br label %3, !llvm.loop !6

.loopexit:                                        ; preds = %3
  br label %11

11:                                               ; preds = %.loopexit, %7
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @look(%struct.s* noundef %0, %struct.s** nocapture noundef writeonly %1) #1 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi %struct.s* [ %0, %2 ], [ %7, %5 ]
  %.not = icmp eq %struct.s* %.0, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.s, %struct.s* %.0, i64 0, i32 0
  %7 = load %struct.s*, %struct.s** %6, align 8
  br label %3, !llvm.loop !7

8:                                                ; preds = %3
  store %struct.s* %.0, %struct.s** %1, align 8
  %9 = load i32, i32* @count, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @count, align 4
  ret i32 1
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
