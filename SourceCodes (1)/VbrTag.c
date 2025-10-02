; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/VbrTag.c'
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
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @pVbrFrames, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @nVbrFrameBufferSize, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5, %1
  store i32 100, i32* @nVbrFrameBufferSize, align 4
  %9 = load i32, i32* @nVbrFrameBufferSize, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = call noalias i8* @malloc(i64 noundef %11) #7
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** @pVbrFrames, align 8
  br label %14

14:                                               ; preds = %8, %5
  %15 = load i32, i32* @nVbrNumFrames, align 4
  %16 = load i32, i32* @nVbrFrameBufferSize, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* @nVbrFrameBufferSize, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* @nVbrFrameBufferSize, align 4
  %21 = load i32*, i32** @pVbrFrames, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i32, i32* @nVbrFrameBufferSize, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = call i8* @realloc(i8* noundef %22, i64 noundef %25) #7
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** @pVbrFrames, align 8
  br label %28

28:                                               ; preds = %18, %14
  %29 = load i32, i32* %2, align 4
  %30 = load i32*, i32** @pVbrFrames, align 8
  %31 = load i32, i32* @nVbrNumFrames, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @nVbrNumFrames, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @CreateI4(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 24
  %7 = and i32 %6, 255
  %8 = trunc i32 %7 to i8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %8, i8* %10, align 1
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %14, i8* %16, align 1
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 %20, i8* %22, align 1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  store i8 %25, i8* %27, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CheckVbrTag(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = ashr i32 %10, 3
  %12 = and i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = ashr i32 %16, 2
  %18 = and i32 %17, 3
  store i32 %18, i32* %6, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 6
  %24 = and i32 %23, 3
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 36
  store i8* %32, i8** %3, align 8
  br label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 21
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %33, %30
  br label %47

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 3
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 21
  store i8* %42, i8** %3, align 8
  br label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 13
  store i8* %45, i8** %3, align 8
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 0), align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %84

56:                                               ; preds = %47
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 1), align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %84

65:                                               ; preds = %56
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 2), align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %84

74:                                               ; preds = %65
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 3), align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %84

83:                                               ; preds = %74
  store i32 1, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %82, %73, %64, %55
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @GetVbrTag(%struct.VBRTAGDATA* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.VBRTAGDATA*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.VBRTAGDATA* %0, %struct.VBRTAGDATA** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %12 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = ashr i32 %16, 3
  %18 = and i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 2
  %24 = and i32 %23, 3
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = ashr i32 %28, 6
  %30 = and i32 %29, 3
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 36
  store i8* %38, i8** %5, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 21
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %39, %36
  br label %53

43:                                               ; preds = %2
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 21
  store i8* %48, i8** %5, align 8
  br label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 13
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 0), align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %181

62:                                               ; preds = %53
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 1), align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %181

71:                                               ; preds = %62
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 2), align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %181

80:                                               ; preds = %71
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 3), align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %181

89:                                               ; preds = %80
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  store i8* %91, i8** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %94 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* @GetVbrTag.sr_table, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %100 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %105 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %89
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @ExtractI4(i8* noundef %109)
  %111 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %112 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  store i32 %110, i32* %7, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  store i8* %114, i8** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %108
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @ExtractI4(i8* noundef %119)
  %121 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %122 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  store i8* %124, i8** %5, align 8
  br label %125

125:                                              ; preds = %118, %108
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, 2
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @ExtractI4(i8* noundef %130)
  %132 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %133 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 4
  store i8* %135, i8** %5, align 8
  br label %136

136:                                              ; preds = %129, %125
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %136
  %141 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %142 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %141, i32 0, i32 6
  %143 = getelementptr inbounds [100 x i8], [100 x i8]* %142, i64 0, i64 0
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %164

145:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %160, %145
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 100
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %156 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %155, i32 0, i32 6
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [100 x i8], [100 x i8]* %156, i64 0, i64 %158
  store i8 %154, i8* %159, align 1
  br label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %146, !llvm.loop !4

163:                                              ; preds = %146
  br label %164

164:                                              ; preds = %163, %140
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 100
  store i8* %166, i8** %5, align 8
  br label %167

167:                                              ; preds = %164, %136
  %168 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %169 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %168, i32 0, i32 5
  store i32 -1, i32* %169, align 4
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %167
  %174 = load i8*, i8** %5, align 8
  %175 = call i32 @ExtractI4(i8* noundef %174)
  %176 = load %struct.VBRTAGDATA*, %struct.VBRTAGDATA** %4, align 8
  %177 = getelementptr inbounds %struct.VBRTAGDATA, %struct.VBRTAGDATA* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 4
  store i8* %179, i8** %5, align 8
  br label %180

180:                                              ; preds = %173, %167
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %88, %79, %70, %61
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ExtractI4(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = shl i32 %8, 8
  store i32 %9, i32* %3, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 8
  store i32 %17, i32* %3, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 %24, 8
  store i32 %25, i32* %3, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @InitVbrTag(%struct.bit_stream_struc* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.bit_stream_struc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bit_stream_struc* %0, %struct.bit_stream_struc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** @pVbrFrames, align 8
  store i32 0, i32* @nVbrNumFrames, align 4
  store i32 0, i32* @nVbrFrameBufferSize, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([100 x i64]* @g_Position to i8*), i8 0, i64 800, i1 false)
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), i8 0, i64 216, i1 false)
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %18, %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [100 x i64], [100 x i64]* @g_Position, i64 0, i64 %16
  store i64 -1, i64* %17, align 8
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %11, !llvm.loop !6

21:                                               ; preds = %11
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @SizeOfEmptyFrame, i64 0, i64 %26
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 4
  store i32 %30, i32* @nZeroStreamSize, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @SizeOfEmptyFrame, i64 0, i64 %33
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* @nZeroStreamSize, align 4
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef -1) #8
  unreachable

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* @InitVbrTag.framesize, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* @TotalFrameSize, align 4
  %49 = load i32, i32* @nZeroStreamSize, align 4
  %50 = add nsw i32 %49, 120
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 20
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @TotalFrameSize, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef -1) #8
  unreachable

59:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %66, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @TotalFrameSize, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %5, align 8
  call void @putbits(%struct.bit_stream_struc* noundef %65, i32 noundef 0, i32 noundef 8)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %60, !llvm.loop !7

69:                                               ; preds = %60
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local void @putbits(%struct.bit_stream_struc* noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PutVbrTag(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca [100 x i8], align 16
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca [80 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @nVbrNumFrames, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** @pVbrFrames, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  store i32 -1, i32* %4, align 4
  br label %177

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call noalias %struct._IO_FILE* @fopen(i8* noundef %24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %25, %struct._IO_FILE** %13, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %177

29:                                               ; preds = %23
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), i8 0, i64 216, i1 false)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %31 = call i32 @fseek(%struct._IO_FILE* noundef %30, i64 noundef 0, i32 noundef 2)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %33 = call i64 @ftell(%struct._IO_FILE* noundef %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %177

37:                                               ; preds = %29
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %39 = load i32, i32* @TotalFrameSize, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 @fseek(%struct._IO_FILE* noundef %38, i64 noundef %40, i32 noundef 0)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %43 = call i64 @fread(i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %42)
  store i8 -1, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), align 16
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  store i8 -5, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 1), align 1
  %47 = load i8, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 2), align 2
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 12
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %11, align 1
  %51 = load i8, i8* %11, align 1
  %52 = sext i8 %51 to i32
  %53 = or i32 80, %52
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 2), align 2
  br label %64

55:                                               ; preds = %37
  store i8 -13, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 1), align 1
  %56 = load i8, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 2), align 2
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 12
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %11, align 1
  %60 = load i8, i8* %11, align 1
  %61 = sext i8 %60 to i32
  %62 = or i32 -128, %61
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 2), align 2
  br label %64

64:                                               ; preds = %55, %46
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %66 = call i32 @fseek(%struct._IO_FILE* noundef %65, i64 noundef 0, i32 noundef 0)
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %67, i8 0, i64 100, i1 false)
  store i32 1, i32* %8, align 4
  br label %68

68:                                               ; preds = %99, %64
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 100
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = sitofp i32 %72 to double
  %74 = fmul double 1.000000e-02, %73
  %75 = load i32, i32* @nVbrNumFrames, align 4
  %76 = sitofp i32 %75 to double
  %77 = fmul double %74, %76
  %78 = call double @llvm.floor.f64(double %77)
  %79 = fptosi double %78 to i32
  store i32 %79, i32* %15, align 4
  %80 = load i32*, i32** @pVbrFrames, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sitofp i32 %84 to float
  %86 = fmul float 2.560000e+02, %85
  %87 = load i64, i64* %9, align 8
  %88 = sitofp i64 %87 to float
  %89 = fdiv float %86, %88
  store float %89, float* %16, align 4
  %90 = load float, float* %16, align 4
  %91 = fcmp ogt float %90, 2.550000e+02
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  store float 2.550000e+02, float* %16, align 4
  br label %93

93:                                               ; preds = %92, %71
  %94 = load float, float* %16, align 4
  %95 = fptoui float %94 to i8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 %97
  store i8 %95, i8* %98, align 1
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %68, !llvm.loop !8

102:                                              ; preds = %68
  %103 = load i32, i32* @nZeroStreamSize, align 4
  store i32 %103, i32* %10, align 4
  %104 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 0), align 1
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %107
  store i8 %104, i8* %108, align 1
  %109 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 1), align 1
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %112
  store i8 %109, i8* %113, align 1
  %114 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 2), align 1
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %117
  store i8 %114, i8* %118, align 1
  %119 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @VBRTag, i64 0, i64 3), align 1
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %122
  store i8 %119, i8* %123, align 1
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %125
  call void @CreateI4(i8* noundef %126, i32 noundef 15)
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 4
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %130
  %132 = load i32, i32* @nVbrNumFrames, align 4
  call void @CreateI4(i8* noundef %131, i32 noundef %132)
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 4
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %136
  %138 = load i64, i64* %9, align 8
  %139 = trunc i64 %138 to i32
  call void @CreateI4(i8* noundef %137, i32 noundef %139)
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 4
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %143
  %145 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %144, i8* align 16 %145, i64 100, i1 false)
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, 100
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %151
  %153 = load i32, i32* %6, align 4
  call void @CreateI4(i8* noundef %152, i32 noundef %153)
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 4
  store i32 %155, i32* %10, align 4
  %156 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %157 = call i8* @get_lame_version()
  %158 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %156, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %157) #7
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 %160
  %162 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %163 = call i8* @strncpy(i8* noundef %161, i8* noundef %162, i64 noundef 20) #7
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 20
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* @TotalFrameSize, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %169 = call i64 @fwrite(i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @pbtStreamBuffer, i64 0, i64 0), i64 noundef %167, i64 noundef 1, %struct._IO_FILE* noundef %168)
  %170 = icmp ne i64 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %102
  store i32 -1, i32* %4, align 4
  br label %177

172:                                              ; preds = %102
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %174 = call i32 @fclose(%struct._IO_FILE* noundef %173)
  %175 = load i32*, i32** @pVbrFrames, align 8
  %176 = bitcast i32* %175 to i8*
  call void @free(i8* noundef %176) #7
  store i32* null, i32** @pVbrFrames, align 8
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %172, %171, %36, %28, %22
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local i8* @get_lame_version() #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SeekPoint(i8* noundef %0, i32 noundef %1, float noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %12 = load float, float* %6, align 4
  %13 = fcmp olt float %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store float 0.000000e+00, float* %6, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = load float, float* %6, align 4
  %17 = fcmp ogt float %16, 1.000000e+02
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store float 1.000000e+02, float* %6, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load float, float* %6, align 4
  %21 = fptosi float %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 99
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 99, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = uitofp i8 %30 to float
  store float %31, float* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 99
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = uitofp i8 %40 to float
  store float %41, float* %10, align 4
  br label %43

42:                                               ; preds = %25
  store float 2.560000e+02, float* %10, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load float, float* %9, align 4
  %45 = load float, float* %10, align 4
  %46 = load float, float* %9, align 4
  %47 = fsub float %45, %46
  %48 = load float, float* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sitofp i32 %49 to float
  %51 = fsub float %48, %50
  %52 = call float @llvm.fmuladd.f32(float %47, float %51, float %44)
  store float %52, float* %11, align 4
  %53 = load float, float* %11, align 4
  %54 = fmul float 3.906250e-03, %53
  %55 = load i32, i32* %5, align 4
  %56 = sitofp i32 %55 to float
  %57 = fmul float %54, %56
  %58 = fptosi float %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
