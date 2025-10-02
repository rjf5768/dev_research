; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/atalloc.c'
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
  %1 = alloca %struct.pattrib*, align 8
  %2 = alloca %struct.pattrib*, align 8
  %3 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  %4 = icmp ne %struct.pattrib* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  store %struct.pattrib* %6, %struct.pattrib** %2, align 8
  %7 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  %8 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %7, i32 0, i32 5
  %9 = load %struct.pattrib*, %struct.pattrib** %8, align 8
  store %struct.pattrib* %9, %struct.pattrib** @lfree, align 8
  br label %19

10:                                               ; preds = %0
  %11 = call noalias i8* @malloc(i64 noundef 48) #3
  %12 = bitcast i8* %11 to %struct.pattrib*
  store %struct.pattrib* %12, %struct.pattrib** %2, align 8
  %13 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %14 = icmp ne %struct.pattrib* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.pattrib* null, %struct.pattrib** %1, align 8
  br label %27

16:                                               ; preds = %10
  %17 = load i32, i32* @pattrib_max, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @pattrib_max, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = load i32, i32* @pattrib_count, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @pattrib_count, align 4
  %22 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %23 = bitcast %struct.pattrib* %22 to i8*
  call void @bzero(i8* noundef %23, i32 noundef 48)
  %24 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %25 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %24, i32 0, i32 0
  store i8 79, i8* %25, align 8
  %26 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  store %struct.pattrib* %26, %struct.pattrib** %1, align 8
  br label %27

27:                                               ; preds = %19, %15
  %28 = load %struct.pattrib*, %struct.pattrib** %1, align 8
  ret %struct.pattrib* %28
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @bzero(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @atfree(%struct.pattrib* noundef %0) #0 {
  %2 = alloca %struct.pattrib*, align 8
  store %struct.pattrib* %0, %struct.pattrib** %2, align 8
  %3 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %4 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %9 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %10)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %13 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %19 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %18, i32 0, i32 3
  %20 = bitcast %union.avalue* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %25 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %24, i32 0, i32 3
  %26 = bitcast %union.avalue* %25 to i8**
  %27 = load i8*, i8** %26, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %27)
  br label %28

28:                                               ; preds = %23, %17, %11
  %29 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %30 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %36 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %35, i32 0, i32 3
  %37 = bitcast %union.avalue* %36 to %struct.vlink**
  %38 = load %struct.vlink*, %struct.vlink** %37, align 8
  %39 = icmp ne %struct.vlink* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %42 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %41, i32 0, i32 3
  %43 = bitcast %union.avalue* %42 to %struct.vlink**
  %44 = load %struct.vlink*, %struct.vlink** %43, align 8
  call void (%struct.vlink*, ...) bitcast (void (...)* @vlfree to void (%struct.vlink*, ...)*)(%struct.vlink* noundef %44)
  br label %45

45:                                               ; preds = %40, %34, %28
  %46 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %47 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %52 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %53)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.pattrib*, %struct.pattrib** @lfree, align 8
  %56 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %57 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %56, i32 0, i32 5
  store %struct.pattrib* %55, %struct.pattrib** %57, align 8
  %58 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %59 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %58, i32 0, i32 4
  store %struct.pattrib* null, %struct.pattrib** %59, align 8
  %60 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  store %struct.pattrib* %60, %struct.pattrib** @lfree, align 8
  %61 = load i32, i32* @pattrib_count, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* @pattrib_count, align 4
  ret void
}

declare dso_local void @stfree(...) #2

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local void @vlfree(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @atlfree(%struct.pattrib* noundef %0) #0 {
  %2 = alloca %struct.pattrib*, align 8
  %3 = alloca %struct.pattrib*, align 8
  store %struct.pattrib* %0, %struct.pattrib** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %6 = icmp ne %struct.pattrib* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  %9 = getelementptr inbounds %struct.pattrib, %struct.pattrib* %8, i32 0, i32 5
  %10 = load %struct.pattrib*, %struct.pattrib** %9, align 8
  store %struct.pattrib* %10, %struct.pattrib** %3, align 8
  %11 = load %struct.pattrib*, %struct.pattrib** %2, align 8
  call void @atfree(%struct.pattrib* noundef %11)
  %12 = load %struct.pattrib*, %struct.pattrib** %3, align 8
  store %struct.pattrib* %12, %struct.pattrib** %2, align 8
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
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
