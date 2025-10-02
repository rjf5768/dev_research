; ModuleID = './pr39100.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.C = type { %struct.E*, i16, i16 }
%struct.E = type { i32, %struct.E* }

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local %struct.C* @foo(%struct.C* noundef returned %0, %struct.E* noundef %1) #0 {
  %3 = alloca %struct.E*, align 8
  %4 = alloca %struct.E*, align 8
  store %struct.E* null, %struct.E** %3, align 8
  store %struct.E* null, %struct.E** %4, align 8
  br label %5

5:                                                ; preds = %22, %2
  %.02 = phi %struct.E** [ %3, %2 ], [ %.13, %22 ]
  %.01 = phi %struct.E* [ %1, %2 ], [ %8, %22 ]
  %.0 = phi %struct.E** [ %4, %2 ], [ %.1, %22 ]
  %.not = icmp eq %struct.E* %.01, null
  br i1 %.not, label %23, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.E, %struct.E* %.01, i64 0, i32 1
  %8 = load %struct.E*, %struct.E** %7, align 8
  %9 = getelementptr inbounds %struct.E, %struct.E* %.01, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 1
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.C, %struct.C* %0, i64 0, i32 2
  %14 = load i16, i16* %13, align 2
  %15 = add i16 %14, 1
  store i16 %15, i16* %13, align 2
  store %struct.E* %.01, %struct.E** %.02, align 8
  %16 = getelementptr inbounds %struct.E, %struct.E* %.01, i64 0, i32 1
  br label %22

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.C, %struct.C* %0, i64 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = add i16 %19, 1
  store i16 %20, i16* %18, align 8
  store %struct.E* %.01, %struct.E** %.0, align 8
  %21 = getelementptr inbounds %struct.E, %struct.E* %.01, i64 0, i32 1
  br label %22

22:                                               ; preds = %17, %12
  %.13 = phi %struct.E** [ %16, %12 ], [ %.02, %17 ]
  %.1 = phi %struct.E** [ %.0, %12 ], [ %21, %17 ]
  br label %5, !llvm.loop !4

23:                                               ; preds = %5
  %24 = load %struct.E*, %struct.E** %4, align 8
  store %struct.E* %24, %struct.E** %.02, align 8
  store %struct.E* null, %struct.E** %.0, align 8
  %25 = load %struct.E*, %struct.E** %3, align 8
  %26 = getelementptr inbounds %struct.C, %struct.C* %0, i64 0, i32 0
  store %struct.E* %25, %struct.E** %26, align 8
  ret %struct.C* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.C, align 8
  %2 = alloca [2 x %struct.E], align 16
  %3 = bitcast %struct.C* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 0, i32 0
  store i32 0, i32* %4, align 16
  %5 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 0, i32 1
  %6 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 1
  store %struct.E* %6, %struct.E** %5, align 8
  %7 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 1, i32 0
  store i32 1, i32* %7, align 16
  %8 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 1, i32 1
  store %struct.E* null, %struct.E** %8, align 8
  %9 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 0
  %10 = call %struct.C* @foo(%struct.C* noundef nonnull %1, %struct.E* noundef nonnull %9)
  %11 = getelementptr inbounds %struct.C, %struct.C* %1, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %.not = icmp eq i16 %12, 1
  br i1 %.not, label %13, label %16

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.C, %struct.C* %1, i64 0, i32 2
  %15 = load i16, i16* %14, align 2
  %.not1 = icmp eq i16 %15, 1
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %13, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.C, %struct.C* %1, i64 0, i32 0
  %19 = load %struct.E*, %struct.E** %18, align 8
  %20 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 1
  %.not2 = icmp eq %struct.E* %19, %20
  br i1 %.not2, label %22, label %21

21:                                               ; preds = %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %17
  %23 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 1, i32 1
  %24 = load %struct.E*, %struct.E** %23, align 8
  %25 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 0
  %.not3 = icmp eq %struct.E* %24, %25
  br i1 %.not3, label %27, label %26

26:                                               ; preds = %22
  call void @abort() #4
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %22
  %28 = getelementptr inbounds [2 x %struct.E], [2 x %struct.E]* %2, i64 0, i64 0, i32 1
  %29 = load %struct.E*, %struct.E** %28, align 8
  %.not4 = icmp eq %struct.E* %29, null
  br i1 %.not4, label %31, label %30

30:                                               ; preds = %27
  call void @abort() #4
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %27
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %30, %26, %21, %16
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
