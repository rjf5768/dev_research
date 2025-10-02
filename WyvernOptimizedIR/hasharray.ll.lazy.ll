; ModuleID = './hasharray.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/hasharray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }

@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.LIST_HELP** @hsh_Create() #0 {
  %1 = call i8* @memory_Malloc(i32 noundef 232) #7
  %2 = bitcast i8* %1 to %struct.LIST_HELP**
  br label %3

3:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %4 = icmp ult i32 %.0, 29
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = call %struct.LIST_HELP* @list_Nil()
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %2, i64 %7
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %8, align 8
  br label %9

9:                                                ; preds = %5
  %10 = add i32 %.0, 1
  br label %3, !llvm.loop !4

11:                                               ; preds = %3
  ret %struct.LIST_HELP** %2
}

declare dso_local i8* @memory_Malloc(i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias %struct.LIST_HELP* @list_Nil() #2 {
  ret %struct.LIST_HELP* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsh_Reset(%struct.LIST_HELP** nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %24, %1
  %.01 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %3 = icmp ult i32 %.01, 29
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %0, i64 %5
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  br label %8

8:                                                ; preds = %15, %4
  %.0 = phi %struct.LIST_HELP* [ %7, %4 ], [ %16, %15 ]
  %9 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.0)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %17

10:                                               ; preds = %8
  %11 = call i8* @list_Car(%struct.LIST_HELP* noundef %.0)
  %12 = bitcast i8* %11 to %struct.LIST_HELP*
  %13 = call i8* @list_PairSecond(%struct.LIST_HELP* noundef %12)
  %14 = bitcast i8* %13 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* noundef %14)
  call void @list_PairFree(%struct.LIST_HELP* noundef %12)
  br label %15

15:                                               ; preds = %10
  %16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  br label %8, !llvm.loop !6

17:                                               ; preds = %8
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %0, i64 %18
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %19, align 8
  call void @list_Delete(%struct.LIST_HELP* noundef %20)
  %21 = call %struct.LIST_HELP* @list_Nil()
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %0, i64 %22
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %23, align 8
  br label %24

24:                                               ; preds = %17
  %25 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !7

26:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @list_Empty(%struct.LIST_HELP* noundef readnone %0) #2 {
  %2 = icmp eq %struct.LIST_HELP* %0, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_Car(%struct.LIST_HELP* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi %struct.LIST_HELP* [ %0, %1 ], [ %5, %4 ]
  %3 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %6

4:                                                ; preds = %2
  %5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.0)
  call void @list_Free(%struct.LIST_HELP* noundef %.0)
  br label %2, !llvm.loop !8

6:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_PairSecond(%struct.LIST_HELP* nocapture noundef readonly %0) #3 {
  %2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %0)
  %3 = bitcast %struct.LIST_HELP* %2 to i8*
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @list_PairFree(%struct.LIST_HELP* noundef %0) #0 {
  call void @list_Free(%struct.LIST_HELP* noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 0
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hsh_Delete(%struct.LIST_HELP** noundef %0) #0 {
  call void @hsh_Reset(%struct.LIST_HELP** noundef %0)
  %2 = bitcast %struct.LIST_HELP** %0 to i8*
  call void @memory_Free(i8* noundef %2, i32 noundef 232)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @memory_Free(i8* noundef %0, i32 noundef %1) #0 {
  %3 = call i32 @memory_LookupRealBlockSize(i32 noundef %1)
  %4 = icmp ugt i32 %1, 1023
  br i1 %4, label %5, label %53

5:                                                ; preds = %2
  %6 = load i32, i32* @memory_OFFSET, align 4
  %7 = zext i32 %6 to i64
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 -16
  %11 = bitcast i8* %10 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %12 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %11, align 8
  %.not = icmp eq %struct.MEMORY_BIGBLOCKHEADERHELP* %12, null
  br i1 %.not, label %20, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, i8* %10, i64 8
  %15 = bitcast i8* %14 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %16 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %15, align 8
  %17 = bitcast i8* %10 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %18 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %17, align 8
  %19 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %18, i64 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %16, %struct.MEMORY_BIGBLOCKHEADERHELP** %19, align 8
  br label %24

20:                                               ; preds = %5
  %21 = getelementptr inbounds i8, i8* %10, i64 8
  %22 = bitcast i8* %21 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %23 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %22, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %23, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %24

24:                                               ; preds = %20, %13
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %27 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %26, align 8
  %.not1 = icmp eq %struct.MEMORY_BIGBLOCKHEADERHELP* %27, null
  br i1 %.not1, label %35, label %28

28:                                               ; preds = %24
  %29 = bitcast i8* %10 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %30 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %29, align 8
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to %struct.MEMORY_BIGBLOCKHEADERHELP**
  %33 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %32, align 8
  %34 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %33, i64 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %30, %struct.MEMORY_BIGBLOCKHEADERHELP** %34, align 8
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32, i32* @memory_MARKSIZE, align 4
  %37 = add i32 %3, %36
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %38, 16
  %40 = load i64, i64* @memory_FREEDBYTES, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* @memory_FREEDBYTES, align 8
  %42 = load i64, i64* @memory_MAXMEM, align 8
  %43 = icmp sgt i64 %42, -1
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i32, i32* @memory_MARKSIZE, align 4
  %46 = add i32 %3, %45
  %47 = zext i32 %46 to i64
  %48 = add nuw nsw i64 %47, 16
  %49 = load i64, i64* @memory_MAXMEM, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* @memory_MAXMEM, align 8
  br label %51

51:                                               ; preds = %44, %35
  %52 = getelementptr inbounds i8, i8* %0, i64 -16
  call void @free(i8* noundef %52) #7
  br label %72

53:                                               ; preds = %2
  %54 = zext i32 %1 to i64
  %55 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %54
  %56 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %55, align 8
  %57 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %56, i64 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @memory_FREEDBYTES, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* @memory_FREEDBYTES, align 8
  %62 = zext i32 %1 to i64
  %63 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %62
  %64 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %63, align 8
  %65 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %64, i64 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %0 to i8**
  store i8* %66, i8** %67, align 8
  %68 = zext i32 %1 to i64
  %69 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %68
  %70 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %69, align 8
  %71 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %70, i64 0, i32 0
  store i8* %0, i8** %71, align 8
  br label %72

72:                                               ; preds = %53, %51
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.LIST_HELP* @hsh_GetAllEntries(%struct.LIST_HELP** nocapture noundef readonly %0) #0 {
  %2 = call %struct.LIST_HELP* @list_Nil()
  br label %3

3:                                                ; preds = %21, %1
  %.02 = phi %struct.LIST_HELP* [ %2, %1 ], [ %.1, %21 ]
  %.0 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %4 = icmp ult i32 %.0, 29
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %0, i64 %6
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  br label %9

9:                                                ; preds = %18, %5
  %.1 = phi %struct.LIST_HELP* [ %.02, %5 ], [ %17, %18 ]
  %.01 = phi %struct.LIST_HELP* [ %8, %5 ], [ %19, %18 ]
  %10 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %20

11:                                               ; preds = %9
  %12 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %13 = bitcast i8* %12 to %struct.LIST_HELP*
  %14 = call i8* @list_PairSecond(%struct.LIST_HELP* noundef %13)
  %15 = bitcast i8* %14 to %struct.LIST_HELP*
  %16 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef %15) #7
  %17 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* noundef %.1, %struct.LIST_HELP* noundef %16)
  br label %18

18:                                               ; preds = %11
  %19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  br label %9, !llvm.loop !9

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = add i32 %.0, 1
  br label %3, !llvm.loop !10

23:                                               ; preds = %3
  ret %struct.LIST_HELP* %.02
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* noundef %0, %struct.LIST_HELP* noundef %1) #4 {
  %3 = call i32 @list_Empty(%struct.LIST_HELP* noundef %0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %17

5:                                                ; preds = %2
  %6 = call i32 @list_Empty(%struct.LIST_HELP* noundef %1)
  %.not2 = icmp eq i32 %6, 0
  br i1 %.not2, label %8, label %7

7:                                                ; preds = %5
  br label %17

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %13, %8
  %.01 = phi %struct.LIST_HELP* [ %0, %8 ], [ %14, %13 ]
  %10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  %11 = call i32 @list_Empty(%struct.LIST_HELP* noundef %10)
  %.not3 = icmp eq i32 %11, 0
  br i1 %.not3, label %12, label %15

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12
  %14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  br label %9, !llvm.loop !11

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %.01, i64 0, i32 0
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %16, align 8
  br label %17

17:                                               ; preds = %15, %7, %4
  %.0 = phi %struct.LIST_HELP* [ %1, %4 ], [ %0, %7 ], [ %0, %15 ]
  ret %struct.LIST_HELP* %.0
}

declare dso_local %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local void @hsh_Check(%struct.LIST_HELP** nocapture noundef %0) #5 {
  br label %2

2:                                                ; preds = %24, %1
  %.0 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %3 = icmp ult i32 %.0, 29
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %0, i64 %5
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  br label %8

8:                                                ; preds = %21, %4
  %.01 = phi %struct.LIST_HELP* [ %7, %4 ], [ %22, %21 ]
  %9 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.01)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %23

10:                                               ; preds = %8
  %11 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %12 = bitcast i8* %11 to %struct.LIST_HELP*
  %13 = call i8* @list_PairSecond(%struct.LIST_HELP* noundef %12)
  %14 = bitcast i8* %13 to %struct.LIST_HELP*
  br label %15

15:                                               ; preds = %18, %10
  %.02 = phi %struct.LIST_HELP* [ %14, %10 ], [ %19, %18 ]
  %16 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.02)
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %20

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.02)
  br label %15, !llvm.loop !12

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20
  %22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  br label %8, !llvm.loop !13

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %23
  %25 = add i32 %.0, 1
  br label %2, !llvm.loop !14

26:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i8* @list_PairFirst(%struct.LIST_HELP* nocapture noundef readonly %0) #3 {
  %2 = call i8* @list_Car(%struct.LIST_HELP* noundef %0)
  ret i8* %2
}

; Function Attrs: noinline nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* noundef %0) #0 {
  %2 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* noundef %2, i32 noundef 16)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @memory_LookupRealBlockSize(i32 noundef %0) #3 {
  %2 = icmp ult i32 %0, 1024
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i64 0, i64 %4
  %6 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %5, align 8
  %7 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %6, i64 0, i32 5
  %8 = load i32, i32* %7, align 4
  br label %11

9:                                                ; preds = %1
  %10 = call i32 @memory_CalculateRealBlockSize(i32 noundef %0)
  br label %11

11:                                               ; preds = %9, %3
  %.0 = phi i32 [ %8, %3 ], [ %10, %9 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @memory_CalculateRealBlockSize(i32 noundef %0) #2 {
  br i1 false, label %2, label %3

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1
  %4 = load i32, i32* @memory_ALIGN, align 4
  %5 = urem i32 %0, %4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %11, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @memory_ALIGN, align 4
  %8 = urem i32 %0, %7
  %9 = sub i32 %7, %8
  %10 = add i32 %9, %0
  br label %11

11:                                               ; preds = %6, %3
  %.1 = phi i32 [ %10, %6 ], [ %0, %3 ]
  ret i32 %.1
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
