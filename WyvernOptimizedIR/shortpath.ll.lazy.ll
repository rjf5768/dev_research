; ModuleID = './shortpath.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/shortpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }

@numnodes = external dso_local global i32, align 4
@pnodeArray = external dso_local global %struct.pnode*, align 8
@gnodeArray = external dso_local global %struct.gnode**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @shortpath(i32 noundef %0) #0 {
  %2 = alloca %struct.tnode*, align 8
  %3 = alloca %struct.tnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  br label %6

6:                                                ; preds = %70, %1
  %.01 = phi i32 [ 1, %1 ], [ %71, %70 ]
  %.not = icmp sgt i32 %.01, %0
  br i1 %.not, label %72, label %7

7:                                                ; preds = %6
  %8 = load i32, i32* @numnodes, align 4
  %9 = add nsw i32 %8, %.01
  %10 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds %struct.pnode, %struct.pnode* %10, i64 %11, i32 1
  %13 = load %struct.nnode*, %struct.nnode** %12, align 8
  store %struct.tnode* null, %struct.tnode** %2, align 8
  br label %14

14:                                               ; preds = %27, %7
  %.0 = phi i32 [ 1, %7 ], [ %28, %27 ]
  %15 = load i32, i32* @numnodes, align 4
  %16 = add nsw i32 %15, %0
  %.not3 = icmp sgt i32 %.0, %16
  br i1 %.not3, label %29, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %.0, %9
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  call void @tinsert(%struct.tnode** noundef nonnull %2, i32 noundef 0, i32 noundef %.0) #2
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds %struct.nnode, %struct.nnode* %13, i64 %20, i32 1
  store i32 0, i32* %21, align 4
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds %struct.nnode, %struct.nnode* %13, i64 %22, i32 2
  store i16 0, i16* %23, align 4
  br label %27

24:                                               ; preds = %17
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds %struct.nnode, %struct.nnode* %13, i64 %25, i32 1
  store i32 1000000000, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = add nuw nsw i32 %.0, 1
  br label %14, !llvm.loop !4

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %68, %29
  call void @tpop(%struct.tnode** noundef nonnull %2, %struct.tnode** noundef nonnull %3, i32* noundef nonnull %4, i32* noundef nonnull %5) #2
  %31 = load %struct.tnode*, %struct.tnode** %3, align 8
  %32 = icmp eq %struct.tnode* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %69

34:                                               ; preds = %30
  %35 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.gnode*, %struct.gnode** %35, i64 %37
  br label %39

39:                                               ; preds = %66, %34
  %.02.in = phi %struct.gnode** [ %38, %34 ], [ %67, %66 ]
  %.02 = load %struct.gnode*, %struct.gnode** %.02.in, align 8
  %.not4 = icmp eq %struct.gnode* %.02, null
  br i1 %.not4, label %68, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.gnode, %struct.gnode* %.02, i64 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.gnode, %struct.gnode* %.02, i64 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nnode, %struct.nnode* %13, i64 %45, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, %42
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %40
  %52 = sext i32 %44 to i64
  %53 = getelementptr inbounds %struct.nnode, %struct.nnode* %13, i64 %52, i32 1
  %54 = load i32, i32* %53, align 4
  call void @tdelete(%struct.tnode** noundef nonnull %2, i32 noundef %54, i32 noundef %44) #2
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, %42
  call void @tinsert(%struct.tnode** noundef nonnull %2, i32 noundef %56, i32 noundef %44) #2
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, %42
  %59 = sext i32 %44 to i64
  %60 = getelementptr inbounds %struct.nnode, %struct.nnode* %13, i64 %59, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = trunc i32 %61 to i16
  %63 = sext i32 %44 to i64
  %64 = getelementptr inbounds %struct.nnode, %struct.nnode* %13, i64 %63, i32 2
  store i16 %62, i16* %64, align 4
  br label %65

65:                                               ; preds = %51, %40
  br label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.gnode, %struct.gnode* %.02, i64 0, i32 7
  br label %39, !llvm.loop !6

68:                                               ; preds = %39
  br label %30

69:                                               ; preds = %33
  br label %70

70:                                               ; preds = %69
  %71 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !7

72:                                               ; preds = %6
  ret void
}

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #1

declare dso_local void @tdelete(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
