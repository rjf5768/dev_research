; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/assembler/buffer.c'
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
define dso_local void @OUTPUT_BUFFER(%struct.BUFFER_TYPE* noundef %0, %struct._IO_FILE* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.BUFFER_TYPE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.BUFFER*, align 8
  store %struct.BUFFER_TYPE* %0, %struct.BUFFER_TYPE** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %46, %3
  %9 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %4, align 8
  %10 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %9, i32 0, i32 0
  %11 = load %struct.BUFFER*, %struct.BUFFER** %10, align 8
  %12 = icmp ne %struct.BUFFER* %11, null
  br i1 %12, label %13, label %59

13:                                               ; preds = %8
  %14 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %4, align 8
  %15 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %14, i32 0, i32 0
  %16 = load %struct.BUFFER*, %struct.BUFFER** %15, align 8
  %17 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %16, i32 0, i32 1
  %18 = load %struct.BUFFER*, %struct.BUFFER** %17, align 8
  store %struct.BUFFER* %18, %struct.BUFFER** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %38

21:                                               ; preds = %13
  %22 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %4, align 8
  %23 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %22, i32 0, i32 0
  %24 = load %struct.BUFFER*, %struct.BUFFER** %23, align 8
  %25 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strncmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %26, i64 noundef 6) #4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %31 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %4, align 8
  %32 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %31, i32 0, i32 0
  %33 = load %struct.BUFFER*, %struct.BUFFER** %32, align 8
  %34 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %36)
  br label %46

38:                                               ; preds = %21, %13
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %40 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %4, align 8
  %41 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %40, i32 0, i32 0
  %42 = load %struct.BUFFER*, %struct.BUFFER** %41, align 8
  %43 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %44)
  br label %46

46:                                               ; preds = %38, %29
  %47 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %4, align 8
  %48 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %47, i32 0, i32 0
  %49 = load %struct.BUFFER*, %struct.BUFFER** %48, align 8
  %50 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  call void @free(i8* noundef %51) #5
  %52 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %4, align 8
  %53 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %52, i32 0, i32 0
  %54 = load %struct.BUFFER*, %struct.BUFFER** %53, align 8
  %55 = bitcast %struct.BUFFER* %54 to i8*
  call void @free(i8* noundef %55) #5
  %56 = load %struct.BUFFER*, %struct.BUFFER** %7, align 8
  %57 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %4, align 8
  %58 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %57, i32 0, i32 0
  store %struct.BUFFER* %56, %struct.BUFFER** %58, align 8
  br label %8, !llvm.loop !4

59:                                               ; preds = %8
  %60 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %4, align 8
  %61 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %60, i32 0, i32 1
  store %struct.BUFFER* null, %struct.BUFFER** %61, align 8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @ADD_TO_END_OF_BUFFER(%struct.BUFFER_TYPE* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.BUFFER_TYPE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.BUFFER_TYPE* %0, %struct.BUFFER_TYPE** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %7 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %6, i32 0, i32 0
  %8 = load %struct.BUFFER*, %struct.BUFFER** %7, align 8
  %9 = icmp eq %struct.BUFFER* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = call noalias i8* @malloc(i64 noundef 16) #5
  %12 = bitcast i8* %11 to %struct.BUFFER*
  %13 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %14 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %13, i32 0, i32 0
  store %struct.BUFFER* %12, %struct.BUFFER** %14, align 8
  %15 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %16 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %15, i32 0, i32 0
  %17 = load %struct.BUFFER*, %struct.BUFFER** %16, align 8
  %18 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %19 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %18, i32 0, i32 1
  store %struct.BUFFER* %17, %struct.BUFFER** %19, align 8
  br label %34

20:                                               ; preds = %2
  %21 = call noalias i8* @malloc(i64 noundef 16) #5
  %22 = bitcast i8* %21 to %struct.BUFFER*
  %23 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %24 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %23, i32 0, i32 1
  %25 = load %struct.BUFFER*, %struct.BUFFER** %24, align 8
  %26 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %25, i32 0, i32 1
  store %struct.BUFFER* %22, %struct.BUFFER** %26, align 8
  %27 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %28 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %27, i32 0, i32 1
  %29 = load %struct.BUFFER*, %struct.BUFFER** %28, align 8
  %30 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %29, i32 0, i32 1
  %31 = load %struct.BUFFER*, %struct.BUFFER** %30, align 8
  %32 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %33 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %32, i32 0, i32 1
  store %struct.BUFFER* %31, %struct.BUFFER** %33, align 8
  br label %34

34:                                               ; preds = %20, %10
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strlen(i8* noundef %35) #4
  %37 = add i64 %36, 2
  %38 = trunc i64 %37 to i32
  %39 = zext i32 %38 to i64
  %40 = call noalias i8* @malloc(i64 noundef %39) #5
  store i8* %40, i8** %5, align 8
  %41 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %42 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %41, i32 0, i32 1
  %43 = load %struct.BUFFER*, %struct.BUFFER** %42, align 8
  %44 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 8
  %45 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %46 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %34
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 77, i8* %51, align 1
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8*, i8** %4, align 8
  %55 = call i8* @strcpy(i8* noundef %53, i8* noundef %54) #5
  br label %60

56:                                               ; preds = %34
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @strcpy(i8* noundef %57, i8* noundef %58) #5
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.BUFFER_TYPE*, %struct.BUFFER_TYPE** %3, align 8
  %62 = getelementptr inbounds %struct.BUFFER_TYPE, %struct.BUFFER_TYPE* %61, i32 0, i32 1
  %63 = load %struct.BUFFER*, %struct.BUFFER** %62, align 8
  %64 = getelementptr inbounds %struct.BUFFER, %struct.BUFFER* %63, i32 0, i32 1
  store %struct.BUFFER* null, %struct.BUFFER** %64, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
