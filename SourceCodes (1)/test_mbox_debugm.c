; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/test_mbox_debugm.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/test_mbox_debugm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rlimit = type { i64, i64 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"Usage: %s files...\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"setrlimit\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/tmp/mboxtest\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cl_mbox(%s) returns %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Finished - don't forget to rm -rf /tmp/mboxtest\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* noundef %14)
  store i32 1, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  store i64 -1, i64* %17, align 8
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i64 -1, i64* %18, align 8
  %19 = call i32 @setrlimit(i32 noundef 4, %struct.rlimit* noundef %6) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %16
  %23 = call i32 @mkdir(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 488) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32* @__errno_location() #6
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %22
  %29 = call void (i32)* @signal(i32 noundef 11, void (i32)* noundef @sigsegv) #5
  br label %30

30:                                               ; preds = %46, %28
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i32, ...) @open(i8* noundef %37, i32 noundef 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  call void @perror(i8* noundef %43)
  %44 = call i32* @__errno_location() #6
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %35
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @cl_mbox to i32 (i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef %49)
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* noundef %48, i32 noundef %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 noundef %52)
  br label %30, !llvm.loop !4

54:                                               ; preds = %30
  %55 = call i32 @puts(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %41, %25, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @setrlimit(i32 noundef, %struct.rlimit* noundef) #2

declare dso_local void @perror(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @sigsegv(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call void (i32)* @signal(i32 noundef 11, void (i32)* noundef null) #5
  call void @print_trace()
  call void @_exit(i32 noundef 11) #7
  unreachable
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @cl_mbox(...) #1

declare dso_local i32 @close(...) #1

declare dso_local i32 @puts(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @print_trace() #0 {
  ret void
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
