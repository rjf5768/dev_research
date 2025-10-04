; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gawk/alloca.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gawk/alloca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdr = type { %struct.anon }
%struct.anon = type { %union.hdr*, i8* }

@stack_dir = internal global i32 0, align 4
@last_alloca_header = internal global %union.hdr* null, align 8
@xmalloc.mesg = internal global [21 x i8] c"xmalloc: no memory!\0A\00", align 16
@find_stack_direction.addr = internal global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @alloca(i32 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %union.hdr*, align 8
  %7 = alloca %union.hdr*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %4, i8** %5, align 8
  %9 = load i32, i32* @stack_dir, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @find_stack_direction()
  br label %12

12:                                               ; preds = %11, %1
  %13 = load %union.hdr*, %union.hdr** @last_alloca_header, align 8
  store %union.hdr* %13, %union.hdr** %6, align 8
  br label %14

14:                                               ; preds = %46, %12
  %15 = load %union.hdr*, %union.hdr** %6, align 8
  %16 = icmp ne %union.hdr* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load i32, i32* @stack_dir, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %union.hdr*, %union.hdr** %6, align 8
  %22 = bitcast %union.hdr* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ugt i8* %24, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* @stack_dir, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %union.hdr*, %union.hdr** %6, align 8
  %32 = bitcast %union.hdr* %31 to %struct.anon*
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30, %20
  %38 = load %union.hdr*, %union.hdr** %6, align 8
  %39 = bitcast %union.hdr* %38 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = load %union.hdr*, %union.hdr** %40, align 8
  store %union.hdr* %41, %union.hdr** %7, align 8
  %42 = load %union.hdr*, %union.hdr** %6, align 8
  %43 = bitcast %union.hdr* %42 to i8*
  call void @free(i8* noundef %43)
  %44 = load %union.hdr*, %union.hdr** %7, align 8
  store %union.hdr* %44, %union.hdr** %6, align 8
  br label %46

45:                                               ; preds = %30, %27
  br label %47

46:                                               ; preds = %37
  br label %14, !llvm.loop !4

47:                                               ; preds = %45, %14
  %48 = load %union.hdr*, %union.hdr** %6, align 8
  store %union.hdr* %48, %union.hdr** @last_alloca_header, align 8
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i8* null, i8** %2, align 8
  br label %71

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = add i64 16, %54
  %56 = call i8* (i64, ...) bitcast (i8* (i32)* @xmalloc to i8* (i64, ...)*)(i64 noundef %55)
  store i8* %56, i8** %8, align 8
  %57 = load %union.hdr*, %union.hdr** @last_alloca_header, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = bitcast i8* %58 to %union.hdr*
  %60 = bitcast %union.hdr* %59 to %struct.anon*
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 0
  store %union.hdr* %57, %union.hdr** %61, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = bitcast i8* %63 to %union.hdr*
  %65 = bitcast %union.hdr* %64 to %struct.anon*
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 1
  store i8* %62, i8** %66, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = bitcast i8* %67 to %union.hdr*
  store %union.hdr* %68, %union.hdr** @last_alloca_header, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 16
  store i8* %70, i8** %2, align 8
  br label %71

71:                                               ; preds = %52, %51
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xmalloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i8* (i32, ...) bitcast (i8* (...)* @malloc to i8* (i32, ...)*)(i32 noundef %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i64, ...)*)(i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @xmalloc.mesg, i64 0, i64 0), i64 noundef 20)
  call void @exit(i32 noundef 1) #3
  unreachable

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  ret i8* %11
}

declare dso_local i8* @malloc(...) #1

declare dso_local i32 @write(...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @find_stack_direction() #0 {
  %1 = alloca i8, align 1
  %2 = load i8*, i8** @find_stack_direction.addr, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* %1, i8** @find_stack_direction.addr, align 8
  call void @find_stack_direction()
  br label %11

5:                                                ; preds = %0
  %6 = load i8*, i8** @find_stack_direction.addr, align 8
  %7 = icmp ugt i8* %1, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 1, i32* @stack_dir, align 4
  br label %10

9:                                                ; preds = %5
  store i32 -1, i32* @stack_dir, align 4
  br label %10

10:                                               ; preds = %9, %8
  br label %11

11:                                               ; preds = %10, %4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
