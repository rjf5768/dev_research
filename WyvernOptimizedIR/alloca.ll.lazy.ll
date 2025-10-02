; ModuleID = './alloca.ll'
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
  %2 = alloca i8, align 1
  %3 = load i32, i32* @stack_dir, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @find_stack_direction()
  br label %6

6:                                                ; preds = %5, %1
  %7 = load %union.hdr*, %union.hdr** @last_alloca_header, align 8
  br label %8

8:                                                ; preds = %28, %6
  %.01 = phi %union.hdr* [ %7, %6 ], [ %25, %28 ]
  %.not = icmp eq %union.hdr* %.01, null
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %8
  %10 = load i32, i32* @stack_dir, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %union.hdr, %union.hdr* %.01, i64 0, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ugt i8* %14, %2
  br i1 %15, label %23, label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* @stack_dir, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds %union.hdr, %union.hdr* %.01, i64 0, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ult i8* %21, %2
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %12
  %24 = getelementptr inbounds %union.hdr, %union.hdr* %.01, i64 0, i32 0, i32 0
  %25 = load %union.hdr*, %union.hdr** %24, align 8
  %26 = bitcast %union.hdr* %.01 to i8*
  call void @free(i8* noundef %26)
  br label %28

27:                                               ; preds = %19, %16
  br label %29

28:                                               ; preds = %23
  br label %8, !llvm.loop !4

.loopexit:                                        ; preds = %8
  br label %29

29:                                               ; preds = %.loopexit, %27
  store %union.hdr* %.01, %union.hdr** @last_alloca_header, align 8
  %30 = icmp eq i32 %0, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  br label %41

32:                                               ; preds = %29
  %33 = zext i32 %0 to i64
  %34 = add nuw nsw i64 %33, 16
  %35 = call i8* (i64, ...) bitcast (i8* (i32)* @xmalloc to i8* (i64, ...)*)(i64 noundef %34)
  %36 = load %union.hdr*, %union.hdr** @last_alloca_header, align 8
  %37 = bitcast i8* %35 to %union.hdr**
  store %union.hdr* %36, %union.hdr** %37, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 8
  %39 = bitcast i8* %38 to i8**
  store i8* %2, i8** %39, align 8
  store i8* %35, i8** bitcast (%union.hdr** @last_alloca_header to i8**), align 8
  %40 = getelementptr inbounds i8, i8* %35, i64 16
  br label %41

41:                                               ; preds = %32, %31
  %.0 = phi i8* [ null, %31 ], [ %40, %32 ]
  ret i8* %.0
}

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xmalloc(i32 noundef %0) #0 {
  %2 = call i8* (i32, ...) bitcast (i8* (...)* @malloc to i8* (i32, ...)*)(i32 noundef %0) #4
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %3, label %5

3:                                                ; preds = %1
  %4 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i64, ...)*)(i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @xmalloc.mesg, i64 0, i64 0), i64 noundef 20) #4
  call void @exit(i32 noundef 1) #5
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

declare dso_local i8* @malloc(...) #1

declare dso_local i32 @write(...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @find_stack_direction() #3 {
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
  br label %10

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9, %8
  %storemerge = phi i32 [ -1, %9 ], [ 1, %8 ]
  store i32 %storemerge, i32* @stack_dir, align 4
  br label %11

11:                                               ; preds = %10, %4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
