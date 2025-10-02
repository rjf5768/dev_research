; ModuleID = './Queens.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/Queens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }
%_wyvern_thunk_type.8 = type { i32* (%_wyvern_thunk_type.8*)*, i32*, i1 }

@seed = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c" Error in Queens.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global %struct.node* null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [18 x i8] c" Error in Queens.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Initrand() #0 {
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Rand() #1 {
  %1 = load i64, i64* @seed, align 8
  %2 = mul nsw i64 %1, 1309
  %3 = add nsw i64 %2, 13849
  %4 = and i64 %3, 65535
  store i64 %4, i64* @seed, align 8
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Try(i32 noundef %0, i32* nocapture noundef %1, i32* nocapture noundef %2, i32* nocapture noundef %3, i32* nocapture noundef %4, i32* nocapture noundef writeonly %5) #2 {
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %58, %6
  %.0 = phi i32 [ 0, %6 ], [ %14, %58 ]
  %8 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %11

9:                                                ; preds = %7
  %10 = icmp ne i32 %.0, 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i1 [ false, %7 ], [ %10, %9 ]
  br i1 %12, label %13, label %59

13:                                               ; preds = %11
  %14 = add nuw nsw i32 %.0, 1
  store i32 0, i32* %1, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %3, i64 %15
  %17 = load i32, i32* %16, align 4
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %58, label %18

18:                                               ; preds = %13
  %19 = add nsw i32 %14, %0
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %2, i64 %20
  %22 = load i32, i32* %21, align 4
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %58, label %23

23:                                               ; preds = %18
  %24 = sub nsw i32 %0, %14
  %25 = add nsw i32 %24, 7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %4, i64 %26
  %28 = load i32, i32* %27, align 4
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %58, label %29

29:                                               ; preds = %23
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds i32, i32* %5, i64 %30
  store i32 %14, i32* %31, align 4
  %32 = zext i32 %14 to i64
  %33 = getelementptr inbounds i32, i32* %3, i64 %32
  store i32 0, i32* %33, align 4
  %34 = add nsw i32 %14, %0
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %2, i64 %35
  store i32 0, i32* %36, align 4
  %37 = sub nsw i32 %0, %14
  %38 = add nsw i32 %37, 7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %4, i64 %39
  store i32 0, i32* %40, align 4
  %41 = icmp slt i32 %0, 8
  br i1 %41, label %42, label %56

42:                                               ; preds = %29
  %43 = add nsw i32 %0, 1
  call void @Try(i32 noundef %43, i32* noundef nonnull %1, i32* noundef %2, i32* noundef %3, i32* noundef %4, i32* noundef %5)
  %44 = load i32, i32* %1, align 4
  %.not4 = icmp eq i32 %44, 0
  br i1 %.not4, label %45, label %55

45:                                               ; preds = %42
  %46 = zext i32 %14 to i64
  %47 = getelementptr inbounds i32, i32* %3, i64 %46
  store i32 1, i32* %47, align 4
  %48 = add nsw i32 %14, %0
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %2, i64 %49
  store i32 1, i32* %50, align 4
  %51 = sub nsw i32 %0, %14
  %52 = add nsw i32 %51, 7
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %4, i64 %53
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %45, %42
  br label %57

56:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %23, %18, %13
  br label %7, !llvm.loop !4

59:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Doit() #3 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.8, align 8
  %1 = alloca i32, align 4
  %2 = alloca [9 x i32], align 16
  %3 = alloca [17 x i32], align 16
  %4 = alloca [15 x i32], align 16
  br label %5

5:                                                ; preds = %25, %0
  %.0 = phi i32 [ -7, %0 ], [ %26, %25 ]
  %6 = icmp slt i32 %.0, 17
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  %8 = icmp sgt i32 %.0, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = icmp slt i32 %.0, 9
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 %12
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %9, %7
  %15 = icmp sgt i32 %.0, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = sext i32 %.0 to i64
  %18 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 %17
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = icmp slt i32 %.0, 8
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = add nsw i32 %.0, 7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !6

27:                                               ; preds = %5
  %28 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0
  %30 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 0
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.8*)* @_wyvern_slice_memo_Doit_465938184, i32* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_Try_5722875455(i32 noundef 1, i32* noundef nonnull %1, i32* noundef nonnull %28, i32* noundef nonnull %29, i32* noundef nonnull %30, %_wyvern_thunk_type.8* noundef nonnull %_wyvern_thunk_alloca)
  %31 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %31, 0
  br i1 %.not, label %32, label %33

32:                                               ; preds = %27
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #3 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i32 [ 1, %1 ], [ %6, %5 ]
  %3 = icmp ult i32 %.0, 51
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Doit()
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !7

7:                                                ; preds = %2
  %8 = add nsw i32 %0, 1
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %8) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Queens(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !8

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_Doit_465938184(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #5 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [9 x i32], align 16
  br label %sliceclone_1

sliceclone_1:                                     ; preds = %sliceclone_
  %1 = getelementptr inbounds [9 x i32], [9 x i32]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %1, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %1
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_Try_5722875455(i32 noundef %0, i32* nocapture noundef %1, i32* nocapture noundef %2, i32* nocapture noundef %3, i32* nocapture noundef %4, %_wyvern_thunk_type.8* noundef %_wyvern_thunkptr) #2 {
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %57, %5
  %.0 = phi i32 [ 0, %5 ], [ %13, %57 ]
  %7 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %10

8:                                                ; preds = %6
  %9 = icmp ne i32 %.0, 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i1 [ false, %6 ], [ %9, %8 ]
  br i1 %11, label %12, label %58

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %.0, 1
  store i32 0, i32* %1, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %3, i64 %14
  %16 = load i32, i32* %15, align 4
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %57, label %17

17:                                               ; preds = %12
  %18 = add nsw i32 %13, %0
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %2, i64 %19
  %21 = load i32, i32* %20, align 4
  %.not5 = icmp eq i32 %21, 0
  br i1 %.not5, label %57, label %22

22:                                               ; preds = %17
  %23 = sub nsw i32 %0, %13
  %24 = add nsw i32 %23, 7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %4, i64 %25
  %27 = load i32, i32* %26, align 4
  %.not6 = icmp eq i32 %27, 0
  br i1 %.not6, label %57, label %28

28:                                               ; preds = %22
  %29 = sext i32 %0 to i64
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32* (%_wyvern_thunk_type.8*)*, i32* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32* %_wyvern_thunkfptr2(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #7
  %30 = getelementptr inbounds i32, i32* %_wyvern_thunkcall3, i64 %29
  store i32 %13, i32* %30, align 4
  %31 = zext i32 %13 to i64
  %32 = getelementptr inbounds i32, i32* %3, i64 %31
  store i32 0, i32* %32, align 4
  %33 = add nsw i32 %13, %0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %2, i64 %34
  store i32 0, i32* %35, align 4
  %36 = sub nsw i32 %0, %13
  %37 = add nsw i32 %36, 7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %4, i64 %38
  store i32 0, i32* %39, align 4
  %40 = icmp slt i32 %0, 8
  br i1 %40, label %41, label %55

41:                                               ; preds = %28
  %42 = add nsw i32 %0, 1
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.8*)*, i32* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #7
  call void @Try(i32 noundef %42, i32* noundef nonnull %1, i32* noundef %2, i32* noundef %3, i32* noundef %4, i32* noundef %_wyvern_thunkcall)
  %43 = load i32, i32* %1, align 4
  %.not7 = icmp eq i32 %43, 0
  br i1 %.not7, label %44, label %54

44:                                               ; preds = %41
  %45 = zext i32 %13 to i64
  %46 = getelementptr inbounds i32, i32* %3, i64 %45
  store i32 1, i32* %46, align 4
  %47 = add nsw i32 %13, %0
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %2, i64 %48
  store i32 1, i32* %49, align 4
  %50 = sub nsw i32 %0, %13
  %51 = add nsw i32 %50, 7
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %4, i64 %52
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %44, %41
  br label %56

55:                                               ; preds = %28
  store i32 1, i32* %1, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %22, %17, %12
  br label %6, !llvm.loop !4

58:                                               ; preds = %10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nofree nounwind }
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
