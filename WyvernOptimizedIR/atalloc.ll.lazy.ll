; ModuleID = './atalloc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/atalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattrib = type { i8, i8*, i8*, %union.avalue, %struct.pattrib*, %struct.pattrib* }
%union.avalue = type { i8* }
%struct.vlink = type { i32, i8*, i8, i32, i8*, %struct.vlink*, %struct.vlink*, i8*, i8*, i8*, i8*, i64, i64, %struct.acl*, i64, i64, i8*, %struct.pattrib*, %struct.pfile*, %struct.vlink*, %struct.vlink* }
%struct.acl = type { i32, i8*, i8*, i8*, %struct.restrict_*, %struct.acl*, %struct.acl* }
%struct.restrict_ = type { %struct.acl*, %struct.acl* }
%struct.pfile = type { i32, i64, i64, i64, i64, %struct.vlink*, %struct.vlink*, %struct.pattrib*, %struct.pfile*, %struct.pfile* }

@pattrib_count = dso_local global i32 0, align 4
@pattrib_max = dso_local global i32 0, align 4
@lfree = internal global %struct.pattrib* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pattrib* @atalloc() #0 {
  %1 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  %.not = icmp eq %struct.pattrib* %1, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %0
  %3 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  %4 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %3, i64 0, i32 5
  %5 = load %struct.pattrib*, %struct.pattrib** %4, align 8
  store %struct.pattrib* %5, %struct.pattrib** @lfree, align 8
  br label %13

6:                                                ; preds = %0
  %7 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #3
  %.not2 = icmp eq i8* %7, null
  br i1 %.not2, label %8, label %9

8:                                                ; preds = %6
  br label %18

9:                                                ; preds = %6
  %10 = bitcast i8* %7 to %struct.pattrib*
  %11 = load i32, i32* @pattrib_max, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @pattrib_max, align 4
  br label %13

13:                                               ; preds = %9, %2
  %.01 = phi %struct.pattrib* [ %3, %2 ], [ %10, %9 ]
  %14 = load i32, i32* @pattrib_count, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @pattrib_count, align 4
  %16 = getelementptr %struct.pattrib, %struct.pattrib* %.01, i64 0, i32 0
  call void @bzero(i8* noundef %16, i32 noundef 48) #3
  %17 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.01, i64 0, i32 0
  store i8 79, i8* %17, align 8
  br label %18

18:                                               ; preds = %13, %8
  %.0 = phi %struct.pattrib* [ %.01, %13 ], [ null, %8 ]
  ret %struct.pattrib* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @bzero(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @atfree(%struct.pattrib* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %6) #3
  br label %7

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 3, i32 0
  %14 = load i8*, i8** %13, align 8
  %.not3 = icmp eq i8* %14, null
  br i1 %.not3, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 3, i32 0
  %17 = load i8*, i8** %16, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %17) #3
  br label %18

18:                                               ; preds = %15, %12, %7
  %19 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %20, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 3
  %25 = bitcast %union.avalue* %24 to %struct.vlink**
  %26 = load %struct.vlink*, %struct.vlink** %25, align 8
  %.not2 = icmp eq %struct.vlink* %26, null
  br i1 %.not2, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 3
  %29 = bitcast %union.avalue* %28 to %struct.vlink**
  %30 = load %struct.vlink*, %struct.vlink** %29, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %30) #3
  br label %31

31:                                               ; preds = %27, %23, %18
  %32 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %.not1 = icmp eq i8* %33, null
  br i1 %.not1, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 2
  %36 = load i8*, i8** %35, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %36) #3
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  %39 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 5
  store %struct.pattrib* %38, %struct.pattrib** %39, align 8
  %40 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %0, i64 0, i32 4
  store %struct.pattrib* null, %struct.pattrib** %40, align 8
  store %struct.pattrib* %0, %struct.pattrib** @lfree, align 8
  %41 = load i32, i32* @pattrib_count, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @pattrib_count, align 4
  ret void
}

declare dso_local void @stfree(...) #2

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local void @vlfree(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @atlfree(%struct.pattrib* noundef %0) #0 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi %struct.pattrib* [ %0, %1 ], [ %5, %3 ]
  %.not = icmp eq %struct.pattrib* %.0, null
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %.0, i64 0, i32 5
  %5 = load %struct.pattrib*, %struct.pattrib** %4, align 8
  call void @atfree(%struct.pattrib* noundef nonnull %.0)
  br label %2, !llvm.loop !4

6:                                                ; preds = %2
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
