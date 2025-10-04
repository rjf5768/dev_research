; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gp_vms.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gp_vms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i64 }
%struct.anon.0 = type { i16, i8, i8, i8* }

@.str = private unnamed_addr constant [11 x i8] c"1-JAN-1980\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"00:00:00.00\00", align 1
@gp_file_name_list_separator = dso_local global i8 59, align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gp_init() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_get_clock(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.anon, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.anon.0, align 8
  store i64* %0, i64** %2, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %10 = call i64 (i64*, ...) bitcast (i64 (...)* @"lib$day" to i64 (i64*, ...)*)(i64* noundef %5)
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @strlen(i8* noundef %11)
  %13 = trunc i64 %12 to i16
  %14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 0
  store i16 %13, i16* %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = call i64 (%struct.anon.0*, %struct.anon*, ...) bitcast (i64 (...)* @"sys$bintim" to i64 (%struct.anon.0*, %struct.anon*, ...)*)(%struct.anon.0* noundef %9, %struct.anon* noundef %3)
  %18 = call i64 (i64*, %struct.anon*, ...) bitcast (i64 (...)* @"lib$day" to i64 (i64*, %struct.anon*, ...)*)(i64* noundef %4, %struct.anon* noundef %3)
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 1, %19
  %21 = load i64, i64* %4, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i64*, i64** %2, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 %22, i64* %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strlen(i8* noundef %25)
  %27 = trunc i64 %26 to i16
  %28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 0
  store i16 %27, i16* %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = call i64 (%struct.anon.0*, %struct.anon*, ...) bitcast (i64 (...)* @"sys$bintim" to i64 (%struct.anon.0*, %struct.anon*, ...)*)(%struct.anon.0* noundef %9, %struct.anon* noundef %3)
  %32 = call i64 (i64*, %struct.anon*, i64*, ...) bitcast (i64 (...)* @"lib$day" to i64 (i64*, %struct.anon*, i64*, ...)*)(i64* noundef %4, %struct.anon* noundef %3, i64* noundef %6)
  %33 = load i64, i64* %6, align 8
  %34 = mul nsw i64 10, %33
  %35 = load i64*, i64** %2, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 %34, i64* %36, align 8
  ret void
}

declare dso_local i64 @"lib$day"(...) #1

declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i64 @"sys$bintim"(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gp_file_name_is_absolute(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  ret i32 0
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
  switch i32 %19, label %21 [
    i32 58, label %20
    i32 93, label %20
  ]

20:                                               ; preds = %12, %12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %23

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i8*, i8** %5, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
