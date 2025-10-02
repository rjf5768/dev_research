; ModuleID = './g72x.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g72x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }
%_wyvern_thunk_type.6 = type { i32 (%_wyvern_thunk_type.6*)*, i32, i1, i32 }
%_wyvern_thunk_type.4 = type { i32 (%_wyvern_thunk_type.4*)*, i32, i1, i32 }
%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, i32, i32 }
%_wyvern_thunk_type.8 = type { i32 (%_wyvern_thunk_type.8*)*, i32, i1, i32 }
%_wyvern_thunk_type.2 = type { i32 (%_wyvern_thunk_type.2*)*, i32, i1, i32 }

@power2 = internal global [15 x i16] [i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @g72x_init_state(%struct.g72x_state* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 0
  store i64 34816, i64* %2, align 8
  %3 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 1
  store i16 544, i16* %3, align 8
  %4 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 2
  store i16 0, i16* %4, align 2
  %5 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 3
  store i16 0, i16* %5, align 4
  %6 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 4
  store i16 0, i16* %6, align 2
  br label %7

7:                                                ; preds = %16, %1
  %.0 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %8 = icmp ult i32 %.0, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 5, i64 %10
  store i16 0, i16* %11, align 2
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 7, i64 %12
  store i16 0, i16* %13, align 2
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 9, i64 %14
  store i16 32, i16* %15, align 2
  br label %16

16:                                               ; preds = %9
  %17 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !4

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %26, %18
  %.1 = phi i32 [ 0, %18 ], [ %27, %26 ]
  %20 = icmp ult i32 %.1, 6
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = zext i32 %.1 to i64
  %23 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 6, i64 %22
  store i16 0, i16* %23, align 2
  %24 = zext i32 %.1 to i64
  %25 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 8, i64 %24
  store i16 32, i16* %25, align 2
  br label %26

26:                                               ; preds = %21
  %27 = add nuw nsw i32 %.1, 1
  br label %19, !llvm.loop !6

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 10
  store i8 0, i8* %29, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @predictor_zero(%struct.g72x_state* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 6, i64 0
  %3 = load i16, i16* %2, align 4
  %4 = ashr i16 %3, 2
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 8, i64 0
  %7 = load i16, i16* %6, align 4
  %8 = sext i16 %7 to i32
  %9 = call i32 @fmult(i32 noundef %5, i32 noundef %8)
  br label %10

10:                                               ; preds = %23, %1
  %.01 = phi i32 [ 1, %1 ], [ %25, %23 ]
  %.0 = phi i32 [ %9, %1 ], [ %24, %23 ]
  %11 = icmp ult i32 %.01, 6
  br i1 %11, label %12, label %26

12:                                               ; preds = %10
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 6, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = ashr i16 %15, 2
  %17 = sext i16 %16 to i32
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 8, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = call i32 @fmult(i32 noundef %17, i32 noundef %21)
  br label %23

23:                                               ; preds = %12
  %24 = add nsw i32 %.0, %22
  %25 = add nuw nsw i32 %.01, 1
  br label %10, !llvm.loop !7

26:                                               ; preds = %10
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @fmult(i32 noundef %0, i32 noundef %1) #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.6, align 8
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %8

5:                                                ; preds = %2
  %6 = sub nsw i32 0, %0
  %7 = and i32 %6, 8191
  br label %8

8:                                                ; preds = %5, %4
  %9 = phi i32 [ %0, %4 ], [ %7, %5 ]
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.6*)* @_wyvern_slice_memo_fmult_726221909, i32 (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %0, i32* %_wyvern_thunk_arg_gep_, align 8
  %10 = call i32 @_wyvern_calleeclone_quan_0111629890(%_wyvern_thunk_type.6* noundef nonnull %_wyvern_thunk_alloca, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %11 = trunc i32 %10 to i16
  %12 = add i16 %11, -6
  %sext.mask = and i32 %9, 65535
  %13 = icmp eq i32 %sext.mask, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %28

15:                                               ; preds = %8
  %16 = icmp sgt i16 %12, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %sext4 = shl i32 %9, 16
  %18 = ashr exact i32 %sext4, 16
  %19 = zext i16 %12 to i32
  %20 = ashr i32 %18, %19
  br label %26

21:                                               ; preds = %15
  %sext = shl i32 %9, 16
  %22 = ashr exact i32 %sext, 16
  %23 = sext i16 %12 to i32
  %24 = sub nsw i32 0, %23
  %25 = shl i32 %22, %24
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32 [ %20, %17 ], [ %25, %21 ]
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i32 [ 32, %14 ], [ %27, %26 ]
  %30 = trunc i32 %1 to i16
  %31 = lshr i16 %30, 6
  %32 = and i16 %31, 15
  %33 = add i16 %32, %12
  %34 = add i16 %33, -13
  %sext1 = shl i32 %29, 16
  %35 = ashr exact i32 %sext1, 16
  %36 = and i32 %1, 63
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %37, 48
  %39 = lshr i32 %38, 4
  %40 = icmp sgt i16 %34, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = zext i16 %34 to i32
  %43 = shl i32 %39, %42
  %44 = and i32 %43, 32767
  br label %50

45:                                               ; preds = %28
  %sext2 = shl i32 %39, 16
  %46 = ashr exact i32 %sext2, 16
  %47 = sext i16 %34 to i32
  %48 = sub nsw i32 0, %47
  %49 = ashr i32 %46, %48
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i32 [ %44, %41 ], [ %49, %45 ]
  %52 = xor i32 %0, %1
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = sub nsw i32 0, %51
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ %51, %56 ]
  ret i32 %58
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @predictor_pole(%struct.g72x_state* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 5, i64 1
  %3 = load i16, i16* %2, align 2
  %4 = ashr i16 %3, 2
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 9, i64 1
  %7 = load i16, i16* %6, align 2
  %8 = sext i16 %7 to i32
  %9 = call i32 @fmult(i32 noundef %5, i32 noundef %8)
  %10 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 5, i64 0
  %11 = load i16, i16* %10, align 8
  %12 = ashr i16 %11, 2
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 9, i64 0
  %15 = load i16, i16* %14, align 8
  %16 = sext i16 %15 to i32
  %17 = call i32 @fmult(i32 noundef %13, i32 noundef %16)
  %18 = add nsw i32 %9, %17
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @step_size(%struct.g72x_state* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 4
  %3 = load i16, i16* %2, align 2
  %4 = icmp sgt i16 %3, 255
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = sext i16 %7 to i32
  br label %36

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = lshr i64 %11, 6
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 %16, %13
  %18 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %0, i64 0, i32 4
  %19 = load i16, i16* %18, align 2
  %20 = ashr i16 %19, 2
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %17, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %9
  %24 = mul nsw i32 %17, %21
  %25 = ashr i32 %24, 6
  %26 = add nsw i32 %25, %13
  br label %35

27:                                               ; preds = %9
  %28 = icmp slt i32 %17, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = mul nsw i32 %17, %21
  %31 = add nsw i32 %30, 63
  %32 = ashr i32 %31, 6
  %33 = add nsw i32 %32, %13
  br label %34

34:                                               ; preds = %29, %27
  %.01 = phi i32 [ %33, %29 ], [ %13, %27 ]
  br label %35

35:                                               ; preds = %34, %23
  %.1 = phi i32 [ %26, %23 ], [ %.01, %34 ]
  br label %36

36:                                               ; preds = %35, %5
  %.0 = phi i32 [ %8, %5 ], [ %.1, %35 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @quantize(i32 noundef %0, i32 noundef %1, i16* nocapture noundef readonly %2, i32 noundef %3) #3 {
  %_wyvern_thunk_alloca2 = alloca %_wyvern_thunk_type.4, align 8
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %_wyvern_thunk_fptr_gep3 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca2, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.4*)* @_wyvern_slice_memo_quantize_677616899, i32 (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_gep3, align 8
  %_wyvern_thunk_flag_gep4 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca2, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep4, align 4
  %_wyvern_thunk_arg_gep_5 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca2, i64 0, i32 3
  store i32 %0, i32* %_wyvern_thunk_arg_gep_5, align 8
  %5 = call i32 @_wyvern_calleeclone_quan_0388415065(%_wyvern_thunk_type.4* noundef nonnull %_wyvern_thunk_alloca2, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_quantize_76241226, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %0, i32* %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunk_arg_gep_1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 4
  store i32 %1, i32* %_wyvern_thunk_arg_gep_1, align 4
  %6 = call i32 @_wyvern_calleeclone_quan_0725743370(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i16* noundef %2, i32 noundef %3)
  %7 = icmp slt i32 %0, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = shl i32 %3, 1
  %10 = or i32 %9, 1
  %11 = sub nsw i32 %10, %6
  br label %18

12:                                               ; preds = %4
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = shl i32 %3, 1
  %16 = or i32 %15, 1
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %14, %8
  %.0 = phi i32 [ %11, %8 ], [ %16, %14 ], [ %6, %17 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @quan(i32 noundef %0, i16* nocapture noundef readonly %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %13, %3
  %.01 = phi i16* [ %1, %3 ], [ %7, %13 ]
  %.0 = phi i32 [ 0, %3 ], [ %14, %13 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %4
  %7 = getelementptr inbounds i16, i16* %.01, i64 1
  %8 = load i16, i16* %.01, align 2
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i32 %9, %0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %15

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !8

.loopexit:                                        ; preds = %4
  br label %15

15:                                               ; preds = %.loopexit, %11
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @reconstruct(i32 noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = lshr i32 %2, 2
  %5 = add i32 %4, %1
  %sext.mask = and i32 %5, 32768
  %.not = icmp eq i32 %sext.mask, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %3
  %.not3 = icmp eq i32 %0, 0
  %7 = select i1 %.not3, i32 0, i32 -32768
  br label %23

8:                                                ; preds = %3
  %9 = lshr i32 %5, 7
  %10 = and i32 %9, 15
  %11 = shl i32 %5, 7
  %12 = and i32 %11, 16256
  %13 = or i32 %12, 16384
  %14 = sub nsw i32 14, %10
  %15 = lshr i32 %13, %14
  %.not1 = icmp eq i32 %0, 0
  br i1 %.not1, label %19, label %16

16:                                               ; preds = %8
  %sext2 = shl i32 %15, 16
  %17 = ashr exact i32 %sext2, 16
  %18 = add nsw i32 %17, -32768
  br label %21

19:                                               ; preds = %8
  %sext = shl i32 %15, 16
  %20 = ashr exact i32 %sext, 16
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ %20, %19 ]
  br label %23

23:                                               ; preds = %21, %6
  %.0 = phi i32 [ %7, %6 ], [ %22, %21 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @update(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, %struct.g72x_state* noundef %7) #6 {
  %_wyvern_thunk_alloca5 = alloca %_wyvern_thunk_type.8, align 8
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.2, align 8
  %.lobit = lshr i32 %6, 31
  %9 = trunc i32 %.lobit to i16
  %10 = trunc i32 %4 to i16
  %11 = and i16 %10, 32767
  %12 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = lshr i64 %13, 15
  %15 = trunc i64 %14 to i16
  %16 = icmp sgt i16 %15, 9
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %27

18:                                               ; preds = %8
  %19 = trunc i64 %13 to i32
  %20 = lshr i32 %19, 10
  %21 = and i32 %20, 31
  %22 = or i32 %21, 32
  %23 = trunc i64 %14 to i32
  %24 = and i32 %23, 65535
  %25 = shl i32 %22, %24
  %sext = shl i32 %25, 16
  %26 = ashr exact i32 %sext, 16
  br label %27

27:                                               ; preds = %18, %17
  %28 = phi i32 [ 31744, %17 ], [ %26, %18 ]
  %29 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 10
  %30 = load i8, i8* %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %41

33:                                               ; preds = %27
  %34 = ashr i32 %28, 1
  %35 = add nsw i32 %28, %34
  %36 = zext i16 %11 to i32
  %37 = ashr i32 %35, 1
  %.not = icmp slt i32 %37, %36
  br i1 %.not, label %39, label %38

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %38
  %.0 = phi i8 [ 0, %38 ], [ 1, %39 ]
  br label %41

41:                                               ; preds = %40, %32
  %.1 = phi i8 [ 0, %32 ], [ %.0, %40 ]
  %42 = sub nsw i32 %2, %1
  %43 = lshr i32 %42, 5
  %44 = add i32 %43, %1
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 1
  store i16 %45, i16* %46, align 8
  %47 = trunc i32 %44 to i16
  %48 = icmp slt i16 %47, 544
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 1
  store i16 544, i16* %50, align 8
  br label %58

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 1
  %53 = load i16, i16* %52, align 8
  %54 = icmp sgt i16 %53, 5120
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 1
  store i16 5120, i16* %56, align 8
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %49
  %59 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 1
  %60 = load i16, i16* %59, align 8
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 0, %63
  %65 = ashr i64 %64, 6
  %66 = add nsw i64 %65, %61
  %67 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 0
  %68 = add nsw i64 %63, %66
  store i64 %68, i64* %67, align 8
  %69 = icmp eq i8 %.1, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  store i16 0, i16* %71, align 8
  %72 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 1
  store i16 0, i16* %72, align 2
  %73 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 0
  store i16 0, i16* %73, align 4
  %74 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 1
  store i16 0, i16* %74, align 2
  %75 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 2
  store i16 0, i16* %75, align 4
  %76 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 3
  store i16 0, i16* %76, align 2
  %77 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 4
  store i16 0, i16* %77, align 4
  %78 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 5
  store i16 0, i16* %78, align 2
  br label %216

79:                                               ; preds = %58
  %80 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 7, i64 0
  %81 = load i16, i16* %80, align 8
  %82 = trunc i32 %.lobit to i16
  %83 = xor i16 %81, %82
  %84 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 1
  %85 = load i16, i16* %84, align 2
  %86 = ashr i16 %85, 7
  %87 = sub i16 %85, %86
  %.not11 = icmp eq i32 %6, 0
  br i1 %.not11, label %134, label %88

88:                                               ; preds = %79
  %.not25 = icmp eq i16 %83, 0
  br i1 %.not25, label %92, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  %91 = load i16, i16* %90, align 8
  br label %96

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  %94 = load i16, i16* %93, align 8
  %95 = sub i16 0, %94
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i16 [ %91, %89 ], [ %95, %92 ]
  %98 = icmp slt i16 %97, -8191
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = add i16 %87, -256
  br label %109

101:                                              ; preds = %96
  %102 = icmp sgt i16 %97, 8191
  br i1 %102, label %103, label %105

103:                                              ; preds = %101
  %104 = add i16 %87, 255
  br label %108

105:                                              ; preds = %101
  %106 = ashr i16 %97, 5
  %107 = add i16 %87, %106
  br label %108

108:                                              ; preds = %105, %103
  %.01 = phi i16 [ %104, %103 ], [ %107, %105 ]
  br label %109

109:                                              ; preds = %108, %99
  %.12 = phi i16 [ %100, %99 ], [ %.01, %108 ]
  %110 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 7, i64 1
  %111 = load i16, i16* %110, align 2
  %112 = sext i16 %111 to i32
  %.not26 = icmp eq i32 %.lobit, %112
  br i1 %.not26, label %123, label %113

113:                                              ; preds = %109
  %114 = icmp slt i16 %.12, -12159
  br i1 %114, label %115, label %116

115:                                              ; preds = %113
  br label %122

116:                                              ; preds = %113
  %117 = icmp sgt i16 %.12, 12415
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  br label %121

119:                                              ; preds = %116
  %120 = add i16 %.12, -128
  br label %121

121:                                              ; preds = %119, %118
  %.2 = phi i16 [ 12288, %118 ], [ %120, %119 ]
  br label %122

122:                                              ; preds = %121, %115
  %.3 = phi i16 [ -12288, %115 ], [ %.2, %121 ]
  br label %133

123:                                              ; preds = %109
  %124 = icmp slt i16 %.12, -12415
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  br label %132

126:                                              ; preds = %123
  %127 = icmp sgt i16 %.12, 12159
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  br label %131

129:                                              ; preds = %126
  %130 = add i16 %.12, 128
  br label %131

131:                                              ; preds = %129, %128
  %.4 = phi i16 [ 12288, %128 ], [ %130, %129 ]
  br label %132

132:                                              ; preds = %131, %125
  %.5 = phi i16 [ -12288, %125 ], [ %.4, %131 ]
  br label %133

133:                                              ; preds = %132, %122
  %.6 = phi i16 [ %.3, %122 ], [ %.5, %132 ]
  br label %134

134:                                              ; preds = %133, %79
  %.7 = phi i16 [ %.6, %133 ], [ %87, %79 ]
  %135 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 1
  store i16 %.7, i16* %135, align 2
  %136 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  %137 = load i16, i16* %136, align 8
  %138 = ashr i16 %137, 8
  %139 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  %140 = sub i16 %137, %138
  store i16 %140, i16* %139, align 8
  %.not12 = icmp eq i32 %6, 0
  br i1 %.not12, label %152, label %141

141:                                              ; preds = %134
  %142 = icmp eq i16 %83, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  %145 = load i16, i16* %144, align 8
  %146 = add i16 %145, 192
  store i16 %146, i16* %144, align 8
  br label %151

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  %149 = load i16, i16* %148, align 8
  %150 = add i16 %149, -192
  store i16 %150, i16* %148, align 8
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %134
  %153 = sub i16 15360, %.7
  %154 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  %155 = load i16, i16* %154, align 8
  %156 = sext i16 %155 to i32
  %157 = sext i16 %153 to i32
  %158 = sub nsw i32 0, %157
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %.neg24 = add i16 %.7, -15360
  %161 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  store i16 %.neg24, i16* %161, align 8
  br label %169

162:                                              ; preds = %152
  %163 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  %164 = load i16, i16* %163, align 8
  %165 = icmp sgt i16 %164, %153
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 5, i64 0
  store i16 %153, i16* %167, align 8
  br label %168

168:                                              ; preds = %166, %162
  br label %169

169:                                              ; preds = %168, %160
  br label %170

170:                                              ; preds = %213, %169
  %.03 = phi i32 [ 0, %169 ], [ %214, %213 ]
  %171 = icmp ult i32 %.03, 6
  br i1 %171, label %172, label %215

172:                                              ; preds = %170
  %173 = icmp eq i32 %0, 5
  br i1 %173, label %174, label %183

174:                                              ; preds = %172
  %175 = zext i32 %.03 to i64
  %176 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = ashr i16 %177, 9
  %179 = zext i32 %.03 to i64
  %180 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 %179
  %181 = load i16, i16* %180, align 2
  %182 = sub i16 %181, %178
  store i16 %182, i16* %180, align 2
  br label %192

183:                                              ; preds = %172
  %184 = zext i32 %.03 to i64
  %185 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 %184
  %186 = load i16, i16* %185, align 2
  %187 = ashr i16 %186, 8
  %188 = zext i32 %.03 to i64
  %189 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 %188
  %190 = load i16, i16* %189, align 2
  %191 = sub i16 %190, %187
  store i16 %191, i16* %189, align 2
  br label %192

192:                                              ; preds = %183, %174
  %193 = and i32 %4, 32767
  %.not23 = icmp eq i32 %193, 0
  br i1 %.not23, label %212, label %194

194:                                              ; preds = %192
  %195 = zext i32 %.03 to i64
  %196 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 8, i64 %195
  %197 = load i16, i16* %196, align 2
  %198 = sext i16 %197 to i32
  %199 = xor i32 %198, %4
  %200 = icmp sgt i32 %199, -1
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = zext i32 %.03 to i64
  %203 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 %202
  %204 = load i16, i16* %203, align 2
  %205 = add i16 %204, 128
  store i16 %205, i16* %203, align 2
  br label %211

206:                                              ; preds = %194
  %207 = zext i32 %.03 to i64
  %208 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 6, i64 %207
  %209 = load i16, i16* %208, align 2
  %210 = add i16 %209, -128
  store i16 %210, i16* %208, align 2
  br label %211

211:                                              ; preds = %206, %201
  br label %212

212:                                              ; preds = %211, %192
  br label %213

213:                                              ; preds = %212
  %214 = add nuw nsw i32 %.03, 1
  br label %170, !llvm.loop !9

215:                                              ; preds = %170
  br label %216

216:                                              ; preds = %215, %70
  %.8 = phi i16 [ undef, %70 ], [ %.7, %215 ]
  br label %217

217:                                              ; preds = %226, %216
  %.14 = phi i32 [ 5, %216 ], [ %227, %226 ]
  %218 = icmp sgt i32 %.14, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %217
  %220 = add nsw i32 %.14, -1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 8, i64 %221
  %223 = load i16, i16* %222, align 2
  %224 = sext i32 %.14 to i64
  %225 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 8, i64 %224
  store i16 %223, i16* %225, align 2
  br label %226

226:                                              ; preds = %219
  %227 = add nsw i32 %.14, -1
  br label %217, !llvm.loop !10

228:                                              ; preds = %217
  %229 = icmp eq i16 %11, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %228
  %231 = icmp sgt i32 %4, -1
  %232 = select i1 %231, i16 32, i16 -992
  %233 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 8, i64 0
  store i16 %232, i16* %233, align 4
  br label %256

234:                                              ; preds = %228
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_update_117291886, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %4, i32* %_wyvern_thunk_arg_gep_, align 8
  %235 = call i32 @_wyvern_calleeclone_quan_0892024317(%_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %236 = icmp sgt i32 %4, -1
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %sext21 = shl i32 %235, 16
  %238 = ashr exact i32 %sext21, 10
  %239 = zext i16 %11 to i32
  %240 = shl nuw nsw i32 %239, 6
  %sext22 = shl i32 %235, 16
  %241 = ashr exact i32 %sext22, 16
  %242 = lshr i32 %240, %241
  %243 = add nsw i32 %238, %242
  br label %252

244:                                              ; preds = %234
  %sext13 = shl i32 %235, 16
  %245 = ashr exact i32 %sext13, 10
  %246 = zext i16 %11 to i32
  %247 = shl nuw nsw i32 %246, 6
  %sext14 = shl i32 %235, 16
  %248 = ashr exact i32 %sext14, 16
  %249 = lshr i32 %247, %248
  %250 = add nsw i32 %245, %249
  %251 = add nsw i32 %250, -1024
  br label %252

252:                                              ; preds = %244, %237
  %253 = phi i32 [ %243, %237 ], [ %251, %244 ]
  %254 = trunc i32 %253 to i16
  %255 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 8, i64 0
  store i16 %254, i16* %255, align 4
  br label %256

256:                                              ; preds = %252, %230
  %257 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 9, i64 0
  %258 = load i16, i16* %257, align 8
  %259 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 9, i64 1
  store i16 %258, i16* %259, align 2
  %260 = icmp eq i32 %5, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 9, i64 0
  store i16 32, i16* %262, align 8
  br label %290

263:                                              ; preds = %256
  %264 = icmp sgt i32 %5, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %263
  %266 = call i32 @quan(i32 noundef %5, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %267 = shl i32 %266, 6
  %268 = shl i32 %5, 6
  %sext20 = shl i32 %266, 16
  %269 = ashr exact i32 %sext20, 16
  %270 = ashr i32 %268, %269
  %271 = add i32 %267, %270
  %272 = trunc i32 %271 to i16
  %273 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 9, i64 0
  store i16 %272, i16* %273, align 8
  br label %289

274:                                              ; preds = %263
  %275 = icmp sgt i32 %5, -32768
  br i1 %275, label %276, label %286

276:                                              ; preds = %274
  %_wyvern_thunk_fptr_gep6 = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca5, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.8*)* @_wyvern_slice_memo_update_886761658, i32 (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_gep6, align 8
  %_wyvern_thunk_flag_gep7 = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca5, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep7, align 4
  %_wyvern_thunk_arg_gep_8 = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca5, i64 0, i32 3
  store i32 %5, i32* %_wyvern_thunk_arg_gep_8, align 8
  %277 = call i32 @_wyvern_calleeclone_quan_0555043320(%_wyvern_thunk_type.8* noundef nonnull %_wyvern_thunk_alloca5, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %278 = shl i32 %277, 6
  %.neg = mul i32 %5, -65536
  %279 = ashr exact i32 %.neg, 10
  %sext18 = shl i32 %277, 16
  %280 = ashr exact i32 %sext18, 16
  %281 = ashr i32 %279, %280
  %282 = add i32 %278, %281
  %283 = trunc i32 %282 to i16
  %284 = add i16 %283, -1024
  %285 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 9, i64 0
  store i16 %284, i16* %285, align 8
  br label %288

286:                                              ; preds = %274
  %287 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 9, i64 0
  store i16 -992, i16* %287, align 8
  br label %288

288:                                              ; preds = %286, %276
  br label %289

289:                                              ; preds = %288, %265
  br label %290

290:                                              ; preds = %289, %261
  %291 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 7, i64 0
  %292 = load i16, i16* %291, align 8
  %293 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 7, i64 1
  store i16 %292, i16* %293, align 2
  %294 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 7, i64 0
  store i16 %9, i16* %294, align 8
  %295 = icmp eq i8 %.1, 1
  br i1 %295, label %296, label %298

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 10
  store i8 0, i8* %297, align 4
  br label %305

298:                                              ; preds = %290
  %299 = icmp slt i16 %.8, -11776
  br i1 %299, label %300, label %302

300:                                              ; preds = %298
  %301 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 10
  store i8 1, i8* %301, align 4
  br label %304

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 10
  store i8 0, i8* %303, align 4
  br label %304

304:                                              ; preds = %302, %300
  br label %305

305:                                              ; preds = %304, %296
  %306 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 2
  %307 = load i16, i16* %306, align 2
  %308 = sext i16 %307 to i32
  %309 = sub nsw i32 %3, %308
  %310 = lshr i32 %309, 5
  %311 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 2
  %312 = trunc i32 %310 to i16
  %313 = add i16 %307, %312
  store i16 %313, i16* %311, align 2
  %314 = shl i32 %3, 2
  %315 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 3
  %316 = load i16, i16* %315, align 4
  %317 = sext i16 %316 to i32
  %318 = sub nsw i32 %314, %317
  %319 = lshr i32 %318, 7
  %320 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 3
  %321 = trunc i32 %319 to i16
  %322 = add i16 %316, %321
  store i16 %322, i16* %320, align 4
  %323 = icmp eq i8 %.1, 1
  br i1 %323, label %324, label %326

324:                                              ; preds = %305
  %325 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 4
  store i16 256, i16* %325, align 2
  br label %383

326:                                              ; preds = %305
  %327 = icmp slt i32 %1, 1536
  br i1 %327, label %328, label %337

328:                                              ; preds = %326
  %329 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 4
  %330 = load i16, i16* %329, align 2
  %331 = sext i16 %330 to i32
  %332 = sub nsw i32 512, %331
  %333 = ashr i32 %332, 4
  %334 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 4
  %335 = trunc i32 %333 to i16
  %336 = add i16 %330, %335
  store i16 %336, i16* %334, align 2
  br label %382

337:                                              ; preds = %326
  %338 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 10
  %339 = load i8, i8* %338, align 4
  %340 = icmp eq i8 %339, 1
  br i1 %340, label %341, label %350

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 4
  %343 = load i16, i16* %342, align 2
  %344 = sext i16 %343 to i32
  %345 = sub nsw i32 512, %344
  %346 = ashr i32 %345, 4
  %347 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 4
  %348 = trunc i32 %346 to i16
  %349 = add i16 %343, %348
  store i16 %349, i16* %347, align 2
  br label %381

350:                                              ; preds = %337
  %351 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 2
  %352 = load i16, i16* %351, align 2
  %353 = sext i16 %352 to i32
  %354 = shl nsw i32 %353, 2
  %355 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 3
  %356 = load i16, i16* %355, align 4
  %357 = sext i16 %356 to i32
  %358 = sub nsw i32 %354, %357
  %359 = call i32 @llvm.abs.i32(i32 %358, i1 true)
  %360 = ashr i16 %356, 3
  %361 = sext i16 %360 to i32
  %.not15 = icmp slt i32 %359, %361
  br i1 %.not15, label %371, label %362

362:                                              ; preds = %350
  %363 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 4
  %364 = load i16, i16* %363, align 2
  %365 = sext i16 %364 to i32
  %366 = sub nsw i32 512, %365
  %367 = ashr i32 %366, 4
  %368 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 4
  %369 = trunc i32 %367 to i16
  %370 = add i16 %364, %369
  store i16 %370, i16* %368, align 2
  br label %380

371:                                              ; preds = %350
  %372 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 4
  %373 = load i16, i16* %372, align 2
  %374 = sext i16 %373 to i32
  %375 = sub nsw i32 0, %374
  %376 = ashr i32 %375, 4
  %377 = getelementptr inbounds %struct.g72x_state, %struct.g72x_state* %7, i64 0, i32 4
  %378 = trunc i32 %376 to i16
  %379 = add i16 %373, %378
  store i16 %379, i16* %377, align 2
  br label %380

380:                                              ; preds = %371, %362
  br label %381

381:                                              ; preds = %380, %341
  br label %382

382:                                              ; preds = %381, %328
  br label %383

383:                                              ; preds = %382, %324
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tandem_adjust_alaw(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16* nocapture noundef readonly %5) #7 {
  %7 = icmp slt i32 %0, -32767
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %6
  %.01 = phi i32 [ -1, %8 ], [ %0, %6 ]
  %10 = shl i32 %.01, 2
  %11 = and i32 %10, -8
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @linear2alaw to i32 (i32, ...)*)(i32 noundef %11) #11
  %13 = and i32 %12, 255
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @alaw2linear to i32 (i32, ...)*)(i32 noundef %13) #11
  %15 = lshr i32 %14, 2
  %16 = sub i32 %15, %1
  %sext = shl i32 %16, 16
  %17 = ashr exact i32 %sext, 16
  %18 = add nsw i32 %4, -1
  %19 = call i32 @quantize(i32 noundef %17, i32 noundef %2, i16* noundef %5, i32 noundef %18)
  %sext3 = shl i32 %19, 24
  %20 = ashr exact i32 %sext3, 24
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %22, label %24

22:                                               ; preds = %9
  %23 = and i32 %12, 255
  br label %80

24:                                               ; preds = %9
  %25 = xor i32 %3, %4
  %sext4 = shl i32 %19, 24
  %26 = ashr exact i32 %sext4, 24
  %27 = xor i32 %26, %4
  %28 = icmp sgt i32 %27, %25
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = and i32 %12, 128
  %.not5 = icmp eq i32 %30, 0
  br i1 %.not5, label %42, label %31

31:                                               ; preds = %29
  %32 = and i32 %12, 255
  %33 = icmp eq i32 %32, 213
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %40

35:                                               ; preds = %31
  %36 = and i32 %12, 255
  %37 = xor i32 %36, 85
  %38 = add nsw i32 %37, -1
  %39 = xor i32 %38, 85
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi i32 [ 85, %34 ], [ %39, %35 ]
  br label %53

42:                                               ; preds = %29
  %43 = and i32 %12, 255
  %44 = icmp eq i32 %43, 42
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %51

46:                                               ; preds = %42
  %47 = and i32 %12, 255
  %48 = xor i32 %47, 85
  %49 = add nuw nsw i32 %48, 1
  %50 = xor i32 %49, 85
  br label %51

51:                                               ; preds = %46, %45
  %52 = phi i32 [ 42, %45 ], [ %50, %46 ]
  br label %53

53:                                               ; preds = %51, %40
  %.02 = phi i32 [ %41, %40 ], [ %52, %51 ]
  br label %79

54:                                               ; preds = %24
  %55 = and i32 %12, 128
  %.not = icmp eq i32 %55, 0
  br i1 %.not, label %67, label %56

56:                                               ; preds = %54
  %57 = and i32 %12, 255
  %58 = icmp eq i32 %57, 170
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %65

60:                                               ; preds = %56
  %61 = and i32 %12, 255
  %62 = xor i32 %61, 85
  %63 = add nuw nsw i32 %62, 1
  %64 = xor i32 %63, 85
  br label %65

65:                                               ; preds = %60, %59
  %66 = phi i32 [ 170, %59 ], [ %64, %60 ]
  br label %78

67:                                               ; preds = %54
  %68 = and i32 %12, 255
  %69 = icmp eq i32 %68, 85
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %76

71:                                               ; preds = %67
  %72 = and i32 %12, 255
  %73 = xor i32 %72, 85
  %74 = add nsw i32 %73, -1
  %75 = xor i32 %74, 85
  br label %76

76:                                               ; preds = %71, %70
  %77 = phi i32 [ 213, %70 ], [ %75, %71 ]
  br label %78

78:                                               ; preds = %76, %65
  %.1 = phi i32 [ %66, %65 ], [ %77, %76 ]
  br label %79

79:                                               ; preds = %78, %53
  %.2 = phi i32 [ %.02, %53 ], [ %.1, %78 ]
  br label %80

80:                                               ; preds = %79, %22
  %.0 = phi i32 [ %23, %22 ], [ %.2, %79 ]
  ret i32 %.0
}

declare dso_local i32 @linear2alaw(...) #8

declare dso_local i32 @alaw2linear(...) #8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tandem_adjust_ulaw(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i16* nocapture noundef readonly %5) #7 {
  %7 = icmp slt i32 %0, -32767
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %6
  %.01 = phi i32 [ 0, %8 ], [ %0, %6 ]
  %10 = shl i32 %.01, 2
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @linear2ulaw to i32 (i32, ...)*)(i32 noundef %10) #11
  %12 = and i32 %11, 255
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @ulaw2linear to i32 (i32, ...)*)(i32 noundef %12) #11
  %14 = lshr i32 %13, 2
  %15 = sub i32 %14, %1
  %sext = shl i32 %15, 16
  %16 = ashr exact i32 %sext, 16
  %17 = add nsw i32 %4, -1
  %18 = call i32 @quantize(i32 noundef %16, i32 noundef %2, i16* noundef %5, i32 noundef %17)
  %sext3 = shl i32 %18, 24
  %19 = ashr exact i32 %sext3, 24
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = and i32 %11, 255
  br label %71

23:                                               ; preds = %9
  %24 = xor i32 %3, %4
  %sext4 = shl i32 %18, 24
  %25 = ashr exact i32 %sext4, 24
  %26 = xor i32 %25, %4
  %27 = icmp sgt i32 %26, %24
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = and i32 %11, 128
  %.not5 = icmp eq i32 %29, 0
  br i1 %.not5, label %39, label %30

30:                                               ; preds = %28
  %31 = and i32 %11, 255
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %37

34:                                               ; preds = %30
  %35 = and i32 %11, 255
  %36 = add nuw nsw i32 %35, 1
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 126, %33 ], [ %36, %34 ]
  br label %48

39:                                               ; preds = %28
  %40 = and i32 %11, 255
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %46

43:                                               ; preds = %39
  %44 = and i32 %11, 255
  %45 = add nsw i32 %44, -1
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ 0, %42 ], [ %45, %43 ]
  br label %48

48:                                               ; preds = %46, %37
  %.02 = phi i32 [ %38, %37 ], [ %47, %46 ]
  br label %70

49:                                               ; preds = %23
  %50 = and i32 %11, 128
  %.not = icmp eq i32 %50, 0
  br i1 %.not, label %60, label %51

51:                                               ; preds = %49
  %52 = and i32 %11, 255
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %58

55:                                               ; preds = %51
  %56 = and i32 %11, 255
  %57 = add nsw i32 %56, -1
  br label %58

58:                                               ; preds = %55, %54
  %59 = phi i32 [ 128, %54 ], [ %57, %55 ]
  br label %69

60:                                               ; preds = %49
  %61 = and i32 %11, 255
  %62 = icmp eq i32 %61, 127
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %67

64:                                               ; preds = %60
  %65 = and i32 %11, 255
  %66 = add nuw nsw i32 %65, 1
  br label %67

67:                                               ; preds = %64, %63
  %68 = phi i32 [ 254, %63 ], [ %66, %64 ]
  br label %69

69:                                               ; preds = %67, %58
  %.1 = phi i32 [ %59, %58 ], [ %68, %67 ]
  br label %70

70:                                               ; preds = %69, %48
  %.2 = phi i32 [ %.02, %48 ], [ %.1, %69 ]
  br label %71

71:                                               ; preds = %70, %21
  %.0 = phi i32 [ %22, %21 ], [ %.2, %70 ]
  ret i32 %.0
}

declare dso_local i32 @linear2ulaw(...) #8

declare dso_local i32 @ulaw2linear(...) #8

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_quantize_76241226(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #9 {
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
  %_wyvern_arg_addr_1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 4
  %_wyvern_arg_2 = load i32, i32* %_wyvern_arg_addr_1, align 4
  %0 = call i32 @llvm.abs.i32(i32 %_wyvern_arg_, i1 true)
  %sext = shl i32 %0, 16
  %1 = ashr i32 %sext, 17
  %2 = call i32 @quan(i32 noundef %1, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @power2, i64 0, i64 0), i32 noundef 15)
  %sext3 = shl i32 %0, 16
  %3 = ashr exact i32 %sext3, 9
  %sext4 = shl i32 %2, 16
  %4 = ashr exact i32 %sext4, 16
  %5 = ashr i32 %3, %4
  %6 = shl i32 %2, 23
  %7 = shl i32 %5, 16
  %8 = and i32 %7, 8323072
  %sext6 = or i32 %6, %8
  %9 = shl i32 %_wyvern_arg_2, 14
  %10 = and i32 %9, -65536
  %11 = sub i32 %sext6, %10
  %12 = ashr exact i32 %11, 16
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %12, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @_wyvern_calleeclone_quan_0725743370(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i16* nocapture noundef readonly %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %12, %2
  %.01 = phi i16* [ %0, %2 ], [ %6, %12 ]
  %.0 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = getelementptr inbounds i16, i16* %.01, i64 1
  %7 = load i16, i16* %.01, align 2
  %8 = sext i16 %7 to i32
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #11
  %9 = icmp slt i32 %_wyvern_thunkcall, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

.loopexit:                                        ; preds = %3
  br label %14

14:                                               ; preds = %.loopexit, %10
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_update_117291886(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #9 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  br label %sliceclone_1

sliceclone_1:                                     ; preds = %sliceclone_
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = and i32 %_wyvern_arg_, 32767
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @_wyvern_calleeclone_quan_0892024317(%_wyvern_thunk_type.2* noundef %_wyvern_thunkptr, i16* nocapture noundef readonly %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %12, %2
  %.01 = phi i16* [ %0, %2 ], [ %6, %12 ]
  %.0 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = getelementptr inbounds i16, i16* %.01, i64 1
  %7 = load i16, i16* %.01, align 2
  %8 = sext i16 %7 to i32
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #11
  %9 = icmp slt i32 %_wyvern_thunkcall, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

.loopexit:                                        ; preds = %3
  br label %14

14:                                               ; preds = %.loopexit, %10
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_quantize_677616899(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #9 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = call i32 @llvm.abs.i32(i32 %_wyvern_arg_, i1 true)
  %sext = shl i32 %0, 16
  %1 = ashr i32 %sext, 17
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %1, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @_wyvern_calleeclone_quan_0388415065(%_wyvern_thunk_type.4* noundef %_wyvern_thunkptr, i16* nocapture noundef readonly %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %12, %2
  %.01 = phi i16* [ %0, %2 ], [ %6, %12 ]
  %.0 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = getelementptr inbounds i16, i16* %.01, i64 1
  %7 = load i16, i16* %.01, align 2
  %8 = sext i16 %7 to i32
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.4*)*, i32 (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #11
  %9 = icmp slt i32 %_wyvern_thunkcall, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

.loopexit:                                        ; preds = %3
  br label %14

14:                                               ; preds = %.loopexit, %10
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_fmult_726221909(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #9 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = icmp sgt i32 %_wyvern_arg_, 0
  br i1 %0, label %sliceclone_1, label %sliceclone_2

sliceclone_1:                                     ; preds = %sliceclone_
  br label %sliceclone_3

sliceclone_2:                                     ; preds = %sliceclone_
  %1 = sub nsw i32 0, %_wyvern_arg_
  %2 = and i32 %1, 8191
  br label %sliceclone_3

sliceclone_3:                                     ; preds = %sliceclone_2, %sliceclone_1
  %3 = phi i32 [ %_wyvern_arg_, %sliceclone_1 ], [ %2, %sliceclone_2 ]
  %sext = shl i32 %3, 16
  %4 = ashr exact i32 %sext, 16
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %4, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @_wyvern_calleeclone_quan_0111629890(%_wyvern_thunk_type.6* noundef %_wyvern_thunkptr, i16* nocapture noundef readonly %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %12, %2
  %.01 = phi i16* [ %0, %2 ], [ %6, %12 ]
  %.0 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = getelementptr inbounds i16, i16* %.01, i64 1
  %7 = load i16, i16* %.01, align 2
  %8 = sext i16 %7 to i32
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.6*)*, i32 (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #11
  %9 = icmp slt i32 %_wyvern_thunkcall, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

.loopexit:                                        ; preds = %3
  br label %14

14:                                               ; preds = %.loopexit, %10
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_update_886761658(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #9 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %.neg = mul i32 %_wyvern_arg_, -65536
  %0 = ashr exact i32 %.neg, 16
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @_wyvern_calleeclone_quan_0555043320(%_wyvern_thunk_type.8* noundef %_wyvern_thunkptr, i16* nocapture noundef readonly %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %12, %2
  %.01 = phi i16* [ %0, %2 ], [ %6, %12 ]
  %.0 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = getelementptr inbounds i16, i16* %.01, i64 1
  %7 = load i16, i16* %.01, align 2
  %8 = sext i16 %7 to i32
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.8*)*, i32 (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #11
  %9 = icmp slt i32 %_wyvern_thunkcall, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

.loopexit:                                        ; preds = %3
  br label %14

14:                                               ; preds = %.loopexit, %10
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }

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
