; ModuleID = './context.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/treecc/context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"YYNODESTATE\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._tagTreeCCContext* @TreeCCContextCreate(%struct.TreeCCInput* noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(8304) i8* @calloc(i64 noundef 1, i64 noundef 8304) #3
  %3 = bitcast i8* %2 to %struct._tagTreeCCContext*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* noundef %0) #3
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 2
  store %struct.TreeCCInput* %0, %struct.TreeCCInput** %7, align 8
  %8 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 8
  %9 = load i16, i16* %8, align 8
  %10 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 8
  %11 = and i16 %9, -8192
  %12 = or i16 %11, 2562
  store i16 %12, i16* %10, align 8
  %13 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 9
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 11
  store i8* null, i8** %15, align 8
  %16 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 13
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 14
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 12
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i64 0, i32 16
  store i8* null, i8** %19, align 8
  ret %struct._tagTreeCCContext* %3
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @TreeCCOutOfMemory(%struct.TreeCCInput* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCContextDestroy(%struct._tagTreeCCContext* noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 3
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %2, align 8
  br label %4

4:                                                ; preds = %5, %1
  %.0 = phi %struct._tagTreeCCStream* [ %3, %1 ], [ %7, %5 ]
  %.not = icmp eq %struct._tagTreeCCStream* %.0, null
  br i1 %.not, label %8, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %.0, i64 0, i32 10
  %7 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %6, align 8
  call void @TreeCCStreamDestroy(%struct._tagTreeCCStream* noundef nonnull %.0) #3
  br label %4, !llvm.loop !4

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %20, %8
  %.01 = phi i32 [ 0, %8 ], [ %21, %20 ]
  %10 = icmp ult i32 %.01, 512
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 0, i64 %12
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %13, align 8
  br label %15

15:                                               ; preds = %16, %11
  %.02 = phi %struct._tagTreeCCNode* [ %14, %11 ], [ %18, %16 ]
  %.not5 = icmp eq %struct._tagTreeCCNode* %.02, null
  br i1 %.not5, label %19, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %.02, i64 0, i32 12
  %18 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %17, align 8
  call void @TreeCCNodeFree(%struct._tagTreeCCNode* noundef nonnull %.02) #3
  br label %15, !llvm.loop !6

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19
  %21 = add i32 %.01, 1
  br label %9, !llvm.loop !7

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %34, %22
  %.1 = phi i32 [ 0, %22 ], [ %35, %34 ]
  %24 = icmp ult i32 %.1, 512
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  %26 = zext i32 %.1 to i64
  %27 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 1, i64 %26
  %28 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %27, align 8
  br label %29

29:                                               ; preds = %30, %25
  %.03 = phi %struct._tagTreeCCOperation* [ %28, %25 ], [ %32, %30 ]
  %.not4 = icmp eq %struct._tagTreeCCOperation* %.03, null
  br i1 %.not4, label %33, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %.03, i64 0, i32 9
  %32 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %31, align 8
  call void @TreeCCOperationFree(%struct._tagTreeCCOperation* noundef nonnull %.03) #3
  br label %29, !llvm.loop !8

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  %35 = add i32 %.1, 1
  br label %23, !llvm.loop !9

36:                                               ; preds = %23
  %37 = bitcast %struct._tagTreeCCContext* %0 to i8*
  call void @free(i8* noundef %37) #3
  ret void
}

declare dso_local void @TreeCCStreamDestroy(%struct._tagTreeCCStream* noundef) #2

declare dso_local void @TreeCCNodeFree(%struct._tagTreeCCNode* noundef) #2

declare dso_local void @TreeCCOperationFree(%struct._tagTreeCCOperation* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
