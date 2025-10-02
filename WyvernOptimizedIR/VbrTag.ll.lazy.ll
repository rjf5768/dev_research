; ModuleID = './VbrTag.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/VbrTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }
%struct.bit_stream_struc = type { i8*, i32, %struct._IO_FILE*, i8*, i32, i64, i32, i32 }

@SizeOfEmptyFrame = dso_local global [2 x [2 x i32]] [[2 x i32] [i32 32, i32 17], [2 x i32] [i32 17, i32 9]], align 16
@pVbrFrames = dso_local global i32* null, align 8
@nVbrNumFrames = dso_local global i32 0, align 4
@nVbrFrameBufferSize = dso_local global i32 0, align 4
@VBRTag = internal global [5 x i8] c"Xing\00", align 1
@GetVbrTag.sr_table = internal global [4 x i32] [i32 44100, i32 48000, i32 32000, i32 99999], align 16
@g_Position = internal global [100 x i64] zeroinitializer, align 16
@pbtStreamBuffer = internal global [216 x i8] zeroinitializer, align 16
@nZeroStreamSize = internal global i32 0, align 4
@InitVbrTag.framesize = internal constant [3 x i32] [i32 208, i32 192, i32 288], align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"illegal sampling frequency index\0A\00", align 1
@TotalFrameSize = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Xing VBR header problem...use -t\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LAME%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @AddVbrFrame(i32 noundef %0) #0 {
  %2 = load i32*, i32** @pVbrFrames, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, i32* @nVbrFrameBufferSize, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %1
  store i32 100, i32* @nVbrFrameBufferSize, align 4
  %8 = call noalias dereferenceable_or_null(400) i8* @malloc(i64 noundef 400) #12
  store i8* %8, i8** bitcast (i32** @pVbrFrames to i8**), align 8
  br label %9

9:                                                ; preds = %7, %4
  %10 = load i32, i32* @nVbrNumFrames, align 4
  %11 = load i32, i32* @nVbrFrameBufferSize, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* @nVbrFrameBufferSize, align 4
  %15 = shl nsw i32 %14, 1
  store i32 %15, i32* @nVbrFrameBufferSize, align 4
  %16 = load i8*, i8** bitcast (i32** @pVbrFrames to i8**), align 8
  %17 = sext i32 %15 to i64
  %18 = shl nsw i64 %17, 2
  %19 = call i8* @realloc(i8* noundef %16, i64 noundef %18) #12
  store i8* %19, i8** bitcast (i32** @pVbrFrames to i8**), align 8
  br label %20

20:                                               ; preds = %13, %9
  %21 = load i32*, i32** @pVbrFrames, align 8
  %22 = load i32, i32* @nVbrNumFrames, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @nVbrNumFrames, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %0, i32* %25, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @CreateI4(i8* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = lshr i32 %1, 24
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %0, align 1
  %5 = lshr i32 %1, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %6, i8* %7, align 1
  %8 = lshr i32 %1, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %9, i8* %10, align 1
  %11 = trunc i32 %1 to i8
  %12 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 %11, i8* %12, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @CheckVbrTag(i8* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds i8, i8* %0, i64 1
  %3 = load i8, i8* %2, align 1
  %4 = getelementptr inbounds i8, i8* %0, i64 3
  %5 = load i8, i8* %4, align 1
  %6 = lshr i8 %5, 6
  %7 = and i8 %3, 8
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %14, label %8

8:                                                ; preds = %1
  %.not7 = icmp eq i8 %6, 3
  br i1 %.not7, label %11, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds i8, i8* %0, i64 36
  br label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %0, i64 21
  br label %13

13:                                               ; preds = %11, %9
  %.01 = phi i8* [ %10, %9 ], [ %12, %11 ]
  br label %20

14:                                               ; preds = %1
  %.not2 = icmp eq i8 %6, 3
  br i1 %.not2, label %17, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds i8, i8* %0, i64 21
  br label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, i8* %0, i64 13
  br label %19

19:                                               ; preds = %17, %15
  %.1 = phi i8* [ %16, %15 ], [ %18, %17 ]
  br label %20

20:                                               ; preds = %19, %13
  %.2 = phi i8* [ %.01, %13 ], [ %.1, %19 ]
  %21 = load i8, i8* %.2, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 0), align 1
  %24 = sext i8 %23 to i32
  %.not3 = icmp eq i32 %22, %24
  br i1 %.not3, label %26, label %25

25:                                               ; preds = %20
  br label %48

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, i8* %.2, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 1), align 1
  %31 = sext i8 %30 to i32
  %.not4 = icmp eq i32 %29, %31
  br i1 %.not4, label %33, label %32

32:                                               ; preds = %26
  br label %48

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, i8* %.2, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 2), align 1
  %38 = sext i8 %37 to i32
  %.not5 = icmp eq i32 %36, %38
  br i1 %.not5, label %40, label %39

39:                                               ; preds = %33
  br label %48

40:                                               ; preds = %33
  %41 = getelementptr inbounds i8, i8* %.2, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 3), align 1
  %45 = sext i8 %44 to i32
  %.not6 = icmp eq i32 %43, %45
  br i1 %.not6, label %47, label %46

46:                                               ; preds = %40
  br label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %46, %39, %32, %25
  %.0 = phi i32 [ 0, %25 ], [ 0, %32 ], [ 0, %39 ], [ 0, %46 ], [ 1, %47 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @GetVbrTag(%struct.VBRTAGDATA* nocapture noundef %0, i8* nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 2
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds i8, i8* %1, i64 1
  %5 = load i8, i8* %4, align 1
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, i8* %1, i64 2
  %10 = load i8, i8* %9, align 1
  %11 = lshr i8 %10, 2
  %12 = and i8 %11, 3
  %13 = getelementptr inbounds i8, i8* %1, i64 3
  %14 = load i8, i8* %13, align 1
  %15 = lshr i8 %14, 6
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %22, label %16

16:                                               ; preds = %2
  %.not12 = icmp eq i8 %15, 3
  br i1 %.not12, label %19, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds i8, i8* %1, i64 36
  br label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, i8* %1, i64 21
  br label %21

21:                                               ; preds = %19, %17
  %.02 = phi i8* [ %18, %17 ], [ %20, %19 ]
  br label %28

22:                                               ; preds = %2
  %.not3 = icmp eq i8 %15, 3
  br i1 %.not3, label %25, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, i8* %1, i64 21
  br label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %1, i64 13
  br label %27

27:                                               ; preds = %25, %23
  %.1 = phi i8* [ %24, %23 ], [ %26, %25 ]
  br label %28

28:                                               ; preds = %27, %21
  %.2 = phi i8* [ %.02, %21 ], [ %.1, %27 ]
  %29 = load i8, i8* %.2, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 0), align 1
  %32 = sext i8 %31 to i32
  %.not4 = icmp eq i32 %30, %32
  br i1 %.not4, label %34, label %33

33:                                               ; preds = %28
  br label %106

34:                                               ; preds = %28
  %35 = getelementptr inbounds i8, i8* %.2, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 1), align 1
  %39 = sext i8 %38 to i32
  %.not5 = icmp eq i32 %37, %39
  br i1 %.not5, label %41, label %40

40:                                               ; preds = %34
  br label %106

41:                                               ; preds = %34
  %42 = getelementptr inbounds i8, i8* %.2, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 2), align 1
  %46 = sext i8 %45 to i32
  %.not6 = icmp eq i32 %44, %46
  br i1 %.not6, label %48, label %47

47:                                               ; preds = %41
  br label %106

48:                                               ; preds = %41
  %49 = getelementptr inbounds i8, i8* %.2, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 3), align 1
  %53 = sext i8 %52 to i32
  %.not7 = icmp eq i32 %51, %53
  br i1 %.not7, label %55, label %54

54:                                               ; preds = %48
  br label %106

55:                                               ; preds = %48
  %56 = getelementptr inbounds i8, i8* %.2, i64 4
  %57 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 0
  store i32 %8, i32* %57, align 4
  %58 = zext i8 %12 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* @GetVbrTag.sr_table, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = icmp eq i8 %7, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %63, %55
  %68 = call i32 @ExtractI4(i8* noundef nonnull %56)
  %69 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds i8, i8* %.2, i64 8
  %71 = and i32 %68, 1
  %.not8 = icmp eq i32 %71, 0
  br i1 %.not8, label %76, label %72

72:                                               ; preds = %67
  %73 = call i32 @ExtractI4(i8* noundef nonnull %70)
  %74 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 3
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds i8, i8* %.2, i64 12
  br label %76

76:                                               ; preds = %72, %67
  %.3 = phi i8* [ %75, %72 ], [ %70, %67 ]
  %77 = and i32 %68, 2
  %.not9 = icmp eq i32 %77, 0
  br i1 %.not9, label %82, label %78

78:                                               ; preds = %76
  %79 = call i32 @ExtractI4(i8* noundef nonnull %.3)
  %80 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 4
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds i8, i8* %.3, i64 4
  br label %82

82:                                               ; preds = %78, %76
  %.4 = phi i8* [ %81, %78 ], [ %.3, %76 ]
  %83 = and i32 %68, 4
  %.not10 = icmp eq i32 %83, 0
  br i1 %.not10, label %99, label %84

84:                                               ; preds = %82
  br i1 true, label %85, label %97

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %94, %85
  %.01 = phi i32 [ 0, %85 ], [ %95, %94 ]
  %87 = icmp ult i32 %.01, 100
  br i1 %87, label %88, label %96

88:                                               ; preds = %86
  %89 = zext i32 %.01 to i64
  %90 = getelementptr inbounds i8, i8* %.4, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i32 %.01 to i64
  %93 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 6, i64 %92
  store i8 %91, i8* %93, align 1
  br label %94

94:                                               ; preds = %88
  %95 = add nuw nsw i32 %.01, 1
  br label %86, !llvm.loop !4

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %84
  %98 = getelementptr inbounds i8, i8* %.4, i64 100
  br label %99

99:                                               ; preds = %97, %82
  %.5 = phi i8* [ %98, %97 ], [ %.4, %82 ]
  %100 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 5
  store i32 -1, i32* %100, align 4
  %101 = and i32 %68, 8
  %.not11 = icmp eq i32 %101, 0
  br i1 %.not11, label %105, label %102

102:                                              ; preds = %99
  %103 = call i32 @ExtractI4(i8* noundef %.5)
  %104 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %0, i64 0, i32 5
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %54, %47, %40, %33
  %.0 = phi i32 [ 0, %33 ], [ 0, %40 ], [ 0, %47 ], [ 0, %54 ], [ 1, %105 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ExtractI4(i8* nocapture noundef readonly %0) #3 {
  %2 = load i8, i8* %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr inbounds i8, i8* %0, i64 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %3, 16
  %8 = shl nuw nsw i32 %6, 8
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %9, %12
  %14 = shl nuw i32 %13, 8
  %15 = getelementptr inbounds i8, i8* %0, i64 3
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @InitVbrTag(%struct.bit_stream_struc* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  store i32* null, i32** @pVbrFrames, align 8
  store i32 0, i32* @nVbrNumFrames, align 4
  store i32 0, i32* @nVbrFrameBufferSize, align 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(800) bitcast ([100 x i64]* @g_Position to i8*), i8 0, i64 800, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(216) getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), i8 0, i64 216, i1 false)
  br label %5

5:                                                ; preds = %10, %4
  %.0 = phi i32 [ 0, %4 ], [ %11, %10 ]
  %6 = icmp ult i32 %.0, 100
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [100 x i64], [100 x i64]* @g_Position, i64 0, i64 %8
  store i64 -1, i64* %9, align 8
  br label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !6

12:                                               ; preds = %5
  %13 = icmp eq i32 %2, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @SizeOfEmptyFrame, i64 0, i64 %15, i64 1
  br label %20

17:                                               ; preds = %12
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @SizeOfEmptyFrame, i64 0, i64 %18, i64 0
  br label %20

20:                                               ; preds = %17, %14
  %storemerge.in.in = phi i32* [ %19, %17 ], [ %16, %14 ]
  %storemerge.in = load i32, i32* %storemerge.in.in, align 4
  %storemerge = add nsw i32 %storemerge.in, 4
  store i32 %storemerge, i32* @nZeroStreamSize, align 4
  %21 = icmp sgt i32 %3, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %23) #13
  call void @exit(i32 noundef -1) #14
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %20
  %26 = sext i32 %3 to i64
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* @InitVbrTag.framesize, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @TotalFrameSize, align 4
  %29 = load i32, i32* @nZeroStreamSize, align 4
  %30 = add nsw i32 %29, 140
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %33) #13
  call void @exit(i32 noundef -1) #14
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %40, %35
  %.1 = phi i32 [ 0, %35 ], [ %41, %40 ]
  %37 = load i32, i32* @TotalFrameSize, align 4
  %38 = icmp slt i32 %.1, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  call void @putbits(%struct.bit_stream_struc* noundef %0, i32 noundef 0, i32 noundef 8) #12
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.1, 1
  br label %36, !llvm.loop !7

42:                                               ; preds = %36
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %32, %22
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #7

declare dso_local void @putbits(%struct.bit_stream_struc* noundef, i32 noundef, i32 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PutVbrTag(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [100 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = load i32, i32* @nVbrNumFrames, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load i32*, i32** @pVbrFrames, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %3
  br label %114

12:                                               ; preds = %8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #12
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %114

16:                                               ; preds = %12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(216) getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), i8 0, i64 216, i1 false)
  %17 = call i32 @fseek(%struct._IO_FILE* noundef nonnull %13, i64 noundef 0, i32 noundef 2) #12
  %18 = call i64 @ftell(%struct._IO_FILE* noundef nonnull %13) #12
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %114

21:                                               ; preds = %16
  %22 = load i32, i32* @TotalFrameSize, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 @fseek(%struct._IO_FILE* noundef nonnull %13, i64 noundef %23, i32 noundef 0) #12
  %25 = call i64 @fread(i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef nonnull %13) #12
  store i8 -1, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), align 16
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  store i8 -5, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 1), align 1
  %28 = load i8, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 2), align 2
  %29 = and i8 %28, 12
  %30 = or i8 %29, 80
  br label %35

31:                                               ; preds = %21
  store i8 -13, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 1), align 1
  %32 = load i8, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 2), align 2
  %33 = and i8 %32, 12
  %34 = or i8 %33, -128
  br label %35

35:                                               ; preds = %31, %27
  %storemerge = phi i8 [ %34, %31 ], [ %30, %27 ]
  store i8 %storemerge, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 2), align 2
  %36 = call i32 @fseek(%struct._IO_FILE* noundef nonnull %13, i64 noundef 0, i32 noundef 0) #12
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(100) %37, i8 0, i64 100, i1 false)
  br label %38

38:                                               ; preds = %62, %35
  %.02 = phi i32 [ 1, %35 ], [ %63, %62 ]
  %39 = icmp ult i32 %.02, 100
  br i1 %39, label %40, label %64

40:                                               ; preds = %38
  %41 = sitofp i32 %.02 to double
  %42 = fmul double %41, 1.000000e-02
  %43 = load i32, i32* @nVbrNumFrames, align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double %42, %44
  %46 = call double @llvm.floor.f64(double %45)
  %47 = fptosi double %46 to i32
  %48 = load i32*, i32** @pVbrFrames, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sitofp i32 %51 to float
  %53 = fmul float %52, 2.560000e+02
  %54 = sitofp i64 %18 to float
  %55 = fdiv float %53, %54
  %56 = fcmp ogt float %55, 2.550000e+02
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %40
  %.01 = phi float [ 2.550000e+02, %57 ], [ %55, %40 ]
  %59 = fptoui float %.01 to i8
  %60 = zext i32 %.02 to i64
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 %60
  store i8 %59, i8* %61, align 1
  br label %62

62:                                               ; preds = %58
  %63 = add nuw nsw i32 %.02, 1
  br label %38, !llvm.loop !8

64:                                               ; preds = %38
  %65 = load i32, i32* @nZeroStreamSize, align 4
  %66 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 0), align 1
  %67 = add nsw i32 %65, 1
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %68
  store i8 %66, i8* %69, align 1
  %70 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 1), align 1
  %71 = add nsw i32 %65, 2
  %72 = sext i32 %67 to i64
  %73 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %72
  store i8 %70, i8* %73, align 1
  %74 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 2), align 1
  %75 = add nsw i32 %65, 3
  %76 = sext i32 %71 to i64
  %77 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %76
  store i8 %74, i8* %77, align 1
  %78 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 3), align 1
  %79 = add nsw i32 %65, 4
  %80 = sext i32 %75 to i64
  %81 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %80
  store i8 %78, i8* %81, align 1
  %82 = sext i32 %79 to i64
  %83 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %82
  call void @CreateI4(i8* noundef nonnull %83, i32 noundef 15)
  %84 = add nsw i32 %65, 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %85
  %87 = load i32, i32* @nVbrNumFrames, align 4
  call void @CreateI4(i8* noundef nonnull %86, i32 noundef %87)
  %88 = add nsw i32 %65, 12
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %89
  %91 = trunc i64 %18 to i32
  call void @CreateI4(i8* noundef nonnull %90, i32 noundef %91)
  %92 = add nsw i32 %65, 16
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %93
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(100) %94, i8* noundef nonnull align 16 dereferenceable(100) %95, i64 100, i1 false)
  %96 = add i32 %65, 116
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %97
  call void @CreateI4(i8* noundef nonnull %98, i32 noundef %1)
  %99 = add i32 %65, 120
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %101 = call i8* @get_lame_version() #12
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %100, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %101) #12
  %103 = sext i32 %99 to i64
  %104 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %103
  %105 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %106 = call i8* @strncpy(i8* noundef nonnull %104, i8* noundef nonnull %105, i64 noundef 20) #12
  %107 = load i32, i32* @TotalFrameSize, align 4
  %108 = sext i32 %107 to i64
  %109 = call i64 @fwrite(i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), i64 noundef %108, i64 noundef 1, %struct._IO_FILE* noundef nonnull %13)
  %.not = icmp eq i64 %109, 1
  br i1 %.not, label %111, label %110

110:                                              ; preds = %64
  br label %114

111:                                              ; preds = %64
  %112 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %13) #12
  %113 = load i8*, i8** bitcast (i32** @pVbrFrames to i8**), align 8
  call void @free(i8* noundef %113) #12
  store i32* null, i32** @pVbrFrames, align 8
  br label %114

114:                                              ; preds = %111, %110, %20, %15, %11
  %.0 = phi i32 [ -1, %11 ], [ -1, %15 ], [ -1, %20 ], [ -1, %110 ], [ 0, %111 ]
  ret i32 %.0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #6

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #6

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #6

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #8

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local i8* @get_lame_version() #6

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #10

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #6

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local i32 @SeekPoint(i8* nocapture noundef readonly %0, i32 noundef %1, float noundef %2) #11 {
  %4 = fcmp olt float %2, 0.000000e+00
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %3
  %.02 = phi float [ 0.000000e+00, %5 ], [ %2, %3 ]
  %7 = fcmp ogt float %.02, 1.000000e+02
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %6
  %.1 = phi float [ 1.000000e+02, %8 ], [ %.02, %6 ]
  %10 = fptosi float %.1 to i32
  %11 = icmp sgt i32 %10, 99
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %9
  %.01 = phi i32 [ 99, %12 ], [ %10, %9 ]
  %14 = sext i32 %.01 to i64
  %15 = getelementptr inbounds i8, i8* %0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = uitofp i8 %16 to float
  %18 = icmp slt i32 %.01, 99
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = add nsw i32 %.01, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = uitofp i8 %23 to float
  br label %26

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %19
  %.0 = phi float [ %24, %19 ], [ 2.560000e+02, %25 ]
  %27 = fsub float %.0, %17
  %28 = sitofp i32 %.01 to float
  %29 = fsub float %.1, %28
  %30 = call float @llvm.fmuladd.f32(float %27, float %29, float %17)
  %31 = fmul float %30, 3.906250e-03
  %32 = sitofp i32 %1 to float
  %33 = fmul float %31, %32
  %34 = fptosi float %33 to i32
  ret i32 %34
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }

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
