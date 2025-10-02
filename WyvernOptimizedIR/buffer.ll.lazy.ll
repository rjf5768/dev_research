; ModuleID = './buffer.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@MOD_REC_BUF = dso_local global %struct.BUFFER_TYPE zeroinitializer, align 8
@ERROR_REC_BUF = dso_local global %struct.BUFFER_TYPE { %struct.BUFFER* null, %struct.BUFFER* null, i32 1 }, align 8
@.str = private unnamed_addr constant [7 x i8] c"eERROR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @OUTPUT_BUFFER(%struct.BUFFER_TYPE* nocapture noundef %0, %struct._IO_FILE* noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %32, %3
  %5 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 0
  %6 = load %struct.BUFFER*, %struct.BUFFER** %5, align 8
  %.not = icmp eq %struct.BUFFER* %6, null
  br i1 %.not, label %40, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 0
  %9 = load %struct.BUFFER*, %struct.BUFFER** %8, align 8
  %10 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %9, i64 0, i32 1
  %11 = load %struct.BUFFER*, %struct.BUFFER** %10, align 8
  %12 = icmp eq i32 %2, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 0
  %15 = load %struct.BUFFER*, %struct.BUFFER** %14, align 8
  %16 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %15, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strncmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %17, i64 noundef 6) #4
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %19, label %26

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 0
  %21 = load %struct.BUFFER*, %struct.BUFFER** %20, align 8
  %22 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %21, i64 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %24) #5
  br label %32

26:                                               ; preds = %13, %7
  %27 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 0
  %28 = load %struct.BUFFER*, %struct.BUFFER** %27, align 8
  %29 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %28, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %30) #5
  br label %32

32:                                               ; preds = %26, %19
  %33 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 0
  %34 = load %struct.BUFFER*, %struct.BUFFER** %33, align 8
  %35 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %34, i64 0, i32 0
  %36 = load i8*, i8** %35, align 8
  call void @free(i8* noundef %36) #5
  %37 = bitcast %struct.BUFFER_TYPE* %0 to i8**
  %38 = load i8*, i8** %37, align 8
  call void @free(i8* noundef %38) #5
  %39 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 0
  store %struct.BUFFER* %11, %struct.BUFFER** %39, align 8
  br label %4, !llvm.loop !4

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 1
  store %struct.BUFFER* null, %struct.BUFFER** %41, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @ADD_TO_END_OF_BUFFER(%struct.BUFFER_TYPE* nocapture noundef %0, i8* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 0
  %4 = load %struct.BUFFER*, %struct.BUFFER** %3, align 8
  %5 = icmp eq %struct.BUFFER* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #5
  %8 = bitcast %struct.BUFFER_TYPE* %0 to i8**
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 1
  %10 = bitcast %struct.BUFFER** %9 to i8**
  store i8* %7, i8** %10, align 8
  br label %22

11:                                               ; preds = %2
  %12 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #5
  %13 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 1
  %14 = load %struct.BUFFER*, %struct.BUFFER** %13, align 8
  %15 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %14, i64 0, i32 1
  %16 = bitcast %struct.BUFFER** %15 to i8**
  store i8* %12, i8** %16, align 8
  %17 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 1
  %18 = load %struct.BUFFER*, %struct.BUFFER** %17, align 8
  %19 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %18, i64 0, i32 1
  %20 = load %struct.BUFFER*, %struct.BUFFER** %19, align 8
  %21 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 1
  store %struct.BUFFER* %20, %struct.BUFFER** %21, align 8
  br label %22

22:                                               ; preds = %11, %6
  %23 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #4
  %24 = add i64 %23, 2
  %25 = and i64 %24, 4294967295
  %26 = call noalias i8* @malloc(i64 noundef %25) #5
  %27 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 1
  %28 = load %struct.BUFFER*, %struct.BUFFER** %27, align 8
  %29 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %28, i64 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  store i8 77, i8* %26, align 1
  %34 = getelementptr inbounds i8, i8* %26, i64 1
  %35 = call i8* @strcpy(i8* noundef nonnull %34, i8* noundef nonnull dereferenceable(1) %1) #5
  br label %38

36:                                               ; preds = %22
  %37 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %26, i8* noundef nonnull dereferenceable(1) %1) #5
  br label %38

38:                                               ; preds = %36, %33
  %39 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %0, i64 0, i32 1
  %40 = load %struct.BUFFER*, %struct.BUFFER** %39, align 8
  %41 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %40, i64 0, i32 1
  store %struct.BUFFER* null, %struct.BUFFER** %41, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
