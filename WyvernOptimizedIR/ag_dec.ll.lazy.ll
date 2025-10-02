; ModuleID = './ag_dec.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/ag_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BitBuffer = type { i8*, i8*, i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @set_standard_ag_params(%struct.AGParamRec* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  call void @set_ag_params(%struct.AGParamRec* noundef %0, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %1, i32 noundef %2, i32 noundef 255)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @set_ag_params(%struct.AGParamRec* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 1
  store i32 %1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 0
  store i32 %1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 2
  store i32 %2, i32* %10, align 4
  %11 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 3
  store i32 %3, i32* %11, align 4
  %notmask = shl nsw i32 -1, %3
  %12 = xor i32 %notmask, -1
  %13 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 512, %15
  %17 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 6
  store i32 %4, i32* %18, align 4
  %19 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 7
  store i32 %5, i32* %19, align 4
  %20 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 8
  store i32 %6, i32* %20, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dyn_decomp(%struct.AGParamRec* nocapture noundef readonly %0, %struct.BitBuffer* noundef %1, i32* noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32* noundef %5) #1 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 4
  %.not = icmp eq %struct.BitBuffer* %1, null
  br i1 %.not, label %16, label %14

14:                                               ; preds = %6
  %.not14 = icmp eq i32* %2, null
  br i1 %.not14, label %16, label %15

15:                                               ; preds = %14
  %.not15 = icmp eq i32* %5, null
  br i1 %.not15, label %16, label %17

16:                                               ; preds = %15, %14, %6
  br label %101

17:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  %18 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %1, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %1, i64 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %1, i64 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 3
  store i32 %21, i32* %7, align 4
  %25 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %90, %17
  %.011 = phi i32* [ %2, %17 ], [ %.213, %90 ]
  %.07 = phi i32 [ 0, %17 ], [ %.29, %90 ]
  %.04 = phi i32 [ 0, %17 ], [ %.26, %90 ]
  %.01 = phi i32 [ %26, %17 ], [ %.2, %90 ]
  %28 = icmp ult i32 %.07, %3
  br i1 %28, label %29, label %91

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  %31 = icmp ult i32 %30, %24
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %92

33:                                               ; preds = %29
  %34 = lshr i32 %.01, 9
  %35 = add nuw nsw i32 %34, 3
  %36 = call i32 @lead(i32 noundef %35) #5
  %37 = sub nsw i32 31, %36
  %38 = icmp ult i32 %37, %11
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %39
  %42 = phi i32 [ %37, %39 ], [ %11, %40 ]
  %notmask = shl nsw i32 -1, %42
  %43 = xor i32 %notmask, -1
  %44 = call i32 @dyn_get_32bit(i8* noundef %19, i32* noundef nonnull %7, i32 noundef %43, i32 noundef %42, i32 noundef %4)
  %45 = add i32 %44, %.04
  %46 = and i32 %45, 1
  %47 = sub nsw i32 0, %46
  %48 = or i32 %47, 1
  %49 = add i32 %45, 1
  %50 = lshr i32 %49, 1
  %51 = mul i32 %50, %48
  %52 = getelementptr inbounds i32, i32* %.011, i64 1
  store i32 %51, i32* %.011, align 4
  %53 = add i32 %.07, 1
  %54 = add i32 %44, %.04
  %55 = mul i32 %9, %54
  %56 = add i32 %55, %.01
  %57 = mul i32 %9, %.01
  %58 = lshr i32 %57, 9
  %59 = sub i32 %56, %58
  %60 = icmp ugt i32 %44, 65535
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61, %41
  %.12 = phi i32 [ 65535, %61 ], [ %59, %41 ]
  %63 = and i32 %.12, 1073741696
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = icmp ult i32 %53, %3
  br i1 %66, label %67, label %90

67:                                               ; preds = %65
  %68 = call i32 @lead(i32 noundef %.12)
  %69 = add nsw i32 %68, -24
  %70 = add i32 %.12, 16
  %71 = lshr i32 %70, 6
  %72 = add i32 %69, %71
  %notmask17 = shl nsw i32 -1, %72
  %73 = xor i32 %notmask17, -1
  %74 = and i32 %13, %73
  %75 = call i32 @dyn_get(i8* noundef %19, i32* noundef nonnull %7, i32 noundef %74, i32 noundef %72)
  %76 = add i32 %53, %75
  %.not18 = icmp ugt i32 %76, %3
  br i1 %.not18, label %77, label %78

77:                                               ; preds = %67
  br label %92

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %82, %78
  %.112 = phi i32* [ %52, %78 ], [ %84, %82 ]
  %.010 = phi i32 [ 0, %78 ], [ %85, %82 ]
  %.18 = phi i32 [ %53, %78 ], [ %83, %82 ]
  %80 = icmp ult i32 %.010, %75
  br i1 %80, label %81, label %86

81:                                               ; preds = %79
  store i32 0, i32* %.112, align 4
  br label %82

82:                                               ; preds = %81
  %83 = add i32 %.18, 1
  %84 = getelementptr inbounds i32, i32* %.112, i64 1
  %85 = add i32 %.010, 1
  br label %79, !llvm.loop !4

86:                                               ; preds = %79
  %87 = icmp ugt i32 %75, 65534
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %88, %86
  %.15 = phi i32 [ 0, %88 ], [ 1, %86 ]
  br label %90

90:                                               ; preds = %89, %65, %62
  %.213 = phi i32* [ %.112, %89 ], [ %52, %65 ], [ %52, %62 ]
  %.29 = phi i32 [ %.18, %89 ], [ %53, %65 ], [ %53, %62 ]
  %.26 = phi i32 [ %.15, %89 ], [ 0, %65 ], [ 0, %62 ]
  %.2 = phi i32 [ 0, %89 ], [ %.12, %65 ], [ %.12, %62 ]
  br label %27, !llvm.loop !6

91:                                               ; preds = %27
  br label %92

92:                                               ; preds = %91, %77, %32
  %.0 = phi i32 [ -50, %77 ], [ -50, %32 ], [ 0, %91 ]
  %93 = load i32, i32* %7, align 4
  %94 = sub i32 %93, %21
  store i32 %94, i32* %5, align 4
  call void @BitBufferAdvance(%struct.BitBuffer* noundef nonnull %1, i32 noundef %94) #5
  %95 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %1, i64 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %1, i64 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %.not16 = icmp ugt i8* %96, %98
  br i1 %.not16, label %99, label %100

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %92
  %.1 = phi i32 [ %.0, %92 ], [ -50, %99 ]
  br label %101

101:                                              ; preds = %100, %16
  %.03 = phi i32 [ %.1, %100 ], [ -50, %16 ]
  ret i32 %.03
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @dyn_get_32bit(i8* nocapture noundef readonly %0, i32* nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = load i32, i32* %1, align 4
  %7 = lshr i32 %6, 3
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr inbounds i8, i8* %9, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %12, %16
  %18 = getelementptr inbounds i8, i8* %9, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr inbounds i8, i8* %9, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = and i32 %6, 7
  %28 = shl i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = call i32 @lead(i32 noundef %29)
  %31 = icmp ugt i32 %30, 8
  br i1 %31, label %32, label %87

32:                                               ; preds = %5
  %33 = add i32 %6, 9
  %34 = sdiv i32 %33, 8
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 %38, 24
  %40 = getelementptr inbounds i8, i8* %36, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 16
  %44 = or i32 %39, %43
  %45 = getelementptr inbounds i8, i8* %36, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %44, %48
  %50 = getelementptr inbounds i8, i8* %36, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %49, %52
  %54 = and i32 %33, 7
  %55 = add nsw i32 %54, %4
  %56 = icmp sgt i32 %55, 32
  br i1 %56, label %57, label %72

57:                                               ; preds = %32
  %58 = and i32 %33, 7
  %59 = shl i32 %53, %58
  %60 = add nsw i32 %34, 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %33, 7
  %66 = add nsw i32 %65, %4
  %67 = sub i32 40, %66
  %68 = lshr i32 %64, %67
  %69 = sub nsw i32 32, %4
  %70 = lshr i32 %59, %69
  %71 = or i32 %70, %68
  br label %77

72:                                               ; preds = %32
  %73 = and i32 %33, 7
  %74 = add i32 %73, %4
  %75 = sub i32 32, %74
  %76 = lshr i32 %53, %75
  br label %77

77:                                               ; preds = %72, %57
  %.04 = phi i32 [ %71, %57 ], [ %76, %72 ]
  %.not6 = icmp eq i32 %4, 32
  br i1 %.not6, label %84, label %78

78:                                               ; preds = %77
  %79 = zext i32 %4 to i64
  %80 = shl i64 4294967295, %79
  %81 = trunc i64 %80 to i32
  %82 = xor i32 %81, -1
  %83 = and i32 %.04, %82
  br label %84

84:                                               ; preds = %78, %77
  %.15 = phi i32 [ %83, %78 ], [ %.04, %77 ]
  %85 = add nsw i32 %4, 9
  %86 = add i32 %6, %85
  br label %104

87:                                               ; preds = %5
  %88 = add i32 %6, %30
  %89 = add i32 %88, 1
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %103, label %90

90:                                               ; preds = %87
  %91 = add i32 %30, 1
  %92 = shl i32 %28, %91
  %93 = sub nsw i32 32, %3
  %94 = lshr i32 %92, %93
  %95 = add i32 %88, %3
  %96 = mul i32 %30, %2
  %97 = icmp ugt i32 %94, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = add i32 %94, -1
  %100 = add i32 %96, %99
  %101 = add i32 %95, 1
  br label %102

102:                                              ; preds = %98, %90
  %.01 = phi i32 [ %101, %98 ], [ %95, %90 ]
  %.0 = phi i32 [ %100, %98 ], [ %96, %90 ]
  br label %103

103:                                              ; preds = %102, %87
  %.12 = phi i32 [ %.01, %102 ], [ %89, %87 ]
  %.1 = phi i32 [ %.0, %102 ], [ %30, %87 ]
  br label %104

104:                                              ; preds = %103, %84
  %.23 = phi i32 [ %86, %84 ], [ %.12, %103 ]
  %.2 = phi i32 [ %.15, %84 ], [ %.1, %103 ]
  store i32 %.23, i32* %1, align 4
  ret i32 %.2
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal i32 @lead(i32 noundef %0) #3 {
  br label %2

2:                                                ; preds = %9, %1
  %.01 = phi i64 [ 0, %1 ], [ %11, %9 ]
  %.0 = phi i64 [ 2147483648, %1 ], [ %10, %9 ]
  %3 = icmp ult i64 %.01, 32
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2
  %5 = sext i32 %0 to i64
  %6 = and i64 %.0, %5
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = lshr i64 %.0, 1
  %11 = add nuw nsw i64 %.01, 1
  br label %2, !llvm.loop !7

.loopexit:                                        ; preds = %2
  br label %12

12:                                               ; preds = %.loopexit, %7
  %13 = trunc i64 %.01 to i32
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @dyn_get(i8* nocapture noundef readonly %0, i32* nocapture noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = load i32, i32* %1, align 4
  %6 = lshr i32 %5, 3
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr inbounds i8, i8* %8, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %11, %15
  %17 = getelementptr inbounds i8, i8* %8, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %16, %20
  %22 = getelementptr inbounds i8, i8* %8, i64 3
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %21, %24
  %26 = and i32 %5, 7
  %27 = shl i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = call i32 @lead(i32 noundef %28)
  %30 = icmp ugt i32 %29, 8
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = lshr i32 %27, 7
  %33 = and i32 %32, 65535
  %34 = add i32 %5, 25
  br label %48

35:                                               ; preds = %4
  %36 = add i32 %5, %29
  %37 = add i32 %36, 1
  %38 = add i32 %29, 1
  %39 = shl i32 %27, %38
  %40 = sub i32 32, %3
  %41 = lshr i32 %39, %40
  %42 = mul i32 %29, %2
  %43 = add i32 %42, %41
  %44 = add i32 %43, -1
  %45 = icmp ult i32 %41, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %35
  %.pn = phi i32 [ %36, %46 ], [ %37, %35 ]
  %.0 = phi i32 [ %42, %46 ], [ %44, %35 ]
  %.01 = add i32 %.pn, %3
  br label %48

48:                                               ; preds = %47, %31
  %.12 = phi i32 [ %34, %31 ], [ %.01, %47 ]
  %.1 = phi i32 [ %33, %31 ], [ %.0, %47 ]
  store i32 %.12, i32* %1, align 4
  ret i32 %.1
}

declare dso_local void @BitBufferAdvance(%struct.BitBuffer* noundef, i32 noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
