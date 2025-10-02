; ModuleID = './bitfield.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/bitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BitfieldStruct = type { i32, i8* }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BitfieldStruct* @Bitfield_new(i32 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #5
  %3 = bitcast i8* %2 to %struct.BitfieldStruct*
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %1
  br label %14

5:                                                ; preds = %1
  %6 = add nsw i32 %0, 7
  %7 = sdiv i32 %6, 8
  %8 = sext i32 %7 to i64
  %9 = call noalias i8* @calloc(i64 noundef %8, i64 noundef 1) #5
  %10 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %3, i64 0, i32 1
  store i8* %9, i8** %10, align 8
  %.not1 = icmp eq i8* %9, null
  br i1 %.not1, label %11, label %12

11:                                               ; preds = %5
  call void @free(i8* noundef %2) #5
  br label %14

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %3, i64 0, i32 0
  store i32 %0, i32* %13, align 8
  br label %14

14:                                               ; preds = %12, %11, %4
  %.0 = phi %struct.BitfieldStruct* [ %3, %12 ], [ null, %11 ], [ null, %4 ]
  ret %struct.BitfieldStruct* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bitfield_delete(%struct.BitfieldStruct* noundef %0) #0 {
  %.not = icmp eq %struct.BitfieldStruct* %0, null
  br i1 %.not, label %10, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %0, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  %.not1 = icmp eq i8* %4, null
  br i1 %.not1, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %7) #5
  br label %8

8:                                                ; preds = %5, %2
  %9 = bitcast %struct.BitfieldStruct* %0 to i8*
  call void @free(i8* noundef %9) #5
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* nocapture noundef readonly %0, %struct.NodeStruct* nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = ashr i32 %4, 3
  %6 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %1, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 7
  %14 = shl i32 1, %13
  %15 = sext i8 %10 to i32
  %sext = shl nuw i32 %14, 24
  %16 = ashr exact i32 %sext, 24
  %17 = and i32 %16, %15
  %18 = icmp ne i32 %17, 0
  %19 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %0, i64 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = sext i32 %5 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = trunc i32 %14 to i8
  %25 = or i8 %23, %24
  store i8 %25, i8* %22, align 1
  ret i1 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BitfieldStruct* @Bitfield_copy(%struct.BitfieldStruct* noundef readonly %0) #0 {
  %.not = icmp eq %struct.BitfieldStruct* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %27

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %5)
  %.not2 = icmp eq %struct.BitfieldStruct* %6, null
  br i1 %.not2, label %26, label %7

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %23, %7
  %.01 = phi i32 [ 0, %7 ], [ %24, %23 ]
  %9 = shl nsw i32 %.01, 3
  %10 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %0, i64 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %6, i64 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = zext i32 %.01 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %18, i8* %22, align 1
  br label %23

23:                                               ; preds = %13
  %24 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !4

25:                                               ; preds = %8
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %25, %2
  %.0 = phi %struct.BitfieldStruct* [ %6, %25 ], [ null, %26 ], [ null, %2 ]
  ret %struct.BitfieldStruct* %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @Bitfield_clear(%struct.BitfieldStruct* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = add nsw i32 %3, 7
  %5 = sdiv i32 %4, 8
  %6 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = sext i32 %5 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 %8, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
