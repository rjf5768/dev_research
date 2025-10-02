; ModuleID = './skeleton.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/treecc/skeleton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [55 x i8] c"treecc: internal error - could not find skeleton \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"YYNODESTATE\00", align 1
@TreeCCSkelFiles = external dso_local constant [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* nocapture noundef readonly %0, %struct._tagTreeCCStream* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca [8192 x i8], align 16
  %6 = call i8* @FindSkeletonString(i8* noundef %2)
  store i8* %6, i8** %4, align 8
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %7, label %10

7:                                                ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* noundef %2) #6
  call void @exit(i32 noundef 1) #7
  unreachable

10:                                               ; preds = %3
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* noundef %1, i64 noundef 1, i8* noundef %2) #8
  br label %11

11:                                               ; preds = %79, %10
  %12 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %13 = call i32 @ReadSkeletonLine(i8* noundef nonnull %12, i32 noundef 8192, i8** noundef nonnull %4)
  %.not4 = icmp eq i32 %13, 0
  br i1 %.not4, label %80, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %16 = call i8* @strchr(i8* noundef nonnull %15, i32 noundef 89) #9
  %.not5 = icmp eq i8* %16, null
  br i1 %.not5, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %19 = call i8* @strchr(i8* noundef nonnull %18, i32 noundef 121) #9
  %.not6 = icmp eq i8* %19, null
  br i1 %.not6, label %77, label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %70, %20
  %.01 = phi i32 [ 0, %20 ], [ %.23, %70 ]
  %.0 = phi i32 [ 0, %20 ], [ %.2, %70 ]
  %22 = sext i32 %.01 to i64
  %23 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %.not7 = icmp eq i8 %24, 0
  br i1 %.not7, label %71, label %25

25:                                               ; preds = %21
  %26 = sext i32 %.01 to i64
  %27 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = icmp eq i8 %28, 89
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = sext i32 %.01 to i64
  %32 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %31
  %33 = call i32 @strncmp(i8* noundef nonnull %32, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 noundef 11) #9
  %.not8 = icmp eq i32 %33, 0
  br i1 %.not8, label %34, label %45

34:                                               ; preds = %30
  %35 = sext i32 %.01 to i64
  %36 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = icmp slt i32 %.0, %.01
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = sext i32 %.0 to i64
  %40 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %39
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %1, i8* noundef nonnull %40) #8
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 10
  %43 = load i8*, i8** %42, align 8
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %1, i8* noundef %43) #8
  %44 = add nsw i32 %.01, 11
  br label %70

45:                                               ; preds = %30, %25
  %46 = sext i32 %.01 to i64
  %47 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 121
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = add nsw i32 %.01, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 121
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = sext i32 %.01 to i64
  %58 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %57
  store i8 0, i8* %58, align 1
  %59 = icmp slt i32 %.0, %.01
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = sext i32 %.0 to i64
  %62 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %61
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %1, i8* noundef nonnull %62) #8
  br label %63

63:                                               ; preds = %60, %56
  %64 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 9
  %65 = load i8*, i8** %64, align 8
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %1, i8* noundef %65) #8
  %66 = add nsw i32 %.01, 2
  br label %69

67:                                               ; preds = %50, %45
  %68 = add nsw i32 %.01, 1
  br label %69

69:                                               ; preds = %67, %63
  %.12 = phi i32 [ %66, %63 ], [ %68, %67 ]
  %.1 = phi i32 [ %66, %63 ], [ %.0, %67 ]
  br label %70

70:                                               ; preds = %69, %41
  %.23 = phi i32 [ %.12, %69 ], [ %44, %41 ]
  %.2 = phi i32 [ %.1, %69 ], [ %44, %41 ]
  br label %21, !llvm.loop !4

71:                                               ; preds = %21
  %72 = icmp slt i32 %.0, %.01
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = sext i32 %.0 to i64
  %75 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %74
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %1, i8* noundef nonnull %75) #8
  br label %76

76:                                               ; preds = %73, %71
  br label %79

77:                                               ; preds = %17
  %78 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %1, i8* noundef nonnull %78) #8
  br label %79

79:                                               ; preds = %77, %76
  br label %11, !llvm.loop !6

80:                                               ; preds = %11
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* noundef %1) #8
  ret void
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal i8* @FindSkeletonString(i8* noundef readonly %0) #1 {
  br label %2

2:                                                ; preds = %10, %1
  %.01 = phi i8** [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @TreeCCSkelFiles, i64 0, i64 0), %1 ], [ %11, %10 ]
  %3 = load i8*, i8** %.01, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %12, label %4

4:                                                ; preds = %2
  %5 = load i8*, i8** %.01, align 8
  %6 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) %0) #9
  %.not3 = icmp eq i32 %6, 0
  br i1 %.not3, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8*, i8** %.01, i64 1
  %9 = load i8*, i8** %8, align 8
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8*, i8** %.01, i64 2
  br label %2, !llvm.loop !7

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %7
  %.0 = phi i8* [ %9, %7 ], [ null, %12 ]
  ret i8* %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @TreeCCStreamLine(%struct._tagTreeCCStream* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @ReadSkeletonLine(i8* nocapture noundef writeonly %0, i32 noundef %1, i8** nocapture noundef %2) #4 {
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %32

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %22, %8
  %.04 = phi i8* [ %4, %8 ], [ %23, %22 ]
  %.02 = phi i32 [ %1, %8 ], [ %.13, %22 ]
  %.01 = phi i8* [ %0, %8 ], [ %.1, %22 ]
  %10 = load i8, i8* %.04, align 1
  %.not = icmp eq i8 %10, 0
  br i1 %.not, label %14, label %11

11:                                               ; preds = %9
  %12 = load i8, i8* %.04, align 1
  %13 = icmp ne i8 %12, 10
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i1 [ false, %9 ], [ %13, %11 ]
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = icmp sgt i32 %.02, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load i8, i8* %.04, align 1
  %20 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %19, i8* %.01, align 1
  %21 = add nsw i32 %.02, -1
  br label %22

22:                                               ; preds = %18, %16
  %.13 = phi i32 [ %21, %18 ], [ %.02, %16 ]
  %.1 = phi i8* [ %20, %18 ], [ %.01, %16 ]
  %23 = getelementptr inbounds i8, i8* %.04, i64 1
  br label %9, !llvm.loop !8

24:                                               ; preds = %14
  %25 = load i8, i8* %.04, align 1
  %26 = icmp eq i8 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, i8* %.04, i64 1
  %29 = load i8, i8* %.04, align 1
  %30 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %29, i8* %.01, align 1
  br label %31

31:                                               ; preds = %27, %24
  %.15 = phi i8* [ %28, %27 ], [ %.04, %24 ]
  %.2 = phi i8* [ %30, %27 ], [ %.01, %24 ]
  store i8 0, i8* %.2, align 1
  store i8* %.15, i8** %2, align 8
  br label %32

32:                                               ; preds = %31, %7
  %.0 = phi i32 [ 0, %7 ], [ 1, %31 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #5

declare dso_local void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef, i8* noundef) #2

declare dso_local void @TreeCCStreamFixLine(%struct._tagTreeCCStream* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

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
