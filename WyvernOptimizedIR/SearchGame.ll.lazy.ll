; ModuleID = './SearchGame.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Fhourstones-3.1/SearchGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashentry = type { i64 }
%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, i32 }

@nplies = dso_local global i32 0, align 4
@color = dso_local global [2 x i64] zeroinitializer, align 16
@height = dso_local global [7 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@moves = dso_local global [42 x i32] zeroinitializer, align 16
@ht = dso_local global %struct.hashentry* null, align 8
@posed = dso_local global i64 0, align 8
@lock = dso_local global i32 0, align 4
@htindex = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1
@millisecs.Time = internal global i64 0, align 8
@history = dso_local global [2 x [49 x i32]] zeroinitializer, align 16
@nodes = dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"#-<=>+\00", align 1
@msecs = dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Fhourstones 3.1 (C)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Boardsize = %dx%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Using %d transposition table entries.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\0ASolving %d-ply position after \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @reset() #0 {
  store i32 0, i32* @nplies, align 4
  store i64 0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i64 0, i64 1), align 8
  store i64 0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i64 0, i64 0), align 16
  br label %1

1:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %2 = icmp ult i32 %.0, 7
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = trunc i32 %.0 to i8
  %5 = mul i8 %4, 7
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %6
  store i8 %5, i8* %7, align 1
  br label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

10:                                               ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @positioncode() #1 {
  %1 = load i32, i32* @nplies, align 4
  %2 = and i32 %1, 1
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %3
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i64 0, i64 0), align 16
  %7 = add i64 %5, %6
  %8 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i64 0, i64 1), align 8
  %9 = add i64 %7, %8
  %10 = add i64 %9, 4432676798593
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printMoves() #2 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = load i32, i32* @nplies, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [42 x i32], [42 x i32]* @moves, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %8) #12
  br label %10

10:                                               ; preds = %4
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

12:                                               ; preds = %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @islegal(i64 noundef %0) #4 {
  %2 = and i64 %0, 283691315109952
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @isplayable(i32 noundef %0) #1 {
  %2 = load i32, i32* @nplies, align 4
  %3 = and i32 %2, 1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  %12 = shl i64 1, %11
  %13 = or i64 %6, %12
  %14 = call i32 @islegal(i64 noundef %13)
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @haswon(i64 noundef %0) #4 {
  %2 = lshr i64 %0, 6
  %3 = and i64 %2, %0
  %4 = lshr i64 %3, 12
  %5 = and i64 %3, %4
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = lshr i64 %0, 7
  %9 = and i64 %8, %0
  %10 = lshr i64 %9, 14
  %11 = and i64 %9, %10
  %.not1 = icmp eq i64 %11, 0
  br i1 %.not1, label %13, label %12

12:                                               ; preds = %7
  br label %26

13:                                               ; preds = %7
  %14 = lshr i64 %0, 8
  %15 = and i64 %14, %0
  %16 = lshr i64 %15, 16
  %17 = and i64 %15, %16
  %.not2 = icmp eq i64 %17, 0
  br i1 %.not2, label %19, label %18

18:                                               ; preds = %13
  br label %26

19:                                               ; preds = %13
  %20 = lshr i64 %0, 1
  %21 = and i64 %20, %0
  %22 = lshr i64 %21, 2
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %18, %12, %6
  %.0 = phi i32 [ 1, %6 ], [ 1, %12 ], [ 1, %18 ], [ %25, %19 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @islegalhaswon(i64 noundef %0) #4 {
  %2 = call i32 @islegal(i64 noundef %0)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = call i32 @haswon(i64 noundef %0)
  %5 = icmp ne i32 %4, 0
  %phi.cast = zext i1 %5 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %phi.cast, %3 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @backmove() #5 {
  %1 = load i32, i32* @nplies, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @nplies, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [42 x i32], [42 x i32]* @moves, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = add i8 %8, -1
  store i8 %9, i8* %7, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  %12 = shl i64 1, %11
  %13 = load i32, i32* @nplies, align 4
  %14 = and i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = xor i64 %17, %12
  store i64 %18, i64* %16, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @makemove(i32 noundef %0) #5 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %2
  %4 = load i8, i8* %3, align 1
  %5 = add i8 %4, 1
  store i8 %5, i8* %3, align 1
  %6 = sext i8 %4 to i64
  %7 = and i64 %6, 4294967295
  %8 = shl i64 1, %7
  %9 = load i32, i32* @nplies, align 4
  %10 = and i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = xor i64 %13, %8
  store i64 %14, i64* %12, align 8
  %15 = load i32, i32* @nplies, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @nplies, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [42 x i32], [42 x i32]* @moves, i64 0, i64 %17
  store i32 %0, i32* %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @trans_init() #2 {
  %1 = call noalias dereferenceable_or_null(66448552) i8* @calloc(i64 noundef 8306069, i64 noundef 8) #12
  store i8* %1, i8** bitcast (%struct.hashentry** @ht to i8**), align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @emptyTT() #7 {
  br label %1

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %2 = icmp ult i32 %.0, 8306069
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %4, i64 %5, i32 0
  store i64 0, i64* %6, align 4
  br label %7

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !7

9:                                                ; preds = %1
  store i64 0, i64* @posed, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @hash() #9 {
  %1 = call i64 @positioncode()
  %2 = load i32, i32* @nplies, align 4
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %7, %4
  %.02 = phi i64 [ 0, %4 ], [ %10, %7 ]
  %.0 = phi i64 [ %1, %4 ], [ %11, %7 ]
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %12, label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6
  %8 = shl i64 %.02, 7
  %9 = and i64 %.0, 127
  %10 = or i64 %8, %9
  %11 = lshr i64 %.0, 7
  br label %5, !llvm.loop !8

12:                                               ; preds = %5
  %13 = icmp ult i64 %.02, %1
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14, %12
  %.01 = phi i64 [ %.02, %14 ], [ %1, %12 ]
  br label %16

16:                                               ; preds = %15, %0
  %.1 = phi i64 [ %.01, %15 ], [ %1, %0 ]
  %17 = lshr i64 %.1, 23
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @lock, align 4
  %19 = urem i64 %.1, 8306069
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @htindex, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @transpose() #7 {
  %1 = alloca %struct.hashentry, align 8
  call void @hash()
  %2 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %3 = load i32, i32* @htindex, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %2, i64 %4, i32 0
  %6 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %1, i64 0, i32 0
  %7 = load i64, i64* %5, align 4
  store i64 %7, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 67108863
  %10 = load i32, i32* @lock, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %1, i64 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = lshr i64 %14, 61
  %16 = trunc i64 %15 to i32
  br label %32

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %1, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 67108863
  %23 = load i32, i32* @lock, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %1, i64 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = lshr i64 %27, 58
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 7
  br label %32

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %25, %12
  %.0 = phi i32 [ %16, %12 ], [ %30, %25 ], [ 0, %31 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @transtore(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10 {
  %5 = alloca %struct.hashentry, align 8
  %6 = load i64, i64* @posed, align 8
  %7 = add i64 %6, 1
  store i64 %7, i64* @posed, align 8
  %8 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %8, i64 %9, i32 0
  %11 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %5, i64 0, i32 0
  %12 = load i64, i64* %10, align 4
  store i64 %12, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 67108863
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %5, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = lshr i32 %19, 26
  %.not = icmp sgt i32 %20, %3
  br i1 %.not, label %33, label %21

21:                                               ; preds = %16, %4
  %22 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %5, i64 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %23, 2305843004918726656
  %25 = zext i32 %2 to i64
  %26 = shl i64 %25, 61
  %27 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %5, i64 0, i32 0
  %28 = shl i32 %3, 26
  %29 = zext i32 %28 to i64
  %30 = and i32 %1, 67108863
  %.masked1 = zext i32 %30 to i64
  %.masked = or i64 %24, %.masked1
  %31 = or i64 %.masked, %26
  %32 = or i64 %31, %29
  store i64 %32, i64* %27, align 8
  br label %47

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %5, i64 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = and i32 %1, 67108863
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 32
  %39 = and i64 %35, -288230371856744449
  %40 = or i64 %39, %38
  store i64 %40, i64* %34, align 8
  %41 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %5, i64 0, i32 0
  %42 = and i32 %2, 7
  %43 = zext i32 %42 to i64
  %44 = shl nuw nsw i64 %43, 58
  %45 = and i64 %40, -2017612633061982209
  %46 = or i64 %45, %44
  store i64 %46, i64* %41, align 8
  br label %47

47:                                               ; preds = %33, %21
  %48 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %49 = sext i32 %0 to i64
  %50 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %5, i64 0, i32 0
  %51 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %48, i64 %49, i32 0
  %52 = load i64, i64* %50, align 8
  store i64 %52, i64* %51, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @htstat() #2 {
  %1 = alloca [8 x i32], align 16
  %2 = alloca %struct.hashentry, align 8
  br label %3

3:                                                ; preds = %8, %0
  %.01 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %4 = icmp ult i32 %.01, 8
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %6
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %5
  %9 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %40, %10
  %.1 = phi i32 [ 0, %10 ], [ %41, %40 ]
  %12 = icmp ult i32 %.1, 8306069
  br i1 %12, label %13, label %42

13:                                               ; preds = %11
  %14 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %15 = zext i32 %.1 to i64
  %16 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %14, i64 %15, i32 0
  %17 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %2, i64 0, i32 0
  %18 = load i64, i64* %16, align 4
  store i64 %18, i64* %17, align 8
  %19 = and i64 %18, 67108863
  %.not = icmp eq i64 %19, 0
  br i1 %.not, label %27, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %2, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = lshr i64 %22, 61
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %13
  %28 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %2, i64 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %29, 288230371856744448
  %.not2 = icmp eq i64 %30, 0
  br i1 %.not2, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %2, i64 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = lshr i64 %33, 58
  %35 = and i64 %34, 7
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %31, %27
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.1, 1
  br label %11, !llvm.loop !10

42:                                               ; preds = %11
  br label %43

43:                                               ; preds = %46, %42
  %.2 = phi i32 [ 1, %42 ], [ %51, %46 ]
  %.0 = phi i32 [ 0, %42 ], [ %50, %46 ]
  %44 = icmp ult i32 %.2, 6
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = zext i32 %.2 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %.0, %49
  %51 = add nuw nsw i32 %.2, 1
  br label %43, !llvm.loop !11

52:                                               ; preds = %43
  %53 = icmp sgt i32 %.0, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %52
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = sitofp i32 %56 to double
  %58 = sitofp i32 %.0 to double
  %59 = fdiv double %57, %58
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = sitofp i32 %61 to double
  %63 = sitofp i32 %.0 to double
  %64 = fdiv double %62, %63
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to double
  %68 = sitofp i32 %.0 to double
  %69 = fdiv double %67, %68
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 4
  %71 = load i32, i32* %70, align 16
  %72 = sitofp i32 %71 to double
  %73 = sitofp i32 %.0 to double
  %74 = fdiv double %72, %73
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = sitofp i32 %76 to double
  %78 = sitofp i32 %.0 to double
  %79 = fdiv double %77, %78
  %80 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), double noundef %59, double noundef %64, double noundef %69, double noundef %74, double noundef %79) #12
  br label %81

81:                                               ; preds = %54, %52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i64 @millisecs() #5 {
  %1 = load i64, i64* @millisecs.Time, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @millisecs.Time, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @min(i32 noundef %0, i32 noundef %1) #4 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @max(i32 noundef %0, i32 noundef %1) #4 {
  %3 = icmp sgt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @inithistory() #0 {
  br label %1

1:                                                ; preds = %53, %0
  %.0 = phi i32 [ 0, %0 ], [ %54, %53 ]
  %2 = icmp ult i32 %.0, 2
  br i1 %2, label %3, label %55

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %50, %3
  %.01 = phi i32 [ 0, %3 ], [ %51, %50 ]
  %5 = icmp ult i32 %.01, 4
  br i1 %5, label %6, label %52

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %47, %6
  %.02 = phi i32 [ 0, %6 ], [ %48, %47 ]
  %8 = icmp ult i32 %.02, 3
  br i1 %8, label %9, label %49

9:                                                ; preds = %7
  %10 = call i32 @min(i32 noundef 3, i32 noundef %.01)
  %11 = add nsw i32 %10, 4
  %12 = call i32 @min(i32 noundef 3, i32 noundef %.02)
  %13 = sub nsw i32 3, %.01
  %14 = call i32 @max(i32 noundef 0, i32 noundef %13)
  %15 = sub nsw i32 %12, %14
  %16 = call i32 @max(i32 noundef -1, i32 noundef %15)
  %17 = add nsw i32 %11, %16
  %18 = call i32 @min(i32 noundef %.01, i32 noundef %.02)
  %19 = call i32 @min(i32 noundef 3, i32 noundef %18)
  %20 = add nsw i32 %17, %19
  %21 = call i32 @min(i32 noundef 3, i32 noundef %.02)
  %22 = add nsw i32 %20, %21
  %23 = zext i32 %.0 to i64
  %24 = sub nsw i32 6, %.01
  %25 = mul nsw i32 %24, 7
  %26 = add nsw i32 %25, %.02
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %23, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = zext i32 %.0 to i64
  %30 = mul nsw i32 %.01, 7
  %31 = add nuw nsw i32 %30, 5
  %32 = sub nsw i32 %31, %.02
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %29, i64 %33
  store i32 %22, i32* %34, align 4
  %35 = zext i32 %.0 to i64
  %36 = sub nsw i32 6, %.01
  %37 = mul nsw i32 %36, 7
  %38 = add nsw i32 %37, 5
  %39 = sub nsw i32 %38, %.02
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %35, i64 %40
  store i32 %22, i32* %41, align 4
  %42 = zext i32 %.0 to i64
  %43 = mul nsw i32 %.01, 7
  %44 = add nuw nsw i32 %43, %.02
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %42, i64 %45
  store i32 %22, i32* %46, align 4
  br label %47

47:                                               ; preds = %9
  %48 = add nuw nsw i32 %.02, 1
  br label %7, !llvm.loop !12

49:                                               ; preds = %7
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !13

52:                                               ; preds = %4
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !14

55:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ab(i32 noundef %0, i32 noundef %1) #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %3 = alloca [7 x i32], align 16
  %4 = load i64, i64* @nodes, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* @nodes, align 8
  %6 = load i32, i32* @nplies, align 4
  %7 = icmp eq i32 %6, 41
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %223

9:                                                ; preds = %2
  %10 = load i32, i32* @nplies, align 4
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %13
  %15 = load i64, i64* %14, align 8
  br label %16

16:                                               ; preds = %63, %9
  %.020 = phi i32 [ 0, %9 ], [ %.222, %63 ]
  %.04 = phi i32 [ 0, %9 ], [ %64, %63 ]
  %17 = icmp ult i32 %.04, 7
  br i1 %17, label %18, label %.loopexit25

18:                                               ; preds = %16
  %19 = zext i32 %.04 to i64
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  %24 = shl i64 1, %23
  %25 = or i64 %15, %24
  %26 = call i32 @islegal(i64 noundef %25)
  %.not34 = icmp eq i32 %26, 0
  br i1 %.not34, label %27, label %28

27:                                               ; preds = %18
  br label %63

28:                                               ; preds = %18
  %29 = zext i32 %.04 to i64
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i64
  %33 = and i64 %32, 4294967295
  %34 = shl i64 2, %33
  %35 = or i64 %15, %34
  %36 = call i32 @islegalhaswon(i64 noundef %35)
  %37 = call i32 @haswon(i64 noundef %25)
  %.not35 = icmp eq i32 %37, 0
  br i1 %.not35, label %57, label %38

38:                                               ; preds = %28
  %.not37 = icmp eq i32 %36, 0
  br i1 %.not37, label %40, label %39

39:                                               ; preds = %38
  br label %223

40:                                               ; preds = %38
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  store i32 %.04, i32* %41, align 16
  br label %42

42:                                               ; preds = %55, %40
  %.15 = phi i32 [ %.04, %40 ], [ %43, %55 ]
  %43 = add nuw nsw i32 %.15, 1
  %44 = icmp ult i32 %.15, 6
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = zext i32 %43 to i64
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i64
  %50 = and i64 %49, 4294967295
  %51 = shl i64 1, %50
  %52 = or i64 %15, %51
  %53 = call i32 @islegalhaswon(i64 noundef %52)
  %.not38 = icmp eq i32 %53, 0
  br i1 %.not38, label %55, label %54

54:                                               ; preds = %45
  br label %223

55:                                               ; preds = %45
  br label %42, !llvm.loop !15

56:                                               ; preds = %42
  br label %65

57:                                               ; preds = %28
  %.not36 = icmp eq i32 %36, 0
  br i1 %.not36, label %58, label %62

58:                                               ; preds = %57
  %59 = add nsw i32 %.020, 1
  %60 = sext i32 %.020 to i64
  %61 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %60
  store i32 %.04, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %57
  %.121 = phi i32 [ %.020, %57 ], [ %59, %58 ]
  br label %63

63:                                               ; preds = %62, %27
  %.222 = phi i32 [ %.121, %62 ], [ %.020, %27 ]
  %64 = add nuw nsw i32 %.04, 1
  br label %16, !llvm.loop !16

.loopexit25:                                      ; preds = %16
  br label %65

65:                                               ; preds = %.loopexit25, %56
  %.323 = phi i32 [ 1, %56 ], [ %.020, %.loopexit25 ]
  %66 = icmp eq i32 %.323, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %223

68:                                               ; preds = %65
  %69 = load i32, i32* @nplies, align 4
  %70 = icmp eq i32 %69, 40
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %223

72:                                               ; preds = %68
  %73 = icmp eq i32 %.323, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %72
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  call void @makemove(i32 noundef %76)
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_ab_4442319, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %1, i32* %_wyvern_thunk_arg_gep_, align 8
  %77 = sub nsw i32 6, %0
  %78 = call i32 @_wyvern_calleeclone_ab_0197076807(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %77)
  %79 = sub nsw i32 6, %78
  call void @backmove()
  br label %223

80:                                               ; preds = %72
  %81 = call i32 @transpose()
  %.not = icmp eq i32 %81, 0
  br i1 %.not, label %97, label %82

82:                                               ; preds = %80
  %83 = icmp eq i32 %81, 2
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = icmp sgt i32 %0, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  br label %223

87:                                               ; preds = %84
  br label %96

88:                                               ; preds = %82
  %89 = icmp eq i32 %81, 4
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = icmp slt i32 %1, 4
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  br label %223

93:                                               ; preds = %90
  br label %95

94:                                               ; preds = %88
  br label %223

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %87
  %.02 = phi i32 [ 3, %87 ], [ %1, %95 ]
  %.01 = phi i32 [ %0, %87 ], [ 3, %95 ]
  br label %97

97:                                               ; preds = %96, %80
  %.13 = phi i32 [ %.02, %96 ], [ %1, %80 ]
  %.1 = phi i32 [ %.01, %96 ], [ %0, %80 ]
  %98 = load i32, i32* @htindex, align 4
  %99 = load i32, i32* @lock, align 4
  %100 = load i64, i64* @posed, align 8
  br label %101

101:                                              ; preds = %199, %97
  %.015 = phi i32 [ 1, %97 ], [ %.217, %199 ]
  %.26 = phi i32 [ 0, %97 ], [ %200, %199 ]
  %.2 = phi i32 [ %.1, %97 ], [ %.4, %199 ]
  %102 = icmp slt i32 %.26, %.323
  br i1 %102, label %103, label %.loopexit

103:                                              ; preds = %101
  %104 = zext i32 %11 to i64
  %105 = zext i32 %.26 to i64
  %106 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i64
  %112 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %104, i64 %111
  %113 = load i32, i32* %112, align 4
  br label %114

114:                                              ; preds = %130, %103
  %.013 = phi i32 [ %113, %103 ], [ %.114, %130 ]
  %.09 = phi i32 [ %.26, %103 ], [ %.110, %130 ]
  %.08.in = phi i32 [ %.26, %103 ], [ %.08, %130 ]
  %.08 = add nuw nsw i32 %.08.in, 1
  %115 = icmp slt i32 %.08, %.323
  br i1 %115, label %116, label %131

116:                                              ; preds = %114
  %117 = zext i32 %11 to i64
  %118 = zext i32 %.08 to i64
  %119 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i64
  %125 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %117, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, %.013
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %116
  %.114 = phi i32 [ %126, %128 ], [ %.013, %116 ]
  %.110 = phi i32 [ %.08, %128 ], [ %.09, %116 ]
  br label %130

130:                                              ; preds = %129
  br label %114, !llvm.loop !17

131:                                              ; preds = %114
  %132 = sext i32 %.09 to i64
  %133 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  br label %135

135:                                              ; preds = %144, %131
  %.211 = phi i32 [ %.09, %131 ], [ %145, %144 ]
  %136 = icmp sgt i32 %.211, %.26
  br i1 %136, label %137, label %146

137:                                              ; preds = %135
  %138 = add nsw i32 %.211, -1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %.211 to i64
  %143 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %142
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %137
  %145 = add nsw i32 %.211, -1
  br label %135, !llvm.loop !18

146:                                              ; preds = %135
  %147 = zext i32 %.26 to i64
  %148 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %147
  store i32 %134, i32* %148, align 4
  call void @makemove(i32 noundef %134)
  %149 = sub nsw i32 6, %.13
  %150 = sub nsw i32 6, %.2
  %151 = call i32 @ab(i32 noundef %149, i32 noundef %150)
  %152 = sub nsw i32 6, %151
  call void @backmove()
  %153 = icmp sgt i32 %152, %.015
  br i1 %153, label %154, label %198

154:                                              ; preds = %146
  %155 = icmp sgt i32 %152, %.2
  br i1 %155, label %156, label %197

156:                                              ; preds = %154
  %157 = load i32, i32* @nplies, align 4
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %159, label %197

159:                                              ; preds = %156
  %.not32 = icmp slt i32 %152, %.13
  br i1 %.not32, label %197, label %160

160:                                              ; preds = %159
  %161 = icmp eq i32 %151, 3
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  %163 = add nsw i32 %.323, -1
  %164 = icmp slt i32 %.26, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %166

166:                                              ; preds = %165, %162, %160
  %.116 = phi i32 [ 4, %165 ], [ %152, %162 ], [ %152, %160 ]
  %.not33 = icmp eq i32 %.26, 0
  br i1 %.not33, label %196, label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %182, %167
  %.37 = phi i32 [ 0, %167 ], [ %183, %182 ]
  %169 = icmp ult i32 %.37, %.26
  br i1 %169, label %170, label %184

170:                                              ; preds = %168
  %171 = zext i32 %11 to i64
  %172 = zext i32 %.37 to i64
  %173 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i64
  %179 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %171, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %170
  %183 = add nuw nsw i32 %.37, 1
  br label %168, !llvm.loop !19

184:                                              ; preds = %168
  %185 = zext i32 %11 to i64
  %186 = zext i32 %.26 to i64
  %187 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i64
  %193 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %185, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, %.26
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %184, %166
  br label %201

197:                                              ; preds = %159, %156, %154
  %.3 = phi i32 [ %152, %159 ], [ %.2, %156 ], [ %.2, %154 ]
  br label %198

198:                                              ; preds = %197, %146
  %.217 = phi i32 [ %152, %197 ], [ %.015, %146 ]
  %.4 = phi i32 [ %.3, %197 ], [ %.2, %146 ]
  br label %199

199:                                              ; preds = %198
  %200 = add nuw nsw i32 %.26, 1
  br label %101, !llvm.loop !20

.loopexit:                                        ; preds = %101
  br label %201

201:                                              ; preds = %.loopexit, %196
  %.318 = phi i32 [ %.116, %196 ], [ %.015, %.loopexit ]
  %202 = sub nsw i32 6, %81
  %203 = icmp eq i32 %.318, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %205

205:                                              ; preds = %204, %201
  %.419 = phi i32 [ 3, %204 ], [ %.318, %201 ]
  %206 = load i64, i64* @posed, align 8
  %207 = sub i64 %206, %100
  br label %208

208:                                              ; preds = %211, %205
  %.024 = phi i32 [ 0, %205 ], [ %212, %211 ]
  %.012 = phi i64 [ %207, %205 ], [ %209, %211 ]
  %209 = lshr i64 %.012, 1
  %.not31 = icmp ult i64 %.012, 2
  br i1 %.not31, label %213, label %210

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %210
  %212 = add nuw nsw i32 %.024, 1
  br label %208, !llvm.loop !21

213:                                              ; preds = %208
  call void @transtore(i32 noundef %98, i32 noundef %99, i32 noundef %.419, i32 noundef %.024)
  %214 = load i32, i32* @nplies, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  call void @printMoves()
  %217 = sext i32 %.419 to i64
  %218 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.3, i64 0, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %220, i32 noundef %.024) #12
  br label %222

222:                                              ; preds = %216, %213
  br label %223

223:                                              ; preds = %222, %94, %92, %86, %74, %71, %67, %54, %39, %8
  %.0 = phi i32 [ 3, %8 ], [ 1, %39 ], [ 1, %54 ], [ 1, %67 ], [ 3, %71 ], [ %79, %74 ], [ %81, %86 ], [ %.419, %222 ], [ %81, %92 ], [ %81, %94 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @solve() #2 {
  %1 = load i32, i32* @nplies, align 4
  %2 = and i32 %1, 1
  %3 = xor i32 %2, 1
  store i64 0, i64* @nodes, align 8
  store i64 1, i64* @msecs, align 8
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @haswon(i64 noundef %6)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %0
  br label %35

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %26, %9
  %.01 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %11 = icmp ult i32 %.01, 7
  br i1 %11, label %12, label %28

12:                                               ; preds = %10
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i64
  %20 = and i64 %19, 4294967295
  %21 = shl i64 1, %20
  %22 = or i64 %15, %21
  %23 = call i32 @islegalhaswon(i64 noundef %22)
  %.not2 = icmp eq i32 %23, 0
  br i1 %.not2, label %25, label %24

24:                                               ; preds = %12
  br label %35

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.01, 1
  br label %10, !llvm.loop !22

28:                                               ; preds = %10
  call void @inithistory()
  %29 = call i64 @millisecs()
  store i64 %29, i64* @msecs, align 8
  %30 = call i32 @ab(i32 noundef 1, i32 noundef 5)
  %31 = call i64 @millisecs()
  %32 = add i64 %31, 1
  %33 = load i64, i64* @msecs, align 8
  %34 = sub i64 %32, %33
  store i64 %34, i64* @msecs, align 8
  br label %35

35:                                               ; preds = %28, %24, %8
  %.0 = phi i32 [ 1, %8 ], [ 5, %24 ], [ %30, %28 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @trans_init()
  %1 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)) #12
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 noundef 7, i32 noundef 6) #12
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 noundef 8306069) #12
  br label %4

4:                                                ; preds = %32, %0
  call void @reset()
  br label %5

5:                                                ; preds = %17, %4
  %6 = call i32 @getchar() #12
  %.not = icmp eq i32 %6, -1
  br i1 %.not, label %.loopexit, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i32 %6, 48
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = icmp slt i32 %6, 56
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = add nsw i32 %6, -49
  call void @makemove(i32 noundef %12)
  br label %17

13:                                               ; preds = %9, %7
  %14 = icmp eq i32 %6, 10
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %18

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %11
  br label %5, !llvm.loop !23

.loopexit:                                        ; preds = %5
  br label %18

18:                                               ; preds = %.loopexit, %15
  %19 = icmp eq i32 %6, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %38

21:                                               ; preds = %18
  %22 = load i32, i32* @nplies, align 4
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 noundef %22) #12
  call void @printMoves()
  %24 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #12
  call void @emptyTT()
  %25 = call i32 @solve()
  %26 = load i64, i64* @posed, align 8
  br label %27

27:                                               ; preds = %30, %21
  %.01 = phi i32 [ 0, %21 ], [ %31, %30 ]
  %.0 = phi i64 [ %26, %21 ], [ %28, %30 ]
  %28 = lshr i64 %.0, 1
  %.not3 = icmp ult i64 %.0, 2
  br i1 %.not3, label %32, label %29

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.01, 1
  br label %27, !llvm.loop !24

32:                                               ; preds = %27
  %33 = sext i32 %25 to i64
  %34 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.3, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 noundef %25, i32 noundef %36, i32 noundef %.01) #12
  call void @htstat()
  br label %4

38:                                               ; preds = %20
  ret i32 0
}

declare dso_local i32 @puts(i8* noundef) #3

declare dso_local i32 @getchar() #3

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_ab_4442319(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #11 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = sub nsw i32 6, %_wyvern_arg_
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_ab_0197076807(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %0) #2 {
  %2 = alloca [7 x i32], align 16
  %3 = load i64, i64* @nodes, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* @nodes, align 8
  %5 = load i32, i32* @nplies, align 4
  %6 = icmp eq i32 %5, 41
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %223

8:                                                ; preds = %1
  %9 = load i32, i32* @nplies, align 4
  %10 = and i32 %9, 1
  %11 = xor i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %12
  %14 = load i64, i64* %13, align 8
  br label %15

15:                                               ; preds = %62, %8
  %.020 = phi i32 [ 0, %8 ], [ %.222, %62 ]
  %.04 = phi i32 [ 0, %8 ], [ %63, %62 ]
  %16 = icmp ult i32 %.04, 7
  br i1 %16, label %17, label %.loopexit25

17:                                               ; preds = %15
  %18 = zext i32 %.04 to i64
  %19 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i64
  %22 = and i64 %21, 4294967295
  %23 = shl i64 1, %22
  %24 = or i64 %14, %23
  %25 = call i32 @islegal(i64 noundef %24)
  %.not13 = icmp eq i32 %25, 0
  br i1 %.not13, label %26, label %27

26:                                               ; preds = %17
  br label %62

27:                                               ; preds = %17
  %28 = zext i32 %.04 to i64
  %29 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i64
  %32 = and i64 %31, 4294967295
  %33 = shl i64 2, %32
  %34 = or i64 %14, %33
  %35 = call i32 @islegalhaswon(i64 noundef %34)
  %36 = call i32 @haswon(i64 noundef %24)
  %.not14 = icmp eq i32 %36, 0
  br i1 %.not14, label %56, label %37

37:                                               ; preds = %27
  %.not16 = icmp eq i32 %35, 0
  br i1 %.not16, label %39, label %38

38:                                               ; preds = %37
  br label %223

39:                                               ; preds = %37
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 0
  store i32 %.04, i32* %40, align 16
  br label %41

41:                                               ; preds = %54, %39
  %.15 = phi i32 [ %.04, %39 ], [ %42, %54 ]
  %42 = add nuw nsw i32 %.15, 1
  %43 = icmp ult i32 %.15, 6
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = zext i32 %42 to i64
  %46 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i64
  %49 = and i64 %48, 4294967295
  %50 = shl i64 1, %49
  %51 = or i64 %14, %50
  %52 = call i32 @islegalhaswon(i64 noundef %51)
  %.not17 = icmp eq i32 %52, 0
  br i1 %.not17, label %54, label %53

53:                                               ; preds = %44
  br label %223

54:                                               ; preds = %44
  br label %41, !llvm.loop !15

55:                                               ; preds = %41
  br label %64

56:                                               ; preds = %27
  %.not15 = icmp eq i32 %35, 0
  br i1 %.not15, label %57, label %61

57:                                               ; preds = %56
  %58 = add nsw i32 %.020, 1
  %59 = sext i32 %.020 to i64
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 %59
  store i32 %.04, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %56
  %.121 = phi i32 [ %.020, %56 ], [ %58, %57 ]
  br label %62

62:                                               ; preds = %61, %26
  %.222 = phi i32 [ %.121, %61 ], [ %.020, %26 ]
  %63 = add nuw nsw i32 %.04, 1
  br label %15, !llvm.loop !16

.loopexit25:                                      ; preds = %15
  br label %64

64:                                               ; preds = %.loopexit25, %55
  %.323 = phi i32 [ 1, %55 ], [ %.020, %.loopexit25 ]
  %65 = icmp eq i32 %.323, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  br label %223

67:                                               ; preds = %64
  %68 = load i32, i32* @nplies, align 4
  %69 = icmp eq i32 %68, 40
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %223

71:                                               ; preds = %67
  %72 = icmp eq i32 %.323, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %71
  %74 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  call void @makemove(i32 noundef %75)
  %76 = sub nsw i32 6, %0
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i32 %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #12
  %77 = sub nsw i32 6, %_wyvern_thunkcall9
  %78 = call i32 @ab(i32 noundef %76, i32 noundef %77)
  %79 = sub nsw i32 6, %78
  call void @backmove()
  br label %223

80:                                               ; preds = %71
  %81 = call i32 @transpose()
  %.not = icmp eq i32 %81, 0
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #12
  br i1 %.not, label %97, label %82

82:                                               ; preds = %80
  %83 = icmp eq i32 %81, 2
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i32 %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #12
  %85 = icmp sgt i32 %_wyvern_thunkcall6, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  br label %223

87:                                               ; preds = %84
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32 %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #12
  br label %96

88:                                               ; preds = %82
  %89 = icmp eq i32 %81, 4
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = icmp slt i32 %0, 4
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  br label %223

93:                                               ; preds = %90
  br label %95

94:                                               ; preds = %88
  br label %223

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %87
  %.02 = phi i32 [ 3, %87 ], [ %0, %95 ]
  %.01 = phi i32 [ %_wyvern_thunkcall3, %87 ], [ 3, %95 ]
  br label %97

97:                                               ; preds = %96, %80
  %.13 = phi i32 [ %.02, %96 ], [ %0, %80 ]
  %.1 = phi i32 [ %.01, %96 ], [ %_wyvern_thunkcall, %80 ]
  %98 = load i32, i32* @htindex, align 4
  %99 = load i32, i32* @lock, align 4
  %100 = load i64, i64* @posed, align 8
  br label %101

101:                                              ; preds = %199, %97
  %.015 = phi i32 [ 1, %97 ], [ %.217, %199 ]
  %.26 = phi i32 [ 0, %97 ], [ %200, %199 ]
  %.2 = phi i32 [ %.1, %97 ], [ %.4, %199 ]
  %102 = icmp slt i32 %.26, %.323
  br i1 %102, label %103, label %.loopexit

103:                                              ; preds = %101
  %104 = zext i32 %10 to i64
  %105 = zext i32 %.26 to i64
  %106 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i64
  %112 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %104, i64 %111
  %113 = load i32, i32* %112, align 4
  br label %114

114:                                              ; preds = %130, %103
  %.013 = phi i32 [ %113, %103 ], [ %.114, %130 ]
  %.09 = phi i32 [ %.26, %103 ], [ %.110, %130 ]
  %.08.in = phi i32 [ %.26, %103 ], [ %.08, %130 ]
  %.08 = add nuw nsw i32 %.08.in, 1
  %115 = icmp slt i32 %.08, %.323
  br i1 %115, label %116, label %131

116:                                              ; preds = %114
  %117 = zext i32 %10 to i64
  %118 = zext i32 %.08 to i64
  %119 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i64
  %125 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %117, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, %.013
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %116
  %.114 = phi i32 [ %126, %128 ], [ %.013, %116 ]
  %.110 = phi i32 [ %.08, %128 ], [ %.09, %116 ]
  br label %130

130:                                              ; preds = %129
  br label %114, !llvm.loop !17

131:                                              ; preds = %114
  %132 = sext i32 %.09 to i64
  %133 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  br label %135

135:                                              ; preds = %144, %131
  %.211 = phi i32 [ %.09, %131 ], [ %145, %144 ]
  %136 = icmp sgt i32 %.211, %.26
  br i1 %136, label %137, label %146

137:                                              ; preds = %135
  %138 = add nsw i32 %.211, -1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %.211 to i64
  %143 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 %142
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %137
  %145 = add nsw i32 %.211, -1
  br label %135, !llvm.loop !18

146:                                              ; preds = %135
  %147 = zext i32 %.26 to i64
  %148 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 %147
  store i32 %134, i32* %148, align 4
  call void @makemove(i32 noundef %134)
  %149 = sub nsw i32 6, %.13
  %150 = sub nsw i32 6, %.2
  %151 = call i32 @ab(i32 noundef %149, i32 noundef %150)
  %152 = sub nsw i32 6, %151
  call void @backmove()
  %153 = icmp sgt i32 %152, %.015
  br i1 %153, label %154, label %198

154:                                              ; preds = %146
  %155 = icmp sgt i32 %152, %.2
  br i1 %155, label %156, label %197

156:                                              ; preds = %154
  %157 = load i32, i32* @nplies, align 4
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %159, label %197

159:                                              ; preds = %156
  %.not11 = icmp slt i32 %152, %.13
  br i1 %.not11, label %197, label %160

160:                                              ; preds = %159
  %161 = icmp eq i32 %151, 3
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  %163 = add nsw i32 %.323, -1
  %164 = icmp slt i32 %.26, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %166

166:                                              ; preds = %165, %162, %160
  %.116 = phi i32 [ 4, %165 ], [ %152, %162 ], [ %152, %160 ]
  %.not12 = icmp eq i32 %.26, 0
  br i1 %.not12, label %196, label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %182, %167
  %.37 = phi i32 [ 0, %167 ], [ %183, %182 ]
  %169 = icmp ult i32 %.37, %.26
  br i1 %169, label %170, label %184

170:                                              ; preds = %168
  %171 = zext i32 %10 to i64
  %172 = zext i32 %.37 to i64
  %173 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i64
  %179 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %171, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %170
  %183 = add nuw nsw i32 %.37, 1
  br label %168, !llvm.loop !19

184:                                              ; preds = %168
  %185 = zext i32 %10 to i64
  %186 = zext i32 %.26 to i64
  %187 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i64
  %193 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %185, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, %.26
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %184, %166
  br label %201

197:                                              ; preds = %159, %156, %154
  %.3 = phi i32 [ %152, %159 ], [ %.2, %156 ], [ %.2, %154 ]
  br label %198

198:                                              ; preds = %197, %146
  %.217 = phi i32 [ %152, %197 ], [ %.015, %146 ]
  %.4 = phi i32 [ %.3, %197 ], [ %.2, %146 ]
  br label %199

199:                                              ; preds = %198
  %200 = add nuw nsw i32 %.26, 1
  br label %101, !llvm.loop !20

.loopexit:                                        ; preds = %101
  br label %201

201:                                              ; preds = %.loopexit, %196
  %.318 = phi i32 [ %.116, %196 ], [ %.015, %.loopexit ]
  %202 = sub nsw i32 6, %81
  %203 = icmp eq i32 %.318, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %205

205:                                              ; preds = %204, %201
  %.419 = phi i32 [ 3, %204 ], [ %.318, %201 ]
  %206 = load i64, i64* @posed, align 8
  %207 = sub i64 %206, %100
  br label %208

208:                                              ; preds = %211, %205
  %.024 = phi i32 [ 0, %205 ], [ %212, %211 ]
  %.012 = phi i64 [ %207, %205 ], [ %209, %211 ]
  %209 = lshr i64 %.012, 1
  %.not10 = icmp ult i64 %.012, 2
  br i1 %.not10, label %213, label %210

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %210
  %212 = add nuw nsw i32 %.024, 1
  br label %208, !llvm.loop !21

213:                                              ; preds = %208
  call void @transtore(i32 noundef %98, i32 noundef %99, i32 noundef %.419, i32 noundef %.024)
  %214 = load i32, i32* @nplies, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  call void @printMoves()
  %217 = sext i32 %.419 to i64
  %218 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.3, i64 0, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %220, i32 noundef %.024) #12
  br label %222

222:                                              ; preds = %216, %213
  br label %223

223:                                              ; preds = %222, %94, %92, %86, %73, %70, %66, %53, %38, %7
  %.0 = phi i32 [ 3, %7 ], [ 1, %38 ], [ 1, %53 ], [ 1, %66 ], [ 3, %70 ], [ %79, %73 ], [ %81, %86 ], [ %.419, %222 ], [ %81, %92 ], [ %81, %94 ]
  ret i32 %.0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }

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
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
