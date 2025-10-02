; ModuleID = './formatBitstream.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/formatBitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.side_info_link = type { %struct.side_info_link*, %struct.MYSideInfo }
%struct.MYSideInfo = type { i32, i32, i32, i32, %struct.BF_PartHolder*, %struct.BF_PartHolder*, [2 x %struct.BF_PartHolder*], [2 x [2 x %struct.BF_PartHolder*]] }
%struct.BF_PartHolder = type { i32, %struct.BF_BitstreamPart* }
%struct.BF_BitstreamPart = type { i32, %struct.BF_BitstreamElement* }
%struct.BF_BitstreamElement = type { i32, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.BF_FrameData = type { i32, i32, i32, %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart*, [2 x %struct.BF_BitstreamPart*], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], %struct.BF_BitstreamPart* }
%struct.BF_FrameResults = type { i32, i32, i32 }

@BitCount = internal global i32 0, align 4
@ThisFrameSize = internal global i32 0, align 4
@BitsRemaining = internal global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"frameInfo->nGranules <= MAX_GRANULES\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/formatBitstream.c\00", align 1
@__PRETTY_FUNCTION__.BF_BitstreamFrame = private unnamed_addr constant [58 x i8] c"void BF_BitstreamFrame(BF_FrameData *, BF_FrameResults *)\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"frameInfo->nChannels <= MAX_CHANNELS\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"(BitsRemaining % 8) == 0\00", align 1
@forwardFrameLength = internal global i32 0, align 4
@forwardSILength = internal global i32 0, align 4
@elements = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"newPH\00", align 1
@__PRETTY_FUNCTION__.BF_newPartHolder = private unnamed_addr constant [37 x i8] c"BF_PartHolder *BF_newPartHolder(int)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"newPH->part\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"newPH->part->element\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"results\00", align 1
@__PRETTY_FUNCTION__.writePartMainData = private unnamed_addr constant [61 x i8] c"int writePartMainData(BF_BitstreamPart *, BF_FrameResults *)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"nbits <= 32\00", align 1
@__PRETTY_FUNCTION__.WriteMainDataBits = private unnamed_addr constant [56 x i8] c"void WriteMainDataBits(u_int, u_int, BF_FrameResults *)\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"BitCount <= ThisFrameSize\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"BitsRemaining >= 0\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"(BitCount + BitsRemaining) == ThisFrameSize\00", align 1
@__PRETTY_FUNCTION__.writePartSideInfo = private unnamed_addr constant [61 x i8] c"int writePartSideInfo(BF_BitstreamPart *, BF_FrameResults *)\00", align 1
@side_queue_free = internal global %struct.side_info_link* null, align 8
@side_queue_head = internal global %struct.side_info_link* null, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@__PRETTY_FUNCTION__.get_side_info = private unnamed_addr constant [32 x i8] c"MYSideInfo *get_side_info(void)\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [31 x i8] c"cannot allocate side_info_link\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @InitFormatBitStream() #0 {
  store i32 0, i32* @BitCount, align 4
  store i32 0, i32* @ThisFrameSize, align 4
  store i32 0, i32* @BitsRemaining, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_BitstreamFrame(%struct.BF_FrameData* noundef %0, %struct.BF_FrameResults* noundef %1) #1 {
  %3 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.BF_BitstreamFrame, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %14

13:                                               ; preds = %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.BF_BitstreamFrame, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  %15 = call i32 @store_side_info(%struct.BF_FrameData* noundef %0)
  %16 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %1, i64 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call i32 @main_data(%struct.BF_FrameData* noundef %0, %struct.BF_FrameResults* noundef %1)
  %18 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %1, i64 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @BitsRemaining, align 4
  %20 = and i32 %19, 7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %24

23:                                               ; preds = %14
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.BF_BitstreamFrame, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  %25 = call i32 @side_queue_elements(i32* noundef nonnull @forwardFrameLength, i32* noundef nonnull @forwardSILength)
  store i32 %25, i32* @elements, align 4
  %26 = load i32, i32* @BitsRemaining, align 4
  %27 = sdiv i32 %26, 8
  %28 = load i32, i32* @forwardFrameLength, align 4
  %29 = sdiv i32 %28, 8
  %30 = add nsw i32 %27, %29
  %31 = load i32, i32* @forwardSILength, align 4
  %.neg = sdiv i32 %31, -8
  %32 = add i32 %.neg, %30
  %33 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %1, i64 0, i32 2
  store i32 %32, i32* %33, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %23, %13, %7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @store_side_info(%struct.BF_FrameData* noundef readonly %0) #1 {
  %2 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 8
  %3 = icmp eq %struct.side_info_link* %2, null
  br i1 %3, label %4, label %67

4:                                                ; preds = %1
  %5 = call noalias dereferenceable_or_null(88) i8* @calloc(i64 noundef 1, i64 noundef 88) #10
  %6 = bitcast i8* %5 to %struct.side_info_link*
  %7 = icmp eq i8* %5, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %9) #11
  call void @exit(i32 noundef 1) #9
  unreachable

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %6, i64 0, i32 0
  store %struct.side_info_link* null, %struct.side_info_link** %12, align 8
  %13 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 3
  %14 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %13, align 8
  %15 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %14, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %16)
  %18 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %6, i64 0, i32 1, i32 4
  store %struct.BF_PartHolder* %17, %struct.BF_PartHolder** %18, align 8
  %19 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 4
  %20 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %19, align 8
  %21 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %20, i64 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %22)
  %24 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %6, i64 0, i32 1, i32 5
  store %struct.BF_PartHolder* %23, %struct.BF_PartHolder** %24, align 8
  br label %25

25:                                               ; preds = %38, %11
  %.01 = phi i32 [ 0, %11 ], [ %39, %38 ]
  %26 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %.01, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 5, i64 %30
  %32 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %31, align 8
  %33 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %32, i64 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %34)
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %6, i64 0, i32 1, i32 6, i64 %36
  store %struct.BF_PartHolder* %35, %struct.BF_PartHolder** %37, align 8
  br label %38

38:                                               ; preds = %29
  %39 = add nuw nsw i32 %.01, 1
  br label %25, !llvm.loop !4

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %64, %40
  %.04 = phi i32 [ 0, %40 ], [ %65, %64 ]
  %42 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %.04, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %61, %45
  %.12 = phi i32 [ 0, %45 ], [ %62, %61 ]
  %47 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %.12, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = zext i32 %.04 to i64
  %52 = zext i32 %.12 to i64
  %53 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 6, i64 %51, i64 %52
  %54 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %53, align 8
  %55 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %54, i64 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %56)
  %58 = zext i32 %.04 to i64
  %59 = zext i32 %.12 to i64
  %60 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %6, i64 0, i32 1, i32 7, i64 %58, i64 %59
  store %struct.BF_PartHolder* %57, %struct.BF_PartHolder** %60, align 8
  br label %61

61:                                               ; preds = %50
  %62 = add nuw nsw i32 %.12, 1
  br label %46, !llvm.loop !6

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.04, 1
  br label %41, !llvm.loop !7

66:                                               ; preds = %41
  br label %71

67:                                               ; preds = %1
  %68 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %2, i64 0, i32 0
  %69 = load %struct.side_info_link*, %struct.side_info_link** %68, align 8
  store %struct.side_info_link* %69, %struct.side_info_link** @side_queue_free, align 8
  %70 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %2, i64 0, i32 0
  store %struct.side_info_link* null, %struct.side_info_link** %70, align 8
  br label %71

71:                                               ; preds = %67, %66
  %.06 = phi %struct.side_info_link* [ %6, %66 ], [ %2, %67 ]
  %72 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 0
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 2
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 3
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 4
  %82 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %81, align 8
  %83 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 3
  %84 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %83, align 8
  %85 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %82, %struct.BF_BitstreamPart* noundef %84)
  %86 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 4
  store %struct.BF_PartHolder* %85, %struct.BF_PartHolder** %86, align 8
  %87 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 5
  %88 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %87, align 8
  %89 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 4
  %90 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %89, align 8
  %91 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %88, %struct.BF_BitstreamPart* noundef %90)
  %92 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 5
  store %struct.BF_PartHolder* %91, %struct.BF_PartHolder** %92, align 8
  %93 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 3
  %94 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %93, align 8
  %95 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* noundef %94)
  %96 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 4
  %97 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %96, align 8
  %98 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* noundef %97)
  %99 = add nsw i32 %95, %98
  br label %100

100:                                              ; preds = %118, %71
  %.23 = phi i32 [ 0, %71 ], [ %120, %118 ]
  %.0 = phi i32 [ %99, %71 ], [ %119, %118 ]
  %101 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %.23, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = zext i32 %.23 to i64
  %106 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 6, i64 %105
  %107 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %106, align 8
  %108 = zext i32 %.23 to i64
  %109 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 5, i64 %108
  %110 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %109, align 8
  %111 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %107, %struct.BF_BitstreamPart* noundef %110)
  %112 = zext i32 %.23 to i64
  %113 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 6, i64 %112
  store %struct.BF_PartHolder* %111, %struct.BF_PartHolder** %113, align 8
  %114 = zext i32 %.23 to i64
  %115 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 5, i64 %114
  %116 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %115, align 8
  %117 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* noundef %116)
  br label %118

118:                                              ; preds = %104
  %119 = add nsw i32 %.0, %117
  %120 = add nuw nsw i32 %.23, 1
  br label %100, !llvm.loop !8

121:                                              ; preds = %100
  br label %122

122:                                              ; preds = %153, %121
  %.15 = phi i32 [ 0, %121 ], [ %154, %153 ]
  %.1 = phi i32 [ %.0, %121 ], [ %.2, %153 ]
  %123 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %.15, %124
  br i1 %125, label %126, label %155

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %149, %126
  %.3 = phi i32 [ 0, %126 ], [ %151, %149 ]
  %.2 = phi i32 [ %.1, %126 ], [ %150, %149 ]
  %128 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %.3, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %127
  %132 = zext i32 %.15 to i64
  %133 = zext i32 %.3 to i64
  %134 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 7, i64 %132, i64 %133
  %135 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %134, align 8
  %136 = zext i32 %.15 to i64
  %137 = zext i32 %.3 to i64
  %138 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 6, i64 %136, i64 %137
  %139 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %138, align 8
  %140 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %135, %struct.BF_BitstreamPart* noundef %139)
  %141 = zext i32 %.15 to i64
  %142 = zext i32 %.3 to i64
  %143 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 7, i64 %141, i64 %142
  store %struct.BF_PartHolder* %140, %struct.BF_PartHolder** %143, align 8
  %144 = zext i32 %.15 to i64
  %145 = zext i32 %.3 to i64
  %146 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 6, i64 %144, i64 %145
  %147 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %146, align 8
  %148 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* noundef %147)
  br label %149

149:                                              ; preds = %131
  %150 = add nsw i32 %.2, %148
  %151 = add nuw nsw i32 %.3, 1
  br label %127, !llvm.loop !9

152:                                              ; preds = %127
  br label %153

153:                                              ; preds = %152
  %154 = add nuw nsw i32 %.15, 1
  br label %122, !llvm.loop !10

155:                                              ; preds = %122
  %156 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.06, i64 0, i32 1, i32 1
  store i32 %.1, i32* %156, align 4
  %157 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8
  %158 = icmp eq %struct.side_info_link* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store %struct.side_info_link* %.06, %struct.side_info_link** @side_queue_head, align 8
  br label %169

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %164, %160
  %.07 = phi %struct.side_info_link* [ %157, %160 ], [ %166, %164 ]
  %162 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.07, i64 0, i32 0
  %163 = load %struct.side_info_link*, %struct.side_info_link** %162, align 8
  %.not = icmp eq %struct.side_info_link* %163, null
  br i1 %.not, label %167, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.07, i64 0, i32 0
  %166 = load %struct.side_info_link*, %struct.side_info_link** %165, align 8
  br label %161, !llvm.loop !11

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.07, i64 0, i32 0
  store %struct.side_info_link* %.06, %struct.side_info_link** %168, align 8
  br label %169

169:                                              ; preds = %167, %159
  ret i32 %.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @main_data(%struct.BF_FrameData* nocapture noundef readonly %0, %struct.BF_FrameResults* noundef %1) #1 {
  %3 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %1, i64 0, i32 1
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %35, %2
  %.02 = phi i32 [ 0, %2 ], [ %36, %35 ]
  %.0 = phi i32 [ 0, %2 ], [ %.1, %35 ]
  %5 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %.02, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %29, %8
  %.01 = phi i32 [ 0, %8 ], [ %33, %29 ]
  %.1 = phi i32 [ %.0, %8 ], [ %32, %29 ]
  %10 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %.01, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = zext i32 %.02 to i64
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 7, i64 %14, i64 %15
  %17 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %16, align 8
  %18 = call i32 @writePartMainData(%struct.BF_BitstreamPart* noundef %17, %struct.BF_FrameResults* noundef %1)
  %19 = zext i32 %.02 to i64
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 8, i64 %19, i64 %20
  %22 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %21, align 8
  %23 = call i32 @writePartMainData(%struct.BF_BitstreamPart* noundef %22, %struct.BF_FrameResults* noundef %1)
  %24 = zext i32 %.02 to i64
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 9, i64 %24, i64 %25
  %27 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %26, align 8
  %28 = call i32 @writePartMainData(%struct.BF_BitstreamPart* noundef %27, %struct.BF_FrameResults* noundef %1)
  br label %29

29:                                               ; preds = %13
  %30 = add nsw i32 %.1, %18
  %31 = add nsw i32 %30, %23
  %32 = add nsw i32 %31, %28
  %33 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !12

34:                                               ; preds = %9
  br label %35

35:                                               ; preds = %34
  %36 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !13

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %0, i64 0, i32 10
  %39 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %38, align 8
  %40 = call i32 @writePartMainData(%struct.BF_BitstreamPart* noundef %39, %struct.BF_FrameResults* noundef %1)
  %41 = add nsw i32 %.0, %40
  ret i32 %41
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @side_queue_elements(i32* nocapture noundef %0, i32* nocapture noundef %1) #3 {
  store i32 0, i32* %0, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %13, %2
  %.01 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %.0.in = phi %struct.side_info_link** [ @side_queue_head, %2 ], [ %15, %13 ]
  %.0 = load %struct.side_info_link*, %struct.side_info_link** %.0.in, align 8
  %.not = icmp eq %struct.side_info_link* %.0, null
  br i1 %.not, label %16, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.0, i64 0, i32 1, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* %0, align 4
  %8 = add nsw i32 %7, %6
  store i32 %8, i32* %0, align 4
  %9 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.0, i64 0, i32 1, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %4
  %14 = add nuw nsw i32 %.01, 1
  %15 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.0, i64 0, i32 0
  br label %3, !llvm.loop !14

16:                                               ; preds = %3
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_FlushBitstream(%struct.BF_FrameData* nocapture noundef readnone %0, %struct.BF_FrameResults* nocapture noundef writeonly %1) #1 {
  %3 = load i32, i32* @elements, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %14, label %4

4:                                                ; preds = %2
  %5 = load i32, i32* @forwardFrameLength, align 4
  %6 = load i32, i32* @forwardSILength, align 4
  %7 = sub nsw i32 %5, %6
  %8 = sdiv i32 %7, 32
  br label %9

9:                                                ; preds = %10, %4
  %.0 = phi i32 [ %8, %4 ], [ %11, %10 ]
  %.not1 = icmp eq i32 %.0, 0
  br i1 %.not1, label %12, label %10

10:                                               ; preds = %9
  %11 = add nsw i32 %.0, -1
  call void @WriteMainDataBits(i32 noundef 0, i32 noundef 32, %struct.BF_FrameResults* noundef %1)
  br label %9, !llvm.loop !15

12:                                               ; preds = %9
  %13 = srem i32 %7, 32
  call void @WriteMainDataBits(i32 noundef 0, i32 noundef %13, %struct.BF_FrameResults* noundef %1)
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @forwardFrameLength, align 4
  %16 = load i32, i32* @forwardSILength, align 4
  %17 = sub nsw i32 %15, %16
  %18 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %1, i64 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %1, i64 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %1, i64 0, i32 2
  store i32 0, i32* %20, align 4
  call void @free_side_queues()
  store i32 0, i32* @BitCount, align 4
  store i32 0, i32* @ThisFrameSize, align 4
  store i32 0, i32* @BitsRemaining, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @WriteMainDataBits(i32 noundef %0, i32 noundef %1, %struct.BF_FrameResults* nocapture noundef readnone %2) #1 {
  %4 = icmp ult i32 %1, 33
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.WriteMainDataBits, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %51

10:                                               ; preds = %7
  %11 = load i32, i32* @BitCount, align 4
  %12 = load i32, i32* @ThisFrameSize, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = call i32 @write_side_info()
  store i32 %15, i32* @BitCount, align 4
  %16 = load i32, i32* @ThisFrameSize, align 4
  %17 = sub nsw i32 %16, %15
  store i32 %17, i32* @BitsRemaining, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @BitsRemaining, align 4
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* @BitsRemaining, align 4
  %23 = sub i32 %1, %22
  %24 = lshr i32 %0, %23
  %25 = sub i32 %1, %22
  call void @putMyBits(i32 noundef %24, i32 noundef %22) #10
  %26 = call i32 @write_side_info()
  store i32 %26, i32* @BitCount, align 4
  %27 = load i32, i32* @ThisFrameSize, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* @BitsRemaining, align 4
  call void @putMyBits(i32 noundef %0, i32 noundef %25) #10
  br label %30

29:                                               ; preds = %18
  call void @putMyBits(i32 noundef %0, i32 noundef %1) #10
  br label %30

30:                                               ; preds = %29, %21
  %.0 = phi i32 [ %25, %21 ], [ %1, %29 ]
  %31 = load i32, i32* @BitCount, align 4
  %32 = add i32 %31, %.0
  store i32 %32, i32* @BitCount, align 4
  %33 = load i32, i32* @BitsRemaining, align 4
  %34 = sub i32 %33, %.0
  store i32 %34, i32* @BitsRemaining, align 4
  %35 = load i32, i32* @ThisFrameSize, align 4
  %.not = icmp sgt i32 %32, %35
  br i1 %.not, label %37, label %36

36:                                               ; preds = %30
  br label %38

37:                                               ; preds = %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.WriteMainDataBits, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %36
  %39 = load i32, i32* @BitsRemaining, align 4
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %43

42:                                               ; preds = %38
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.WriteMainDataBits, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %41
  %44 = load i32, i32* @BitCount, align 4
  %45 = load i32, i32* @BitsRemaining, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @ThisFrameSize, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.WriteMainDataBits, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %49, %9
  ret void

UnifiedUnreachableBlock:                          ; preds = %50, %42, %37, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_side_queues() #1 {
  %1 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8
  br label %2

2:                                                ; preds = %6, %0
  %.0 = phi %struct.side_info_link* [ %1, %0 ], [ %5, %6 ]
  %.not = icmp eq %struct.side_info_link* %.0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.0, i64 0, i32 0
  %5 = load %struct.side_info_link*, %struct.side_info_link** %4, align 8
  call void @free_side_info_link(%struct.side_info_link* noundef nonnull %.0)
  br label %6

6:                                                ; preds = %3
  br label %2, !llvm.loop !16

7:                                                ; preds = %2
  store %struct.side_info_link* null, %struct.side_info_link** @side_queue_head, align 8
  %8 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 8
  br label %9

9:                                                ; preds = %13, %7
  %.1 = phi %struct.side_info_link* [ %8, %7 ], [ %12, %13 ]
  %.not1 = icmp eq %struct.side_info_link* %.1, null
  br i1 %.not1, label %14, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %.1, i64 0, i32 0
  %12 = load %struct.side_info_link*, %struct.side_info_link** %11, align 8
  call void @free_side_info_link(%struct.side_info_link* noundef nonnull %.1)
  br label %13

13:                                               ; preds = %10
  br label %9, !llvm.loop !17

14:                                               ; preds = %9
  store %struct.side_info_link* null, %struct.side_info_link** @side_queue_free, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @BF_PartLength(%struct.BF_BitstreamPart* nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %0, i64 0, i32 1
  %3 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %.02 = phi i32 [ 0, %1 ], [ %14, %9 ]
  %.01 = phi %struct.BF_BitstreamElement* [ %3, %1 ], [ %15, %9 ]
  %.0 = phi i32 [ 0, %1 ], [ %13, %9 ]
  %5 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ult i32 %.02, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.01, i64 0, i32 1
  %11 = load i16, i16* %10, align 4
  %12 = zext i16 %11 to i32
  %13 = add nuw nsw i32 %.0, %12
  %14 = add i32 %.02, 1
  %15 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.01, i64 1
  br label %4, !llvm.loop !18

16:                                               ; preds = %4
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %0) #1 {
  %2 = call noalias dereferenceable_or_null(16) i8* @calloc(i64 noundef 1, i64 noundef 16) #10
  %3 = bitcast i8* %2 to %struct.BF_PartHolder*
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 443, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.BF_newPartHolder, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i64 0, i32 0
  store i32 %0, i32* %7, align 8
  %8 = call noalias dereferenceable_or_null(16) i8* @calloc(i64 noundef 1, i64 noundef 16) #10
  %9 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i64 0, i32 1
  %10 = bitcast %struct.BF_BitstreamPart** %9 to i8**
  store i8* %8, i8** %10, align 8
  %.not1 = icmp eq i8* %8, null
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %6
  br label %13

12:                                               ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 446, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.BF_newPartHolder, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  %14 = sext i32 %0 to i64
  %15 = call noalias i8* @calloc(i64 noundef %14, i64 noundef 8) #10
  %16 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i64 0, i32 1
  %17 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %16, align 8
  %18 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %17, i64 0, i32 1
  %19 = bitcast %struct.BF_BitstreamElement** %18 to i8**
  store i8* %15, i8** %19, align 8
  %20 = icmp sgt i32 %0, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i64 0, i32 1
  %23 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %22, align 8
  %24 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %23, i64 0, i32 1
  %25 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %24, align 8
  %.not2 = icmp eq %struct.BF_BitstreamElement* %25, null
  br i1 %.not2, label %27, label %26

26:                                               ; preds = %21
  br label %28

27:                                               ; preds = %21
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 448, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.BF_newPartHolder, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %13
  %30 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i64 0, i32 1
  %31 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %30, align 8
  %32 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %31, i64 0, i32 0
  store i32 0, i32* %32, align 8
  ret %struct.BF_PartHolder* %3

UnifiedUnreachableBlock:                          ; preds = %27, %12, %5
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_NewHolderFromBitstreamPart(%struct.BF_BitstreamPart* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %3)
  %5 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %4, %struct.BF_BitstreamPart* noundef %0)
  ret %struct.BF_PartHolder* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %0, %struct.BF_BitstreamPart* nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %0, i64 0, i32 1
  %4 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 8
  %5 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %4, i64 0, i32 0
  store i32 0, i32* %5, align 8
  br label %6

6:                                                ; preds = %16, %2
  %.01 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.0 = phi %struct.BF_PartHolder* [ %0, %2 ], [ %15, %16 ]
  %7 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %.01, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %1, i64 0, i32 1
  %12 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %11, align 8
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %12, i64 %13
  %15 = call %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* noundef %.0, %struct.BF_BitstreamElement* noundef %14)
  br label %16

16:                                               ; preds = %10
  %17 = add i32 %.01, 1
  br label %6, !llvm.loop !19

18:                                               ; preds = %6
  ret %struct.BF_PartHolder* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* noundef %0, %struct.BF_BitstreamElement* nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %0, i64 0, i32 1
  %4 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 8
  %5 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %4, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add i32 %6, 1
  %8 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = add i32 %6, 9
  %13 = call %struct.BF_PartHolder* @BF_resizePartHolder(%struct.BF_PartHolder* noundef %0, i32 noundef %12)
  br label %14

14:                                               ; preds = %11, %2
  %.0 = phi %struct.BF_PartHolder* [ %13, %11 ], [ %0, %2 ]
  %15 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %.0, i64 0, i32 1
  %16 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %15, align 8
  %17 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %16, i64 0, i32 1
  %18 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %17, align 8
  %19 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %16, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %18, i64 %22
  %24 = bitcast %struct.BF_BitstreamElement* %1 to i64*
  %25 = bitcast %struct.BF_BitstreamElement* %23 to i64*
  %26 = load i64, i64* %24, align 4
  store i64 %26, i64* %25, align 4
  ret %struct.BF_PartHolder* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.BF_PartHolder* @BF_resizePartHolder(%struct.BF_PartHolder* noundef %0, i32 noundef %1) #1 {
  %3 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %1)
  %4 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi i32 [ %1, %7 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i64 0, i32 1
  %14 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %13, align 8
  %15 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %14, i64 0, i32 0
  store i32 %12, i32* %15, align 8
  br label %16

16:                                               ; preds = %34, %11
  %.0 = phi i32 [ 0, %11 ], [ %35, %34 ]
  %17 = icmp slt i32 %.0, %12
  br i1 %17, label %18, label %36

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i64 0, i32 1
  %20 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %19, align 8
  %21 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %20, i64 0, i32 1
  %22 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %21, align 8
  %23 = zext i32 %.0 to i64
  %24 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %22, i64 %23
  %25 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %0, i64 0, i32 1
  %26 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %25, align 8
  %27 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %26, i64 0, i32 1
  %28 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %27, align 8
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %28, i64 %29
  %31 = bitcast %struct.BF_BitstreamElement* %30 to i64*
  %32 = bitcast %struct.BF_BitstreamElement* %24 to i64*
  %33 = load i64, i64* %31, align 4
  store i64 %33, i64* %32, align 4
  br label %34

34:                                               ; preds = %18
  %35 = add nuw nsw i32 %.0, 1
  br label %16, !llvm.loop !20

36:                                               ; preds = %16
  %37 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %0)
  ret %struct.BF_PartHolder* %3
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %0) #1 {
  %2 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %0, i64 0, i32 1
  %3 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %2, align 8
  %4 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %3, i64 0, i32 1
  %5 = bitcast %struct.BF_BitstreamElement** %4 to i8**
  %6 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %6) #10
  %7 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %0, i64 0, i32 1
  %8 = bitcast %struct.BF_BitstreamPart** %7 to i8**
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %9) #10
  %10 = bitcast %struct.BF_PartHolder* %0 to i8*
  call void @free(i8* noundef %10) #10
  ret %struct.BF_PartHolder* null
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.BF_BitstreamElement, align 4
  %5 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 4
  %6 = trunc i32 %2 to i16
  %7 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %4, i64 0, i32 1
  store i16 %6, i16* %7, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %3
  %9 = call %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* noundef %0, %struct.BF_BitstreamElement* noundef nonnull %4)
  br label %11

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %8
  %.0 = phi %struct.BF_PartHolder* [ %9, %8 ], [ %0, %10 ]
  ret %struct.BF_PartHolder* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @writePartMainData(%struct.BF_BitstreamPart* noundef readonly %0, %struct.BF_FrameResults* noundef readnone %1) #1 {
  %.not = icmp eq %struct.BF_FrameResults* %1, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.writePartMainData, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not3 = icmp eq %struct.BF_BitstreamPart* %0, null
  br i1 %.not3, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.writePartMainData, i64 0, i64 0)) #9
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %0, i64 0, i32 1
  %10 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %9, align 8
  br label %11

11:                                               ; preds = %21, %8
  %.02 = phi %struct.BF_BitstreamElement* [ %10, %8 ], [ %27, %21 ]
  %.01 = phi i32 [ 0, %8 ], [ %26, %21 ]
  %.0 = phi i32 [ 0, %8 ], [ %25, %21 ]
  %12 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %0, i64 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %.01, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.02, i64 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.02, i64 0, i32 1
  %19 = load i16, i16* %18, align 4
  %20 = zext i16 %19 to i32
  call void @WriteMainDataBits(i32 noundef %17, i32 noundef %20, %struct.BF_FrameResults* noundef nonnull %1)
  br label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.02, i64 0, i32 1
  %23 = load i16, i16* %22, align 4
  %24 = zext i16 %23 to i32
  %25 = add nuw nsw i32 %.0, %24
  %26 = add i32 %.01, 1
  %27 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.02, i64 1
  br label %11, !llvm.loop !21

28:                                               ; preds = %11
  ret i32 %.0

UnifiedUnreachableBlock:                          ; preds = %7, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @write_side_info() #1 {
  %1 = call %struct.MYSideInfo* @get_side_info()
  %2 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %1, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  store i32 %3, i32* @ThisFrameSize, align 4
  %4 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %1, i64 0, i32 4
  %5 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %4, align 8
  %6 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %5, i64 0, i32 1
  %7 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %6, align 8
  %8 = call i32 @writePartSideInfo(%struct.BF_BitstreamPart* noundef %7, %struct.BF_FrameResults* noundef null)
  %9 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %1, i64 0, i32 5
  %10 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %9, align 8
  %11 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %10, i64 0, i32 1
  %12 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %11, align 8
  %13 = call i32 @writePartSideInfo(%struct.BF_BitstreamPart* noundef %12, %struct.BF_FrameResults* noundef null)
  %14 = add nsw i32 %8, %13
  br label %15

15:                                               ; preds = %26, %0
  %.02 = phi i32 [ 0, %0 ], [ %28, %26 ]
  %.01 = phi i32 [ %14, %0 ], [ %27, %26 ]
  %16 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %1, i64 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %.02, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = zext i32 %.02 to i64
  %21 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %1, i64 0, i32 6, i64 %20
  %22 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %21, align 8
  %23 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %22, i64 0, i32 1
  %24 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %23, align 8
  %25 = call i32 @writePartSideInfo(%struct.BF_BitstreamPart* noundef %24, %struct.BF_FrameResults* noundef null)
  br label %26

26:                                               ; preds = %19
  %27 = add nsw i32 %.01, %25
  %28 = add nuw nsw i32 %.02, 1
  br label %15, !llvm.loop !22

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %51, %29
  %.1 = phi i32 [ %.01, %29 ], [ %.2, %51 ]
  %.0 = phi i32 [ 0, %29 ], [ %52, %51 ]
  %31 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %1, i64 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %.0, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %47, %34
  %.13 = phi i32 [ 0, %34 ], [ %49, %47 ]
  %.2 = phi i32 [ %.1, %34 ], [ %48, %47 ]
  %36 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %1, i64 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %.13, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = zext i32 %.0 to i64
  %41 = zext i32 %.13 to i64
  %42 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %1, i64 0, i32 7, i64 %40, i64 %41
  %43 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %42, align 8
  %44 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %43, i64 0, i32 1
  %45 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %44, align 8
  %46 = call i32 @writePartSideInfo(%struct.BF_BitstreamPart* noundef %45, %struct.BF_FrameResults* noundef null)
  br label %47

47:                                               ; preds = %39
  %48 = add nsw i32 %.2, %46
  %49 = add nuw nsw i32 %.13, 1
  br label %35, !llvm.loop !23

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.0, 1
  br label %30, !llvm.loop !24

53:                                               ; preds = %30
  ret i32 %.1
}

declare dso_local void @putMyBits(i32 noundef, i32 noundef) #7

; Function Attrs: noinline nounwind uwtable
define internal i32 @writePartSideInfo(%struct.BF_BitstreamPart* noundef readonly %0, %struct.BF_FrameResults* nocapture noundef readnone %1) #1 {
  %.not = icmp eq %struct.BF_BitstreamPart* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.writePartSideInfo, i64 0, i64 0)) #9
  unreachable

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %0, i64 0, i32 1
  %7 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %6, align 8
  br label %8

8:                                                ; preds = %18, %5
  %.02 = phi %struct.BF_BitstreamElement* [ %7, %5 ], [ %24, %18 ]
  %.01 = phi i32 [ 0, %5 ], [ %23, %18 ]
  %.0 = phi i32 [ 0, %5 ], [ %22, %18 ]
  %9 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %.01, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.02, i64 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.02, i64 0, i32 1
  %16 = load i16, i16* %15, align 4
  %17 = zext i16 %16 to i32
  call void @putMyBits(i32 noundef %14, i32 noundef %17) #10
  br label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.02, i64 0, i32 1
  %20 = load i16, i16* %19, align 4
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %.0, %21
  %23 = add i32 %.01, 1
  %24 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %.02, i64 1
  br label %8, !llvm.loop !25

25:                                               ; preds = %8
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal nonnull %struct.MYSideInfo* @get_side_info() #1 {
  %1 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 8
  %2 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8
  %.not = icmp eq %struct.side_info_link* %2, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.get_side_info, i64 0, i64 0)) #9
  unreachable

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %2, i64 0, i32 0
  %7 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  store %struct.side_info_link* %7, %struct.side_info_link** @side_queue_head, align 8
  store %struct.side_info_link* %2, %struct.side_info_link** @side_queue_free, align 8
  %8 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %2, i64 0, i32 0
  store %struct.side_info_link* %1, %struct.side_info_link** %8, align 8
  %9 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %2, i64 0, i32 1
  ret %struct.MYSideInfo* %9
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #7

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @free_side_info_link(%struct.side_info_link* noundef %0) #1 {
  %2 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 4
  %3 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %2, align 8
  %4 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %3)
  %5 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 4
  store %struct.BF_PartHolder* %4, %struct.BF_PartHolder** %5, align 8
  %6 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 5
  %7 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %6, align 8
  %8 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %7)
  %9 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 5
  store %struct.BF_PartHolder* %8, %struct.BF_PartHolder** %9, align 8
  br label %10

10:                                               ; preds = %21, %1
  %.0 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %11 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %.0, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 6, i64 %15
  %17 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %16, align 8
  %18 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %17)
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 6, i64 %19
  store %struct.BF_PartHolder* %18, %struct.BF_PartHolder** %20, align 8
  br label %21

21:                                               ; preds = %14
  %22 = add nuw nsw i32 %.0, 1
  br label %10, !llvm.loop !26

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %45, %23
  %.01 = phi i32 [ 0, %23 ], [ %46, %45 ]
  %25 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %.01, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %42, %28
  %.1 = phi i32 [ 0, %28 ], [ %43, %42 ]
  %30 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %.1, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = zext i32 %.01 to i64
  %35 = zext i32 %.1 to i64
  %36 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 7, i64 %34, i64 %35
  %37 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %36, align 8
  %38 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %37)
  %39 = zext i32 %.01 to i64
  %40 = zext i32 %.1 to i64
  %41 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %0, i64 0, i32 1, i32 7, i64 %39, i64 %40
  store %struct.BF_PartHolder* %38, %struct.BF_PartHolder** %41, align 8
  br label %42

42:                                               ; preds = %33
  %43 = add nuw nsw i32 %.1, 1
  br label %29, !llvm.loop !27

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %.01, 1
  br label %24, !llvm.loop !28

47:                                               ; preds = %24
  %48 = bitcast %struct.side_info_link* %0 to i8*
  call void @free(i8* noundef %48) #10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { cold }

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
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
