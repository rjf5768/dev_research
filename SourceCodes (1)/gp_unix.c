; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gp_unix.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gp_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Ghostscript: gettimeofday failed:\00", align 1
@gp_file_name_list_separator = dso_local global i8 58, align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gp_init() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_get_clock(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timezone, align 4
  %6 = alloca %struct.tm*, align 8
  store i64* %0, i64** %2, align 8
  %7 = bitcast %struct.timezone* %5 to i8*
  %8 = call i32 @gettimeofday(%struct.timeval* noundef %4, i8* noundef %7) #4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef -1) #5
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 315576000
  store i64 %14, i64* %3, align 8
  %15 = getelementptr inbounds %struct.timezone, %struct.timezone* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 60
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %3, align 8
  %20 = sub nsw i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %22 = call %struct.tm* @localtime(i64* noundef %21) #4
  store %struct.tm* %22, %struct.tm** %6, align 8
  %23 = load %struct.tm*, %struct.tm** %6, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %11
  %28 = load i64, i64* %3, align 8
  %29 = add nsw i64 %28, 3600
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %27, %11
  %31 = load i64, i64* %3, align 8
  %32 = sdiv i64 %31, 86400
  %33 = load i64*, i64** %2, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = srem i64 %35, 86400
  %37 = mul nsw i64 %36, 1000
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sdiv i64 %39, 1000
  %41 = add nsw i64 %37, %40
  %42 = load i64*, i64** %2, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64 %41, i64* %43, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #1

declare dso_local void @perror(i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gp_file_name_is_absolute(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp uge i32 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 47
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ false, %2 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @gp_file_name_concat_string(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sub i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %23

22:                                               ; preds = %12, %4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i8*, i8** %5, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
