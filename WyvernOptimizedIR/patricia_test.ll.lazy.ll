; ModuleID = './patricia_test.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/network-patricia/patricia_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.in_addr = type { i32 }
%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Found.\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"Found.\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca float, align 4
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* noundef %8) #7
  call void @exit(i32 noundef -1) #8
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8*, i8** %1, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8*, i8** %1, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %10
  %20 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #7
  %21 = bitcast i8* %20 to %struct.ptree*
  %.not = icmp eq i8* %20, null
  br i1 %.not, label %22, label %23

22:                                               ; preds = %19
  call void @perror(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #9
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %20, i8 0, i64 40, i1 false)
  %24 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %25 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %26 = bitcast %struct.ptree_mask** %25 to i8**
  store i8* %24, i8** %26, align 8
  %.not1 = icmp eq i8* %24, null
  br i1 %.not1, label %27, label %28

27:                                               ; preds = %23
  call void @perror(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #9
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %30 = bitcast %struct.ptree_mask** %29 to i8**
  %31 = load i8*, i8** %30, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %32 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 1
  %33 = load %struct.ptree_mask*, %struct.ptree_mask** %32, align 8
  %34 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %35 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %33, i64 0, i32 1
  store i8* %34, i8** %35, align 8
  %.not2 = icmp eq i8* %34, null
  br i1 %.not2, label %36, label %37

36:                                               ; preds = %28
  call void @perror(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #9
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %33, i64 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 2
  store i8 1, i8* %40, align 8
  %41 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 5
  %42 = bitcast %struct.ptree** %41 to i8**
  store i8* %20, i8** %42, align 8
  %43 = getelementptr inbounds %struct.ptree, %struct.ptree* %21, i64 0, i32 4
  %44 = bitcast %struct.ptree** %43 to i8**
  store i8* %20, i8** %44, align 8
  br label %45

45:                                               ; preds = %103, %37
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %47 = call i8* @fgets(i8* noundef nonnull %46, i32 noundef 128, %struct._IO_FILE* noundef nonnull %13) #7
  %.not3 = icmp eq i8* %47, null
  br i1 %.not3, label %104, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i64 0, i32 0
  %51 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %49, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), float* noundef nonnull %5, i32* noundef nonnull %50) #7
  %52 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #7
  %53 = bitcast i8* %52 to %struct.ptree*
  %.not4 = icmp eq i8* %52, null
  br i1 %.not4, label %54, label %55

54:                                               ; preds = %48
  call void @perror(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #9
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

55:                                               ; preds = %48
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %52, i8 0, i64 40, i1 false)
  %56 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %57 = getelementptr inbounds %struct.ptree, %struct.ptree* %53, i64 0, i32 1
  %58 = bitcast %struct.ptree_mask** %57 to i8**
  store i8* %56, i8** %58, align 8
  %.not5 = icmp eq i8* %56, null
  br i1 %.not5, label %59, label %60

59:                                               ; preds = %55
  call void @perror(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #9
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ptree, %struct.ptree* %53, i64 0, i32 1
  %62 = bitcast %struct.ptree_mask** %61 to i8**
  %63 = load i8*, i8** %62, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  %64 = getelementptr inbounds %struct.ptree, %struct.ptree* %53, i64 0, i32 1
  %65 = load %struct.ptree_mask*, %struct.ptree_mask** %64, align 8
  %66 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %67 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %65, i64 0, i32 1
  store i8* %66, i8** %67, align 8
  %.not6 = icmp eq i8* %66, null
  br i1 %.not6, label %68, label %69

68:                                               ; preds = %60
  call void @perror(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #9
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %65, i64 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8 0, i8* %71, align 1
  %72 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i64 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ptree, %struct.ptree* %53, i64 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = call i32 @htonl(i32 noundef -1) #10
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ptree, %struct.ptree* %53, i64 0, i32 1
  %79 = load %struct.ptree_mask*, %struct.ptree_mask** %78, align 8
  %80 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %79, i64 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i64 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  %84 = call %struct.ptree* @pat_search(i64 noundef %83, %struct.ptree* noundef nonnull %21) #7
  %85 = getelementptr inbounds %struct.ptree, %struct.ptree* %84, i64 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i64 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %69
  %92 = load float, float* %5, align 4
  %93 = fpext float %92 to double
  %94 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i64 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), double noundef %93, i32 noundef %95) #7
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0))
  br label %99

97:                                               ; preds = %69
  %98 = call %struct.ptree* @pat_insert(%struct.ptree* noundef nonnull %53, %struct.ptree* noundef nonnull %21) #7
  br label %99

99:                                               ; preds = %97, %91
  %.0 = phi %struct.ptree* [ %53, %91 ], [ %98, %97 ]
  %.not7 = icmp eq %struct.ptree* %.0, null
  br i1 %.not7, label %100, label %103

100:                                              ; preds = %99
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %101) #11
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

103:                                              ; preds = %99
  br label %45, !llvm.loop !4

104:                                              ; preds = %45
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %104, %100, %68, %59, %54, %36, %27, %22, %15, %7
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local void @perror(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @htonl(i32 noundef) #5

declare dso_local %struct.ptree* @pat_search(i64 noundef, %struct.ptree* noundef) #1

declare dso_local %struct.ptree* @pat_insert(%struct.ptree* noundef, %struct.ptree* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
