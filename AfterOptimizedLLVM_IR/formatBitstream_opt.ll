; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/formatBitstream.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitFormatBitStream() #0 {
  store i32 0, i32* @BitCount, align 4
  store i32 0, i32* @ThisFrameSize, align 4
  store i32 0, i32* @BitsRemaining, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_BitstreamFrame(%struct.BF_FrameData* noundef %0, %struct.BF_FrameResults* noundef %1) #0 {
  %3 = alloca %struct.BF_FrameData*, align 8
  %4 = alloca %struct.BF_FrameResults*, align 8
  store %struct.BF_FrameData* %0, %struct.BF_FrameData** %3, align 8
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 8
  %5 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %6 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp sle i32 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.BF_BitstreamFrame, i64 0, i64 0)) #5
  unreachable

11:                                               ; preds = %9
  %12 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %13 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %18

17:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.BF_BitstreamFrame, i64 0, i64 0)) #5
  unreachable

18:                                               ; preds = %16
  %19 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %20 = call i32 @store_side_info(%struct.BF_FrameData* noundef %19)
  %21 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %22 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %24 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %25 = call i32 @main_data(%struct.BF_FrameData* noundef %23, %struct.BF_FrameResults* noundef %24)
  %26 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %27 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @BitsRemaining, align 4
  %29 = srem i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %33

32:                                               ; preds = %18
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.BF_BitstreamFrame, i64 0, i64 0)) #5
  unreachable

33:                                               ; preds = %31
  %34 = call i32 @side_queue_elements(i32* noundef @forwardFrameLength, i32* noundef @forwardSILength)
  store i32 %34, i32* @elements, align 4
  %35 = load i32, i32* @BitsRemaining, align 4
  %36 = sdiv i32 %35, 8
  %37 = load i32, i32* @forwardFrameLength, align 4
  %38 = sdiv i32 %37, 8
  %39 = add nsw i32 %36, %38
  %40 = load i32, i32* @forwardSILength, align 4
  %41 = sdiv i32 %40, 8
  %42 = sub nsw i32 %39, %41
  %43 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %44 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @store_side_info(%struct.BF_FrameData* noundef %0) #0 {
  %2 = alloca %struct.BF_FrameData*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.side_info_link*, align 8
  %6 = alloca %struct.side_info_link*, align 8
  %7 = alloca i32, align 4
  store %struct.BF_FrameData* %0, %struct.BF_FrameData** %2, align 8
  %8 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 8
  store %struct.side_info_link* %8, %struct.side_info_link** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %10 = icmp eq %struct.side_info_link* %9, null
  br i1 %10, label %11, label %109

11:                                               ; preds = %1
  %12 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 88) #6
  %13 = bitcast i8* %12 to %struct.side_info_link*
  store %struct.side_info_link* %13, %struct.side_info_link** %5, align 8
  %14 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %15 = icmp eq %struct.side_info_link* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

19:                                               ; preds = %11
  %20 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %21 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %20, i32 0, i32 0
  store %struct.side_info_link* null, %struct.side_info_link** %21, align 8
  %22 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %23 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %22, i32 0, i32 3
  %24 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %23, align 8
  %25 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %26)
  %28 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %29 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %29, i32 0, i32 4
  store %struct.BF_PartHolder* %27, %struct.BF_PartHolder** %30, align 8
  %31 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %32 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %31, i32 0, i32 4
  %33 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %32, align 8
  %34 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %35)
  %37 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %38 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %38, i32 0, i32 5
  store %struct.BF_PartHolder* %36, %struct.BF_PartHolder** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %62, %19
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %43 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %48 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %47, i32 0, i32 5
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %48, i64 0, i64 %50
  %52 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %51, align 8
  %53 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %54)
  %56 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %57 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %57, i32 0, i32 6
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %58, i64 0, i64 %60
  store %struct.BF_PartHolder* %55, %struct.BF_PartHolder** %61, align 8
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %40, !llvm.loop !4

65:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %105, %65
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %69 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %101, %72
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %76 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %73
  %80 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %81 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %80, i32 0, i32 6
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %81, i64 0, i64 %83
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %84, i64 0, i64 %86
  %88 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %87, align 8
  %89 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %90)
  %92 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %93 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %93, i32 0, i32 7
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %94, i64 0, i64 %96
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %97, i64 0, i64 %99
  store %struct.BF_PartHolder* %91, %struct.BF_PartHolder** %100, align 8
  br label %101

101:                                              ; preds = %79
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %73, !llvm.loop !6

104:                                              ; preds = %73
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %66, !llvm.loop !7

108:                                              ; preds = %66
  br label %116

109:                                              ; preds = %1
  %110 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %111 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %110, i32 0, i32 0
  %112 = load %struct.side_info_link*, %struct.side_info_link** %111, align 8
  store %struct.side_info_link* %112, %struct.side_info_link** @side_queue_free, align 8
  %113 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %114 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %113, i32 0, i32 0
  store %struct.side_info_link* null, %struct.side_info_link** %114, align 8
  %115 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  store %struct.side_info_link* %115, %struct.side_info_link** %5, align 8
  br label %116

116:                                              ; preds = %109, %108
  %117 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %118 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %121 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %124 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %127 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 8
  %129 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %130 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %133 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  %135 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %136 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %136, i32 0, i32 4
  %138 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %137, align 8
  %139 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %140 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %139, i32 0, i32 3
  %141 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %140, align 8
  %142 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %138, %struct.BF_BitstreamPart* noundef %141)
  %143 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %144 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %144, i32 0, i32 4
  store %struct.BF_PartHolder* %142, %struct.BF_PartHolder** %145, align 8
  %146 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %147 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %147, i32 0, i32 5
  %149 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %148, align 8
  %150 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %151 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %150, i32 0, i32 4
  %152 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %151, align 8
  %153 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %149, %struct.BF_BitstreamPart* noundef %152)
  %154 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %155 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %155, i32 0, i32 5
  store %struct.BF_PartHolder* %153, %struct.BF_PartHolder** %156, align 8
  %157 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %158 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %157, i32 0, i32 3
  %159 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %158, align 8
  %160 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* noundef %159)
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %164 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %163, i32 0, i32 4
  %165 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %164, align 8
  %166 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* noundef %165)
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %205, %116
  %170 = load i32, i32* %3, align 4
  %171 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %172 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %208

175:                                              ; preds = %169
  %176 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %177 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %177, i32 0, i32 6
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %178, i64 0, i64 %180
  %182 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %181, align 8
  %183 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %184 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %183, i32 0, i32 5
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %184, i64 0, i64 %186
  %188 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %187, align 8
  %189 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %182, %struct.BF_BitstreamPart* noundef %188)
  %190 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %191 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %191, i32 0, i32 6
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %192, i64 0, i64 %194
  store %struct.BF_PartHolder* %189, %struct.BF_PartHolder** %195, align 8
  %196 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %197 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %196, i32 0, i32 5
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %197, i64 0, i64 %199
  %201 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %200, align 8
  %202 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* noundef %201)
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %175
  %206 = load i32, i32* %3, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %3, align 4
  br label %169, !llvm.loop !8

208:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %268, %208
  %210 = load i32, i32* %4, align 4
  %211 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %212 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %271

215:                                              ; preds = %209
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %264, %215
  %217 = load i32, i32* %3, align 4
  %218 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %219 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %267

222:                                              ; preds = %216
  %223 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %224 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %224, i32 0, i32 7
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %225, i64 0, i64 %227
  %229 = load i32, i32* %3, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %228, i64 0, i64 %230
  %232 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %231, align 8
  %233 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %234 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %233, i32 0, i32 6
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %234, i64 0, i64 %236
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %237, i64 0, i64 %239
  %241 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %240, align 8
  %242 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %232, %struct.BF_BitstreamPart* noundef %241)
  %243 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %244 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %244, i32 0, i32 7
  %246 = load i32, i32* %4, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %245, i64 0, i64 %247
  %249 = load i32, i32* %3, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %248, i64 0, i64 %250
  store %struct.BF_PartHolder* %242, %struct.BF_PartHolder** %251, align 8
  %252 = load %struct.BF_FrameData*, %struct.BF_FrameData** %2, align 8
  %253 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %252, i32 0, i32 6
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %253, i64 0, i64 %255
  %257 = load i32, i32* %3, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %256, i64 0, i64 %258
  %260 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %259, align 8
  %261 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* noundef %260)
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %7, align 4
  br label %264

264:                                              ; preds = %222
  %265 = load i32, i32* %3, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %3, align 4
  br label %216, !llvm.loop !9

267:                                              ; preds = %216
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %4, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %4, align 4
  br label %209, !llvm.loop !10

271:                                              ; preds = %209
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %274 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %274, i32 0, i32 1
  store i32 %272, i32* %275, align 4
  %276 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8
  store %struct.side_info_link* %276, %struct.side_info_link** %6, align 8
  %277 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %278 = icmp eq %struct.side_info_link* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %271
  %280 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  store %struct.side_info_link* %280, %struct.side_info_link** @side_queue_head, align 8
  br label %295

281:                                              ; preds = %271
  br label %282

282:                                              ; preds = %287, %281
  %283 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %284 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %283, i32 0, i32 0
  %285 = load %struct.side_info_link*, %struct.side_info_link** %284, align 8
  %286 = icmp ne %struct.side_info_link* %285, null
  br i1 %286, label %287, label %291

287:                                              ; preds = %282
  %288 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %289 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %288, i32 0, i32 0
  %290 = load %struct.side_info_link*, %struct.side_info_link** %289, align 8
  store %struct.side_info_link* %290, %struct.side_info_link** %6, align 8
  br label %282, !llvm.loop !11

291:                                              ; preds = %282
  %292 = load %struct.side_info_link*, %struct.side_info_link** %5, align 8
  %293 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %294 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %293, i32 0, i32 0
  store %struct.side_info_link* %292, %struct.side_info_link** %294, align 8
  br label %295

295:                                              ; preds = %291, %279
  %296 = load i32, i32* %7, align 4
  ret i32 %296
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @main_data(%struct.BF_FrameData* noundef %0, %struct.BF_FrameResults* noundef %1) #0 {
  %3 = alloca %struct.BF_FrameData*, align 8
  %4 = alloca %struct.BF_FrameResults*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, align 8
  store %struct.BF_FrameData* %0, %struct.BF_FrameData** %3, align 8
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 8
  store i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)* @writePartMainData, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %10 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %71, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %14 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %67, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %21 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %18
  %25 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 8
  %26 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %27 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %26, i32 0, i32 7
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %27, i64 0, i64 %29
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %30, i64 0, i64 %32
  %34 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %33, align 8
  %35 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %36 = call i32 %25(%struct.BF_BitstreamPart* noundef %34, %struct.BF_FrameResults* noundef %35)
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 8
  %40 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %41 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %40, i32 0, i32 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %41, i64 0, i64 %43
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %44, i64 0, i64 %46
  %48 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %47, align 8
  %49 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %50 = call i32 %39(%struct.BF_BitstreamPart* noundef %48, %struct.BF_FrameResults* noundef %49)
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 8
  %54 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %55 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %54, i32 0, i32 9
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %55, i64 0, i64 %57
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %58, i64 0, i64 %60
  %62 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %61, align 8
  %63 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %64 = call i32 %53(%struct.BF_BitstreamPart* noundef %62, %struct.BF_FrameResults* noundef %63)
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %24
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %18, !llvm.loop !12

70:                                               ; preds = %18
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %11, !llvm.loop !13

74:                                               ; preds = %11
  %75 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %8, align 8
  %76 = load %struct.BF_FrameData*, %struct.BF_FrameData** %3, align 8
  %77 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %76, i32 0, i32 10
  %78 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %77, align 8
  %79 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %80 = call i32 %75(%struct.BF_BitstreamPart* noundef %78, %struct.BF_FrameResults* noundef %79)
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @side_queue_elements(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.side_info_link*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8
  store %struct.side_info_link* %9, %struct.side_info_link** %6, align 8
  br label %10

10:                                               ; preds = %30, %2
  %11 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %12 = icmp ne %struct.side_info_link* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %17 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %24 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %13
  %31 = load %struct.side_info_link*, %struct.side_info_link** %6, align 8
  %32 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %31, i32 0, i32 0
  %33 = load %struct.side_info_link*, %struct.side_info_link** %32, align 8
  store %struct.side_info_link* %33, %struct.side_info_link** %6, align 8
  br label %10, !llvm.loop !14

34:                                               ; preds = %10
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BF_FlushBitstream(%struct.BF_FrameData* noundef %0, %struct.BF_FrameResults* noundef %1) #0 {
  %3 = alloca %struct.BF_FrameData*, align 8
  %4 = alloca %struct.BF_FrameResults*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.BF_FrameData* %0, %struct.BF_FrameData** %3, align 8
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 8
  %7 = load i32, i32* @elements, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i32, i32* @forwardFrameLength, align 4
  %11 = load i32, i32* @forwardSILength, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 32
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %19, %9
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  call void @WriteMainDataBits(i32 noundef 0, i32 noundef 32, %struct.BF_FrameResults* noundef %20)
  br label %15, !llvm.loop !15

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 32
  %24 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  call void @WriteMainDataBits(i32 noundef 0, i32 noundef %23, %struct.BF_FrameResults* noundef %24)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @forwardFrameLength, align 4
  %27 = load i32, i32* @forwardSILength, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %30 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @forwardSILength, align 4
  %32 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %33 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %35 = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %34, i32 0, i32 2
  store i32 0, i32* %35, align 4
  call void @free_side_queues()
  store i32 0, i32* @BitCount, align 4
  store i32 0, i32* @ThisFrameSize, align 4
  store i32 0, i32* @BitsRemaining, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @WriteMainDataBits(i32 noundef %0, i32 noundef %1, %struct.BF_FrameResults* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.BF_FrameResults*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.BF_FrameResults* %2, %struct.BF_FrameResults** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ule i32 %8, 32
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.WriteMainDataBits, i64 0, i64 0)) #5
  unreachable

12:                                               ; preds = %10
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %74

16:                                               ; preds = %12
  %17 = load i32, i32* @BitCount, align 4
  %18 = load i32, i32* @ThisFrameSize, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = call i32 @write_side_info()
  store i32 %21, i32* @BitCount, align 4
  %22 = load i32, i32* @ThisFrameSize, align 4
  %23 = load i32, i32* @BitCount, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* @BitsRemaining, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BitsRemaining, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @BitsRemaining, align 4
  %33 = sub i32 %31, %32
  %34 = lshr i32 %30, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @BitsRemaining, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BitsRemaining, align 4
  call void @putMyBits(i32 noundef %38, i32 noundef %39)
  %40 = call i32 @write_side_info()
  store i32 %40, i32* @BitCount, align 4
  %41 = load i32, i32* @ThisFrameSize, align 4
  %42 = load i32, i32* @BitCount, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* @BitsRemaining, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  call void @putMyBits(i32 noundef %44, i32 noundef %45)
  br label %49

46:                                               ; preds = %25
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  call void @putMyBits(i32 noundef %47, i32 noundef %48)
  br label %49

49:                                               ; preds = %46, %29
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BitCount, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* @BitCount, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @BitsRemaining, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* @BitsRemaining, align 4
  %56 = load i32, i32* @BitCount, align 4
  %57 = load i32, i32* @ThisFrameSize, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %61

60:                                               ; preds = %49
  call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.WriteMainDataBits, i64 0, i64 0)) #5
  unreachable

61:                                               ; preds = %59
  %62 = load i32, i32* @BitsRemaining, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %66

65:                                               ; preds = %61
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.WriteMainDataBits, i64 0, i64 0)) #5
  unreachable

66:                                               ; preds = %64
  %67 = load i32, i32* @BitCount, align 4
  %68 = load i32, i32* @BitsRemaining, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @ThisFrameSize, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %74

73:                                               ; preds = %66
  call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.WriteMainDataBits, i64 0, i64 0)) #5
  unreachable

74:                                               ; preds = %15, %72
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_side_queues() #0 {
  %1 = alloca %struct.side_info_link*, align 8
  %2 = alloca %struct.side_info_link*, align 8
  %3 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8
  store %struct.side_info_link* %3, %struct.side_info_link** %1, align 8
  br label %4

4:                                                ; preds = %12, %0
  %5 = load %struct.side_info_link*, %struct.side_info_link** %1, align 8
  %6 = icmp ne %struct.side_info_link* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.side_info_link*, %struct.side_info_link** %1, align 8
  %9 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %8, i32 0, i32 0
  %10 = load %struct.side_info_link*, %struct.side_info_link** %9, align 8
  store %struct.side_info_link* %10, %struct.side_info_link** %2, align 8
  %11 = load %struct.side_info_link*, %struct.side_info_link** %1, align 8
  call void @free_side_info_link(%struct.side_info_link* noundef %11)
  br label %12

12:                                               ; preds = %7
  %13 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  store %struct.side_info_link* %13, %struct.side_info_link** %1, align 8
  br label %4, !llvm.loop !16

14:                                               ; preds = %4
  store %struct.side_info_link* null, %struct.side_info_link** @side_queue_head, align 8
  %15 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 8
  store %struct.side_info_link* %15, %struct.side_info_link** %1, align 8
  br label %16

16:                                               ; preds = %24, %14
  %17 = load %struct.side_info_link*, %struct.side_info_link** %1, align 8
  %18 = icmp ne %struct.side_info_link* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.side_info_link*, %struct.side_info_link** %1, align 8
  %21 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %20, i32 0, i32 0
  %22 = load %struct.side_info_link*, %struct.side_info_link** %21, align 8
  store %struct.side_info_link* %22, %struct.side_info_link** %2, align 8
  %23 = load %struct.side_info_link*, %struct.side_info_link** %1, align 8
  call void @free_side_info_link(%struct.side_info_link* noundef %23)
  br label %24

24:                                               ; preds = %19
  %25 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  store %struct.side_info_link* %25, %struct.side_info_link** %1, align 8
  br label %16, !llvm.loop !17

26:                                               ; preds = %16
  store %struct.side_info_link* null, %struct.side_info_link** @side_queue_free, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @BF_PartLength(%struct.BF_BitstreamPart* noundef %0) #0 {
  %2 = alloca %struct.BF_BitstreamPart*, align 8
  %3 = alloca %struct.BF_BitstreamElement*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.BF_BitstreamPart* %0, %struct.BF_BitstreamPart** %2, align 8
  %6 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %2, align 8
  %7 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %6, i32 0, i32 1
  %8 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %7, align 8
  store %struct.BF_BitstreamElement* %8, %struct.BF_BitstreamElement** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %2, align 8
  %12 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %3, align 8
  %17 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 4
  %19 = zext i16 %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %3, align 8
  %26 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %25, i32 1
  store %struct.BF_BitstreamElement* %26, %struct.BF_BitstreamElement** %3, align 8
  br label %9, !llvm.loop !18

27:                                               ; preds = %9
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.BF_PartHolder*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #6
  %5 = bitcast i8* %4 to %struct.BF_PartHolder*
  store %struct.BF_PartHolder* %5, %struct.BF_PartHolder** %3, align 8
  %6 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %7 = icmp ne %struct.BF_PartHolder* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 443, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.BF_newPartHolder, i64 0, i64 0)) #5
  unreachable

10:                                               ; preds = %8
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %13 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #6
  %15 = bitcast i8* %14 to %struct.BF_BitstreamPart*
  %16 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %17 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %16, i32 0, i32 1
  store %struct.BF_BitstreamPart* %15, %struct.BF_BitstreamPart** %17, align 8
  %18 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %19 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %18, i32 0, i32 1
  %20 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %19, align 8
  %21 = icmp ne %struct.BF_BitstreamPart* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %24

23:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 446, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.BF_newPartHolder, i64 0, i64 0)) #5
  unreachable

24:                                               ; preds = %22
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = call noalias i8* @calloc(i64 noundef %26, i64 noundef 8) #6
  %28 = bitcast i8* %27 to %struct.BF_BitstreamElement*
  %29 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %30 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %29, i32 0, i32 1
  %31 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %30, align 8
  %32 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %31, i32 0, i32 1
  store %struct.BF_BitstreamElement* %28, %struct.BF_BitstreamElement** %32, align 8
  %33 = load i32, i32* %2, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %37 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %36, i32 0, i32 1
  %38 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %37, align 8
  %39 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %38, i32 0, i32 1
  %40 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %39, align 8
  %41 = icmp ne %struct.BF_BitstreamElement* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %44

43:                                               ; preds = %35
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 448, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.BF_newPartHolder, i64 0, i64 0)) #5
  unreachable

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %47 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %46, i32 0, i32 1
  %48 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %47, align 8
  %49 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  ret %struct.BF_PartHolder* %50
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_NewHolderFromBitstreamPart(%struct.BF_BitstreamPart* noundef %0) #0 {
  %2 = alloca %struct.BF_BitstreamPart*, align 8
  %3 = alloca %struct.BF_PartHolder*, align 8
  store %struct.BF_BitstreamPart* %0, %struct.BF_BitstreamPart** %2, align 8
  %4 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %2, align 8
  %5 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %6)
  store %struct.BF_PartHolder* %7, %struct.BF_PartHolder** %3, align 8
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %9 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %2, align 8
  %10 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %8, %struct.BF_BitstreamPart* noundef %9)
  ret %struct.BF_PartHolder* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* noundef %0, %struct.BF_BitstreamPart* noundef %1) #0 {
  %3 = alloca %struct.BF_PartHolder*, align 8
  %4 = alloca %struct.BF_BitstreamPart*, align 8
  %5 = alloca %struct.BF_BitstreamElement*, align 8
  %6 = alloca i32, align 4
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %3, align 8
  store %struct.BF_BitstreamPart* %1, %struct.BF_BitstreamPart** %4, align 8
  %7 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %8 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %7, i32 0, i32 1
  %9 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %8, align 8
  %10 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %4, align 8
  %14 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %4, align 8
  %19 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %18, i32 0, i32 1
  %20 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %20, i64 %22
  store %struct.BF_BitstreamElement* %23, %struct.BF_BitstreamElement** %5, align 8
  %24 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %25 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 8
  %26 = call %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* noundef %24, %struct.BF_BitstreamElement* noundef %25)
  store %struct.BF_PartHolder* %26, %struct.BF_PartHolder** %3, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %11, !llvm.loop !19

30:                                               ; preds = %11
  %31 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  ret %struct.BF_PartHolder* %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* noundef %0, %struct.BF_BitstreamElement* noundef %1) #0 {
  %3 = alloca %struct.BF_PartHolder*, align 8
  %4 = alloca %struct.BF_BitstreamElement*, align 8
  %5 = alloca %struct.BF_PartHolder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %3, align 8
  store %struct.BF_BitstreamElement* %1, %struct.BF_BitstreamElement** %4, align 8
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  store %struct.BF_PartHolder* %8, %struct.BF_PartHolder** %5, align 8
  %9 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %10 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %9, i32 0, i32 1
  %11 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %10, align 8
  %12 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add i32 %13, 1
  store i32 %14, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %17 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = call %struct.BF_PartHolder* @BF_resizePartHolder(%struct.BF_PartHolder* noundef %21, i32 noundef %24)
  store %struct.BF_PartHolder* %25, %struct.BF_PartHolder** %5, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 8
  %28 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %27, i32 0, i32 1
  %29 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %28, align 8
  %30 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %29, i32 0, i32 1
  %31 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %30, align 8
  %32 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 8
  %33 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %32, i32 0, i32 1
  %34 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %33, align 8
  %35 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %31, i64 %38
  %40 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %4, align 8
  %41 = bitcast %struct.BF_BitstreamElement* %39 to i8*
  %42 = bitcast %struct.BF_BitstreamElement* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 8
  ret %struct.BF_PartHolder* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_resizePartHolder(%struct.BF_PartHolder* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.BF_PartHolder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.BF_PartHolder*, align 8
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 noundef %8)
  store %struct.BF_PartHolder* %9, %struct.BF_PartHolder** %7, align 8
  %10 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %11 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %19 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %7, align 8
  %25 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %24, i32 0, i32 1
  %26 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %25, align 8
  %27 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %51, %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %7, align 8
  %34 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %33, i32 0, i32 1
  %35 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %34, align 8
  %36 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %35, i32 0, i32 1
  %37 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %37, i64 %39
  %41 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %42 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %41, i32 0, i32 1
  %43 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %42, align 8
  %44 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %43, i32 0, i32 1
  %45 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %45, i64 %47
  %49 = bitcast %struct.BF_BitstreamElement* %40 to i8*
  %50 = bitcast %struct.BF_BitstreamElement* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 8, i1 false)
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %28, !llvm.loop !20

54:                                               ; preds = %28
  %55 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %3, align 8
  %56 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %55)
  %57 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %7, align 8
  ret %struct.BF_PartHolder* %57
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %0) #0 {
  %2 = alloca %struct.BF_PartHolder*, align 8
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %2, align 8
  %3 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %2, align 8
  %4 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i32 0, i32 1
  %5 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %4, align 8
  %6 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %5, i32 0, i32 1
  %7 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %6, align 8
  %8 = bitcast %struct.BF_BitstreamElement* %7 to i8*
  call void @free(i8* noundef %8) #6
  %9 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %2, align 8
  %10 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %9, i32 0, i32 1
  %11 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %10, align 8
  %12 = bitcast %struct.BF_BitstreamPart* %11 to i8*
  call void @free(i8* noundef %12) #6
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %2, align 8
  %14 = bitcast %struct.BF_PartHolder* %13 to i8*
  call void @free(i8* noundef %14) #6
  ret %struct.BF_PartHolder* null
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.BF_PartHolder*, align 8
  %5 = alloca %struct.BF_PartHolder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.BF_BitstreamElement, align 4
  store %struct.BF_PartHolder* %0, %struct.BF_PartHolder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %8, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %8, i32 0, i32 1
  store i16 %12, i16* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 8
  %18 = call %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* noundef %17, %struct.BF_BitstreamElement* noundef %8)
  store %struct.BF_PartHolder* %18, %struct.BF_PartHolder** %4, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %5, align 8
  store %struct.BF_PartHolder* %20, %struct.BF_PartHolder** %4, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %4, align 8
  ret %struct.BF_PartHolder* %22
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @writePartMainData(%struct.BF_BitstreamPart* noundef %0, %struct.BF_FrameResults* noundef %1) #0 {
  %3 = alloca %struct.BF_BitstreamPart*, align 8
  %4 = alloca %struct.BF_FrameResults*, align 8
  %5 = alloca %struct.BF_BitstreamElement*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.BF_BitstreamPart* %0, %struct.BF_BitstreamPart** %3, align 8
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  %9 = icmp ne %struct.BF_FrameResults* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.writePartMainData, i64 0, i64 0)) #5
  unreachable

12:                                               ; preds = %10
  %13 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 8
  %14 = icmp ne %struct.BF_BitstreamPart* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.writePartMainData, i64 0, i64 0)) #5
  unreachable

17:                                               ; preds = %15
  %18 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 8
  %19 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %18, i32 0, i32 1
  %20 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %19, align 8
  store %struct.BF_BitstreamElement* %20, %struct.BF_BitstreamElement** %5, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %42, %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 8
  %24 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 8
  %29 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 8
  %32 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 4
  %34 = zext i16 %33 to i32
  %35 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %4, align 8
  call void @WriteMainDataBits(i32 noundef %30, i32 noundef %34, %struct.BF_FrameResults* noundef %35)
  %36 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 8
  %37 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %36, i32 0, i32 1
  %38 = load i16, i16* %37, align 4
  %39 = zext i16 %38 to i32
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 8
  %46 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %45, i32 1
  store %struct.BF_BitstreamElement* %46, %struct.BF_BitstreamElement** %5, align 8
  br label %21, !llvm.loop !21

47:                                               ; preds = %21
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @write_side_info() #0 {
  %1 = alloca %struct.MYSideInfo*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, align 8
  store i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)* @writePartSideInfo, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 8
  store i32 0, i32* %2, align 4
  %6 = call %struct.MYSideInfo* @get_side_info()
  store %struct.MYSideInfo* %6, %struct.MYSideInfo** %1, align 8
  %7 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 8
  %8 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* @ThisFrameSize, align 4
  %10 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 8
  %11 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 8
  %12 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %11, i32 0, i32 4
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %12, align 8
  %14 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %13, i32 0, i32 1
  %15 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %14, align 8
  %16 = call i32 %10(%struct.BF_BitstreamPart* noundef %15, %struct.BF_FrameResults* noundef null)
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 8
  %20 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 8
  %21 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %20, i32 0, i32 5
  %22 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %21, align 8
  %23 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %22, i32 0, i32 1
  %24 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %23, align 8
  %25 = call i32 %19(%struct.BF_BitstreamPart* noundef %24, %struct.BF_FrameResults* noundef null)
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %47, %0
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 8
  %31 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 8
  %36 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 8
  %37 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %36, i32 0, i32 6
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %37, i64 0, i64 %39
  %41 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %40, align 8
  %42 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %41, i32 0, i32 1
  %43 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %42, align 8
  %44 = call i32 %35(%struct.BF_BitstreamPart* noundef %43, %struct.BF_FrameResults* noundef null)
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %28, !llvm.loop !22

50:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %84, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 8
  %54 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 8
  %61 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %5, align 8
  %66 = load %struct.MYSideInfo*, %struct.MYSideInfo** %1, align 8
  %67 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %66, i32 0, i32 7
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %67, i64 0, i64 %69
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %70, i64 0, i64 %72
  %74 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %73, align 8
  %75 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %74, i32 0, i32 1
  %76 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %75, align 8
  %77 = call i32 %65(%struct.BF_BitstreamPart* noundef %76, %struct.BF_FrameResults* noundef null)
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %58, !llvm.loop !23

83:                                               ; preds = %58
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %51, !llvm.loop !24

87:                                               ; preds = %51
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local void @putMyBits(i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @writePartSideInfo(%struct.BF_BitstreamPart* noundef %0, %struct.BF_FrameResults* noundef %1) #0 {
  %3 = alloca %struct.BF_BitstreamPart*, align 8
  %4 = alloca %struct.BF_FrameResults*, align 8
  %5 = alloca %struct.BF_BitstreamElement*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.BF_BitstreamPart* %0, %struct.BF_BitstreamPart** %3, align 8
  store %struct.BF_FrameResults* %1, %struct.BF_FrameResults** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 8
  %9 = icmp ne %struct.BF_BitstreamPart* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.writePartSideInfo, i64 0, i64 0)) #5
  unreachable

12:                                               ; preds = %10
  %13 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 8
  %14 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %13, i32 0, i32 1
  %15 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %14, align 8
  store %struct.BF_BitstreamElement* %15, %struct.BF_BitstreamElement** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %36, %12
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %3, align 8
  %19 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 8
  %24 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 8
  %27 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 4
  %29 = zext i16 %28 to i32
  call void @putMyBits(i32 noundef %25, i32 noundef %29)
  %30 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 8
  %31 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %30, i32 0, i32 1
  %32 = load i16, i16* %31, align 4
  %33 = zext i16 %32 to i32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %5, align 8
  %40 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %39, i32 1
  store %struct.BF_BitstreamElement* %40, %struct.BF_BitstreamElement** %5, align 8
  br label %16, !llvm.loop !25

41:                                               ; preds = %16
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.MYSideInfo* @get_side_info() #0 {
  %1 = alloca %struct.side_info_link*, align 8
  %2 = alloca %struct.side_info_link*, align 8
  %3 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 8
  store %struct.side_info_link* %3, %struct.side_info_link** %1, align 8
  %4 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8
  store %struct.side_info_link* %4, %struct.side_info_link** %2, align 8
  %5 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %6 = icmp ne %struct.side_info_link* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %9

8:                                                ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.get_side_info, i64 0, i64 0)) #5
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %11 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %10, i32 0, i32 0
  %12 = load %struct.side_info_link*, %struct.side_info_link** %11, align 8
  store %struct.side_info_link* %12, %struct.side_info_link** @side_queue_head, align 8
  %13 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  store %struct.side_info_link* %13, %struct.side_info_link** @side_queue_free, align 8
  %14 = load %struct.side_info_link*, %struct.side_info_link** %1, align 8
  %15 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %16 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %15, i32 0, i32 0
  store %struct.side_info_link* %14, %struct.side_info_link** %16, align 8
  %17 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %18 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %17, i32 0, i32 1
  ret %struct.MYSideInfo* %18
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @free_side_info_link(%struct.side_info_link* noundef %0) #0 {
  %2 = alloca %struct.side_info_link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.side_info_link* %0, %struct.side_info_link** %2, align 8
  %5 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %6 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %6, i32 0, i32 4
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %7, align 8
  %9 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %8)
  %10 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %11 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %11, i32 0, i32 4
  store %struct.BF_PartHolder* %9, %struct.BF_PartHolder** %12, align 8
  %13 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %14 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %14, i32 0, i32 5
  %16 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %15, align 8
  %17 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %16)
  %18 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %19 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %19, i32 0, i32 5
  store %struct.BF_PartHolder* %17, %struct.BF_PartHolder** %20, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %43, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %24 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %30 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %30, i32 0, i32 6
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %31, i64 0, i64 %33
  %35 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %34, align 8
  %36 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %35)
  %37 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %38 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %38, i32 0, i32 6
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %39, i64 0, i64 %41
  store %struct.BF_PartHolder* %36, %struct.BF_PartHolder** %42, align 8
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %21, !llvm.loop !26

46:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %87, %46
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %50 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %83, %54
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %58 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %55
  %63 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %64 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %64, i32 0, i32 7
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %65, i64 0, i64 %67
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %68, i64 0, i64 %70
  %72 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %71, align 8
  %73 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* noundef %72)
  %74 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %75 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %75, i32 0, i32 7
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %76, i64 0, i64 %78
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %79, i64 0, i64 %81
  store %struct.BF_PartHolder* %73, %struct.BF_PartHolder** %82, align 8
  br label %83

83:                                               ; preds = %62
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %55, !llvm.loop !27

86:                                               ; preds = %55
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %47, !llvm.loop !28

90:                                               ; preds = %47
  %91 = load %struct.side_info_link*, %struct.side_info_link** %2, align 8
  %92 = bitcast %struct.side_info_link* %91 to i8*
  call void @free(i8* noundef %92) #6
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!42, !5}
!42 = distinct !{!43, !5}
!43 = distinct !{!44, !5}
!44 = distinct !{!45, !5}
!45 = distinct !{!46, !5}
!46 = distinct !{!47, !5}
!47 = distinct !{!48, !5}
!48 = distinct !{!49, !5}
!49 = distinct !{!50, !5}
!50 = distinct !{!51, !5}
!51 = distinct !{!52, !5}
!52 = distinct !{!53, !5}
!53 = distinct !{!54, !5}
!54 = distinct !{!55, !5}
!55 = distinct !{!56, !5}
!56 = distinct !{!57, !5}
!57 = distinct !{!58, !5}
!58 = distinct !{!59, !5}
!59 = distinct !{!60, !5}
!60 = distinct !{!61, !5}
!61 = distinct !{!62, !5}
!62 = distinct !{!63, !5}
!63 = distinct !{!64, !5}
!64 = distinct !{!65, !5}
!65 = distinct !{!66, !5}
!66 = distinct !{!67, !5}
!67 = distinct !{!68, !5}
!68 = distinct !{!69, !5}
!69 = distinct !{!70, !5}
!70 = distinct !{!71, !5}
!71 = distinct !{!72, !5}
!72 = distinct !{!73, !5}
!73 = distinct !{!74, !5}
!74 = distinct !{!75, !5}
!75 = distinct !{!76, !5}
!76 = distinct !{!77, !5}
!77 = distinct !{!78, !5}
!78 = distinct !{!79, !5}
!79 = distinct !{!80, !5}
!80 = distinct !{!81, !5}
!81 = distinct !{!82, !5}
!82 = distinct !{!83, !5}
!83 = distinct !{!84, !5}
!84 = distinct !{!85, !5}
!85 = distinct !{!86, !5}
!86 = distinct !{!87, !5}
!87 = distinct !{!88, !5}
!88 = distinct !{!89, !5}
!89 = distinct !{!90, !5}
!90 = distinct !{!91, !5}
!91 = distinct !{!92, !5}
!92 = distinct !{!93, !5}
!93 = distinct !{!94, !5}
!94 = distinct !{!95, !5}
!95 = distinct !{!96, !5}
!96 = distinct !{!97, !5}
!97 = distinct !{!98, !5}
!98 = distinct !{!99, !5}
!99 = distinct !{!100, !5}
!100 = distinct !{!101, !5}
!101 = distinct !{!102, !5}
!102 = distinct !{!103, !5}
!103 = distinct !{!104, !5}
!104 = distinct !{!105, !5}
!105 = distinct !{!106, !5}
!106 = distinct !{!107, !5}
!107 = distinct !{!108, !5}
!108 = distinct !{!109, !5}
!109 = distinct !{!110, !5}
!110 = distinct !{!111, !5}
!111 = distinct !{!112, !5}
!112 = distinct !{!113, !5}
!113 = distinct !{!114, !5}
!114 = distinct !{!115, !5}
!115 = distinct !{!116, !5}
!116 = distinct !{!117, !5}
!117 = distinct !{!118, !5}
!118 = distinct !{!119, !5}
!119 = distinct !{!120, !5}
!120 = distinct !{!121, !5}
!121 = distinct !{!122, !5}
!122 = distinct !{!123, !5}
!123 = distinct !{!124, !5}
!124 = distinct !{!125, !5}
!125 = distinct !{!126, !5}
!126 = distinct !{!127, !5}
!127 = distinct !{!128, !5}
!128 = distinct !{!129, !5}
!129 = distinct !{!130, !5}
!130 = distinct !{!131, !5}
!131 = distinct !{!132, !5}
!132 = distinct !{!133, !5}
!133 = distinct !{!134, !5}
!134 = distinct !{!135, !5}
!135 = distinct !{!136, !5}
!136 = distinct !{!137, !5}
!137 = distinct !{!138, !5}
!138 = distinct !{!139, !5}
!139 = distinct !{!140, !5}
!140 = distinct !{!141, !5}
!142 = distinct !{!143, !5}
!143 = distinct !{!144, !5}
!144 = distinct !{!145, !5}
!145 = distinct !{!146, !5}
!146 = distinct !{!147, !5}
!147 = distinct !{!148, !5}
!148 = distinct !{!149, !5}
!149 = distinct !{!150, !5}
!150 = distinct !{!151, !5}
!151 = distinct !{!152, !5}
!152 = distinct !{!153, !5}
!153 = distinct !{!154, !5}
!154 = distinct !{!155, !5}
!155 = distinct !{!156, !5}
!156 = distinct !{!157, !5}
!157 = distinct !{!158, !5}
