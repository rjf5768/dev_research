; ModuleID = './adpcm.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/adpcm/rawdaudio/adpcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal global [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @adpcm_coder(i16* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2, %struct.adpcm_state* nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %3, i64 0, i32 0
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %3, i64 0, i32 1
  %9 = load i8, i8* %8, align 2
  %10 = sext i8 %9 to i32
  %11 = sext i8 %9 to i64
  %12 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  br label %14

14:                                               ; preds = %77, %4
  %.020 = phi i32 [ %13, %4 ], [ %67, %77 ]
  %.011 = phi i32 [ %7, %4 ], [ %.3, %77 ]
  %.06 = phi i8* [ %1, %4 ], [ %.17, %77 ]
  %.05 = phi i16* [ %0, %4 ], [ %17, %77 ]
  %.03 = phi i32 [ %10, %4 ], [ %.2, %77 ]
  %.02 = phi i32 [ %2, %4 ], [ %79, %77 ]
  %.01 = phi i32 [ undef, %4 ], [ %.1, %77 ]
  %.0 = phi i32 [ 1, %4 ], [ %78, %77 ]
  %15 = icmp sgt i32 %.02, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %14
  %17 = getelementptr inbounds i16, i16* %.05, i64 1
  %18 = load i16, i16* %.05, align 2
  %19 = sext i16 %18 to i32
  %20 = sub nsw i32 %19, %.011
  %21 = lshr i32 %20, 28
  %22 = and i32 %21, 8
  %.not21 = icmp eq i32 %22, 0
  br i1 %.not21, label %25, label %23

23:                                               ; preds = %16
  %24 = sub nsw i32 0, %20
  br label %25

25:                                               ; preds = %23, %16
  %.017 = phi i32 [ %24, %23 ], [ %20, %16 ]
  %26 = ashr i32 %.020, 3
  %.not22 = icmp slt i32 %.017, %.020
  br i1 %.not22, label %30, label %27

27:                                               ; preds = %25
  %28 = sub nsw i32 %.017, %.020
  %29 = add nsw i32 %26, %.020
  br label %30

30:                                               ; preds = %27, %25
  %.118 = phi i32 [ %28, %27 ], [ %.017, %25 ]
  %.014 = phi i32 [ 4, %27 ], [ 0, %25 ]
  %.08 = phi i32 [ %29, %27 ], [ %26, %25 ]
  %31 = ashr i32 %.020, 1
  %.not23 = icmp slt i32 %.118, %31
  br i1 %.not23, label %36, label %32

32:                                               ; preds = %30
  %33 = or i32 %.014, 2
  %34 = sub nsw i32 %.118, %31
  %35 = add nsw i32 %.08, %31
  br label %36

36:                                               ; preds = %32, %30
  %.219 = phi i32 [ %34, %32 ], [ %.118, %30 ]
  %.115 = phi i32 [ %33, %32 ], [ %.014, %30 ]
  %.19 = phi i32 [ %35, %32 ], [ %.08, %30 ]
  %37 = ashr i32 %.020, 2
  %.not24 = icmp slt i32 %.219, %37
  br i1 %.not24, label %41, label %38

38:                                               ; preds = %36
  %39 = or i32 %.115, 1
  %40 = add nsw i32 %.19, %37
  br label %41

41:                                               ; preds = %38, %36
  %.216 = phi i32 [ %39, %38 ], [ %.115, %36 ]
  %.210 = phi i32 [ %40, %38 ], [ %.19, %36 ]
  %.not25 = icmp eq i32 %22, 0
  br i1 %.not25, label %44, label %42

42:                                               ; preds = %41
  %43 = sub nsw i32 %.011, %.210
  br label %46

44:                                               ; preds = %41
  %45 = add nsw i32 %.011, %.210
  br label %46

46:                                               ; preds = %44, %42
  %.112 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %47 = icmp sgt i32 %.112, 32767
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %53

49:                                               ; preds = %46
  %50 = icmp slt i32 %.112, -32768
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %49
  %.213 = phi i32 [ -32768, %51 ], [ %.112, %49 ]
  br label %53

53:                                               ; preds = %52, %48
  %.3 = phi i32 [ 32767, %48 ], [ %.213, %52 ]
  %54 = or i32 %.216, %22
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %.03, %57
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %53
  %.14 = phi i32 [ 0, %60 ], [ %58, %53 ]
  %62 = icmp sgt i32 %.14, 88
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %61
  %.2 = phi i32 [ 88, %63 ], [ %.14, %61 ]
  %65 = sext i32 %.2 to i64
  %66 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %.not26 = icmp eq i32 %.0, 0
  br i1 %.not26, label %71, label %68

68:                                               ; preds = %64
  %69 = shl i32 %54, 4
  %70 = and i32 %69, 240
  br label %76

71:                                               ; preds = %64
  %72 = and i32 %54, 15
  %73 = or i32 %72, %.01
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, i8* %.06, i64 1
  store i8 %74, i8* %.06, align 1
  br label %76

76:                                               ; preds = %71, %68
  %.17 = phi i8* [ %.06, %68 ], [ %75, %71 ]
  %.1 = phi i32 [ %70, %68 ], [ %.01, %71 ]
  br label %77

77:                                               ; preds = %76
  %78 = xor i32 %.0, 1
  %79 = add nsw i32 %.02, -1
  br label %14, !llvm.loop !4

80:                                               ; preds = %14
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %81, label %83

81:                                               ; preds = %80
  %82 = trunc i32 %.01 to i8
  store i8 %82, i8* %.06, align 1
  br label %83

83:                                               ; preds = %81, %80
  %84 = trunc i32 %.011 to i16
  %85 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %3, i64 0, i32 0
  store i16 %84, i16* %85, align 2
  %86 = trunc i32 %.03 to i8
  %87 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %3, i64 0, i32 1
  store i8 %86, i8* %87, align 2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @adpcm_decoder(i8* nocapture noundef readonly %0, i16* nocapture noundef writeonly %1, i32 noundef %2, %struct.adpcm_state* nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %3, i64 0, i32 0
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %3, i64 0, i32 1
  %9 = load i8, i8* %8, align 2
  %10 = sext i8 %9 to i32
  %11 = sext i8 %9 to i64
  %12 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  br label %14

14:                                               ; preds = %67, %4
  %.013 = phi i32 [ %7, %4 ], [ %.3, %67 ]
  %.012 = phi i32 [ %13, %4 ], [ %65, %67 ]
  %.07 = phi i16* [ %1, %4 ], [ %68, %67 ]
  %.05 = phi i8* [ %0, %4 ], [ %.16, %67 ]
  %.03 = phi i32 [ %10, %4 ], [ %.2, %67 ]
  %.02 = phi i32 [ %2, %4 ], [ %69, %67 ]
  %.01 = phi i32 [ undef, %4 ], [ %.1, %67 ]
  %.0 = phi i32 [ 0, %4 ], [ %24, %67 ]
  %15 = icmp sgt i32 %.02, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %14
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %18, label %17

17:                                               ; preds = %16
  br label %23

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %.05, i64 1
  %20 = load i8, i8* %.05, align 1
  %21 = sext i8 %20 to i32
  %22 = lshr i32 %21, 4
  br label %23

23:                                               ; preds = %18, %17
  %.011.in = phi i32 [ %.01, %17 ], [ %22, %18 ]
  %.16 = phi i8* [ %.05, %17 ], [ %19, %18 ]
  %.1 = phi i32 [ %.01, %17 ], [ %21, %18 ]
  %.011 = and i32 %.011.in, 15
  %24 = xor i32 %.0, 1
  %25 = zext i32 %.011 to i64
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %.03, %27
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %23
  %.14 = phi i32 [ 0, %30 ], [ %28, %23 ]
  %32 = icmp sgt i32 %.14, 88
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %31
  %.2 = phi i32 [ 88, %33 ], [ %.14, %31 ]
  %35 = and i32 %.011.in, 8
  %36 = ashr i32 %.012, 3
  %37 = and i32 %.011.in, 4
  %.not17 = icmp eq i32 %37, 0
  br i1 %.not17, label %40, label %38

38:                                               ; preds = %34
  %39 = add nsw i32 %36, %.012
  br label %40

40:                                               ; preds = %38, %34
  %.08 = phi i32 [ %39, %38 ], [ %36, %34 ]
  %41 = and i32 %.011.in, 2
  %.not18 = icmp eq i32 %41, 0
  br i1 %.not18, label %45, label %42

42:                                               ; preds = %40
  %43 = ashr i32 %.012, 1
  %44 = add nsw i32 %.08, %43
  br label %45

45:                                               ; preds = %42, %40
  %.19 = phi i32 [ %44, %42 ], [ %.08, %40 ]
  %46 = and i32 %.011.in, 1
  %.not19 = icmp eq i32 %46, 0
  br i1 %.not19, label %50, label %47

47:                                               ; preds = %45
  %48 = ashr i32 %.012, 2
  %49 = add nsw i32 %.19, %48
  br label %50

50:                                               ; preds = %47, %45
  %.210 = phi i32 [ %49, %47 ], [ %.19, %45 ]
  %.not20 = icmp eq i32 %35, 0
  br i1 %.not20, label %53, label %51

51:                                               ; preds = %50
  %52 = sub nsw i32 %.013, %.210
  br label %55

53:                                               ; preds = %50
  %54 = add nsw i32 %.013, %.210
  br label %55

55:                                               ; preds = %53, %51
  %.114 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %56 = icmp sgt i32 %.114, 32767
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %62

58:                                               ; preds = %55
  %59 = icmp slt i32 %.114, -32768
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60, %58
  %.215 = phi i32 [ -32768, %60 ], [ %.114, %58 ]
  br label %62

62:                                               ; preds = %61, %57
  %.3 = phi i32 [ 32767, %57 ], [ %.215, %61 ]
  %63 = sext i32 %.2 to i64
  %64 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = trunc i32 %.3 to i16
  store i16 %66, i16* %.07, align 2
  br label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds i16, i16* %.07, i64 1
  %69 = add nsw i32 %.02, -1
  br label %14, !llvm.loop !6

70:                                               ; preds = %14
  %71 = trunc i32 %.013 to i16
  %72 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %3, i64 0, i32 0
  store i16 %71, i16* %72, align 2
  %73 = trunc i32 %.03 to i8
  %74 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %3, i64 0, i32 1
  store i8 %73, i8* %74, align 2
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
