; ModuleID = './ar.ll'
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
  %2 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 40) #4
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #4
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %5 = getelementptr inbounds i8, i8* %4, i64 -1
  %6 = icmp eq i8* %2, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = icmp eq i8* %2, %0
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = load i8, i8* %5, align 1
  %.not = icmp eq i8 %10, 41
  br i1 %.not, label %12, label %11

11:                                               ; preds = %9, %7, %1
  br label %22

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %2, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = icmp eq i8 %14, 40
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, i8* %5, i64 -1
  %18 = load i8, i8* %17, align 1
  %19 = icmp eq i8 %18, 41
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void (i8*, i8*, ...) bitcast (void (...)* @fatal to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #5
  br label %21

21:                                               ; preds = %20, %16, %12
  br label %22

22:                                               ; preds = %21, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %21 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local void @fatal(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ar_parse_name(i8* noundef %0, i8** noundef writeonly %1, i8** noundef writeonly %2) #0 {
  %4 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 40) #4
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #4
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = getelementptr inbounds i8, i8* %6, i64 -1
  %.not = icmp eq i8** %1, null
  br i1 %.not, label %13, label %8

8:                                                ; preds = %3
  %9 = ptrtoint i8* %4 to i64
  %10 = ptrtoint i8* %0 to i64
  %11 = sub i64 %9, %10
  %12 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %0, i64 noundef %11) #5
  store i8* %12, i8** %1, align 8
  br label %13

13:                                               ; preds = %8, %3
  %.not1 = icmp eq i8** %2, null
  br i1 %.not1, label %21, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds i8, i8* %4, i64 1
  %16 = getelementptr inbounds i8, i8* %4, i64 1
  %17 = ptrtoint i8* %7 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef nonnull %15, i64 noundef %19) #5
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

declare dso_local i8* @savestring(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ar_member_date(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  call void @ar_parse_name(i8* noundef %0, i8** noundef nonnull %2, i8** noundef nonnull %3)
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @lookup_file to %struct.file* (i8*, ...)*)(i8* noundef %4) #5
  %6 = icmp eq %struct.file* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @enter_file to %struct.file* (i8*, ...)*)(i8* noundef %8) #5
  br label %10

10:                                               ; preds = %7, %1
  %.0 = phi %struct.file* [ %9, %7 ], [ %5, %1 ]
  %11 = call i64 (%struct.file*, i32, ...) bitcast (i64 (...)* @f_mtime to i64 (%struct.file*, i32, ...)*)(%struct.file* noundef %.0, i32 noundef 0) #5
  %12 = load i8*, i8** %2, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = call i64 (i8*, i64 (...)*, i64, ...) bitcast (i64 (...)* @ar_scan to i64 (i8*, i64 (...)*, i64, ...)*)(i8* noundef %12, i64 (...)* noundef bitcast (i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i8*)* @ar_member_date_1 to i64 (...)*), i64 noundef %14) #5
  br i1 %6, label %18, label %16

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %17) #5
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i8*, i8** %3, align 8
  call void @free(i8* noundef %19) #5
  %20 = icmp slt i64 %15, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %23

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %21
  %24 = phi i64 [ -1, %21 ], [ %15, %22 ]
  ret i64 %24
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
  call void @ar_parse_name(i8* noundef %0, i8** noundef nonnull %2, i8** noundef nonnull %3)
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @lookup_file to %struct.file* (i8*, ...)*)(i8* noundef %4) #5
  %6 = icmp eq %struct.file* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @enter_file to %struct.file* (i8*, ...)*)(i8* noundef %8) #5
  br label %10

10:                                               ; preds = %7, %1
  %.0 = phi %struct.file* [ %9, %7 ], [ %5, %1 ]
  %11 = call i64 (%struct.file*, i32, ...) bitcast (i64 (...)* @f_mtime to i64 (%struct.file*, i32, ...)*)(%struct.file* noundef %.0, i32 noundef 0) #5
  %12 = load i8*, i8** %2, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ar_member_touch to i32 (i8*, i8*, ...)*)(i8* noundef %12, i8* noundef %13) #5
  switch i32 %14, label %25 [
    i32 -1, label %15
    i32 -2, label %17
    i32 -3, label %19
    i32 1, label %21
    i32 0, label %24
  ]

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* noundef %16) #5
  br label %26

17:                                               ; preds = %10
  %18 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* noundef %18) #5
  br label %26

19:                                               ; preds = %10
  %20 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @perror_with_name to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20) #5
  br label %26

21:                                               ; preds = %10
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %2, align 8
  call void (i8*, i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* noundef %22, i8* noundef %23) #5
  br label %26

24:                                               ; preds = %10
  br label %26

25:                                               ; preds = %10
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* noundef %0) #5
  br label %26

26:                                               ; preds = %25, %24, %21, %19, %17, %15
  %.02 = phi i32 [ 1, %25 ], [ 0, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %17 ], [ 1, %15 ]
  br i1 %6, label %29, label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %28) #5
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i8*, i8** %3, align 8
  call void @free(i8* noundef %30) #5
  ret i32 %.02
}

declare dso_local i32 @ar_member_touch(...) #2

declare dso_local void @error(...) #2

declare dso_local void @perror_with_name(...) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @ar_member_date_1(i32 noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8* noundef %9) #0 {
  %11 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ar_name_equal to i32 (i8*, i8*, ...)*)(i8* noundef %9, i8* noundef %1) #5
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %12
  %15 = phi i64 [ %5, %12 ], [ 0, %13 ]
  ret i64 %15
}

declare dso_local i32 @ar_name_equal(...) #2

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
