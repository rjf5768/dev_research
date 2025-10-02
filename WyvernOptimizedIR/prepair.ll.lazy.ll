; ModuleID = './prepair.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/prepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }

@pnodeArray = external dso_local global %struct.pnode*, align 8
@numnodes = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @prepair(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %53, %1
  %.01 = phi i32 [ 1, %1 ], [ %54, %53 ]
  %.not = icmp sgt i32 %.01, %0
  br i1 %.not, label %55, label %3

3:                                                ; preds = %2
  %4 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds %struct.pnode, %struct.pnode* %4, i64 %5, i32 0
  store i32 0, i32* %6, align 8
  br label %7

7:                                                ; preds = %35, %3
  %.02 = phi i32 [ 1, %3 ], [ %36, %35 ]
  %8 = load i32, i32* @numnodes, align 4
  %9 = add nsw i32 %8, %0
  %.not3 = icmp sgt i32 %.02, %9
  br i1 %.not3, label %37, label %10

10:                                               ; preds = %7
  %11 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds %struct.pnode, %struct.pnode* %11, i64 %12, i32 1
  %14 = load %struct.nnode*, %struct.nnode** %13, align 8
  %15 = zext i32 %.02 to i64
  %16 = getelementptr inbounds %struct.nnode, %struct.nnode* %14, i64 %15, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.pnode, %struct.pnode* %17, i64 %18, i32 1
  %20 = load %struct.nnode*, %struct.nnode** %19, align 8
  %21 = zext i32 %.02 to i64
  %22 = getelementptr inbounds %struct.nnode, %struct.nnode* %20, i64 %21, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds %struct.pnode, %struct.pnode* %23, i64 %24, i32 1
  %26 = load %struct.nnode*, %struct.nnode** %25, align 8
  %27 = zext i32 %.02 to i64
  %28 = getelementptr inbounds %struct.nnode, %struct.nnode* %26, i64 %27, i32 2
  store i16 0, i16* %28, align 4
  %29 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds %struct.pnode, %struct.pnode* %29, i64 %30, i32 1
  %32 = load %struct.nnode*, %struct.nnode** %31, align 8
  %33 = zext i32 %.02 to i64
  %34 = getelementptr inbounds %struct.nnode, %struct.nnode* %32, i64 %33, i32 3
  store i16 0, i16* %34, align 2
  br label %35

35:                                               ; preds = %10
  %36 = add nuw nsw i32 %.02, 1
  br label %7, !llvm.loop !4

37:                                               ; preds = %7
  %38 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds %struct.pnode, %struct.pnode* %38, i64 %39, i32 2
  %41 = load %struct.list2*, %struct.list2** %40, align 8
  %.not4 = icmp eq %struct.list2* %41, null
  br i1 %.not4, label %52, label %42

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %47, %42
  %.0 = phi %struct.list2* [ %41, %42 ], [ %45, %47 ]
  %44 = getelementptr inbounds %struct.list2, %struct.list2* %.0, i64 0, i32 1
  %45 = load %struct.list2*, %struct.list2** %44, align 8
  %46 = bitcast %struct.list2* %.0 to i8*
  call void @free(i8* noundef %46) #2
  br label %47

47:                                               ; preds = %43
  %.not5 = icmp eq %struct.list2* %45, null
  br i1 %.not5, label %48, label %43, !llvm.loop !6

48:                                               ; preds = %47
  %49 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %50 = zext i32 %.01 to i64
  %51 = getelementptr inbounds %struct.pnode, %struct.pnode* %49, i64 %50, i32 2
  store %struct.list2* null, %struct.list2** %51, align 8
  br label %52

52:                                               ; preds = %48, %37
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !7

55:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
