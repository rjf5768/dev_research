; ModuleID = './partition.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }

@memory_OFFSET = external dso_local global i32, align 4
@memory_BIGBLOCKS = external dso_local global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external dso_local global i32, align 4
@memory_FREEDBYTES = external dso_local global i64, align 8
@memory_MAXMEM = external dso_local global i64, align 8
@memory_ARRAY = external dso_local global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external dso_local constant i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull i32* @part_Create(i32 noundef %0) #0 {
  %2 = mul nsw i32 %0, 3
  %3 = add nsw i32 %2, 3
  %4 = call i8* @memory_Calloc(i32 noundef %3, i32 noundef 4) #8
  %5 = bitcast i8* %4 to i32*
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  %9 = getelementptr inbounds i32, i32* %8, i64 -1
  store i32 %0, i32* %9, align 4
  %10 = mul nsw i32 %0, 3
  %11 = add nsw i32 %10, 3
  %12 = getelementptr inbounds i32, i32* %8, i64 -2
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %8, i64 -3
  store i32 1, i32* %13, align 4
  ret i32* %8
}

declare dso_local i8* @memory_Calloc(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @part_Init(i32* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds i32, i32* %0, i64 -2
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, -3
  %6 = sdiv i32 %5, 3
  %7 = icmp slt i32 %6, %1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  call void @part_Free(i32* noundef %0)
  %9 = call i32* @part_Create(i32 noundef %1)
  br label %26

10:                                               ; preds = %2
  %11 = getelementptr inbounds i32, i32* %0, i64 -1
  store i32 %1, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %0, i64 -3
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = icmp slt i32 %13, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %21, %16
  %.01 = phi i32 [ 0, %16 ], [ %22, %21 ]
  %18 = icmp slt i32 %.01, %6
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = call i32* @part_SetStamp(i32* noundef %0, i32 noundef %.01, i32 noundef 0)
  br label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i32 %.01, 1
  br label %17, !llvm.loop !4

23:                                               ; preds = %17
  %24 = getelementptr inbounds i32, i32* %0, i64 -3
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %10
  br label %26

26:                                               ; preds = %25, %8
  %.0 = phi i32* [ %9, %8 ], [ %0, %25 ]
  ret i32* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @part_Free(i32* noundef %0) #0 {
  %.not = icmp eq i32* %0, null
  br i1 %.not, label %13, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds i32, i32* %0, i64 -2
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, -3
  %.neg = sdiv i32 %5, -3
  %6 = sext i32 %.neg to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = getelementptr inbounds i32, i32* %7, i64 -3
  %9 = bitcast i32* %8 to i8*
  %10 = getelementptr inbounds i32, i32* %0, i64 -2
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 2
  call void @memory_Free(i8* noundef nonnull %9, i32 noundef %12)
  br label %13

13:                                               ; preds = %2, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32* @part_SetStamp(i32* noundef returned writeonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = sub nsw i32 -4, %1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  store i32 %2, i32* %6, align 4
  ret i32* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @part_Find(i32* noundef %0, i32 noundef %1) #3 {
  %3 = call i32 @part_NF(i32* noundef %0, i32 noundef %1)
  %4 = call i32 @part_GetClass(i32* noundef %0, i32 noundef %3)
  %5 = xor i32 %4, -1
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @part_GetClass(i32* nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @part_NF(i32* noundef %0, i32 noundef %1) #3 {
  br label %3

3:                                                ; preds = %7, %2
  %.0 = phi i32 [ %1, %2 ], [ %8, %7 ]
  %4 = call i32 @part_DelayedInit(i32* noundef %0, i32 noundef %.0)
  %5 = call i32 @part_GetClass(i32* noundef %0, i32 noundef %.0)
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 @part_GetClass(i32* noundef %0, i32 noundef %.0)
  br label %3, !llvm.loop !6

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %11, %9
  %.01 = phi i32 [ %1, %9 ], [ %12, %11 ]
  %.not = icmp eq i32 %.01, %.0
  br i1 %.not, label %14, label %11

11:                                               ; preds = %10
  %12 = call i32 @part_GetClass(i32* noundef %0, i32 noundef %.01)
  %13 = call i32* @part_SetClass(i32* noundef %0, i32 noundef %.01, i32 noundef %.0)
  br label %10, !llvm.loop !7

14:                                               ; preds = %10
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32* @part_Union(i32* noundef returned %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = call i32 @part_NF(i32* noundef %0, i32 noundef %1)
  %5 = call i32 @part_NF(i32* noundef %0, i32 noundef %2)
  %.not = icmp eq i32 %4, %5
  br i1 %.not, label %22, label %6

6:                                                ; preds = %3
  %7 = call i32 @part_GetClassSize(i32* noundef %0, i32 noundef %4)
  %8 = call i32 @part_GetClassSize(i32* noundef %0, i32 noundef %5)
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = call i32 @part_GetClass(i32* noundef %0, i32 noundef %4)
  %12 = call i32* @part_SetClass(i32* noundef %0, i32 noundef %5, i32 noundef %11)
  %13 = call i32 @part_GetClass(i32* noundef %0, i32 noundef %4)
  %14 = xor i32 %13, -1
  %15 = call i32* @part_SetClass(i32* noundef %0, i32 noundef %14, i32 noundef %5)
  br label %16

16:                                               ; preds = %10, %6
  %.01 = phi i32 [ %5, %10 ], [ %4, %6 ]
  %.0 = phi i32 [ %4, %10 ], [ %5, %6 ]
  %17 = call i32* @part_SetClass(i32* noundef %0, i32 noundef %.0, i32 noundef %.01)
  %18 = call i32 @part_GetClassSize(i32* noundef %0, i32 noundef %.01)
  %19 = call i32 @part_GetClassSize(i32* noundef %0, i32 noundef %.0)
  %20 = add nsw i32 %18, %19
  %21 = call i32* @part_SetClassSize(i32* noundef %0, i32 noundef %.01, i32 noundef %20)
  br label %22

22:                                               ; preds = %16, %3
  ret i32* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @part_GetClassSize(i32* nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds i32, i32* %0, i64 -1
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, %1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32* @part_SetClass(i32* noundef returned writeonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  store i32 %2, i32* %5, align 4
  ret i32* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32* @part_SetClassSize(i32* noundef returned %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds i32, i32* %0, i64 -1
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, %1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  store i32 %2, i32* %8, align 4
  ret i32* %0
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
  call void @free(i8* noundef %52) #8
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @memory_LookupRealBlockSize(i32 noundef %0) #4 {
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
define internal i32 @memory_CalculateRealBlockSize(i32 noundef %0) #7 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @part_DelayedInit(i32* noundef %0, i32 noundef returned %1) #5 {
  %3 = call i32 @part_Stamped(i32* noundef %0, i32 noundef %1)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %11

4:                                                ; preds = %2
  %5 = xor i32 %1, -1
  %6 = call i32* @part_SetClass(i32* noundef %0, i32 noundef %1, i32 noundef %5)
  %7 = call i32* @part_SetClassSize(i32* noundef %0, i32 noundef %1, i32 noundef 1)
  %8 = getelementptr inbounds i32, i32* %0, i64 -3
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @part_SetStamp(i32* noundef %0, i32 noundef %1, i32 noundef %9)
  br label %11

11:                                               ; preds = %4, %2
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @part_Stamped(i32* nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = call i32 @part_GetStamp(i32* noundef %0, i32 noundef %1)
  %4 = getelementptr inbounds i32, i32* %0, i64 -3
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @part_GetStamp(i32* nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = sub nsw i32 -4, %1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
