; ModuleID = './utop.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/utop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @utop(i32 noundef %0) #0 {
  %2 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef 2) #2
  %3 = icmp eq %struct.precisionType* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 3
  store i8 0, i8* %6, align 2
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 4, i64 0
  br label %8

8:                                                ; preds = %11, %5
  %.02 = phi i16* [ %7, %5 ], [ %10, %11 ]
  %.01 = phi i32 [ %0, %5 ], [ %12, %11 ]
  %9 = trunc i32 %.01 to i16
  %10 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %9, i16* %.02, align 2
  br label %11

11:                                               ; preds = %8
  %12 = lshr i32 %.01, 16
  %.not = icmp ult i32 %.01, 65536
  br i1 %.not, label %13, label %8, !llvm.loop !4

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 4, i64 0
  %15 = ptrtoint i16* %10 to i64
  %16 = ptrtoint i16* %14 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %18 to i16
  %20 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 2
  store i16 %19, i16* %20, align 2
  %21 = call %struct.precisionType* @presult(%struct.precisionType* noundef nonnull %2) #2
  br label %22

22:                                               ; preds = %13, %4
  %.0 = phi %struct.precisionType* [ null, %4 ], [ %21, %13 ]
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
