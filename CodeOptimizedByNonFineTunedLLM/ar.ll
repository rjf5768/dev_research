; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/ar.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file*, i8*, %struct.dep*, %struct.commands*, i8*, %struct.dep*, i64, %struct.file*, %struct.file*, %struct.variable_set_list*, %struct.file*, i16, i16 }
%struct.commands = type opaque
%struct.dep = type opaque
%struct.variable_set_list = type opaque

@.str = private unnamed_addr constant [41 x i8] c"attempt to use unsupported feature: `%s'\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"touch: Archive `%s' does not exist\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"touch: `%s' is not a valid archive\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"touch: \00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"touch: Member `%s' does not exist in `%s'\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"touch: Bad return code from ar_member_touch on `%s'\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ar_name(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @strchr(i8* noundef %6, i32 noundef 40) #4
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* noundef %9) #4
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = getelementptr inbounds i8, i8* %11, i64 -1
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 41
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %15, %1
  store i32 0, i32* %2, align 4
  br label %40

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 40
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 41
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @fatal to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* noundef %38)
  br label %39

39:                                               ; preds = %37, %31, %25
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local void @fatal(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ar_parse_name(i8* noundef %0, i8** noundef %1, i8** noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strchr(i8* noundef %9, i32 noundef 40) #4
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* noundef %12) #4
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8* %15, i8** %8, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %19, i64 noundef %24)
  %26 = load i8**, i8*** %5, align 8
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i8**, i8*** %6, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = ptrtoint i8* %33 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %32, i64 noundef %38)
  %40 = load i8**, i8*** %6, align 8
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %30, %27
  ret void
}

declare dso_local i8* @savestring(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ar_member_date(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load i8*, i8** %2, align 8
  call void @ar_parse_name(i8* noundef %8, i8** noundef %3, i8** noundef %5)
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @lookup_file to %struct.file* (i8*, ...)*)(i8* noundef %9)
  store %struct.file* %10, %struct.file** %7, align 8
  %11 = load %struct.file*, %struct.file** %7, align 8
  %12 = icmp eq %struct.file* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @enter_file to %struct.file* (i8*, ...)*)(i8* noundef %14)
  store %struct.file* %15, %struct.file** %7, align 8
  store i32 1, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = call i64 (%struct.file*, i32, ...) bitcast (i64 (...)* @f_mtime to i64 (%struct.file*, i32, ...)*)(%struct.file* noundef %17, i32 noundef 0)
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = call i64 (i8*, i64 (...)*, i64, ...) bitcast (i64 (...)* @ar_scan to i64 (i8*, i64 (...)*, i64, ...)*)(i8* noundef %19, i64 (...)* noundef bitcast (i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i8*)* @ar_member_date_1 to i64 (...)*), i64 noundef %21)
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = load i8*, i8** %3, align 8
  call void @free(i8* noundef %26) #5
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %28) #5
  %29 = load i64, i64* %6, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %34

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i64 [ -1, %31 ], [ %33, %32 ]
  ret i64 %35
}

declare dso_local %struct.file* @lookup_file(...) #2

declare dso_local %struct.file* @enter_file(...) #2

declare dso_local i64 @f_mtime(...) #2

declare dso_local i64 @ar_scan(...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ar_touch(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %2, align 8
  call void @ar_parse_name(i8* noundef %8, i8** noundef %3, i8** noundef %4)
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @lookup_file to %struct.file* (i8*, ...)*)(i8* noundef %9)
  store %struct.file* %10, %struct.file** %7, align 8
  %11 = load %struct.file*, %struct.file** %7, align 8
  %12 = icmp eq %struct.file* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @enter_file to %struct.file* (i8*, ...)*)(i8* noundef %14)
  store %struct.file* %15, %struct.file** %7, align 8
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = call i64 (%struct.file*, i32, ...) bitcast (i64 (...)* @f_mtime to i64 (%struct.file*, i32, ...)*)(%struct.file* noundef %17, i32 noundef 0)
  store i32 1, i32* %6, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ar_member_touch to i32 (i8*, i8*, ...)*)(i8* noundef %19, i8* noundef %20)
  switch i32 %21, label %32 [
    i32 -1, label %22
    i32 -2, label %24
    i32 -3, label %26
    i32 1, label %28
    i32 0, label %31
  ]

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* noundef %23)
  br label %34

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* noundef %25)
  br label %34

26:                                               ; preds = %16
  %27 = load i8*, i8** %3, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @perror_with_name to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %27)
  br label %34

28:                                               ; preds = %16
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %3, align 8
  call void (i8*, i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* noundef %29, i8* noundef %30)
  br label %34

31:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %34

32:                                               ; preds = %16
  %33 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* noundef %33)
  br label %34

34:                                               ; preds = %32, %31, %28, %26, %24, %22
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  call void @free(i8* noundef %38) #5
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %40) #5
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @ar_member_touch(...) #2

declare dso_local void @error(...) #2

declare dso_local void @perror_with_name(...) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @ar_member_date_1(i32 noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8* noundef %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i8* %9, i8** %20, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ar_name_equal to i32 (i8*, i8*, ...)*)(i8* noundef %21, i8* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = load i64, i64* %16, align 8
  br label %28

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i64 [ %26, %25 ], [ 0, %27 ]
  ret i64 %29
}

declare dso_local i32 @ar_name_equal(...) #2

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
