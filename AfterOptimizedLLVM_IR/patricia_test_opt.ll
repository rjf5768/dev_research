; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/network-patricia/patricia_test.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/network-patricia/patricia_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }
%struct.in_addr = type { i32 }
%struct.MyNode = type { i32, double }

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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ptree*, align 8
  %7 = alloca %struct.ptree*, align 8
  %8 = alloca %struct.ptree*, align 8
  %9 = alloca %struct.ptree_mask*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %13 = alloca %struct.in_addr, align 4
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 4294967295, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* noundef %21)
  call void @exit(i32 noundef -1) #6
  unreachable

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call noalias %struct._IO_FILE* @fopen(i8* noundef %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** %10, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* noundef %32)
  call void @exit(i32 noundef 1) #6
  unreachable

34:                                               ; preds = %23
  %35 = call noalias i8* @malloc(i64 noundef 40) #7
  %36 = bitcast i8* %35 to %struct.ptree*
  store %struct.ptree* %36, %struct.ptree** %6, align 8
  %37 = load %struct.ptree*, %struct.ptree** %6, align 8
  %38 = icmp ne %struct.ptree* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  call void @perror(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

40:                                               ; preds = %34
  %41 = load %struct.ptree*, %struct.ptree** %6, align 8
  %42 = bitcast %struct.ptree* %41 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %42, i8 0, i64 40, i1 false)
  %43 = call noalias i8* @malloc(i64 noundef 16) #7
  %44 = bitcast i8* %43 to %struct.ptree_mask*
  %45 = load %struct.ptree*, %struct.ptree** %6, align 8
  %46 = getelementptr inbounds %struct.ptree, %struct.ptree* %45, i32 0, i32 1
  store %struct.ptree_mask* %44, %struct.ptree_mask** %46, align 8
  %47 = load %struct.ptree*, %struct.ptree** %6, align 8
  %48 = getelementptr inbounds %struct.ptree, %struct.ptree* %47, i32 0, i32 1
  %49 = load %struct.ptree_mask*, %struct.ptree_mask** %48, align 8
  %50 = icmp ne %struct.ptree_mask* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  call void @perror(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

52:                                               ; preds = %40
  %53 = load %struct.ptree*, %struct.ptree** %6, align 8
  %54 = getelementptr inbounds %struct.ptree, %struct.ptree* %53, i32 0, i32 1
  %55 = load %struct.ptree_mask*, %struct.ptree_mask** %54, align 8
  %56 = bitcast %struct.ptree_mask* %55 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %56, i8 0, i64 16, i1 false)
  %57 = load %struct.ptree*, %struct.ptree** %6, align 8
  %58 = getelementptr inbounds %struct.ptree, %struct.ptree* %57, i32 0, i32 1
  %59 = load %struct.ptree_mask*, %struct.ptree_mask** %58, align 8
  store %struct.ptree_mask* %59, %struct.ptree_mask** %9, align 8
  %60 = call noalias i8* @malloc(i64 noundef 16) #7
  %61 = bitcast i8* %60 to %struct.MyNode*
  %62 = bitcast %struct.MyNode* %61 to i8*
  %63 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %64 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %66 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %52
  call void @perror(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

70:                                               ; preds = %52
  %71 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %72 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %73, i8 0, i64 1, i1 false)
  %74 = load %struct.ptree*, %struct.ptree** %6, align 8
  %75 = getelementptr inbounds %struct.ptree, %struct.ptree* %74, i32 0, i32 2
  store i8 1, i8* %75, align 8
  %76 = load %struct.ptree*, %struct.ptree** %6, align 8
  %77 = load %struct.ptree*, %struct.ptree** %6, align 8
  %78 = getelementptr inbounds %struct.ptree, %struct.ptree* %77, i32 0, i32 5
  store %struct.ptree* %76, %struct.ptree** %78, align 8
  %79 = load %struct.ptree*, %struct.ptree** %6, align 8
  %80 = getelementptr inbounds %struct.ptree, %struct.ptree* %79, i32 0, i32 4
  store %struct.ptree* %76, %struct.ptree** %80, align 8
  br label %81

81:                                               ; preds = %171, %70
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %84 = call i8* @fgets(i8* noundef %82, i32 noundef 128, %struct._IO_FILE* noundef %83)
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %172

86:                                               ; preds = %81
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %88 = bitcast %struct.in_addr* %13 to i32*
  %89 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %87, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), float* noundef %15, i32* noundef %88) #7
  %90 = call noalias i8* @malloc(i64 noundef 40) #7
  %91 = bitcast i8* %90 to %struct.ptree*
  store %struct.ptree* %91, %struct.ptree** %7, align 8
  %92 = load %struct.ptree*, %struct.ptree** %7, align 8
  %93 = icmp ne %struct.ptree* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  call void @perror(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

95:                                               ; preds = %86
  %96 = load %struct.ptree*, %struct.ptree** %7, align 8
  %97 = bitcast %struct.ptree* %96 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %97, i8 0, i64 40, i1 false)
  %98 = call noalias i8* @malloc(i64 noundef 16) #7
  %99 = bitcast i8* %98 to %struct.ptree_mask*
  %100 = load %struct.ptree*, %struct.ptree** %7, align 8
  %101 = getelementptr inbounds %struct.ptree, %struct.ptree* %100, i32 0, i32 1
  store %struct.ptree_mask* %99, %struct.ptree_mask** %101, align 8
  %102 = load %struct.ptree*, %struct.ptree** %7, align 8
  %103 = getelementptr inbounds %struct.ptree, %struct.ptree* %102, i32 0, i32 1
  %104 = load %struct.ptree_mask*, %struct.ptree_mask** %103, align 8
  %105 = icmp ne %struct.ptree_mask* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %95
  call void @perror(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

107:                                              ; preds = %95
  %108 = load %struct.ptree*, %struct.ptree** %7, align 8
  %109 = getelementptr inbounds %struct.ptree, %struct.ptree* %108, i32 0, i32 1
  %110 = load %struct.ptree_mask*, %struct.ptree_mask** %109, align 8
  %111 = bitcast %struct.ptree_mask* %110 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %111, i8 0, i64 16, i1 false)
  %112 = load %struct.ptree*, %struct.ptree** %7, align 8
  %113 = getelementptr inbounds %struct.ptree, %struct.ptree* %112, i32 0, i32 1
  %114 = load %struct.ptree_mask*, %struct.ptree_mask** %113, align 8
  store %struct.ptree_mask* %114, %struct.ptree_mask** %9, align 8
  %115 = call noalias i8* @malloc(i64 noundef 16) #7
  %116 = bitcast i8* %115 to %struct.MyNode*
  %117 = bitcast %struct.MyNode* %116 to i8*
  %118 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %119 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %121 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %107
  call void @perror(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

125:                                              ; preds = %107
  %126 = load %struct.ptree_mask*, %struct.ptree_mask** %9, align 8
  %127 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %128, i8 0, i64 1, i1 false)
  %129 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  %132 = load %struct.ptree*, %struct.ptree** %7, align 8
  %133 = getelementptr inbounds %struct.ptree, %struct.ptree* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load i64, i64* %14, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @htonl(i32 noundef %135) #8
  %137 = zext i32 %136 to i64
  %138 = load %struct.ptree*, %struct.ptree** %7, align 8
  %139 = getelementptr inbounds %struct.ptree, %struct.ptree* %138, i32 0, i32 1
  %140 = load %struct.ptree_mask*, %struct.ptree_mask** %139, align 8
  %141 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %140, i32 0, i32 0
  store i64 %137, i64* %141, align 8
  %142 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  %145 = load %struct.ptree*, %struct.ptree** %6, align 8
  %146 = call %struct.ptree* @pat_search(i64 noundef %144, %struct.ptree* noundef %145)
  store %struct.ptree* %146, %struct.ptree** %8, align 8
  %147 = load %struct.ptree*, %struct.ptree** %8, align 8
  %148 = getelementptr inbounds %struct.ptree, %struct.ptree* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  %153 = icmp eq i64 %149, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %125
  %155 = load float, float* %15, align 4
  %156 = fpext float %155 to double
  %157 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), double noundef %156, i32 noundef %158)
  %160 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %165

161:                                              ; preds = %125
  %162 = load %struct.ptree*, %struct.ptree** %7, align 8
  %163 = load %struct.ptree*, %struct.ptree** %6, align 8
  %164 = call %struct.ptree* @pat_insert(%struct.ptree* noundef %162, %struct.ptree* noundef %163)
  store %struct.ptree* %164, %struct.ptree** %7, align 8
  br label %165

165:                                              ; preds = %161, %154
  %166 = load %struct.ptree*, %struct.ptree** %7, align 8
  %167 = icmp ne %struct.ptree* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %169, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

171:                                              ; preds = %165
  br label %81, !llvm.loop !4

172:                                              ; preds = %81
  call void @exit(i32 noundef 0) #6
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local void @perror(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @htonl(i32 noundef) #5

declare dso_local %struct.ptree* @pat_search(i64 noundef, %struct.ptree* noundef) #1

declare dso_local %struct.ptree* @pat_insert(%struct.ptree* noundef, %struct.ptree* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
