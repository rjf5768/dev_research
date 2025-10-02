; ModuleID = './vlalloc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/vlalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }

@vlink_count = dso_local global i32 0, align 4
@vlink_max = dso_local global i32 0, align 4
@lfree = internal global %struct.vlink* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"INTERNET-D\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@string_count = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.vlink* @vlalloc() #0 {
  %1 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  %.not = icmp eq %struct.vlink* %1, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %0
  %3 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  %4 = getelementptr inbounds %struct.vlink, %struct.vlink* %3, i64 0, i32 20
  %5 = load %struct.vlink*, %struct.vlink** %4, align 8
  store %struct.vlink* %5, %struct.vlink** @lfree, align 8
  br label %13

6:                                                ; preds = %0
  %7 = call noalias dereferenceable_or_null(160) i8* @malloc(i64 noundef 160) #3
  %.not2 = icmp eq i8* %7, null
  br i1 %.not2, label %8, label %9

8:                                                ; preds = %6
  br label %24

9:                                                ; preds = %6
  %10 = bitcast i8* %7 to %struct.vlink*
  %11 = load i32, i32* @vlink_max, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @vlink_max, align 4
  br label %13

13:                                               ; preds = %9, %2
  %.01 = phi %struct.vlink* [ %3, %2 ], [ %10, %9 ]
  %14 = load i32, i32* @vlink_count, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @vlink_count, align 4
  %16 = bitcast %struct.vlink* %.01 to i8*
  call void @bzero(i8* noundef %16, i32 noundef 160) #3
  %17 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 2
  store i8 76, i8* %17, align 8
  %18 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #3
  %19 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 4
  store i8* %18, i8** %19, align 8
  %20 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #3
  %21 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 7
  store i8* %20, i8** %21, align 8
  %22 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #3
  %23 = getelementptr inbounds %struct.vlink, %struct.vlink* %.01, i64 0, i32 9
  store i8* %22, i8** %23, align 8
  br label %24

24:                                               ; preds = %13, %8
  %.0 = phi %struct.vlink* [ %.01, %13 ], [ null, %8 ]
  ret %struct.vlink* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @bzero(i8* noundef, i32 noundef) #2

declare dso_local i8* @stcopy(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vlfree(%struct.vlink* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %56

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %.not1 = icmp eq i8* %7, null
  br i1 %.not1, label %11, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %10) #3
  br label %11

11:                                               ; preds = %8, %5
  %12 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %13) #3
  %14 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 6
  %15 = load %struct.vlink*, %struct.vlink** %14, align 8
  %.not2 = icmp eq %struct.vlink* %15, null
  br i1 %.not2, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 6
  %18 = load %struct.vlink*, %struct.vlink** %17, align 8
  call void @vllfree(%struct.vlink* noundef %18)
  br label %19

19:                                               ; preds = %16, %11
  %20 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 7
  %21 = load i8*, i8** %20, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %21) #3
  %22 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %23 = load i8*, i8** %22, align 8
  %.not3 = icmp eq i8* %23, null
  br i1 %.not3, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 8
  %26 = load i8*, i8** %25, align 8
  call void @free(i8* noundef %26) #3
  br label %27

27:                                               ; preds = %24, %19
  %28 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 9
  %29 = load i8*, i8** %28, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %29) #3
  %30 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %31 = load i8*, i8** %30, align 8
  %.not4 = icmp eq i8* %31, null
  br i1 %.not4, label %35, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 10
  %34 = load i8*, i8** %33, align 8
  call void @free(i8* noundef %34) #3
  br label %35

35:                                               ; preds = %32, %27
  %36 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 16
  %37 = load i8*, i8** %36, align 8
  %.not5 = icmp eq i8* %37, null
  br i1 %.not5, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 16
  %40 = load i8*, i8** %39, align 8
  call void @free(i8* noundef %40) #3
  br label %41

41:                                               ; preds = %38, %35
  %42 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 17
  %43 = load %struct.pattrib*, %struct.pattrib** %42, align 8
  %.not6 = icmp eq %struct.pattrib* %43, null
  br i1 %.not6, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 17
  %46 = load %struct.pattrib*, %struct.pattrib** %45, align 8
  call void (%struct.pattrib*, ...) bitcast (void (...)* @atlfree to void (%struct.pattrib*, ...)*)(%struct.pattrib* noundef %46) #3
  br label %47

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 18
  store %struct.pfile* null, %struct.pfile** %48, align 8
  %49 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  %50 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 20
  store %struct.vlink* %49, %struct.vlink** %50, align 8
  %51 = getelementptr inbounds %struct.vlink, %struct.vlink* %0, i64 0, i32 19
  store %struct.vlink* null, %struct.vlink** %51, align 8
  store %struct.vlink* %0, %struct.vlink** @lfree, align 8
  %52 = load i32, i32* @vlink_count, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* @vlink_count, align 4
  %54 = load i32, i32* @string_count, align 4
  %55 = add nsw i32 %54, -4
  store i32 %55, i32* @string_count, align 4
  br label %56

56:                                               ; preds = %47, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local void @stfree(...) #2

declare dso_local void @atlfree(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vllfree(%struct.vlink* noundef %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.0 = phi %struct.vlink* [ %0, %1 ], [ %10, %8 ]
  %.not = icmp eq %struct.vlink* %.0, null
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.vlink, %struct.vlink* %.0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %.not1 = icmp eq i32 %5, 0
  br label %6

6:                                                ; preds = %3, %2
  %7 = phi i1 [ false, %2 ], [ %.not1, %3 ]
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.vlink, %struct.vlink* %.0, i64 0, i32 20
  %10 = load %struct.vlink*, %struct.vlink** %9, align 8
  call void @vlfree(%struct.vlink* noundef %.0)
  br label %2, !llvm.loop !4

11:                                               ; preds = %6
  ret void
}

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
