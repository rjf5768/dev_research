; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/vlalloc.c'
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
  %1 = alloca %struct.vlink*, align 8
  %2 = alloca %struct.vlink*, align 8
  %3 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  %4 = icmp ne %struct.vlink* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  store %struct.vlink* %6, %struct.vlink** %2, align 8
  %7 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  %8 = getelementptr inbounds %struct.vlink, %struct.vlink* %7, i32 0, i32 20
  %9 = load %struct.vlink*, %struct.vlink** %8, align 8
  store %struct.vlink* %9, %struct.vlink** @lfree, align 8
  br label %19

10:                                               ; preds = %0
  %11 = call noalias i8* @malloc(i64 noundef 160) #3
  %12 = bitcast i8* %11 to %struct.vlink*
  store %struct.vlink* %12, %struct.vlink** %2, align 8
  %13 = load %struct.vlink*, %struct.vlink** %2, align 8
  %14 = icmp ne %struct.vlink* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.vlink* null, %struct.vlink** %1, align 8
  br label %36

16:                                               ; preds = %10
  %17 = load i32, i32* @vlink_max, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @vlink_max, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = load i32, i32* @vlink_count, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @vlink_count, align 4
  %22 = load %struct.vlink*, %struct.vlink** %2, align 8
  %23 = bitcast %struct.vlink* %22 to i8*
  call void @bzero(i8* noundef %23, i32 noundef 160)
  %24 = load %struct.vlink*, %struct.vlink** %2, align 8
  %25 = getelementptr inbounds %struct.vlink, %struct.vlink* %24, i32 0, i32 2
  store i8 76, i8* %25, align 8
  %26 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.vlink*, %struct.vlink** %2, align 8
  %28 = getelementptr inbounds %struct.vlink, %struct.vlink* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.vlink*, %struct.vlink** %2, align 8
  %31 = getelementptr inbounds %struct.vlink, %struct.vlink* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = call i8* (i8*, ...) bitcast (i8* (...)* @stcopy to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.vlink*, %struct.vlink** %2, align 8
  %34 = getelementptr inbounds %struct.vlink, %struct.vlink* %33, i32 0, i32 9
  store i8* %32, i8** %34, align 8
  %35 = load %struct.vlink*, %struct.vlink** %2, align 8
  store %struct.vlink* %35, %struct.vlink** %1, align 8
  br label %36

36:                                               ; preds = %19, %15
  %37 = load %struct.vlink*, %struct.vlink** %1, align 8
  ret %struct.vlink* %37
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @bzero(i8* noundef, i32 noundef) #2

declare dso_local i8* @stcopy(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vlfree(%struct.vlink* noundef %0) #0 {
  %2 = alloca %struct.vlink*, align 8
  store %struct.vlink* %0, %struct.vlink** %2, align 8
  %3 = load %struct.vlink*, %struct.vlink** %2, align 8
  %4 = getelementptr inbounds %struct.vlink, %struct.vlink* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %84

8:                                                ; preds = %1
  %9 = load %struct.vlink*, %struct.vlink** %2, align 8
  %10 = getelementptr inbounds %struct.vlink, %struct.vlink* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.vlink*, %struct.vlink** %2, align 8
  %15 = getelementptr inbounds %struct.vlink, %struct.vlink* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  call void @free(i8* noundef %16) #3
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.vlink*, %struct.vlink** %2, align 8
  %19 = getelementptr inbounds %struct.vlink, %struct.vlink* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %20)
  %21 = load %struct.vlink*, %struct.vlink** %2, align 8
  %22 = getelementptr inbounds %struct.vlink, %struct.vlink* %21, i32 0, i32 6
  %23 = load %struct.vlink*, %struct.vlink** %22, align 8
  %24 = icmp ne %struct.vlink* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.vlink*, %struct.vlink** %2, align 8
  %27 = getelementptr inbounds %struct.vlink, %struct.vlink* %26, i32 0, i32 6
  %28 = load %struct.vlink*, %struct.vlink** %27, align 8
  call void @vllfree(%struct.vlink* noundef %28)
  br label %29

29:                                               ; preds = %25, %17
  %30 = load %struct.vlink*, %struct.vlink** %2, align 8
  %31 = getelementptr inbounds %struct.vlink, %struct.vlink* %30, i32 0, i32 7
  %32 = load i8*, i8** %31, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %32)
  %33 = load %struct.vlink*, %struct.vlink** %2, align 8
  %34 = getelementptr inbounds %struct.vlink, %struct.vlink* %33, i32 0, i32 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.vlink*, %struct.vlink** %2, align 8
  %39 = getelementptr inbounds %struct.vlink, %struct.vlink* %38, i32 0, i32 8
  %40 = load i8*, i8** %39, align 8
  call void @free(i8* noundef %40) #3
  br label %41

41:                                               ; preds = %37, %29
  %42 = load %struct.vlink*, %struct.vlink** %2, align 8
  %43 = getelementptr inbounds %struct.vlink, %struct.vlink* %42, i32 0, i32 9
  %44 = load i8*, i8** %43, align 8
  call void (i8*, ...) bitcast (void (...)* @stfree to void (i8*, ...)*)(i8* noundef %44)
  %45 = load %struct.vlink*, %struct.vlink** %2, align 8
  %46 = getelementptr inbounds %struct.vlink, %struct.vlink* %45, i32 0, i32 10
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.vlink*, %struct.vlink** %2, align 8
  %51 = getelementptr inbounds %struct.vlink, %struct.vlink* %50, i32 0, i32 10
  %52 = load i8*, i8** %51, align 8
  call void @free(i8* noundef %52) #3
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.vlink*, %struct.vlink** %2, align 8
  %55 = getelementptr inbounds %struct.vlink, %struct.vlink* %54, i32 0, i32 16
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.vlink*, %struct.vlink** %2, align 8
  %60 = getelementptr inbounds %struct.vlink, %struct.vlink* %59, i32 0, i32 16
  %61 = load i8*, i8** %60, align 8
  call void @free(i8* noundef %61) #3
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.vlink*, %struct.vlink** %2, align 8
  %64 = getelementptr inbounds %struct.vlink, %struct.vlink* %63, i32 0, i32 17
  %65 = load %struct.pattrib*, %struct.pattrib** %64, align 8
  %66 = icmp ne %struct.pattrib* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.vlink*, %struct.vlink** %2, align 8
  %69 = getelementptr inbounds %struct.vlink, %struct.vlink* %68, i32 0, i32 17
  %70 = load %struct.pattrib*, %struct.pattrib** %69, align 8
  call void (%struct.pattrib*, ...) bitcast (void (...)* @atlfree to void (%struct.pattrib*, ...)*)(%struct.pattrib* noundef %70)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.vlink*, %struct.vlink** %2, align 8
  %73 = getelementptr inbounds %struct.vlink, %struct.vlink* %72, i32 0, i32 18
  store %struct.pfile* null, %struct.pfile** %73, align 8
  %74 = load %struct.vlink*, %struct.vlink** @lfree, align 8
  %75 = load %struct.vlink*, %struct.vlink** %2, align 8
  %76 = getelementptr inbounds %struct.vlink, %struct.vlink* %75, i32 0, i32 20
  store %struct.vlink* %74, %struct.vlink** %76, align 8
  %77 = load %struct.vlink*, %struct.vlink** %2, align 8
  %78 = getelementptr inbounds %struct.vlink, %struct.vlink* %77, i32 0, i32 19
  store %struct.vlink* null, %struct.vlink** %78, align 8
  %79 = load %struct.vlink*, %struct.vlink** %2, align 8
  store %struct.vlink* %79, %struct.vlink** @lfree, align 8
  %80 = load i32, i32* @vlink_count, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* @vlink_count, align 4
  %82 = load i32, i32* @string_count, align 4
  %83 = sub nsw i32 %82, 4
  store i32 %83, i32* @string_count, align 4
  br label %84

84:                                               ; preds = %71, %7
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local void @stfree(...) #2

declare dso_local void @atlfree(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vllfree(%struct.vlink* noundef %0) #0 {
  %2 = alloca %struct.vlink*, align 8
  %3 = alloca %struct.vlink*, align 8
  store %struct.vlink* %0, %struct.vlink** %2, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.vlink*, %struct.vlink** %2, align 8
  %6 = icmp ne %struct.vlink* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load %struct.vlink*, %struct.vlink** %2, align 8
  %9 = getelementptr inbounds %struct.vlink, %struct.vlink* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %7, %4
  %14 = phi i1 [ false, %4 ], [ %12, %7 ]
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load %struct.vlink*, %struct.vlink** %2, align 8
  %17 = getelementptr inbounds %struct.vlink, %struct.vlink* %16, i32 0, i32 20
  %18 = load %struct.vlink*, %struct.vlink** %17, align 8
  store %struct.vlink* %18, %struct.vlink** %3, align 8
  %19 = load %struct.vlink*, %struct.vlink** %2, align 8
  call void @vlfree(%struct.vlink* noundef %19)
  %20 = load %struct.vlink*, %struct.vlink** %3, align 8
  store %struct.vlink* %20, %struct.vlink** %2, align 8
  br label %4, !llvm.loop !4

21:                                               ; preds = %13
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
