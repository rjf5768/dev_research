; ModuleID = './richards_benchmark.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/richards_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { %struct.task*, i32, i32, %struct.packet*, i32, %struct.task* (%struct.packet*)*, i64, i64 }
%struct.packet = type { %struct.packet*, i32, i32, i32, [4 x i8] }

@alphabet = dso_local global [28 x i8] c"0ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@tasktab = dso_local global [11 x %struct.task*] zeroinitializer, align 16
@tasklist = dso_local global %struct.task* null, align 8
@qpktcount = dso_local global i32 0, align 4
@holdcount = dso_local global i32 0, align 4
@tracing = dso_local global i32 1, align 4
@layout = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@tcb = dso_local global %struct.task* null, align 8
@taskid = dso_local global i64 0, align 8
@v1 = dso_local global i64 0, align 8
@v2 = dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"\0ABad task id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Bench mark starting\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Starting\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"finished\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"qpkt count = %d  holdcount = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"These results are \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"correct\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"incorrect\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0Aend of run\0A\00", align 1
@str = private unnamed_addr constant [20 x i8] c"Bench mark starting\00", align 1
@str.1 = private unnamed_addr constant [9 x i8] c"Starting\00", align 1
@str.2 = private unnamed_addr constant [9 x i8] c"finished\00", align 1
@str.3 = private unnamed_addr constant [12 x i8] c"\0Aend of run\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @createtask(i32 noundef %0, i32 noundef %1, %struct.packet* noundef %2, i32 noundef %3, %struct.task* (%struct.packet*)* noundef %4, i64 noundef %5, i64 noundef %6) #0 {
  %8 = call noalias dereferenceable_or_null(56) i8* @malloc(i64 noundef 56) #6
  %9 = bitcast i8* %8 to %struct.task*
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [11 x %struct.task*], [11 x %struct.task*]* @tasktab, i64 0, i64 %10
  %12 = bitcast %struct.task** %11 to i8**
  store i8* %8, i8** %12, align 8
  %13 = load %struct.task*, %struct.task** @tasklist, align 8
  %14 = getelementptr inbounds %struct.task, %struct.task* %9, i64 0, i32 0
  store %struct.task* %13, %struct.task** %14, align 8
  %15 = getelementptr inbounds %struct.task, %struct.task* %9, i64 0, i32 1
  store i32 %0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.task, %struct.task* %9, i64 0, i32 2
  store i32 %1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.task, %struct.task* %9, i64 0, i32 3
  store %struct.packet* %2, %struct.packet** %17, align 8
  %18 = getelementptr inbounds %struct.task, %struct.task* %9, i64 0, i32 4
  store i32 %3, i32* %18, align 8
  %19 = getelementptr inbounds %struct.task, %struct.task* %9, i64 0, i32 5
  store %struct.task* (%struct.packet*)* %4, %struct.task* (%struct.packet*)** %19, align 8
  %20 = getelementptr inbounds %struct.task, %struct.task* %9, i64 0, i32 6
  store i64 %5, i64* %20, align 8
  %21 = getelementptr inbounds %struct.task, %struct.task* %9, i64 0, i32 7
  store i64 %6, i64* %21, align 8
  store i8* %8, i8** bitcast (%struct.task** @tasklist to i8**), align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.packet* @pkt(%struct.packet* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #6
  %5 = bitcast i8* %4 to %struct.packet*
  br label %6

6:                                                ; preds = %11, %3
  %.0 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %7 = icmp ult i32 %.0, 4
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds %struct.packet, %struct.packet* %5, i64 0, i32 4, i64 %9
  store i8 0, i8* %10, align 1
  br label %11

11:                                               ; preds = %8
  %12 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.packet, %struct.packet* %5, i64 0, i32 0
  store %struct.packet* %0, %struct.packet** %14, align 8
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %5, i64 0, i32 1
  store i32 %1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.packet, %struct.packet* %5, i64 0, i32 2
  store i32 %2, i32* %16, align 4
  %17 = getelementptr inbounds %struct.packet, %struct.packet* %5, i64 0, i32 3
  store i32 0, i32* %17, align 8
  ret %struct.packet* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @trace(i8 noundef signext %0) #0 {
  %2 = load i32, i32* @layout, align 4
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* @layout, align 4
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  %putchar1 = call i32 @putchar(i32 10)
  store i32 50, i32* @layout, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = sext i8 %0 to i32
  %putchar = call i32 @putchar(i32 %7)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @schedule() #0 {
  br label %1

1:                                                ; preds = %51, %0
  %2 = load %struct.task*, %struct.task** @tcb, align 8
  %.not = icmp eq %struct.task* %2, null
  br i1 %.not, label %.loopexit, label %3

3:                                                ; preds = %1
  %4 = load %struct.task*, %struct.task** @tcb, align 8
  %5 = getelementptr inbounds %struct.task, %struct.task* %4, i64 0, i32 4
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %50 [
    i32 3, label %7
    i32 0, label %20
    i32 1, label %20
    i32 2, label %46
    i32 4, label %46
    i32 5, label %46
    i32 6, label %46
    i32 7, label %46
  ]

7:                                                ; preds = %3
  %8 = load %struct.task*, %struct.task** @tcb, align 8
  %9 = getelementptr inbounds %struct.task, %struct.task* %8, i64 0, i32 3
  %10 = load %struct.packet*, %struct.packet** %9, align 8
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %10, i64 0, i32 0
  %12 = load %struct.packet*, %struct.packet** %11, align 8
  %13 = getelementptr inbounds %struct.task, %struct.task* %8, i64 0, i32 3
  store %struct.packet* %12, %struct.packet** %13, align 8
  %14 = load %struct.task*, %struct.task** @tcb, align 8
  %15 = getelementptr inbounds %struct.task, %struct.task* %14, i64 0, i32 3
  %16 = load %struct.packet*, %struct.packet** %15, align 8
  %17 = icmp ne %struct.packet* %16, null
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.task, %struct.task* %14, i64 0, i32 4
  store i32 %18, i32* %19, align 8
  br label %20

20:                                               ; preds = %7, %3, %3
  %.0 = phi %struct.packet* [ null, %3 ], [ null, %3 ], [ %10, %7 ]
  %21 = load %struct.task*, %struct.task** @tcb, align 8
  %22 = getelementptr inbounds %struct.task, %struct.task* %21, i64 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  store i64 %24, i64* @taskid, align 8
  %25 = getelementptr inbounds %struct.task, %struct.task* %21, i64 0, i32 6
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* @v1, align 8
  %27 = load %struct.task*, %struct.task** @tcb, align 8
  %28 = getelementptr inbounds %struct.task, %struct.task* %27, i64 0, i32 7
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* @v2, align 8
  %30 = load i32, i32* @tracing, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i64, i64* @taskid, align 8
  %34 = trunc i64 %33 to i8
  %35 = add i8 %34, 48
  call void @trace(i8 noundef signext %35)
  br label %36

36:                                               ; preds = %32, %20
  %37 = load %struct.task*, %struct.task** @tcb, align 8
  %38 = getelementptr inbounds %struct.task, %struct.task* %37, i64 0, i32 5
  %39 = load %struct.task* (%struct.packet*)*, %struct.task* (%struct.packet*)** %38, align 8
  %40 = call %struct.task* %39(%struct.packet* noundef %.0) #6
  %41 = load i64, i64* @v1, align 8
  %42 = load %struct.task*, %struct.task** @tcb, align 8
  %43 = getelementptr inbounds %struct.task, %struct.task* %42, i64 0, i32 6
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @v2, align 8
  %45 = getelementptr inbounds %struct.task, %struct.task* %42, i64 0, i32 7
  store i64 %44, i64* %45, align 8
  br label %51

46:                                               ; preds = %3, %3, %3, %3, %3
  %47 = load %struct.task*, %struct.task** @tcb, align 8
  %48 = getelementptr inbounds %struct.task, %struct.task* %47, i64 0, i32 0
  %49 = load %struct.task*, %struct.task** %48, align 8
  br label %51

50:                                               ; preds = %3
  br label %52

51:                                               ; preds = %46, %36
  %storemerge = phi %struct.task* [ %49, %46 ], [ %40, %36 ]
  store %struct.task* %storemerge, %struct.task** @tcb, align 8
  br label %1, !llvm.loop !6

.loopexit:                                        ; preds = %1
  br label %52

52:                                               ; preds = %.loopexit, %50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.task* @Wait() #3 {
  %1 = load %struct.task*, %struct.task** @tcb, align 8
  %2 = getelementptr inbounds %struct.task, %struct.task* %1, i64 0, i32 4
  %3 = load i32, i32* %2, align 8
  %4 = or i32 %3, 2
  store i32 %4, i32* %2, align 8
  ret %struct.task* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.task* @holdself() #3 {
  %1 = load i32, i32* @holdcount, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @holdcount, align 4
  %3 = load %struct.task*, %struct.task** @tcb, align 8
  %4 = getelementptr inbounds %struct.task, %struct.task* %3, i64 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = or i32 %5, 4
  store i32 %6, i32* %4, align 8
  %7 = getelementptr inbounds %struct.task, %struct.task* %3, i64 0, i32 0
  %8 = load %struct.task*, %struct.task** %7, align 8
  ret %struct.task* %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @findtcb(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 11
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [11 x %struct.task*], [11 x %struct.task*]* @tasktab, i64 0, i64 %6
  %8 = load %struct.task*, %struct.task** %7, align 8
  br label %9

9:                                                ; preds = %5, %3, %1
  %.0 = phi %struct.task* [ %8, %5 ], [ null, %3 ], [ null, %1 ]
  %10 = icmp eq %struct.task* %.0, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 noundef %0) #6
  br label %13

13:                                               ; preds = %11, %9
  ret %struct.task* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @release(i32 noundef %0) #0 {
  %2 = call %struct.task* @findtcb(i32 noundef %0)
  %3 = icmp eq %struct.task* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.task, %struct.task* %2, i64 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 65531
  store i32 %8, i32* %6, align 8
  %9 = getelementptr inbounds %struct.task, %struct.task* %2, i64 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.task*, %struct.task** @tcb, align 8
  %12 = getelementptr inbounds %struct.task, %struct.task* %11, i64 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %18

16:                                               ; preds = %5
  %17 = load %struct.task*, %struct.task** @tcb, align 8
  br label %18

18:                                               ; preds = %16, %15, %4
  %.0 = phi %struct.task* [ null, %4 ], [ %2, %15 ], [ %17, %16 ]
  ret %struct.task* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @qpkt(%struct.packet* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.packet, %struct.packet* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = call %struct.task* @findtcb(i32 noundef %3)
  %5 = icmp eq %struct.task* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %35

7:                                                ; preds = %1
  %8 = load i32, i32* @qpktcount, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @qpktcount, align 4
  %10 = getelementptr inbounds %struct.packet, %struct.packet* %0, i64 0, i32 0
  store %struct.packet* null, %struct.packet** %10, align 8
  %11 = load i64, i64* @taskid, align 8
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.packet, %struct.packet* %0, i64 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.task, %struct.task* %4, i64 0, i32 3
  %15 = load %struct.packet*, %struct.packet** %14, align 8
  %16 = icmp eq %struct.packet* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.task, %struct.task* %4, i64 0, i32 3
  store %struct.packet* %0, %struct.packet** %18, align 8
  %19 = getelementptr inbounds %struct.task, %struct.task* %4, i64 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.task, %struct.task* %4, i64 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.task*, %struct.task** @tcb, align 8
  %25 = getelementptr inbounds %struct.task, %struct.task* %24, i64 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %35

29:                                               ; preds = %17
  br label %33

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.task, %struct.task* %4, i64 0, i32 3
  %32 = bitcast %struct.packet** %31 to %struct.packet*
  call void @append(%struct.packet* noundef %0, %struct.packet* noundef nonnull %32)
  br label %33

33:                                               ; preds = %30, %29
  %34 = load %struct.task*, %struct.task** @tcb, align 8
  br label %35

35:                                               ; preds = %33, %28, %6
  %.0 = phi %struct.task* [ %4, %6 ], [ %4, %28 ], [ %34, %33 ]
  ret %struct.task* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @append(%struct.packet* noundef %0, %struct.packet* nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.packet, %struct.packet* %0, i64 0, i32 0
  store %struct.packet* null, %struct.packet** %3, align 8
  br label %4

4:                                                ; preds = %7, %2
  %.0 = phi %struct.packet* [ %1, %2 ], [ %9, %7 ]
  %5 = getelementptr inbounds %struct.packet, %struct.packet* %.0, i64 0, i32 0
  %6 = load %struct.packet*, %struct.packet** %5, align 8
  %.not = icmp eq %struct.packet* %6, null
  br i1 %.not, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.packet, %struct.packet* %.0, i64 0, i32 0
  %9 = load %struct.packet*, %struct.packet** %8, align 8
  br label %4, !llvm.loop !7

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %.0, i64 0, i32 0
  store %struct.packet* %0, %struct.packet** %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @idlefn(%struct.packet* nocapture noundef readnone %0) #0 {
  %2 = load i64, i64* @v2, align 8
  %3 = add nsw i64 %2, -1
  store i64 %3, i64* @v2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call %struct.task* @holdself()
  br label %22

7:                                                ; preds = %1
  %8 = load i64, i64* @v1, align 8
  %9 = and i64 %8, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i64, i64* @v1, align 8
  %13 = lshr i64 %12, 1
  %14 = and i64 %13, 32767
  store i64 %14, i64* @v1, align 8
  %15 = call %struct.task* @release(i32 noundef 5)
  br label %22

16:                                               ; preds = %7
  %17 = load i64, i64* @v1, align 8
  %18 = lshr i64 %17, 1
  %19 = and i64 %18, 32767
  %20 = xor i64 %19, 53256
  store i64 %20, i64* @v1, align 8
  %21 = call %struct.task* @release(i32 noundef 6)
  br label %22

22:                                               ; preds = %16, %11, %5
  %.0 = phi %struct.task* [ %6, %5 ], [ %15, %11 ], [ %21, %16 ]
  ret %struct.task* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @workfn(%struct.packet* noundef %0) #0 {
  %2 = icmp eq %struct.packet* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = call %struct.task* @Wait()
  br label %27

5:                                                ; preds = %1
  %6 = load i64, i64* @v1, align 8
  %7 = sub nsw i64 7, %6
  store i64 %7, i64* @v1, align 8
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.packet, %struct.packet* %0, i64 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.packet, %struct.packet* %0, i64 0, i32 3
  store i32 0, i32* %10, align 8
  br label %11

11:                                               ; preds = %23, %5
  %.01 = phi i32 [ 0, %5 ], [ %24, %23 ]
  %12 = icmp ult i32 %.01, 4
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = load i64, i64* @v2, align 8
  %15 = add nsw i64 %14, 1
  %16 = icmp sgt i64 %14, 25
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %13
  %storemerge = phi i64 [ 1, %17 ], [ %15, %13 ]
  store i64 %storemerge, i64* @v2, align 8
  %19 = getelementptr inbounds [28 x i8], [28 x i8]* @alphabet, i64 0, i64 %storemerge
  %20 = load i8, i8* %19, align 1
  %21 = zext i32 %.01 to i64
  %22 = getelementptr inbounds %struct.packet, %struct.packet* %0, i64 0, i32 4, i64 %21
  store i8 %20, i8* %22, align 1
  br label %23

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %.01, 1
  br label %11, !llvm.loop !8

25:                                               ; preds = %11
  %26 = call %struct.task* @qpkt(%struct.packet* noundef nonnull %0)
  br label %27

27:                                               ; preds = %25, %3
  %.0 = phi %struct.task* [ %4, %3 ], [ %26, %25 ]
  ret %struct.task* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @handlerfn(%struct.packet* noundef %0) #0 {
  %.not = icmp eq %struct.packet* %0, null
  br i1 %.not, label %7, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.packet, %struct.packet* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 1001
  %6 = select i1 %5, %struct.packet* bitcast (i64* @v1 to %struct.packet*), %struct.packet* bitcast (i64* @v2 to %struct.packet*)
  call void @append(%struct.packet* noundef nonnull %0, %struct.packet* noundef %6)
  br label %7

7:                                                ; preds = %2, %1
  %8 = load i64, i64* @v1, align 8
  %.not1 = icmp eq i64 %8, 0
  br i1 %.not1, label %40, label %9

9:                                                ; preds = %7
  %10 = load i64, i64* @v1, align 8
  %11 = inttoptr i64 %10 to %struct.packet*
  %12 = getelementptr inbounds %struct.packet, %struct.packet* %11, i64 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 3
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i64, i64* @v1, align 8
  %17 = inttoptr i64 %16 to %struct.packet*
  %18 = getelementptr inbounds %struct.packet, %struct.packet* %17, i64 0, i32 0
  %19 = load %struct.packet*, %struct.packet** %18, align 8
  %20 = ptrtoint %struct.packet* %19 to i64
  store i64 %20, i64* @v1, align 8
  %21 = call %struct.task* @qpkt(%struct.packet* noundef %11)
  br label %42

22:                                               ; preds = %9
  %23 = load i64, i64* @v2, align 8
  %.not2 = icmp eq i64 %23, 0
  br i1 %.not2, label %39, label %24

24:                                               ; preds = %22
  %25 = load i64, i64* @v2, align 8
  %26 = inttoptr i64 %25 to %struct.packet*
  %27 = inttoptr i64 %25 to %struct.packet*
  %28 = getelementptr inbounds %struct.packet, %struct.packet* %27, i64 0, i32 0
  %29 = load %struct.packet*, %struct.packet** %28, align 8
  %30 = ptrtoint %struct.packet* %29 to i64
  store i64 %30, i64* @v2, align 8
  %31 = sext i32 %13 to i64
  %32 = getelementptr inbounds %struct.packet, %struct.packet* %11, i64 0, i32 4, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %struct.packet, %struct.packet* %26, i64 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = add nsw i32 %13, 1
  %37 = getelementptr inbounds %struct.packet, %struct.packet* %11, i64 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = call %struct.task* @qpkt(%struct.packet* noundef %26)
  br label %42

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %7
  %41 = call %struct.task* @Wait()
  br label %42

42:                                               ; preds = %40, %24, %15
  %.0 = phi %struct.task* [ %21, %15 ], [ %38, %24 ], [ %41, %40 ]
  ret %struct.task* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.task* @devfn(%struct.packet* noundef %0) #0 {
  %2 = icmp eq %struct.packet* %0, null
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = load i64, i64* @v1, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call %struct.task* @Wait()
  br label %22

8:                                                ; preds = %3
  %9 = load i64, i64* @v1, align 8
  %10 = inttoptr i64 %9 to %struct.packet*
  store i64 0, i64* @v1, align 8
  %11 = call %struct.task* @qpkt(%struct.packet* noundef %10)
  br label %22

12:                                               ; preds = %1
  %13 = ptrtoint %struct.packet* %0 to i64
  store i64 %13, i64* @v1, align 8
  %14 = load i32, i32* @tracing, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.packet, %struct.packet* %0, i64 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = trunc i32 %18 to i8
  call void @trace(i8 noundef signext %19)
  br label %20

20:                                               ; preds = %16, %12
  %21 = call %struct.task* @holdself()
  br label %22

22:                                               ; preds = %20, %8, %6
  %.0 = phi %struct.task* [ %7, %6 ], [ %11, %8 ], [ %21, %20 ]
  ret %struct.task* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0))
  call void @createtask(i32 noundef 1, i32 noundef 0, %struct.packet* noundef null, i32 noundef 0, %struct.task* (%struct.packet*)* noundef nonnull @idlefn, i64 noundef 1, i64 noundef 10000000)
  %1 = call %struct.packet* @pkt(%struct.packet* noundef null, i32 noundef 0, i32 noundef 1001)
  %2 = call %struct.packet* @pkt(%struct.packet* noundef %1, i32 noundef 0, i32 noundef 1001)
  call void @createtask(i32 noundef 2, i32 noundef 1000, %struct.packet* noundef %2, i32 noundef 3, %struct.task* (%struct.packet*)* noundef nonnull @workfn, i64 noundef 3, i64 noundef 0)
  %3 = call %struct.packet* @pkt(%struct.packet* noundef null, i32 noundef 5, i32 noundef 1000)
  %4 = call %struct.packet* @pkt(%struct.packet* noundef %3, i32 noundef 5, i32 noundef 1000)
  %5 = call %struct.packet* @pkt(%struct.packet* noundef %4, i32 noundef 5, i32 noundef 1000)
  call void @createtask(i32 noundef 3, i32 noundef 2000, %struct.packet* noundef %5, i32 noundef 3, %struct.task* (%struct.packet*)* noundef nonnull @handlerfn, i64 noundef 0, i64 noundef 0)
  %6 = call %struct.packet* @pkt(%struct.packet* noundef null, i32 noundef 6, i32 noundef 1000)
  %7 = call %struct.packet* @pkt(%struct.packet* noundef %6, i32 noundef 6, i32 noundef 1000)
  %8 = call %struct.packet* @pkt(%struct.packet* noundef %7, i32 noundef 6, i32 noundef 1000)
  call void @createtask(i32 noundef 4, i32 noundef 3000, %struct.packet* noundef %8, i32 noundef 3, %struct.task* (%struct.packet*)* noundef nonnull @handlerfn, i64 noundef 0, i64 noundef 0)
  call void @createtask(i32 noundef 5, i32 noundef 4000, %struct.packet* noundef null, i32 noundef 2, %struct.task* (%struct.packet*)* noundef nonnull @devfn, i64 noundef 0, i64 noundef 0)
  call void @createtask(i32 noundef 6, i32 noundef 5000, %struct.packet* noundef null, i32 noundef 2, %struct.task* (%struct.packet*)* noundef nonnull @devfn, i64 noundef 0, i64 noundef 0)
  %9 = load %struct.task*, %struct.task** @tasklist, align 8
  store %struct.task* %9, %struct.task** @tcb, align 8
  store i32 0, i32* @holdcount, align 4
  store i32 0, i32* @qpktcount, align 4
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.1, i64 0, i64 0))
  store i32 0, i32* @tracing, align 4
  store i32 0, i32* @layout, align 4
  call void @schedule()
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.2, i64 0, i64 0))
  %10 = load i32, i32* @qpktcount, align 4
  %11 = load i32, i32* @holdcount, align 4
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 noundef %10, i32 noundef %11) #6
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #6
  %14 = load i32, i32* @qpktcount, align 4
  %15 = icmp eq i32 %14, 23263894
  br i1 %15, label %16, label %21

16:                                               ; preds = %0
  %17 = load i32, i32* @holdcount, align 4
  %18 = icmp eq i32 %17, 9305557
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #6
  br label %23

21:                                               ; preds = %16, %0
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #6
  br label %23

23:                                               ; preds = %21, %19
  %.0 = phi i32 [ 0, %19 ], [ 1, %21 ]
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.3, i64 0, i64 0))
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
