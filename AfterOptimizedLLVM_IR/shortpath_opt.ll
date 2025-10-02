; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/shortpath.c'
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
  %2 = alloca i32, align 4
  %3 = alloca %struct.tnode*, align 8
  %4 = alloca %struct.tnode*, align 8
  %5 = alloca %struct.nnode*, align 8
  %6 = alloca %struct.gnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %14

14:                                               ; preds = %124, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %127

18:                                               ; preds = %14
  %19 = load i32, i32* @numnodes, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pnode, %struct.pnode* %22, i64 %24
  %26 = getelementptr inbounds %struct.pnode, %struct.pnode* %25, i32 0, i32 1
  %27 = load %struct.nnode*, %struct.nnode** %26, align 8
  store %struct.nnode* %27, %struct.nnode** %5, align 8
  store %struct.tnode* null, %struct.tnode** %3, align 8
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %56, %18
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @numnodes, align 4
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  call void @tinsert(%struct.tnode** noundef %3, i32 noundef 0, i32 noundef %39)
  %40 = load %struct.nnode*, %struct.nnode** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nnode, %struct.nnode* %40, i64 %42
  %44 = getelementptr inbounds %struct.nnode, %struct.nnode* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.nnode*, %struct.nnode** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.nnode, %struct.nnode* %45, i64 %47
  %49 = getelementptr inbounds %struct.nnode, %struct.nnode* %48, i32 0, i32 2
  store i16 0, i16* %49, align 4
  br label %56

50:                                               ; preds = %34
  %51 = load %struct.nnode*, %struct.nnode** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nnode, %struct.nnode* %51, i64 %53
  %55 = getelementptr inbounds %struct.nnode, %struct.nnode* %54, i32 0, i32 1
  store i32 1000000000, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %38
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %28, !llvm.loop !4

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %122, %59
  call void @tpop(%struct.tnode** noundef %3, %struct.tnode** noundef %4, i32* noundef %11, i32* noundef %12)
  %61 = load %struct.tnode*, %struct.tnode** %4, align 8
  %62 = icmp eq %struct.tnode* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %123

64:                                               ; preds = %60
  %65 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.gnode*, %struct.gnode** %65, i64 %67
  %69 = load %struct.gnode*, %struct.gnode** %68, align 8
  store %struct.gnode* %69, %struct.gnode** %6, align 8
  br label %70

70:                                               ; preds = %118, %64
  %71 = load %struct.gnode*, %struct.gnode** %6, align 8
  %72 = icmp ne %struct.gnode* %71, null
  br i1 %72, label %73, label %122

73:                                               ; preds = %70
  %74 = load %struct.gnode*, %struct.gnode** %6, align 8
  %75 = getelementptr inbounds %struct.gnode, %struct.gnode* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %13, align 4
  %77 = load %struct.gnode*, %struct.gnode** %6, align 8
  %78 = getelementptr inbounds %struct.gnode, %struct.gnode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %10, align 4
  %80 = load %struct.nnode*, %struct.nnode** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.nnode, %struct.nnode* %80, i64 %82
  %84 = getelementptr inbounds %struct.nnode, %struct.nnode* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %73
  %91 = load %struct.nnode*, %struct.nnode** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.nnode, %struct.nnode* %91, i64 %93
  %95 = getelementptr inbounds %struct.nnode, %struct.nnode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  call void @tdelete(%struct.tnode** noundef %3, i32 noundef %96, i32 noundef %97)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %10, align 4
  call void @tinsert(%struct.tnode** noundef %3, i32 noundef %100, i32 noundef %101)
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %102, %103
  %105 = load %struct.nnode*, %struct.nnode** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.nnode, %struct.nnode* %105, i64 %107
  %109 = getelementptr inbounds %struct.nnode, %struct.nnode* %108, i32 0, i32 1
  store i32 %104, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  %111 = trunc i32 %110 to i16
  %112 = load %struct.nnode*, %struct.nnode** %5, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.nnode, %struct.nnode* %112, i64 %114
  %116 = getelementptr inbounds %struct.nnode, %struct.nnode* %115, i32 0, i32 2
  store i16 %111, i16* %116, align 4
  br label %117

117:                                              ; preds = %90, %73
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.gnode*, %struct.gnode** %6, align 8
  %120 = getelementptr inbounds %struct.gnode, %struct.gnode* %119, i32 0, i32 7
  %121 = load %struct.gnode*, %struct.gnode** %120, align 8
  store %struct.gnode* %121, %struct.gnode** %6, align 8
  br label %70, !llvm.loop !6

122:                                              ; preds = %70
  br label %60

123:                                              ; preds = %63
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %14, !llvm.loop !7

127:                                              ; preds = %14
  ret void
}

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #1

declare dso_local void @tdelete(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
