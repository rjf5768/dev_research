; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/03-testtrie/charsequence.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/03-testtrie/charsequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.charsequence = type { i8*, i64, i64 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"OUT OF MEMORY\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ATTEMPTED POP ON EMPTY SEQUENCE\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @charsequence_reset(%struct.charsequence* noundef %0) #0 {
  %2 = alloca %struct.charsequence*, align 8
  store %struct.charsequence* %0, %struct.charsequence** %2, align 8
  %3 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %4 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %9 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %10) #3
  br label %11

11:                                               ; preds = %7, %1
  %12 = call noalias i8* @malloc(i64 noundef 16) #3
  %13 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %14 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %16 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %24 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %23, i32 0, i32 1
  store i64 16, i64* %24, align 8
  %25 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %26 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @charsequence_push(%struct.charsequence* noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca %struct.charsequence*, align 8
  %4 = alloca i8, align 1
  store %struct.charsequence* %0, %struct.charsequence** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %6 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  call void @charsequence_reset(%struct.charsequence* noundef %10)
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %13 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %16 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %21 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = shl i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %25 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %28 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @realloc(i8* noundef %26, i64 noundef %29) #3
  %31 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %32 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %34 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %19
  br label %41

41:                                               ; preds = %40, %11
  %42 = load i8, i8* %4, align 1
  %43 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %44 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %47 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 %42, i8* %49, align 1
  %50 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %51 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @charsequence_pop(%struct.charsequence* noundef %0) #0 {
  %2 = alloca %struct.charsequence*, align 8
  store %struct.charsequence* %0, %struct.charsequence** %2, align 8
  %3 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %4 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %12 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %15 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds i8, i8* %13, i64 %16
  %19 = load i8, i8* %18, align 1
  ret i8 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @charsequence_val(%struct.charsequence* noundef %0) #0 {
  %2 = alloca %struct.charsequence*, align 8
  %3 = alloca i8*, align 8
  store %struct.charsequence* %0, %struct.charsequence** %2, align 8
  %4 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %5 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 1
  %8 = call noalias i8* @calloc(i64 noundef %7, i64 noundef 1) #3
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %17 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %20 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @strncpy(i8* noundef %15, i8* noundef %18, i64 noundef %21) #3
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

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
