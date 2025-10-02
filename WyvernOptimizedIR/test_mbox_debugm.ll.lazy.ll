; ModuleID = './test_mbox_debugm.ll'
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
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.rlimit, align 8
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* noundef %7) #7
  br label %41

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i64 0, i32 1
  store i64 -1, i64* %10, align 8
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i64 0, i32 0
  store i64 -1, i64* %11, align 8
  %12 = call i32 @setrlimit(i32 noundef 4, %struct.rlimit* noundef nonnull %3) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7
  br label %15

15:                                               ; preds = %14, %9
  %16 = call i32 @mkdir(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef 488) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #7
  %19 = call i32* @__errno_location() #9
  %20 = load i32, i32* %19, align 4
  br label %41

21:                                               ; preds = %15
  %22 = call void (i32)* @signal(i32 noundef 11, void (i32)* noundef nonnull @sigsegv) #8
  br label %23

23:                                               ; preds = %34, %21
  %.01 = phi i8** [ %1, %21 ], [ %24, %34 ]
  %24 = getelementptr inbounds i8*, i8** %.01, i64 1
  %25 = load i8*, i8** %24, align 8
  %.not = icmp eq i8* %25, null
  br i1 %.not, label %39, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %24, align 8
  %28 = call i32 (i8*, i32, ...) @open(i8* noundef %27, i32 noundef 0) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %24, align 8
  call void @perror(i8* noundef %31) #7
  %32 = call i32* @__errno_location() #9
  %33 = load i32, i32* %32, align 4
  br label %41

34:                                               ; preds = %26
  %35 = load i8*, i8** %24, align 8
  %36 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @cl_mbox to i32 (i8*, i32, ...)*)(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef %28) #8
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* noundef %35, i32 noundef %36) #8
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 noundef %28) #8
  br label %23, !llvm.loop !4

39:                                               ; preds = %23
  %40 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %41

41:                                               ; preds = %39, %30, %18, %5
  %.0 = phi i32 [ 1, %5 ], [ %20, %18 ], [ %33, %30 ], [ 0, %39 ]
  ret i32 %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @setrlimit(i32 noundef, %struct.rlimit* noundef) #2

declare dso_local void @perror(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8* noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @sigsegv(i32 noundef %0) #4 {
  %2 = call void (i32)* @signal(i32 noundef 11, void (i32)* noundef null) #8
  call void @_exit(i32 noundef 11) #10
  unreachable
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @cl_mbox(...) #1

declare dso_local i32 @close(...) #1

declare dso_local i32 @puts(i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @print_trace() #5 {
  ret void
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32 noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
