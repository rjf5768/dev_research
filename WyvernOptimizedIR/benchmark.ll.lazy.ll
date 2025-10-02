; ModuleID = './benchmark.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/01-qbsort/benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.LinkList = type { i32, %struct.LinkList* }
%struct.List = type { i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"\0AList read (reverse order): \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"\0ABubbleSort: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0AQuickSort:  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Comma expected in list number %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Last list read\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Program Error: Unrecognized errorcode from ReadList\0A\00", align 1
@str = private unnamed_addr constant [15 x i8] c"Last list read\00", align 1
@str.1 = private unnamed_addr constant [52 x i8] c"Program Error: Unrecognized errorcode from ReadList\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @LessThan(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.LinkList*, align 8
  %4 = alloca %struct.List*, align 8
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @strtol(i8* nocapture noundef %8, i8** noundef null, i32 noundef 0) #7
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %.0 = phi i32 [ %10, %6 ], [ 0, %2 ]
  br label %12

12:                                               ; preds = %49, %11
  %.01 = phi i32 [ 1, %11 ], [ %71, %49 ]
  %.1 = phi i32 [ %.0, %11 ], [ %.2, %49 ]
  %13 = call i32 @ReadList(%struct.LinkList** noundef nonnull %3, %struct.List** noundef nonnull %4) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %12
  %16 = load %struct.LinkList*, %struct.LinkList** %3, align 8
  %17 = load %struct.List*, %struct.List** %4, align 8
  %18 = getelementptr inbounds %struct.List, %struct.List* %17, i64 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %struct.List, %struct.List* %17, i64 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = call noalias i8* @malloc(i64 noundef %23) #7
  %25 = load %struct.List*, %struct.List** %4, align 8
  %26 = getelementptr inbounds %struct.List, %struct.List* %25, i64 0, i32 1
  %27 = bitcast i32** %26 to i8**
  store i8* %24, i8** %27, align 8
  %28 = bitcast i32* %19 to i8*
  %29 = getelementptr inbounds %struct.List, %struct.List* %25, i64 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %28, i64 %32, i1 false)
  br label %33

33:                                               ; preds = %47, %15
  %.2 = phi i32 [ %.1, %15 ], [ %48, %47 ]
  %34 = icmp sgt i32 %.2, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %33
  %36 = load %struct.List*, %struct.List** %4, align 8
  %37 = call %struct.List* @BubbleSort(%struct.List* noundef %36, i32 (i32, i32)* noundef nonnull @LessThan) #7
  store %struct.List* %37, %struct.List** %4, align 8
  %38 = getelementptr inbounds %struct.List, %struct.List* %37, i64 0, i32 1
  %39 = bitcast i32** %38 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i32* %19 to i8*
  %42 = getelementptr inbounds %struct.List, %struct.List* %37, i64 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 %45, i1 false)
  %46 = call %struct.LinkList* @QuickSort(%struct.LinkList* noundef %16, i32 (i32, i32)* noundef nonnull @LessThan) #7
  store %struct.LinkList* %46, %struct.LinkList** %3, align 8
  call void @FreeLinkList(%struct.LinkList* noundef %46) #7
  br label %47

47:                                               ; preds = %35
  %48 = add nsw i32 %.2, -1
  br label %33, !llvm.loop !4

49:                                               ; preds = %33
  %50 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #7
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %52 = call i32 @fflush(%struct._IO_FILE* noundef %51) #7
  %53 = load %struct.List*, %struct.List** %4, align 8
  call void @PrintList(%struct.List* noundef %53) #7
  %54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #7
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = call i32 @fflush(%struct._IO_FILE* noundef %55) #7
  %57 = load %struct.List*, %struct.List** %4, align 8
  %58 = call %struct.List* @BubbleSort(%struct.List* noundef %57, i32 (i32, i32)* noundef nonnull @LessThan) #7
  store %struct.List* %58, %struct.List** %4, align 8
  call void @PrintList(%struct.List* noundef %58) #7
  %59 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #7
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %61 = call i32 @fflush(%struct._IO_FILE* noundef %60) #7
  %62 = call %struct.LinkList* @QuickSort(%struct.LinkList* noundef %16, i32 (i32, i32)* noundef nonnull @LessThan) #7
  store %struct.LinkList* %62, %struct.LinkList** %3, align 8
  call void @PrintLinkList(%struct.LinkList* noundef %62) #7
  %putchar = call i32 @putchar(i32 10)
  %63 = load %struct.LinkList*, %struct.LinkList** %3, align 8
  call void @FreeLinkList(%struct.LinkList* noundef %63) #7
  call void @FreeLinkList(%struct.LinkList* noundef %16) #7
  %64 = load %struct.List*, %struct.List** %4, align 8
  %65 = getelementptr inbounds %struct.List, %struct.List* %64, i64 0, i32 1
  %66 = bitcast i32** %65 to i8**
  %67 = load i8*, i8** %66, align 8
  call void @free(i8* noundef %67) #7
  %68 = bitcast %struct.List** %4 to i8**
  %69 = load i8*, i8** %68, align 8
  call void @free(i8* noundef %69) #7
  %70 = bitcast i32* %19 to i8*
  call void @free(i8* noundef %70) #7
  %71 = add nuw nsw i32 %.01, 1
  br label %12, !llvm.loop !6

72:                                               ; preds = %12
  switch i32 %13, label %76 [
    i32 42, label %73
    i32 7, label %75
  ]

73:                                               ; preds = %72
  %74 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.01) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

75:                                               ; preds = %72
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str, i64 0, i64 0))
  br label %77

76:                                               ; preds = %72
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %75
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %77, %76, %73
  unreachable
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #2

declare dso_local i32 @ReadList(%struct.LinkList** noundef, %struct.List** noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local %struct.List* @BubbleSort(%struct.List* noundef, i32 (i32, i32)* noundef) #3

declare dso_local %struct.LinkList* @QuickSort(%struct.LinkList* noundef, i32 (i32, i32)* noundef) #3

declare dso_local void @FreeLinkList(%struct.LinkList* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

declare dso_local void @PrintList(%struct.List* noundef) #3

declare dso_local void @PrintLinkList(%struct.LinkList* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
