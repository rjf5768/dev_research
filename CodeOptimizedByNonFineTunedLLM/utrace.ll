; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/utrace.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/utrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@trace_flush_flag = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strupr(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._IO_FILE* @trace_open_map(i8* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  ret %struct._IO_FILE* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @trace_next_symbol(i8** noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @trace_find_symbol(i8* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @trace_name(i8* noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @trace(void (...)* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca void (...)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store void (...)* %0, void (...)** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stack_top_frame() #0 {
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %2 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %1, i64 0, i64 0
  %3 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef %2) #2
  %4 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %1, i64 0, i64 0
  %5 = bitcast %struct.__jmp_buf_tag* %4 to i8*
  %6 = call i8* @stack_next_frame(i8* noundef %5)
  ret i8* %6
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stack_next_frame(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to i8**
  %7 = getelementptr inbounds i8*, i8** %6, i64 3
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %13, %12
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @stack_return(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 16
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  ret i64 %6
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
