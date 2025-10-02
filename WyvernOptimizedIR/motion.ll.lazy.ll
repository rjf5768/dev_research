; ModuleID = './motion.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@picture_structure = external dso_local global i32, align 4
@top_field_first = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @motion_vectors([2 x [2 x i32]]* nocapture noundef %0, i32* nocapture noundef writeonly %1, [2 x i32]* nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = icmp eq i32 %4, 1
  br i1 %11, label %12, label %34

12:                                               ; preds = %10
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %15, label %21

15:                                               ; preds = %14
  %16 = call i32 @Get_Bits(i32 noundef 1) #3
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %17
  store i32 %16, i32* %18, align 4
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 1, i64 %19
  store i32 %16, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %14, %12
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %0, i64 0, i64 %22, i64 0
  call void @motion_vector(i32* noundef %23, i32* noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0)
  %24 = sext i32 %3 to i64
  %25 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %0, i64 0, i64 %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %3 to i64
  %28 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %0, i64 1, i64 %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = sext i32 %3 to i64
  %30 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %0, i64 0, i64 %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %3 to i64
  %33 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %0, i64 1, i64 %32, i64 1
  store i32 %31, i32* %33, align 4
  br label %45

34:                                               ; preds = %10
  %35 = call i32 @Get_Bits(i32 noundef 1) #3
  %36 = sext i32 %3 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %36
  store i32 %35, i32* %37, align 4
  %38 = sext i32 %3 to i64
  %39 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %0, i64 0, i64 %38, i64 0
  call void @motion_vector(i32* noundef %39, i32* noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0)
  %40 = call i32 @Get_Bits(i32 noundef 1) #3
  %41 = sext i32 %3 to i64
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 1, i64 %41
  store i32 %40, i32* %42, align 4
  %43 = sext i32 %3 to i64
  %44 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %0, i64 1, i64 %43, i64 0
  call void @motion_vector(i32* noundef nonnull %44, i32* noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0)
  br label %45

45:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @Get_Bits(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @motion_vector(i32* nocapture noundef %0, i32* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = call i32 @Get_motion_code() #3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %12, label %9

9:                                                ; preds = %7
  %.not7 = icmp eq i32 %8, 0
  br i1 %.not7, label %12, label %10

10:                                               ; preds = %9
  %11 = call i32 @Get_Bits(i32 noundef %2) #3
  br label %13

12:                                               ; preds = %9, %7
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  call void @decode_motion_vector(i32* noundef %0, i32 noundef %2, i32 noundef %8, i32 noundef %14, i32 noundef %6)
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %17, label %15

15:                                               ; preds = %13
  %16 = call i32 @Get_dmvector() #3
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = call i32 @Get_motion_code() #3
  %.not2 = icmp eq i32 %3, 0
  br i1 %.not2, label %22, label %19

19:                                               ; preds = %17
  %.not6 = icmp eq i32 %18, 0
  br i1 %.not6, label %22, label %20

20:                                               ; preds = %19
  %21 = call i32 @Get_Bits(i32 noundef %3) #3
  br label %23

22:                                               ; preds = %19, %17
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %.not3 = icmp eq i32 %5, 0
  br i1 %.not3, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds i32, i32* %0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = getelementptr inbounds i32, i32* %0, i64 1
  call void @decode_motion_vector(i32* noundef nonnull %30, i32 noundef %3, i32 noundef %18, i32 noundef %24, i32 noundef %6)
  %.not4 = icmp eq i32 %5, 0
  br i1 %.not4, label %35, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds i32, i32* %0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %31, %29
  %.not5 = icmp eq i32 %4, 0
  br i1 %.not5, label %39, label %36

36:                                               ; preds = %35
  %37 = call i32 @Get_dmvector() #3
  %38 = getelementptr inbounds i32, i32* %1, i64 1
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @Get_motion_code() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @decode_motion_vector(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = shl i32 16, %1
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %10, label %7

7:                                                ; preds = %5
  %8 = load i32, i32* %0, align 4
  %9 = ashr i32 %8, 1
  br label %12

10:                                               ; preds = %5
  %11 = load i32, i32* %0, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %9, %7 ], [ %11, %10 ]
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = add nsw i32 %2, -1
  %17 = shl i32 %16, %1
  %18 = add nsw i32 %17, %3
  %19 = add nsw i32 %18, 1
  %20 = add nsw i32 %13, %19
  %.not2 = icmp slt i32 %20, %6
  br i1 %.not2, label %23, label %21

21:                                               ; preds = %15
  %.neg3 = mul i32 %6, -2
  %22 = add i32 %.neg3, %20
  br label %23

23:                                               ; preds = %21, %15
  %.0 = phi i32 [ %22, %21 ], [ %20, %15 ]
  br label %38

24:                                               ; preds = %12
  %25 = icmp slt i32 %2, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = xor i32 %2, -1
  %28 = shl i32 %27, %1
  %29 = add nsw i32 %28, %3
  %.neg = xor i32 %29, -1
  %30 = add i32 %13, %.neg
  %31 = sub nsw i32 0, %6
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = shl nsw i32 %6, 1
  %35 = add nsw i32 %30, %34
  br label %36

36:                                               ; preds = %33, %26
  %.1 = phi i32 [ %35, %33 ], [ %30, %26 ]
  br label %37

37:                                               ; preds = %36, %24
  %.2 = phi i32 [ %.1, %36 ], [ %13, %24 ]
  br label %38

38:                                               ; preds = %37, %23
  %.3 = phi i32 [ %.0, %23 ], [ %.2, %37 ]
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %41, label %39

39:                                               ; preds = %38
  %40 = shl i32 %.3, 1
  br label %42

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ %.3, %41 ]
  store i32 %43, i32* %0, align 4
  ret void
}

declare dso_local i32 @Get_dmvector() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @Dual_Prime_Arithmetic([2 x i32]* nocapture noundef %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = load i32, i32* @picture_structure, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %80

7:                                                ; preds = %4
  %8 = load i32, i32* @top_field_first, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %44, label %9

9:                                                ; preds = %7
  %10 = icmp sgt i32 %2, 0
  %11 = zext i1 %10 to i32
  %12 = add nsw i32 %11, %2
  %13 = ashr i32 %12, 1
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %13, %14
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = icmp sgt i32 %3, 0
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %18, %3
  %20 = ashr i32 %19, 1
  %21 = getelementptr inbounds i32, i32* %1, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %20, %22
  %24 = add nsw i32 %23, -1
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = mul nsw i32 %2, 3
  %27 = icmp sgt i32 %2, 0
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 %26, %28
  %30 = ashr i32 %29, 1
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %30, %31
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 1, i64 0
  store i32 %32, i32* %33, align 4
  %34 = mul nsw i32 %3, 3
  %35 = icmp sgt i32 %3, 0
  %36 = zext i1 %35 to i32
  %37 = add nsw i32 %34, %36
  %38 = ashr i32 %37, 1
  %39 = getelementptr inbounds i32, i32* %1, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %38, %40
  %42 = add nsw i32 %41, 1
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 1, i64 1
  store i32 %42, i32* %43, align 4
  br label %79

44:                                               ; preds = %7
  %45 = mul nsw i32 %2, 3
  %46 = icmp sgt i32 %2, 0
  %47 = zext i1 %46 to i32
  %48 = add nsw i32 %45, %47
  %49 = ashr i32 %48, 1
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %49, %50
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = mul nsw i32 %3, 3
  %54 = icmp sgt i32 %3, 0
  %55 = zext i1 %54 to i32
  %56 = add nsw i32 %53, %55
  %57 = ashr i32 %56, 1
  %58 = getelementptr inbounds i32, i32* %1, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %57, %59
  %61 = add nsw i32 %60, -1
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 0, i64 1
  store i32 %61, i32* %62, align 4
  %63 = icmp sgt i32 %2, 0
  %64 = zext i1 %63 to i32
  %65 = add nsw i32 %64, %2
  %66 = ashr i32 %65, 1
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %66, %67
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 1, i64 0
  store i32 %68, i32* %69, align 4
  %70 = icmp sgt i32 %3, 0
  %71 = zext i1 %70 to i32
  %72 = add nsw i32 %71, %3
  %73 = ashr i32 %72, 1
  %74 = getelementptr inbounds i32, i32* %1, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %73, %75
  %77 = add nsw i32 %76, 1
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 1, i64 1
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %44, %9
  br label %107

80:                                               ; preds = %4
  %81 = icmp sgt i32 %2, 0
  %82 = zext i1 %81 to i32
  %83 = add nsw i32 %82, %2
  %84 = ashr i32 %83, 1
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %84, %85
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 0, i64 0
  store i32 %86, i32* %87, align 4
  %88 = icmp sgt i32 %3, 0
  %89 = zext i1 %88 to i32
  %90 = add nsw i32 %89, %3
  %91 = ashr i32 %90, 1
  %92 = getelementptr inbounds i32, i32* %1, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %91, %93
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 0, i64 1
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @picture_structure, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %80
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  br label %106

102:                                              ; preds = %80
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %79
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
