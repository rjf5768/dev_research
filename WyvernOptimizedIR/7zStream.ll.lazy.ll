; ModuleID = './7zStream.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISeqInStream = type { i32 (i8*, i8*, i64*)* }
%struct.ILookInStream = type { i32 (i8*, i8**, i64*)*, i32 (i8*, i64)*, i32 (i8*, i8*, i64*)*, i32 (i8*, i64*, i32)* }
%struct.CLookToRead = type { %struct.ILookInStream, %struct.ISeekInStream*, i64, i64, [16384 x i8] }
%struct.ISeekInStream = type { i32 (i8*, i8*, i64*)*, i32 (i8*, i64*, i32)* }
%struct.CSecToLook = type { %struct.ISeqInStream, %struct.ILookInStream* }
%struct.CSecToRead = type { %struct.ISeqInStream, %struct.ILookInStream* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SeqInStream_Read2(%struct.ISeqInStream* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  br label %6

6:                                                ; preds = %17, %4
  %.02 = phi i8* [ %1, %4 ], [ %19, %17 ]
  %.01 = phi i64 [ %2, %4 ], [ %20, %17 ]
  %.not = icmp eq i64 %.01, 0
  br i1 %.not, label %21, label %7

7:                                                ; preds = %6
  store i64 %.01, i64* %5, align 8
  %8 = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %0, i64 0, i32 0
  %9 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %8, align 8
  %10 = bitcast %struct.ISeqInStream* %0 to i8*
  %11 = call i32 %9(i8* noundef %10, i8* noundef %.02, i64* noundef nonnull %5) #4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %13, label %12

12:                                               ; preds = %7
  br label %22

13:                                               ; preds = %7
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %22

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8, i8* %.02, i64 %18
  %20 = sub i64 %.01, %18
  br label %6, !llvm.loop !4

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %16, %12
  %.0 = phi i32 [ %11, %12 ], [ %3, %16 ], [ 0, %21 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SeqInStream_Read(%struct.ISeqInStream* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = call i32 @SeqInStream_Read2(%struct.ISeqInStream* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef 6)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SeqInStream_ReadByte(%struct.ISeqInStream* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i64, align 8
  store i64 1, i64* %3, align 8
  %4 = getelementptr inbounds %struct.ISeqInStream, %struct.ISeqInStream* %0, i64 0, i32 0
  %5 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %4, align 8
  %6 = bitcast %struct.ISeqInStream* %0 to i8*
  %7 = call i32 %5(i8* noundef %6, i8* noundef %1, i64* noundef nonnull %3) #4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %2
  br label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = icmp eq i64 %10, 1
  %12 = select i1 %11, i32 0, i32 6
  br label %13

13:                                               ; preds = %9, %8
  %.0 = phi i32 [ %7, %8 ], [ %12, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LookInStream_SeekTo(%struct.ILookInStream* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %0, i64 0, i32 3
  %5 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %4, align 8
  %6 = bitcast %struct.ILookInStream* %0 to i8*
  %7 = call i32 %5(i8* noundef %6, i64* noundef nonnull %3, i32 noundef 0) #4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LookInStream_LookRead(%struct.ILookInStream* noundef %0, i8* nocapture noundef writeonly %1, i64* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %0, i64 0, i32 0
  %10 = load i32 (i8*, i8**, i64*)*, i32 (i8*, i8**, i64*)** %9, align 8
  %11 = bitcast %struct.ILookInStream* %0 to i8*
  %12 = call i32 %10(i8* noundef %11, i8** noundef nonnull %4, i64* noundef nonnull %2) #4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %14, label %13

13:                                               ; preds = %8
  br label %22

14:                                               ; preds = %8
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %15, i64 %16, i1 false)
  %17 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %0, i64 0, i32 1
  %18 = load i32 (i8*, i64)*, i32 (i8*, i64)** %17, align 8
  %19 = bitcast %struct.ILookInStream* %0 to i8*
  %20 = load i64, i64* %2, align 8
  %21 = call i32 %18(i8* noundef %19, i64 noundef %20) #4
  br label %22

22:                                               ; preds = %14, %13, %7
  %.0 = phi i32 [ 0, %7 ], [ %12, %13 ], [ %21, %14 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LookInStream_Read2(%struct.ILookInStream* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  br label %6

6:                                                ; preds = %17, %4
  %.02 = phi i8* [ %1, %4 ], [ %19, %17 ]
  %.01 = phi i64 [ %2, %4 ], [ %20, %17 ]
  %.not = icmp eq i64 %.01, 0
  br i1 %.not, label %21, label %7

7:                                                ; preds = %6
  store i64 %.01, i64* %5, align 8
  %8 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %0, i64 0, i32 2
  %9 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %8, align 8
  %10 = bitcast %struct.ILookInStream* %0 to i8*
  %11 = call i32 %9(i8* noundef %10, i8* noundef %.02, i64* noundef nonnull %5) #4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %13, label %12

12:                                               ; preds = %7
  br label %22

13:                                               ; preds = %7
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %22

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8, i8* %.02, i64 %18
  %20 = sub i64 %.01, %18
  br label %6, !llvm.loop !6

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %16, %12
  %.0 = phi i32 [ %11, %12 ], [ %3, %16 ], [ 0, %21 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LookInStream_Read(%struct.ILookInStream* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = call i32 @LookInStream_Read2(%struct.ILookInStream* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef 6)
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @LookToRead_CreateVTable(%struct.CLookToRead* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %.not = icmp eq i32 %1, 0
  %3 = select i1 %.not, i32 (i8*, i8**, i64*)* @LookToRead_Look_Exact, i32 (i8*, i8**, i64*)* @LookToRead_Look_Lookahead
  %4 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %0, i64 0, i32 0, i32 0
  store i32 (i8*, i8**, i64*)* %3, i32 (i8*, i8**, i64*)** %4, align 8
  %5 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %0, i64 0, i32 0, i32 1
  store i32 (i8*, i64)* @LookToRead_Skip, i32 (i8*, i64)** %5, align 8
  %6 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %0, i64 0, i32 0, i32 2
  store i32 (i8*, i8*, i64*)* @LookToRead_Read, i32 (i8*, i8*, i64*)** %6, align 8
  %7 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %0, i64 0, i32 0, i32 3
  store i32 (i8*, i64*, i32)* @LookToRead_Seek, i32 (i8*, i64*, i32)** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LookToRead_Look_Lookahead(i8* noundef %0, i8** nocapture noundef writeonly %1, i64* nocapture noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds i8, i8* %0, i64 48
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* %0, i64 40
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %7, %10
  store i64 %11, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i64, i64* %2, align 8
  %.not = icmp eq i64 %14, 0
  br i1 %.not, label %28, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %0, i64 40
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 8
  store i64 16384, i64* %4, align 8
  %18 = getelementptr inbounds i8, i8* %0, i64 32
  %19 = bitcast i8* %18 to %struct.ISeekInStream**
  %20 = load %struct.ISeekInStream*, %struct.ISeekInStream** %19, align 8
  %21 = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %20, i64 0, i32 0
  %22 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %21, align 8
  %.cast = bitcast %struct.ISeekInStream* %20 to i8*
  %23 = getelementptr inbounds i8, i8* %0, i64 56
  %24 = call i32 %22(i8* noundef %.cast, i8* noundef nonnull %23, i64* noundef nonnull %4) #4
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i8, i8* %0, i64 48
  %27 = bitcast i8* %26 to i64*
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %15, %13, %3
  %.0 = phi i32 [ %24, %15 ], [ 0, %13 ], [ 0, %3 ]
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %2, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds i8, i8* %0, i64 56
  %36 = getelementptr inbounds i8, i8* %0, i64 40
  %37 = bitcast i8* %36 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %1, align 8
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LookToRead_Look_Exact(i8* noundef %0, i8** nocapture noundef writeonly %1, i64* noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %0, i64 48
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8, i8* %0, i64 40
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %6, %9
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load i64, i64* %2, align 8
  %.not = icmp eq i64 %13, 0
  br i1 %.not, label %31, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, i8* %0, i64 40
  %16 = bitcast i8* %15 to i64*
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ugt i64 %17, 16384
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i64 16384, i64* %2, align 8
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds i8, i8* %0, i64 32
  %22 = bitcast i8* %21 to %struct.ISeekInStream**
  %23 = load %struct.ISeekInStream*, %struct.ISeekInStream** %22, align 8
  %24 = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %23, i64 0, i32 0
  %25 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %24, align 8
  %.cast = bitcast %struct.ISeekInStream* %23 to i8*
  %26 = getelementptr inbounds i8, i8* %0, i64 56
  %27 = call i32 %25(i8* noundef %.cast, i8* noundef nonnull %26, i64* noundef nonnull %2) #4
  %28 = load i64, i64* %2, align 8
  %29 = getelementptr inbounds i8, i8* %0, i64 48
  %30 = bitcast i8* %29 to i64*
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %20, %12, %3
  %.01 = phi i32 [ %27, %20 ], [ 0, %12 ], [ 0, %3 ]
  %.0 = phi i64 [ %28, %20 ], [ %10, %12 ], [ %10, %3 ]
  %32 = load i64, i64* %2, align 8
  %33 = icmp ult i64 %.0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i64 %.0, i64* %2, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = getelementptr inbounds i8, i8* %0, i64 56
  %37 = getelementptr inbounds i8, i8* %0, i64 40
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8* %40, i8** %1, align 8
  ret i32 %.01
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @LookToRead_Skip(i8* nocapture noundef %0, i64 noundef %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 40
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, %1
  store i64 %6, i64* %4, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LookToRead_Read(i8* nocapture noundef %0, i8* noundef %1, i64* noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %0, i64 48
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8, i8* %0, i64 40
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %6, %9
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, i8* %0, i64 32
  %14 = bitcast i8* %13 to %struct.ISeekInStream**
  %15 = load %struct.ISeekInStream*, %struct.ISeekInStream** %14, align 8
  %16 = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %15, i64 0, i32 0
  %17 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %16, align 8
  %.cast = bitcast %struct.ISeekInStream* %15 to i8*
  %18 = call i32 %17(i8* noundef %.cast, i8* noundef %1, i64* noundef %2) #4
  br label %34

19:                                               ; preds = %3
  %20 = load i64, i64* %2, align 8
  %21 = icmp ugt i64 %10, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* %2, align 8
  br label %24

24:                                               ; preds = %22, %19
  %.01 = phi i64 [ %23, %22 ], [ %10, %19 ]
  %25 = getelementptr inbounds i8, i8* %0, i64 56
  %26 = getelementptr inbounds i8, i8* %0, i64 40
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* nonnull align 1 %29, i64 %.01, i1 false)
  %30 = getelementptr inbounds i8, i8* %0, i64 40
  %31 = bitcast i8* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %.01
  store i64 %33, i64* %31, align 8
  store i64 %.01, i64* %2, align 8
  br label %34

34:                                               ; preds = %24, %12
  %.0 = phi i32 [ %18, %12 ], [ 0, %24 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LookToRead_Seek(i8* nocapture noundef %0, i64* noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %0, i64 48
  %5 = bitcast i8* %4 to i64*
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 40
  %7 = bitcast i8* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %0, i64 32
  %9 = bitcast i8* %8 to %struct.ISeekInStream**
  %10 = load %struct.ISeekInStream*, %struct.ISeekInStream** %9, align 8
  %11 = getelementptr inbounds %struct.ISeekInStream, %struct.ISeekInStream* %10, i64 0, i32 1
  %12 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %11, align 8
  %.cast = bitcast %struct.ISeekInStream* %10 to i8*
  %13 = call i32 %12(i8* noundef %.cast, i64* noundef %1, i32 noundef %2) #4
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @LookToRead_Init(%struct.CLookToRead* nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %0, i64 0, i32 3
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.CLookToRead, %struct.CLookToRead* %0, i64 0, i32 2
  store i64 0, i64* %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @SecToLook_CreateVTable(%struct.CSecToLook* nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.CSecToLook, %struct.CSecToLook* %0, i64 0, i32 0, i32 0
  store i32 (i8*, i8*, i64*)* @SecToLook_Read, i32 (i8*, i8*, i64*)** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SecToLook_Read(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i64* noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.ILookInStream**
  %6 = load %struct.ILookInStream*, %struct.ILookInStream** %5, align 8
  %7 = call i32 @LookInStream_LookRead(%struct.ILookInStream* noundef %6, i8* noundef %1, i64* noundef %2)
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @SecToRead_CreateVTable(%struct.CSecToRead* nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.CSecToRead, %struct.CSecToRead* %0, i64 0, i32 0, i32 0
  store i32 (i8*, i8*, i64*)* @SecToRead_Read, i32 (i8*, i8*, i64*)** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SecToRead_Read(i8* nocapture noundef readonly %0, i8* noundef %1, i64* noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.ILookInStream**
  %6 = load %struct.ILookInStream*, %struct.ILookInStream** %5, align 8
  %7 = getelementptr inbounds %struct.ILookInStream, %struct.ILookInStream* %6, i64 0, i32 2
  %8 = load i32 (i8*, i8*, i64*)*, i32 (i8*, i8*, i64*)** %7, align 8
  %.cast = bitcast %struct.ILookInStream* %6 to i8*
  %9 = call i32 %8(i8* noundef %.cast, i8* noundef %1, i64* noundef %2) #4
  ret i32 %9
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
