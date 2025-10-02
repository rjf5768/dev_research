; ModuleID = './ltop.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ltop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @ltop(i64 noundef %0) #0 {
  %2 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef 2) #2
  %3 = icmp eq %struct.precisionType* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %26

5:                                                ; preds = %1
  %.lobit = lshr i64 %0, 63
  %6 = trunc i64 %.lobit to i8
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 3
  store i8 %6, i8* %7, align 2
  %.not = icmp sgt i64 %0, -1
  br i1 %.not, label %10, label %8

8:                                                ; preds = %5
  %9 = sub nsw i64 0, %0
  br label %10

10:                                               ; preds = %8, %5
  %.01 = phi i64 [ %9, %8 ], [ %0, %5 ]
  %11 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 4, i64 0
  br label %12

12:                                               ; preds = %15, %10
  %.02 = phi i16* [ %11, %10 ], [ %14, %15 ]
  %.1 = phi i64 [ %.01, %10 ], [ %16, %15 ]
  %13 = trunc i64 %.1 to i16
  %14 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %13, i16* %.02, align 2
  br label %15

15:                                               ; preds = %12
  %16 = ashr i64 %.1, 16
  %.not3 = icmp ult i64 %.1, 65536
  br i1 %.not3, label %17, label %12, !llvm.loop !4

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 4, i64 0
  %19 = ptrtoint i16* %14 to i64
  %20 = ptrtoint i16* %18 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 1
  %23 = trunc i64 %22 to i16
  %24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 2
  store i16 %23, i16* %24, align 2
  %25 = call %struct.precisionType* @presult(%struct.precisionType* noundef nonnull %2) #2
  br label %26

26:                                               ; preds = %17, %4
  %.0 = phi %struct.precisionType* [ %2, %4 ], [ %25, %17 ]
  ret %struct.precisionType* %.0
}

declare dso_local %struct.precisionType* @palloc(...) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
