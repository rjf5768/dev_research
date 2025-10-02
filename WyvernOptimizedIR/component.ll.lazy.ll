; ModuleID = './component.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.cliteral = type { i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.litptr = type { %struct.cliteral**, i32 }

@.str = private unnamed_addr constant [23 x i8] c"\0Alength of LITPTR: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Entries of literal %d : \0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"----------------------\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"used:\09\09\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"litindex:\09%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"litvarlist:\09\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"No entries in litptr structure\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\0Aj = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\0Aj == %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"lit = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"i   = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"hasinter = TRUE\00", align 1
@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cliteral* @literal_Create(i32 noundef %0, i32 noundef %1, %struct.LIST_HELP* noundef %2) #0 {
  %4 = call i8* @memory_Malloc(i32 noundef 16) #9
  %5 = bitcast i8* %4 to %struct.cliteral*
  call void @literal_PutUsed(%struct.cliteral* noundef %5, i32 noundef %0)
  call void @literal_PutLitIndex(%struct.cliteral* noundef %5, i32 noundef %1)
  call void @literal_PutLitVarList(%struct.cliteral* noundef %5, %struct.LIST_HELP* noundef %2)
  ret %struct.cliteral* %5
}

declare dso_local i8* @memory_Malloc(i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @literal_PutUsed(%struct.cliteral* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i64 0, i32 0
  store i32 %1, i32* %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @literal_PutLitIndex(%struct.cliteral* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i64 0, i32 1
  store i32 %1, i32* %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @literal_PutLitVarList(%struct.cliteral* nocapture noundef writeonly %0, %struct.LIST_HELP* noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i64 0, i32 2
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @literal_Delete(%struct.cliteral* noundef %0) #0 {
  %2 = call %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* noundef %0)
  call void @list_Delete(%struct.LIST_HELP* noundef %2)
  call void @literal_Free(%struct.cliteral* noundef %0)
  ret void
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
  br label %2, !llvm.loop !4

6:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i64 0, i32 2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: noinline nounwind uwtable
define internal void @literal_Free(%struct.cliteral* noundef %0) #0 {
  %2 = bitcast %struct.cliteral* %0 to i8*
  call void @memory_Free(i8* noundef %2, i32 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.litptr* @litptr_Create(%struct.LIST_HELP* noundef %0, %struct.LIST_HELP* nocapture noundef readonly %1) #0 {
  %3 = call i32 @list_Length(%struct.LIST_HELP* noundef %0) #9
  %4 = call i8* @memory_Malloc(i32 noundef 16) #9
  %5 = bitcast i8* %4 to %struct.litptr*
  call void @litptr_SetLength(%struct.litptr* noundef %5, i32 noundef %3)
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = shl i32 %3, 3
  %9 = call i8* @memory_Malloc(i32 noundef %8) #9
  %10 = bitcast i8* %4 to i8**
  store i8* %9, i8** %10, align 8
  br label %11

11:                                               ; preds = %21, %7
  %.02 = phi %struct.LIST_HELP* [ %0, %7 ], [ %23, %21 ]
  %.01 = phi %struct.LIST_HELP* [ %1, %7 ], [ %19, %21 ]
  %.0 = phi i32 [ 0, %7 ], [ %22, %21 ]
  %12 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.02)
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %13, label %24

13:                                               ; preds = %11
  %14 = call i8* @list_Car(%struct.LIST_HELP* noundef %.02)
  %15 = ptrtoint i8* %14 to i64
  %16 = trunc i64 %15 to i32
  %17 = call i8* @list_Car(%struct.LIST_HELP* noundef %.01)
  %18 = bitcast i8* %17 to %struct.LIST_HELP*
  %19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.01)
  %20 = call %struct.cliteral* @literal_Create(i32 noundef 0, i32 noundef %16, %struct.LIST_HELP* noundef %18)
  call void @litptr_SetLiteral(%struct.litptr* noundef %5, i32 noundef %.0, %struct.cliteral* noundef %20)
  br label %21

21:                                               ; preds = %13
  %22 = add nuw nsw i32 %.0, 1
  %23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.02)
  br label %11, !llvm.loop !6

24:                                               ; preds = %11
  br label %27

25:                                               ; preds = %2
  %26 = bitcast i8* %4 to %struct.cliteral***
  store %struct.cliteral** null, %struct.cliteral*** %26, align 8
  br label %27

27:                                               ; preds = %25, %24
  ret %struct.litptr* %5
}

declare dso_local i32 @list_Length(%struct.LIST_HELP* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @litptr_SetLength(%struct.litptr* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i64 0, i32 1
  store i32 %1, i32* %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @list_Empty(%struct.LIST_HELP* noundef readnone %0) #4 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i64 0, i32 0
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @litptr_SetLiteral(%struct.litptr* nocapture noundef readonly %0, i32 noundef %1, %struct.cliteral* noundef %2) #5 {
  %4 = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i64 0, i32 0
  %5 = load %struct.cliteral**, %struct.cliteral*** %4, align 8
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %5, i64 %6
  store %struct.cliteral* %2, %struct.cliteral** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @litptr_Delete(%struct.litptr* noundef %0) #0 {
  %2 = call i32 @litptr_Length(%struct.litptr* noundef %0)
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %9, %4
  %.0 = phi i32 [ 0, %4 ], [ %10, %9 ]
  %6 = icmp slt i32 %.0, %2
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %.0)
  call void @literal_Delete(%struct.cliteral* noundef %8)
  br label %9

9:                                                ; preds = %7
  %10 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !7

11:                                               ; preds = %5
  %12 = bitcast %struct.litptr* %0 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = shl i32 %2, 3
  call void @memory_Free(i8* noundef %13, i32 noundef %14)
  %15 = bitcast %struct.litptr* %0 to i8*
  call void @memory_Free(i8* noundef %15, i32 noundef 16)
  br label %18

16:                                               ; preds = %1
  %17 = bitcast %struct.litptr* %0 to i8*
  call void @memory_Free(i8* noundef %17, i32 noundef 16)
  br label %18

18:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @litptr_Length(%struct.litptr* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.cliteral* @litptr_Literal(%struct.litptr* nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i64 0, i32 0
  %4 = load %struct.cliteral**, %struct.cliteral*** %3, align 8
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %4, i64 %5
  %7 = load %struct.cliteral*, %struct.cliteral** %6, align 8
  ret %struct.cliteral* %7
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
  call void @free(i8* noundef %52) #9
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
define dso_local void @litptr_Print(%struct.litptr* nocapture noundef readonly %0) #0 {
  %2 = call i32 @litptr_Length(%struct.litptr* noundef %0)
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %31

4:                                                ; preds = %1
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %2) #9
  br label %6

6:                                                ; preds = %28, %4
  %.0 = phi i32 [ 0, %4 ], [ %29, %28 ]
  %7 = icmp slt i32 %.0, %2
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.0) #9
  %10 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0)) #9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %11)
  %13 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %.0)
  %14 = call i32 @literal_GetUsed(%struct.cliteral* noundef %13)
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %17, label %15

15:                                               ; preds = %8
  %16 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #9
  br label %19

17:                                               ; preds = %8
  %18 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #9
  br label %19

19:                                               ; preds = %17, %15
  %20 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %.0)
  %21 = call i32 @literal_GetLitIndex(%struct.cliteral* noundef %20)
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 noundef %21) #9
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %23)
  %25 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %.0)
  %26 = call %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* noundef %25)
  call void @list_Apply(void (i8*)* noundef bitcast (void (i32)* @symbol_Print to void (i8*)*), %struct.LIST_HELP* noundef %26) #9
  %27 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #9
  br label %28

28:                                               ; preds = %19
  %29 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !8

30:                                               ; preds = %6
  br label %33

31:                                               ; preds = %1
  %32 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0)) #9
  br label %33

33:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @literal_GetUsed(%struct.cliteral* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @literal_GetLitIndex(%struct.cliteral* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

declare dso_local void @list_Apply(void (i8*)* noundef, %struct.LIST_HELP* noundef) #1

declare dso_local void @symbol_Print(i32 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @litptr_AllUsed(%struct.litptr* nocapture noundef readonly %0) #6 {
  %2 = call i32 @litptr_Length(%struct.litptr* noundef %0)
  br label %3

3:                                                ; preds = %10, %1
  %.01 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %4 = icmp slt i32 %.01, %2
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %.01)
  %7 = call i32 @literal_GetUsed(%struct.cliteral* noundef %6)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %5
  br label %13

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %8
  %.0 = phi i32 [ 0, %8 ], [ 1, %12 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.LIST_HELP* @subs_CompList(%struct.litptr* nocapture noundef readonly %0) #0 {
  %2 = call %struct.LIST_HELP* @list_Nil()
  %3 = call i32 @litptr_Length(%struct.litptr* noundef %0)
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %96

5:                                                ; preds = %1
  %6 = call %struct.LIST_HELP* @list_Nil()
  br label %7

7:                                                ; preds = %32, %5
  %.012 = phi %struct.LIST_HELP* [ %2, %5 ], [ %.113, %32 ]
  %.06 = phi %struct.LIST_HELP* [ %6, %5 ], [ %.17, %32 ]
  %.01 = phi i32 [ 0, %5 ], [ %33, %32 ]
  %8 = icmp slt i32 %.01, %3
  br i1 %8, label %9, label %34

9:                                                ; preds = %7
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 noundef %.01) #9
  %11 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %.01)
  %12 = call i32 @literal_GetUsed(%struct.cliteral* noundef %11)
  %.not23 = icmp eq i32 %12, 0
  br i1 %.not23, label %13, label %31

13:                                               ; preds = %9
  %14 = call %struct.LIST_HELP* @list_Nil()
  %15 = sext i32 %.01 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call %struct.LIST_HELP* @list_Cons(i8* noundef %16, %struct.LIST_HELP* noundef %14)
  %18 = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i64 0, i32 0
  %19 = load %struct.cliteral**, %struct.cliteral*** %18, align 8
  %20 = sext i32 %.01 to i64
  %21 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %19, i64 %20
  %22 = load %struct.cliteral*, %struct.cliteral** %21, align 8
  %23 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %22, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call %struct.LIST_HELP* @list_Cons(i8* noundef %26, %struct.LIST_HELP* noundef %.012)
  %28 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %.01)
  call void @literal_PutUsed(%struct.cliteral* noundef %28, i32 noundef 1)
  %29 = add nsw i32 %3, 1
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 noundef %29) #9
  br label %31

31:                                               ; preds = %13, %9
  %.113 = phi %struct.LIST_HELP* [ %.012, %9 ], [ %27, %13 ]
  %.17 = phi %struct.LIST_HELP* [ %.06, %9 ], [ %17, %13 ]
  %.1 = phi i32 [ %.01, %9 ], [ %29, %13 ]
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %.1, 1
  br label %7, !llvm.loop !10

34:                                               ; preds = %7
  %35 = icmp eq i32 %.01, %3
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  call void @list_Delete(%struct.LIST_HELP* noundef %.06)
  br label %97

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %94, %37
  %.214 = phi %struct.LIST_HELP* [ %.012, %37 ], [ %.315, %94 ]
  %.28 = phi %struct.LIST_HELP* [ %.06, %37 ], [ %.39, %94 ]
  %.02 = phi i32 [ 1, %37 ], [ %.5, %94 ]
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %95, label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %90, %39
  %.315 = phi %struct.LIST_HELP* [ %.214, %39 ], [ %.416, %90 ]
  %.39 = phi %struct.LIST_HELP* [ %.28, %39 ], [ %.410, %90 ]
  %.05 = phi %struct.LIST_HELP* [ %.28, %39 ], [ %91, %90 ]
  %.13 = phi i32 [ 0, %39 ], [ %.2, %90 ]
  %41 = call i32 @list_Empty(%struct.LIST_HELP* noundef %.05)
  %.not19 = icmp eq i32 %41, 0
  br i1 %.not19, label %42, label %92

42:                                               ; preds = %40
  %43 = call i8* @list_Car(%struct.LIST_HELP* noundef %.05)
  %44 = ptrtoint i8* %43 to i64
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %87, %42
  %.416 = phi %struct.LIST_HELP* [ %.315, %42 ], [ %.618, %87 ]
  %.410 = phi %struct.LIST_HELP* [ %.39, %42 ], [ %.6, %87 ]
  %.04 = phi i32 [ 0, %42 ], [ %88, %87 ]
  %.2 = phi i32 [ %.13, %42 ], [ %.4, %87 ]
  %47 = icmp slt i32 %.04, %3
  br i1 %47, label %48, label %89

48:                                               ; preds = %46
  %49 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %.04)
  %50 = call i32 @literal_GetUsed(%struct.cliteral* noundef %49)
  %.not21 = icmp eq i32 %50, 0
  br i1 %.not21, label %51, label %86

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 noundef %45) #9
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 noundef %.04) #9
  %54 = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i64 0, i32 0
  %55 = load %struct.cliteral**, %struct.cliteral*** %54, align 8
  %sext = shl i64 %44, 32
  %56 = ashr exact i64 %sext, 32
  %57 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %55, i64 %56
  %58 = load %struct.cliteral*, %struct.cliteral** %57, align 8
  %59 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %58, i64 0, i32 2
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %59, align 8
  %61 = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i64 0, i32 0
  %62 = load %struct.cliteral**, %struct.cliteral*** %61, align 8
  %63 = zext i32 %.04 to i64
  %64 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %62, i64 %63
  %65 = load %struct.cliteral*, %struct.cliteral** %64, align 8
  %66 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %65, i64 0, i32 2
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %66, align 8
  %68 = call i32 @list_HasIntersection(%struct.LIST_HELP* noundef %60, %struct.LIST_HELP* noundef %67) #9
  %.not22 = icmp eq i32 %68, 0
  br i1 %.not22, label %85, label %69

69:                                               ; preds = %51
  %70 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #9
  %71 = zext i32 %.04 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call %struct.LIST_HELP* @list_Cons(i8* noundef %72, %struct.LIST_HELP* noundef %.410)
  %74 = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i64 0, i32 0
  %75 = load %struct.cliteral**, %struct.cliteral*** %74, align 8
  %76 = zext i32 %.04 to i64
  %77 = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %75, i64 %76
  %78 = load %struct.cliteral*, %struct.cliteral** %77, align 8
  %79 = getelementptr inbounds %struct.cliteral, %struct.cliteral* %78, i64 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call %struct.LIST_HELP* @list_Cons(i8* noundef %82, %struct.LIST_HELP* noundef %.416)
  %84 = call %struct.cliteral* @litptr_Literal(%struct.litptr* noundef %0, i32 noundef %.04)
  call void @literal_PutUsed(%struct.cliteral* noundef %84, i32 noundef 1)
  br label %85

85:                                               ; preds = %69, %51
  %.517 = phi %struct.LIST_HELP* [ %83, %69 ], [ %.416, %51 ]
  %.511 = phi %struct.LIST_HELP* [ %73, %69 ], [ %.410, %51 ]
  %.3 = phi i32 [ 1, %69 ], [ %.2, %51 ]
  br label %86

86:                                               ; preds = %85, %48
  %.618 = phi %struct.LIST_HELP* [ %.416, %48 ], [ %.517, %85 ]
  %.6 = phi %struct.LIST_HELP* [ %.410, %48 ], [ %.511, %85 ]
  %.4 = phi i32 [ %.2, %48 ], [ %.3, %85 ]
  br label %87

87:                                               ; preds = %86
  %88 = add nuw nsw i32 %.04, 1
  br label %46, !llvm.loop !11

89:                                               ; preds = %46
  br label %90

90:                                               ; preds = %89
  %91 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %.05)
  br label %40, !llvm.loop !12

92:                                               ; preds = %40
  %.not20 = icmp eq i32 %.13, 0
  br i1 %.not20, label %93, label %94

93:                                               ; preds = %92
  call void @list_Delete(%struct.LIST_HELP* noundef %.39)
  br label %94

94:                                               ; preds = %93, %92
  %.5 = phi i32 [ %.13, %92 ], [ 0, %93 ]
  br label %38, !llvm.loop !13

95:                                               ; preds = %38
  br label %96

96:                                               ; preds = %95, %1
  %.7 = phi %struct.LIST_HELP* [ %.214, %95 ], [ %2, %1 ]
  br label %97

97:                                               ; preds = %96, %36
  %.0 = phi %struct.LIST_HELP* [ %.012, %36 ], [ %.7, %96 ]
  ret %struct.LIST_HELP* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal noalias %struct.LIST_HELP* @list_Nil() #4 {
  ret %struct.LIST_HELP* null
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* noundef %0, %struct.LIST_HELP* noundef %1) #0 {
  %3 = call i8* @memory_Malloc(i32 noundef 16) #9
  %4 = bitcast i8* %3 to %struct.LIST_HELP*
  %5 = getelementptr inbounds i8, i8* %3, i64 8
  %6 = bitcast i8* %5 to i8**
  store i8* %0, i8** %6, align 8
  %7 = bitcast i8* %3 to %struct.LIST_HELP**
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %7, align 8
  ret %struct.LIST_HELP* %4
}

declare dso_local i32 @list_HasIntersection(%struct.LIST_HELP* noundef, %struct.LIST_HELP* noundef) #1

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
declare dso_local void @free(i8* noundef) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @memory_CalculateRealBlockSize(i32 noundef %0) #4 {
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

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

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
