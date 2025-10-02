; ModuleID = './prestrict.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/prestrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }

@pnodeArray = external dso_local global %struct.pnode*, align 8
@numnodes = external dso_local global i32, align 4
@pnodeAlength = external dso_local global i32, align 4
@gnodeArray = external dso_local global %struct.gnode**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @prestrict(i16* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca %struct.tnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i16, i16* %0, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %14 = load i32, i32* @numnodes, align 4
  %15 = sub nsw i32 %2, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pnode, %struct.pnode* %13, i64 %16, i32 1
  %18 = load %struct.nnode*, %struct.nnode** %17, align 8
  store %struct.tnode* null, %struct.tnode** %5, align 8
  br label %19

19:                                               ; preds = %33, %4
  %.03 = phi i32 [ 1, %4 ], [ %34, %33 ]
  %20 = load i32, i32* @numnodes, align 4
  %21 = load i32, i32* @pnodeAlength, align 4
  %22 = add nsw i32 %20, %21
  %.not = icmp sgt i32 %.03, %22
  br i1 %.not, label %35, label %23

23:                                               ; preds = %19
  %24 = icmp eq i32 %.03, %12
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  call void @tinsert(%struct.tnode** noundef nonnull %5, i32 noundef 0, i32 noundef %.03) #2
  %26 = sext i16 %11 to i64
  %27 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %26, i32 0
  store i32 0, i32* %27, align 4
  %28 = sext i16 %11 to i64
  %29 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %28, i32 3
  store i16 0, i16* %29, align 2
  br label %33

30:                                               ; preds = %23
  %31 = zext i32 %.03 to i64
  %32 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %31, i32 0
  store i32 1000000000, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = add nuw nsw i32 %.03, 1
  br label %19, !llvm.loop !4

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %93, %35
  call void @tpop(%struct.tnode** noundef nonnull %5, %struct.tnode** noundef nonnull %6, i32* noundef nonnull %7, i32* noundef nonnull %8) #2
  %37 = load %struct.tnode*, %struct.tnode** %6, align 8
  %38 = icmp eq %struct.tnode* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %94

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, %3
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %48, %43
  call void @tpop(%struct.tnode** noundef nonnull %5, %struct.tnode** noundef nonnull %6, i32* noundef nonnull %7, i32* noundef nonnull %8) #2
  %45 = load %struct.tnode*, %struct.tnode** %6, align 8
  %46 = icmp eq %struct.tnode* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %49

48:                                               ; preds = %44
  br label %44

49:                                               ; preds = %47
  br label %94

50:                                               ; preds = %40
  %51 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.gnode*, %struct.gnode** %51, i64 %53
  br label %55

55:                                               ; preds = %91, %50
  %.06.in = phi %struct.gnode** [ %54, %50 ], [ %92, %91 ]
  %.06 = load %struct.gnode*, %struct.gnode** %.06.in, align 8
  %.not7 = icmp eq %struct.gnode* %.06, null
  br i1 %.not7, label %93, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.gnode, %struct.gnode* %.06, i64 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.gnode, %struct.gnode* %.06, i64 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56
  br label %91

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.gnode, %struct.gnode* %.06, i64 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.gnode, %struct.gnode* %.06, i64 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %70, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, %67
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %65
  %77 = sext i32 %69 to i64
  %78 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %77, i32 0
  %79 = load i32, i32* %78, align 4
  call void @tdelete(%struct.tnode** noundef nonnull %5, i32 noundef %79, i32 noundef %69) #2
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, %67
  call void @tinsert(%struct.tnode** noundef nonnull %5, i32 noundef %81, i32 noundef %69) #2
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, %67
  %84 = sext i32 %69 to i64
  %85 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %84, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = trunc i32 %86 to i16
  %88 = sext i32 %69 to i64
  %89 = getelementptr inbounds %struct.nnode, %struct.nnode* %18, i64 %88, i32 3
  store i16 %87, i16* %89, align 2
  br label %90

90:                                               ; preds = %76, %65
  br label %91

91:                                               ; preds = %90, %64
  %92 = getelementptr inbounds %struct.gnode, %struct.gnode* %.06, i64 0, i32 7
  br label %55, !llvm.loop !6

93:                                               ; preds = %55
  br label %36

94:                                               ; preds = %49, %39
  br i1 %38, label %95, label %96

95:                                               ; preds = %94
  br label %125

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %122, %96
  %.04 = phi i32 [ 1, %96 ], [ %123, %122 ]
  %.02 = phi i32 [ 0, %96 ], [ %118, %122 ]
  %98 = icmp slt i32 %.04, %1
  br i1 %98, label %99, label %124

99:                                               ; preds = %97
  %100 = zext i32 %.04 to i64
  %101 = getelementptr inbounds i16, i16* %0, i64 %100
  %102 = load i16, i16* %101, align 2
  %103 = add nuw nsw i32 %.04, 1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i16, i16* %0, i64 %104
  %106 = load i16, i16* %105, align 2
  %107 = sext i16 %106 to i32
  %108 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %109 = sext i16 %102 to i64
  %110 = getelementptr inbounds %struct.gnode*, %struct.gnode** %108, i64 %109
  br label %111

111:                                              ; preds = %119, %99
  %.05.in = phi %struct.gnode** [ %110, %99 ], [ %120, %119 ]
  %.05 = load %struct.gnode*, %struct.gnode** %.05.in, align 8
  %112 = getelementptr inbounds %struct.gnode, %struct.gnode* %.05, i64 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, %107
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.gnode, %struct.gnode* %.05, i64 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %.02, %117
  br label %121

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.gnode, %struct.gnode* %.05, i64 0, i32 7
  br label %111

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121
  %123 = add nuw nsw i32 %.04, 1
  br label %97, !llvm.loop !7

124:                                              ; preds = %97
  br label %125

125:                                              ; preds = %124, %95
  %.0 = phi i32 [ -1, %95 ], [ %.02, %124 ]
  ret i32 %.0
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
