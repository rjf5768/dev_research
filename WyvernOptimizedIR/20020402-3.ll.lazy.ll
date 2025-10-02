; ModuleID = './20020402-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020402-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockvector = type { i32, [2 x %struct.block*] }
%struct.block = type { i64, i64, %struct.symbol*, %struct.block*, i8, i32, [1 x %struct.symbol] }
%struct.symbol = type { i32, i8* }
%struct.symtab = type { %struct.blockvector* }

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.blockvector* @blockvector_for_pc_sect(i64 noundef %0, %struct.symtab* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.symtab, %struct.symtab* %1, i64 0, i32 0
  %4 = load %struct.blockvector*, %struct.blockvector** %3, align 8
  %5 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %4, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  br label %7

7:                                                ; preds = %24, %2
  %.02 = phi i32 [ 0, %2 ], [ %.13, %24 ]
  %.01 = phi i32 [ %6, %2 ], [ %.1, %24 ]
  %8 = sub nsw i32 %.01, %.02
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = sub nsw i32 %.01, %.02
  %12 = add nsw i32 %11, 1
  %13 = ashr i32 %12, 1
  %14 = add nsw i32 %.02, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %4, i64 0, i32 1, i64 %15
  %17 = load %struct.block*, %struct.block** %16, align 8
  %18 = getelementptr inbounds %struct.block, %struct.block* %17, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %.not = icmp ugt i64 %19, %0
  br i1 %.not, label %22, label %20

20:                                               ; preds = %10
  %21 = add nsw i32 %.02, %13
  br label %24

22:                                               ; preds = %10
  %23 = add nsw i32 %.02, %13
  br label %24

24:                                               ; preds = %22, %20
  %.13 = phi i32 [ %21, %20 ], [ %.02, %22 ]
  %.1 = phi i32 [ %.01, %20 ], [ %23, %22 ]
  br label %7, !llvm.loop !4

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %36, %25
  %.2 = phi i32 [ %.02, %25 ], [ %37, %36 ]
  %27 = icmp sgt i32 %.2, -1
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = sext i32 %.2 to i64
  %30 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %4, i64 0, i32 1, i64 %29
  %31 = load %struct.block*, %struct.block** %30, align 8
  %32 = getelementptr inbounds %struct.block, %struct.block* %31, i64 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %33, %0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %39

36:                                               ; preds = %28
  %37 = add nsw i32 %.2, -1
  br label %26, !llvm.loop !6

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %35
  %.0 = phi %struct.blockvector* [ %4, %35 ], [ null, %38 ]
  ret %struct.blockvector* %.0
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.block, align 8
  %2 = alloca %struct.block, align 8
  %3 = alloca %struct.blockvector, align 8
  %4 = alloca %struct.symtab, align 8
  %5 = bitcast %struct.block* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %6 = getelementptr inbounds %struct.block, %struct.block* %1, i64 0, i32 1
  store i64 65536, i64* %6, align 8
  %7 = getelementptr inbounds %struct.block, %struct.block* %1, i64 0, i32 4
  store i8 1, i8* %7, align 8
  %8 = getelementptr inbounds %struct.block, %struct.block* %1, i64 0, i32 5
  store i32 20, i32* %8, align 4
  %9 = bitcast %struct.block* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  %10 = getelementptr inbounds %struct.block, %struct.block* %2, i64 0, i32 0
  store i64 65536, i64* %10, align 8
  %11 = getelementptr inbounds %struct.block, %struct.block* %2, i64 0, i32 1
  store i64 131072, i64* %11, align 8
  %12 = getelementptr inbounds %struct.block, %struct.block* %2, i64 0, i32 4
  store i8 1, i8* %12, align 8
  %13 = getelementptr inbounds %struct.block, %struct.block* %2, i64 0, i32 5
  store i32 20, i32* %13, align 4
  %14 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %3, i64 0, i32 0
  store i32 2, i32* %14, align 8
  %15 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %3, i64 0, i32 1, i64 0
  store %struct.block* %1, %struct.block** %15, align 8
  %16 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %3, i64 0, i32 1, i64 1
  store %struct.block* %2, %struct.block** %16, align 8
  %17 = getelementptr inbounds %struct.symtab, %struct.symtab* %4, i64 0, i32 0
  store %struct.blockvector* %3, %struct.blockvector** %17, align 8
  %18 = call %struct.blockvector* @blockvector_for_pc_sect(i64 noundef 1280, %struct.symtab* noundef nonnull %4)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
