; ModuleID = './getblk.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/getblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct.DCTtab = type { i8, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@ld = external dso_local global %struct.layer_data*, align 8
@Fault_Flag = external dso_local global i32, align 4
@picture_coding_type = external dso_local global i32, align 4
@DCTtabnext = external dso_local global [0 x %struct.DCTtab], align 1
@DCTtab0 = external dso_local global [0 x %struct.DCTtab], align 1
@DCTtab1 = external dso_local global [0 x %struct.DCTtab], align 1
@DCTtab2 = external dso_local global [0 x %struct.DCTtab], align 1
@DCTtab3 = external dso_local global [0 x %struct.DCTtab], align 1
@DCTtab4 = external dso_local global [0 x %struct.DCTtab], align 1
@DCTtab5 = external dso_local global [0 x %struct.DCTtab], align 1
@DCTtab6 = external dso_local global [0 x %struct.DCTtab], align 1
@Quiet_Flag = external dso_local global i32, align 4
@.str = private unnamed_addr constant [52 x i8] c"invalid Huffman code in Decode_MPEG1_Intra_Block()\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (intra)\0A\00", align 1
@scan = external dso_local global [2 x [64 x i8]], align 16
@DCTtabfirst = external dso_local global [0 x %struct.DCTtab], align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"invalid Huffman code in Decode_MPEG1_Non_Intra_Block()\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (inter)\0A\00", align 1
@base = external dso_local global %struct.layer_data, align 8
@enhan = external dso_local global %struct.layer_data, align 8
@chroma_format = external dso_local global i32, align 4
@intra_dc_precision = external dso_local global i32, align 4
@intra_vlc_format = external dso_local global i32, align 4
@DCTtab0a = external dso_local global [0 x %struct.DCTtab], align 1
@DCTtab1a = external dso_local global [0 x %struct.DCTtab], align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"invalid Huffman code in Decode_MPEG2_Intra_Block()\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"invalid escape in Decode_MPEG2_Intra_Block()\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (intra2)\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"invalid Huffman code in Decode_MPEG2_Non_Intra_Block()\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (inter2)\0A\00", align 1
@str = private unnamed_addr constant [51 x i8] c"invalid Huffman code in Decode_MPEG1_Intra_Block()\00", align 1
@str.1 = private unnamed_addr constant [55 x i8] c"invalid Huffman code in Decode_MPEG1_Non_Intra_Block()\00", align 1
@str.2 = private unnamed_addr constant [51 x i8] c"invalid Huffman code in Decode_MPEG2_Intra_Block()\00", align 1
@str.3 = private unnamed_addr constant [45 x i8] c"invalid escape in Decode_MPEG2_Intra_Block()\00", align 1
@str.4 = private unnamed_addr constant [55 x i8] c"invalid Huffman code in Decode_MPEG2_Non_Intra_Block()\00", align 1
@str.5 = private unnamed_addr constant [45 x i8] c"invalid escape in Decode_MPEG2_Intra_Block()\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG1_Intra_Block(i32 noundef %0, i32* nocapture noundef %1) #0 {
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i64 0, i32 24, i64 %4, i64 0
  %6 = icmp slt i32 %0, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = call i32 @Get_Luma_DC_dct_diff() #3
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, %8
  store i32 %10, i32* %1, align 4
  br label %24

11:                                               ; preds = %2
  %12 = icmp eq i32 %0, 4
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = call i32 @Get_Chroma_DC_dct_diff() #3
  %15 = getelementptr inbounds i32, i32* %1, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, %14
  store i32 %17, i32* %15, align 4
  br label %23

18:                                               ; preds = %11
  %19 = call i32 @Get_Chroma_DC_dct_diff() #3
  %20 = getelementptr inbounds i32, i32* %1, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %13
  %storemerge.in.in = phi i32 [ %17, %13 ], [ %22, %18 ]
  br label %24

24:                                               ; preds = %23, %7
  %storemerge15.in.in = phi i32 [ %10, %7 ], [ %storemerge.in.in, %23 ]
  %storemerge15.in = trunc i32 %storemerge15.in.in to i16
  %storemerge15 = shl i16 %storemerge15.in, 3
  store i16 %storemerge15, i16* %5, align 2
  %25 = load i32, i32* @Fault_Flag, align 4
  %.not = icmp eq i32 %25, 0
  br i1 %.not, label %27, label %26

26:                                               ; preds = %24
  br label %188

27:                                               ; preds = %24
  %28 = load i32, i32* @picture_coding_type, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %188

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %186, %31
  %.08 = phi i32 [ 1, %31 ], [ %187, %186 ]
  %33 = call i32 @Show_Bits(i32 noundef 16) #3
  %34 = icmp ugt i32 %33, 16383
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = lshr i32 %33, 12
  %37 = add nsw i32 %36, -4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i64 0, i64 %38
  br label %99

40:                                               ; preds = %32
  %41 = icmp ugt i32 %33, 1023
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = lshr i32 %33, 8
  %44 = add nsw i32 %43, -4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i64 0, i64 %45
  br label %98

47:                                               ; preds = %40
  %48 = icmp ugt i32 %33, 511
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = lshr i32 %33, 6
  %51 = add nsw i32 %50, -8
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i64 0, i64 %52
  br label %97

54:                                               ; preds = %47
  %55 = icmp ugt i32 %33, 255
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = lshr i32 %33, 4
  %58 = add nsw i32 %57, -16
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i64 0, i64 %59
  br label %96

61:                                               ; preds = %54
  %62 = icmp ugt i32 %33, 127
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = lshr i32 %33, 3
  %65 = add nsw i32 %64, -16
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i64 0, i64 %66
  br label %95

68:                                               ; preds = %61
  %69 = icmp ugt i32 %33, 63
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = lshr i32 %33, 2
  %72 = add nsw i32 %71, -16
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i64 0, i64 %73
  br label %94

75:                                               ; preds = %68
  %76 = icmp ugt i32 %33, 31
  br i1 %76, label %77, label %82

77:                                               ; preds = %75
  %78 = lshr i32 %33, 1
  %79 = add nsw i32 %78, -16
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i64 0, i64 %80
  br label %93

82:                                               ; preds = %75
  %83 = icmp ugt i32 %33, 15
  br i1 %83, label %84, label %85

84:                                               ; preds = %82
  br label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @Quiet_Flag, align 4
  %.not10 = icmp eq i32 %86, 0
  br i1 %.not10, label %87, label %88

87:                                               ; preds = %85
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %87, %85
  store i32 1, i32* @Fault_Flag, align 4
  br label %188

89:                                               ; preds = %84
  %90 = add i32 %33, -16
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i64 0, i64 %91
  br label %93

93:                                               ; preds = %89, %77
  %.0 = phi %struct.DCTtab* [ %81, %77 ], [ %92, %89 ]
  br label %94

94:                                               ; preds = %93, %70
  %.1 = phi %struct.DCTtab* [ %74, %70 ], [ %.0, %93 ]
  br label %95

95:                                               ; preds = %94, %63
  %.2 = phi %struct.DCTtab* [ %67, %63 ], [ %.1, %94 ]
  br label %96

96:                                               ; preds = %95, %56
  %.3 = phi %struct.DCTtab* [ %60, %56 ], [ %.2, %95 ]
  br label %97

97:                                               ; preds = %96, %49
  %.4 = phi %struct.DCTtab* [ %53, %49 ], [ %.3, %96 ]
  br label %98

98:                                               ; preds = %97, %42
  %.5 = phi %struct.DCTtab* [ %46, %42 ], [ %.4, %97 ]
  br label %99

99:                                               ; preds = %98, %35
  %.6 = phi %struct.DCTtab* [ %39, %35 ], [ %.5, %98 ]
  %100 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.6, i64 0, i32 2
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  call void @Flush_Buffer(i32 noundef %102) #3
  %103 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.6, i64 0, i32 0
  %104 = load i8, i8* %103, align 1
  %105 = icmp eq i8 %104, 64
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %188

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.6, i64 0, i32 0
  %109 = load i8, i8* %108, align 1
  %110 = icmp eq i8 %109, 65
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = call i32 @Get_Bits(i32 noundef 6) #3
  %113 = call i32 @Get_Bits(i32 noundef 8) #3
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 @Get_Bits(i32 noundef 8) #3
  br label %128

117:                                              ; preds = %111
  %118 = icmp eq i32 %113, 128
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = call i32 @Get_Bits(i32 noundef 8) #3
  %121 = add i32 %120, -256
  br label %127

122:                                              ; preds = %117
  %123 = icmp sgt i32 %113, 128
  br i1 %123, label %124, label %126

124:                                              ; preds = %122
  %125 = add nsw i32 %113, -256
  br label %126

126:                                              ; preds = %124, %122
  %.02 = phi i32 [ %125, %124 ], [ %113, %122 ]
  br label %127

127:                                              ; preds = %126, %119
  %.13 = phi i32 [ %121, %119 ], [ %.02, %126 ]
  br label %128

128:                                              ; preds = %127, %115
  %.24 = phi i32 [ %116, %115 ], [ %.13, %127 ]
  %129 = icmp slt i32 %.24, 0
  %.24.lobit = lshr i32 %.24, 31
  br i1 %129, label %130, label %132

130:                                              ; preds = %128
  %131 = sub nsw i32 0, %.24
  br label %132

132:                                              ; preds = %130, %128
  %.35 = phi i32 [ %131, %130 ], [ %.24, %128 ]
  br label %141

133:                                              ; preds = %107
  %134 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.6, i64 0, i32 0
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.6, i64 0, i32 1
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = call i32 @Get_Bits(i32 noundef 1) #3
  br label %141

141:                                              ; preds = %133, %132
  %.pn = phi i32 [ %112, %132 ], [ %136, %133 ]
  %.46 = phi i32 [ %.35, %132 ], [ %139, %133 ]
  %.01 = phi i32 [ %.24.lobit, %132 ], [ %140, %133 ]
  %.19 = add i32 %.08, %.pn
  %142 = icmp sgt i32 %.19, 63
  br i1 %142, label %143, label %149

143:                                              ; preds = %141
  %144 = load i32, i32* @Quiet_Flag, align 4
  %.not13 = icmp eq i32 %144, 0
  br i1 %.not13, label %145, label %148

145:                                              ; preds = %143
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %147 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %146)
  br label %148

148:                                              ; preds = %145, %143
  store i32 1, i32* @Fault_Flag, align 4
  br label %188

149:                                              ; preds = %141
  %150 = sext i32 %.19 to i64
  %151 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %154 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %153, i64 0, i32 22
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %.46, %155
  %157 = zext i8 %152 to i64
  %158 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %153, i64 0, i32 8, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %156, %159
  %161 = ashr i32 %160, 3
  %.not11 = icmp ult i32 %160, 8
  br i1 %.not11, label %165, label %162

162:                                              ; preds = %149
  %163 = add nsw i32 %161, -1
  %164 = or i32 %163, 1
  br label %165

165:                                              ; preds = %162, %149
  %.57 = phi i32 [ %164, %162 ], [ %161, %149 ]
  %.not12 = icmp eq i32 %.01, 0
  br i1 %.not12, label %166, label %175

166:                                              ; preds = %165
  %167 = icmp sgt i32 %.57, 2047
  br i1 %167, label %168, label %169

168:                                              ; preds = %166
  br label %170

169:                                              ; preds = %166
  br label %170

170:                                              ; preds = %169, %168
  %171 = phi i32 [ 2047, %168 ], [ %.57, %169 ]
  %172 = trunc i32 %171 to i16
  %173 = zext i8 %152 to i64
  %174 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i64 0, i32 24, i64 %4, i64 %173
  store i16 %172, i16* %174, align 2
  br label %185

175:                                              ; preds = %165
  %176 = icmp sgt i32 %.57, 2048
  br i1 %176, label %177, label %178

177:                                              ; preds = %175
  br label %180

178:                                              ; preds = %175
  %179 = sub nsw i32 0, %.57
  br label %180

180:                                              ; preds = %178, %177
  %181 = phi i32 [ -2048, %177 ], [ %179, %178 ]
  %182 = trunc i32 %181 to i16
  %183 = zext i8 %152 to i64
  %184 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i64 0, i32 24, i64 %4, i64 %183
  store i16 %182, i16* %184, align 2
  br label %185

185:                                              ; preds = %180, %170
  br label %186

186:                                              ; preds = %185
  %187 = add nsw i32 %.19, 1
  br label %32

188:                                              ; preds = %148, %106, %88, %30, %26
  ret void
}

declare dso_local i32 @Get_Luma_DC_dct_diff() #1

declare dso_local i32 @Get_Chroma_DC_dct_diff() #1

declare dso_local i32 @Show_Bits(i32 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @Flush_Buffer(i32 noundef) #1

declare dso_local i32 @Get_Bits(i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG1_Non_Intra_Block(i32 noundef %0) #0 {
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = sext i32 %0 to i64
  br label %4

4:                                                ; preds = %168, %1
  %.07 = phi i32 [ 0, %1 ], [ %169, %168 ]
  %5 = call i32 @Show_Bits(i32 noundef 16) #3
  %6 = icmp ugt i32 %5, 16383
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = icmp eq i32 %.07, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = lshr i32 %5, 12
  %11 = add nsw i32 %10, -4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabfirst, i64 0, i64 %12
  br label %19

14:                                               ; preds = %7
  %15 = lshr i32 %5, 12
  %16 = add nsw i32 %15, -4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i64 0, i64 %17
  br label %19

19:                                               ; preds = %14, %9
  %.0 = phi %struct.DCTtab* [ %13, %9 ], [ %18, %14 ]
  br label %79

20:                                               ; preds = %4
  %21 = icmp ugt i32 %5, 1023
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = lshr i32 %5, 8
  %24 = add nsw i32 %23, -4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i64 0, i64 %25
  br label %78

27:                                               ; preds = %20
  %28 = icmp ugt i32 %5, 511
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = lshr i32 %5, 6
  %31 = add nsw i32 %30, -8
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i64 0, i64 %32
  br label %77

34:                                               ; preds = %27
  %35 = icmp ugt i32 %5, 255
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = lshr i32 %5, 4
  %38 = add nsw i32 %37, -16
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i64 0, i64 %39
  br label %76

41:                                               ; preds = %34
  %42 = icmp ugt i32 %5, 127
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = lshr i32 %5, 3
  %45 = add nsw i32 %44, -16
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i64 0, i64 %46
  br label %75

48:                                               ; preds = %41
  %49 = icmp ugt i32 %5, 63
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = lshr i32 %5, 2
  %52 = add nsw i32 %51, -16
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i64 0, i64 %53
  br label %74

55:                                               ; preds = %48
  %56 = icmp ugt i32 %5, 31
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = lshr i32 %5, 1
  %59 = add nsw i32 %58, -16
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i64 0, i64 %60
  br label %73

62:                                               ; preds = %55
  %63 = icmp ugt i32 %5, 15
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  br label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %66, 0
  br i1 %.not, label %67, label %68

67:                                               ; preds = %65
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %67, %65
  store i32 1, i32* @Fault_Flag, align 4
  br label %170

69:                                               ; preds = %64
  %70 = add i32 %5, -16
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i64 0, i64 %71
  br label %73

73:                                               ; preds = %69, %57
  %.1 = phi %struct.DCTtab* [ %61, %57 ], [ %72, %69 ]
  br label %74

74:                                               ; preds = %73, %50
  %.2 = phi %struct.DCTtab* [ %54, %50 ], [ %.1, %73 ]
  br label %75

75:                                               ; preds = %74, %43
  %.3 = phi %struct.DCTtab* [ %47, %43 ], [ %.2, %74 ]
  br label %76

76:                                               ; preds = %75, %36
  %.4 = phi %struct.DCTtab* [ %40, %36 ], [ %.3, %75 ]
  br label %77

77:                                               ; preds = %76, %29
  %.5 = phi %struct.DCTtab* [ %33, %29 ], [ %.4, %76 ]
  br label %78

78:                                               ; preds = %77, %22
  %.6 = phi %struct.DCTtab* [ %26, %22 ], [ %.5, %77 ]
  br label %79

79:                                               ; preds = %78, %19
  %.7 = phi %struct.DCTtab* [ %.0, %19 ], [ %.6, %78 ]
  %80 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 2
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  call void @Flush_Buffer(i32 noundef %82) #3
  %83 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 64
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %170

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 0
  %89 = load i8, i8* %88, align 1
  %90 = icmp eq i8 %89, 65
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = call i32 @Get_Bits(i32 noundef 6) #3
  %93 = call i32 @Get_Bits(i32 noundef 8) #3
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 @Get_Bits(i32 noundef 8) #3
  br label %108

97:                                               ; preds = %91
  %98 = icmp eq i32 %93, 128
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = call i32 @Get_Bits(i32 noundef 8) #3
  %101 = add i32 %100, -256
  br label %107

102:                                              ; preds = %97
  %103 = icmp sgt i32 %93, 128
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = add nsw i32 %93, -256
  br label %106

106:                                              ; preds = %104, %102
  %.01 = phi i32 [ %105, %104 ], [ %93, %102 ]
  br label %107

107:                                              ; preds = %106, %99
  %.12 = phi i32 [ %101, %99 ], [ %.01, %106 ]
  br label %108

108:                                              ; preds = %107, %95
  %.23 = phi i32 [ %96, %95 ], [ %.12, %107 ]
  %109 = icmp slt i32 %.23, 0
  %.23.lobit = lshr i32 %.23, 31
  br i1 %109, label %110, label %112

110:                                              ; preds = %108
  %111 = sub nsw i32 0, %.23
  br label %112

112:                                              ; preds = %110, %108
  %.34 = phi i32 [ %111, %110 ], [ %.23, %108 ]
  br label %121

113:                                              ; preds = %87
  %114 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = call i32 @Get_Bits(i32 noundef 1) #3
  br label %121

121:                                              ; preds = %113, %112
  %.09 = phi i32 [ %.23.lobit, %112 ], [ %120, %113 ]
  %.pn = phi i32 [ %92, %112 ], [ %116, %113 ]
  %.45 = phi i32 [ %.34, %112 ], [ %119, %113 ]
  %.18 = add i32 %.07, %.pn
  %122 = icmp sgt i32 %.18, 63
  br i1 %122, label %123, label %129

123:                                              ; preds = %121
  %124 = load i32, i32* @Quiet_Flag, align 4
  %.not12 = icmp eq i32 %124, 0
  br i1 %.not12, label %125, label %128

125:                                              ; preds = %123
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %127 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %126)
  br label %128

128:                                              ; preds = %125, %123
  store i32 1, i32* @Fault_Flag, align 4
  br label %170

129:                                              ; preds = %121
  %130 = sext i32 %.18 to i64
  %131 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = shl i32 %.45, 1
  %134 = or i32 %133, 1
  %135 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %136 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %135, i64 0, i32 22
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %134, %137
  %139 = zext i8 %132 to i64
  %140 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %135, i64 0, i32 9, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %138, %141
  %143 = ashr i32 %142, 4
  %.not10 = icmp ult i32 %142, 16
  br i1 %.not10, label %147, label %144

144:                                              ; preds = %129
  %145 = add nsw i32 %143, -1
  %146 = or i32 %145, 1
  br label %147

147:                                              ; preds = %144, %129
  %.56 = phi i32 [ %146, %144 ], [ %143, %129 ]
  %.not11 = icmp eq i32 %.09, 0
  br i1 %.not11, label %148, label %157

148:                                              ; preds = %147
  %149 = icmp sgt i32 %.56, 2047
  br i1 %149, label %150, label %151

150:                                              ; preds = %148
  br label %152

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151, %150
  %153 = phi i32 [ 2047, %150 ], [ %.56, %151 ]
  %154 = trunc i32 %153 to i16
  %155 = zext i8 %132 to i64
  %156 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i64 0, i32 24, i64 %3, i64 %155
  store i16 %154, i16* %156, align 2
  br label %167

157:                                              ; preds = %147
  %158 = icmp sgt i32 %.56, 2048
  br i1 %158, label %159, label %160

159:                                              ; preds = %157
  br label %162

160:                                              ; preds = %157
  %161 = sub nsw i32 0, %.56
  br label %162

162:                                              ; preds = %160, %159
  %163 = phi i32 [ -2048, %159 ], [ %161, %160 ]
  %164 = trunc i32 %163 to i16
  %165 = zext i8 %132 to i64
  %166 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i64 0, i32 24, i64 %3, i64 %165
  store i16 %164, i16* %166, align 2
  br label %167

167:                                              ; preds = %162, %152
  br label %168

168:                                              ; preds = %167
  %169 = add nsw i32 %.18, 1
  br label %4

170:                                              ; preds = %128, %86, %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG2_Intra_Block(i32 noundef %0, i32* nocapture noundef %1) #0 {
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i64 0, i32 17
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %10

8:                                                ; preds = %2
  %9 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi %struct.layer_data* [ @base, %7 ], [ %9, %8 ]
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i64 0, i32 24, i64 %12, i64 0
  %14 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 17), align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 21), align 4
  %18 = icmp slt i32 %17, 64
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %19
  %storemerge = phi %struct.layer_data* [ @base, %20 ], [ @enhan, %19 ]
  store %struct.layer_data* %storemerge, %struct.layer_data** @ld, align 8
  br label %22

22:                                               ; preds = %21, %10
  %23 = icmp slt i32 %0, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %28

25:                                               ; preds = %22
  %26 = and i32 %0, 1
  %27 = add nuw nsw i32 %26, 1
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ 0, %24 ], [ %27, %25 ]
  %30 = icmp slt i32 %0, 4
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @chroma_format, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %28
  %35 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i64 0, i32 8, i64 0
  br label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i64 0, i32 10, i64 0
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32* [ %35, %34 ], [ %37, %36 ]
  %40 = icmp eq i32 %29, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = call i32 @Get_Luma_DC_dct_diff() #3
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %1, align 4
  br label %58

45:                                               ; preds = %38
  %46 = icmp eq i32 %29, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = call i32 @Get_Chroma_DC_dct_diff() #3
  %49 = getelementptr inbounds i32, i32* %1, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %57

52:                                               ; preds = %45
  %53 = call i32 @Get_Chroma_DC_dct_diff() #3
  %54 = getelementptr inbounds i32, i32* %1, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  %.01 = phi i32 [ %51, %47 ], [ %56, %52 ]
  br label %58

58:                                               ; preds = %57, %41
  %.12 = phi i32 [ %44, %41 ], [ %.01, %57 ]
  %59 = load i32, i32* @Fault_Flag, align 4
  %.not = icmp eq i32 %59, 0
  br i1 %.not, label %61, label %60

60:                                               ; preds = %58
  br label %228

61:                                               ; preds = %58
  %62 = load i32, i32* @intra_dc_precision, align 4
  %63 = sub nsw i32 3, %62
  %64 = shl i32 %.12, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %13, align 2
  br label %66

66:                                               ; preds = %226, %61
  %.07 = phi i32 [ 0, %61 ], [ %217, %226 ]
  %.05 = phi i32 [ 1, %61 ], [ %227, %226 ]
  %67 = call i32 @Show_Bits(i32 noundef 16) #3
  %68 = icmp ugt i32 %67, 16383
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* @intra_vlc_format, align 4
  %.not16 = icmp eq i32 %70, 0
  br i1 %.not16, label %71, label %76

71:                                               ; preds = %69
  %72 = lshr i32 %67, 12
  %73 = add nsw i32 %72, -4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i64 0, i64 %74
  br label %151

76:                                               ; preds = %69, %66
  %77 = icmp ugt i32 %67, 1023
  br i1 %77, label %78, label %91

78:                                               ; preds = %76
  %79 = load i32, i32* @intra_vlc_format, align 4
  %.not15 = icmp eq i32 %79, 0
  br i1 %.not15, label %85, label %80

80:                                               ; preds = %78
  %81 = lshr i32 %67, 8
  %82 = add nsw i32 %81, -4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0a, i64 0, i64 %83
  br label %90

85:                                               ; preds = %78
  %86 = lshr i32 %67, 8
  %87 = add nsw i32 %86, -4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i64 0, i64 %88
  br label %90

90:                                               ; preds = %85, %80
  %.0 = phi %struct.DCTtab* [ %84, %80 ], [ %89, %85 ]
  br label %150

91:                                               ; preds = %76
  %92 = icmp ugt i32 %67, 511
  br i1 %92, label %93, label %106

93:                                               ; preds = %91
  %94 = load i32, i32* @intra_vlc_format, align 4
  %.not14 = icmp eq i32 %94, 0
  br i1 %.not14, label %100, label %95

95:                                               ; preds = %93
  %96 = lshr i32 %67, 6
  %97 = add nsw i32 %96, -8
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1a, i64 0, i64 %98
  br label %105

100:                                              ; preds = %93
  %101 = lshr i32 %67, 6
  %102 = add nsw i32 %101, -8
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i64 0, i64 %103
  br label %105

105:                                              ; preds = %100, %95
  %.1 = phi %struct.DCTtab* [ %99, %95 ], [ %104, %100 ]
  br label %149

106:                                              ; preds = %91
  %107 = icmp ugt i32 %67, 255
  br i1 %107, label %108, label %113

108:                                              ; preds = %106
  %109 = lshr i32 %67, 4
  %110 = add nsw i32 %109, -16
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i64 0, i64 %111
  br label %148

113:                                              ; preds = %106
  %114 = icmp ugt i32 %67, 127
  br i1 %114, label %115, label %120

115:                                              ; preds = %113
  %116 = lshr i32 %67, 3
  %117 = add nsw i32 %116, -16
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i64 0, i64 %118
  br label %147

120:                                              ; preds = %113
  %121 = icmp ugt i32 %67, 63
  br i1 %121, label %122, label %127

122:                                              ; preds = %120
  %123 = lshr i32 %67, 2
  %124 = add nsw i32 %123, -16
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i64 0, i64 %125
  br label %146

127:                                              ; preds = %120
  %128 = icmp ugt i32 %67, 31
  br i1 %128, label %129, label %134

129:                                              ; preds = %127
  %130 = lshr i32 %67, 1
  %131 = add nsw i32 %130, -16
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i64 0, i64 %132
  br label %145

134:                                              ; preds = %127
  %135 = icmp ugt i32 %67, 15
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  br label %141

137:                                              ; preds = %134
  %138 = load i32, i32* @Quiet_Flag, align 4
  %.not9 = icmp eq i32 %138, 0
  br i1 %.not9, label %139, label %140

139:                                              ; preds = %137
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %139, %137
  store i32 1, i32* @Fault_Flag, align 4
  br label %228

141:                                              ; preds = %136
  %142 = add i32 %67, -16
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i64 0, i64 %143
  br label %145

145:                                              ; preds = %141, %129
  %.2 = phi %struct.DCTtab* [ %133, %129 ], [ %144, %141 ]
  br label %146

146:                                              ; preds = %145, %122
  %.3 = phi %struct.DCTtab* [ %126, %122 ], [ %.2, %145 ]
  br label %147

147:                                              ; preds = %146, %115
  %.4 = phi %struct.DCTtab* [ %119, %115 ], [ %.3, %146 ]
  br label %148

148:                                              ; preds = %147, %108
  %.5 = phi %struct.DCTtab* [ %112, %108 ], [ %.4, %147 ]
  br label %149

149:                                              ; preds = %148, %105
  %.6 = phi %struct.DCTtab* [ %.1, %105 ], [ %.5, %148 ]
  br label %150

150:                                              ; preds = %149, %90
  %.7 = phi %struct.DCTtab* [ %.0, %90 ], [ %.6, %149 ]
  br label %151

151:                                              ; preds = %150, %71
  %.8 = phi %struct.DCTtab* [ %.7, %150 ], [ %75, %71 ]
  %152 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.8, i64 0, i32 2
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  call void @Flush_Buffer(i32 noundef %154) #3
  %155 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.8, i64 0, i32 0
  %156 = load i8, i8* %155, align 1
  %157 = icmp eq i8 %156, 64
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %228

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.8, i64 0, i32 0
  %161 = load i8, i8* %160, align 1
  %162 = icmp eq i8 %161, 65
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = call i32 @Get_Bits(i32 noundef 6) #3
  %165 = call i32 @Get_Bits(i32 noundef 12) #3
  %166 = and i32 %165, 2047
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @Quiet_Flag, align 4
  %.not12 = icmp eq i32 %169, 0
  br i1 %.not12, label %170, label %171

170:                                              ; preds = %168
  %puts13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @str.3, i64 0, i64 0))
  br label %171

171:                                              ; preds = %170, %168
  store i32 1, i32* @Fault_Flag, align 4
  br label %228

172:                                              ; preds = %163
  %173 = icmp sgt i32 %165, 2047
  %174 = zext i1 %173 to i32
  br i1 %173, label %175, label %177

175:                                              ; preds = %172
  %176 = sub nsw i32 4096, %165
  br label %177

177:                                              ; preds = %175, %172
  %.23 = phi i32 [ %176, %175 ], [ %165, %172 ]
  br label %186

178:                                              ; preds = %159
  %179 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.8, i64 0, i32 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.8, i64 0, i32 1
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = call i32 @Get_Bits(i32 noundef 1) #3
  br label %186

186:                                              ; preds = %178, %177
  %.08 = phi i32 [ %174, %177 ], [ %185, %178 ]
  %.pn = phi i32 [ %164, %177 ], [ %181, %178 ]
  %.34 = phi i32 [ %.23, %177 ], [ %184, %178 ]
  %.16 = add nsw i32 %.05, %.pn
  %187 = icmp sgt i32 %.16, 63
  br i1 %187, label %188, label %194

188:                                              ; preds = %186
  %189 = load i32, i32* @Quiet_Flag, align 4
  %.not11 = icmp eq i32 %189, 0
  br i1 %.not11, label %190, label %193

190:                                              ; preds = %188
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %192 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %191)
  br label %193

193:                                              ; preds = %190, %188
  store i32 1, i32* @Fault_Flag, align 4
  br label %228

194:                                              ; preds = %186
  %195 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i64 0, i32 19
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = sext i32 %.16 to i64
  %199 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 %197, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i64 0, i32 22
  %202 = load i32, i32* %201, align 8
  %203 = mul nsw i32 %.34, %202
  %204 = zext i8 %200 to i64
  %205 = getelementptr inbounds i32, i32* %39, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = ashr i32 %207, 4
  %.not10 = icmp eq i32 %.08, 0
  br i1 %.not10, label %211, label %209

209:                                              ; preds = %194
  %210 = sub nsw i32 0, %208
  br label %212

211:                                              ; preds = %194
  br label %212

212:                                              ; preds = %211, %209
  %213 = phi i32 [ %210, %209 ], [ %208, %211 ]
  %214 = trunc i32 %213 to i16
  %215 = zext i8 %200 to i64
  %216 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i64 0, i32 24, i64 %12, i64 %215
  store i16 %214, i16* %216, align 2
  %217 = add nuw nsw i32 %.07, 1
  %218 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 17), align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 21), align 4
  %222 = add nsw i32 %221, -63
  %223 = icmp eq i32 %217, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %225

225:                                              ; preds = %224, %220, %212
  br label %226

226:                                              ; preds = %225
  %227 = add nsw i32 %.16, 1
  br label %66

228:                                              ; preds = %193, %171, %158, %140, %60
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG2_Non_Intra_Block(i32 noundef %0) #0 {
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i64 0, i32 17
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %9

7:                                                ; preds = %1
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  br label %9

9:                                                ; preds = %7, %6
  %10 = phi %struct.layer_data* [ @base, %6 ], [ %8, %7 ]
  %11 = sext i32 %0 to i64
  %12 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 17), align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 21), align 4
  %16 = icmp slt i32 %15, 64
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %17
  %storemerge = phi %struct.layer_data* [ @base, %18 ], [ @enhan, %17 ]
  store %struct.layer_data* %storemerge, %struct.layer_data** @ld, align 8
  br label %20

20:                                               ; preds = %19, %9
  %21 = icmp slt i32 %0, 4
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = load i32, i32* @chroma_format, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %20
  %26 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i64 0, i32 9, i64 0
  br label %29

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i64 0, i32 11, i64 0
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32* [ %26, %25 ], [ %28, %27 ]
  br label %31

31:                                               ; preds = %183, %29
  %.06 = phi i32 [ 0, %29 ], [ %174, %183 ]
  %.03 = phi i32 [ 0, %29 ], [ %184, %183 ]
  %32 = call i32 @Show_Bits(i32 noundef 16) #3
  %33 = icmp ugt i32 %32, 16383
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = icmp eq i32 %.03, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = lshr i32 %32, 12
  %38 = add nsw i32 %37, -4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabfirst, i64 0, i64 %39
  br label %46

41:                                               ; preds = %34
  %42 = lshr i32 %32, 12
  %43 = add nsw i32 %42, -4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i64 0, i64 %44
  br label %46

46:                                               ; preds = %41, %36
  %.0 = phi %struct.DCTtab* [ %40, %36 ], [ %45, %41 ]
  br label %106

47:                                               ; preds = %31
  %48 = icmp ugt i32 %32, 1023
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = lshr i32 %32, 8
  %51 = add nsw i32 %50, -4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i64 0, i64 %52
  br label %105

54:                                               ; preds = %47
  %55 = icmp ugt i32 %32, 511
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = lshr i32 %32, 6
  %58 = add nsw i32 %57, -8
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i64 0, i64 %59
  br label %104

61:                                               ; preds = %54
  %62 = icmp ugt i32 %32, 255
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = lshr i32 %32, 4
  %65 = add nsw i32 %64, -16
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i64 0, i64 %66
  br label %103

68:                                               ; preds = %61
  %69 = icmp ugt i32 %32, 127
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = lshr i32 %32, 3
  %72 = add nsw i32 %71, -16
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i64 0, i64 %73
  br label %102

75:                                               ; preds = %68
  %76 = icmp ugt i32 %32, 63
  br i1 %76, label %77, label %82

77:                                               ; preds = %75
  %78 = lshr i32 %32, 2
  %79 = add nsw i32 %78, -16
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i64 0, i64 %80
  br label %101

82:                                               ; preds = %75
  %83 = icmp ugt i32 %32, 31
  br i1 %83, label %84, label %89

84:                                               ; preds = %82
  %85 = lshr i32 %32, 1
  %86 = add nsw i32 %85, -16
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i64 0, i64 %87
  br label %100

89:                                               ; preds = %82
  %90 = icmp ugt i32 %32, 15
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  br label %96

92:                                               ; preds = %89
  %93 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %93, 0
  br i1 %.not, label %94, label %95

94:                                               ; preds = %92
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %94, %92
  store i32 1, i32* @Fault_Flag, align 4
  br label %185

96:                                               ; preds = %91
  %97 = add i32 %32, -16
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i64 0, i64 %98
  br label %100

100:                                              ; preds = %96, %84
  %.1 = phi %struct.DCTtab* [ %88, %84 ], [ %99, %96 ]
  br label %101

101:                                              ; preds = %100, %77
  %.2 = phi %struct.DCTtab* [ %81, %77 ], [ %.1, %100 ]
  br label %102

102:                                              ; preds = %101, %70
  %.3 = phi %struct.DCTtab* [ %74, %70 ], [ %.2, %101 ]
  br label %103

103:                                              ; preds = %102, %63
  %.4 = phi %struct.DCTtab* [ %67, %63 ], [ %.3, %102 ]
  br label %104

104:                                              ; preds = %103, %56
  %.5 = phi %struct.DCTtab* [ %60, %56 ], [ %.4, %103 ]
  br label %105

105:                                              ; preds = %104, %49
  %.6 = phi %struct.DCTtab* [ %53, %49 ], [ %.5, %104 ]
  br label %106

106:                                              ; preds = %105, %46
  %.7 = phi %struct.DCTtab* [ %.0, %46 ], [ %.6, %105 ]
  %107 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 2
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  call void @Flush_Buffer(i32 noundef %109) #3
  %110 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 0
  %111 = load i8, i8* %110, align 1
  %112 = icmp eq i8 %111, 64
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %185

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 0
  %116 = load i8, i8* %115, align 1
  %117 = icmp eq i8 %116, 65
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = call i32 @Get_Bits(i32 noundef 6) #3
  %120 = call i32 @Get_Bits(i32 noundef 12) #3
  %121 = and i32 %120, 2047
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @Quiet_Flag, align 4
  %.not9 = icmp eq i32 %124, 0
  br i1 %.not9, label %125, label %126

125:                                              ; preds = %123
  %puts10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @str.5, i64 0, i64 0))
  br label %126

126:                                              ; preds = %125, %123
  store i32 1, i32* @Fault_Flag, align 4
  br label %185

127:                                              ; preds = %118
  %128 = icmp sgt i32 %120, 2047
  %129 = zext i1 %128 to i32
  br i1 %128, label %130, label %132

130:                                              ; preds = %127
  %131 = sub nsw i32 4096, %120
  br label %132

132:                                              ; preds = %130, %127
  %.01 = phi i32 [ %131, %130 ], [ %120, %127 ]
  br label %141

133:                                              ; preds = %114
  %134 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 0
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %.7, i64 0, i32 1
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = call i32 @Get_Bits(i32 noundef 1) #3
  br label %141

141:                                              ; preds = %133, %132
  %.05 = phi i32 [ %129, %132 ], [ %140, %133 ]
  %.pn = phi i32 [ %119, %132 ], [ %136, %133 ]
  %.12 = phi i32 [ %.01, %132 ], [ %139, %133 ]
  %.14 = add nsw i32 %.03, %.pn
  %142 = icmp sgt i32 %.14, 63
  br i1 %142, label %143, label %149

143:                                              ; preds = %141
  %144 = load i32, i32* @Quiet_Flag, align 4
  %.not8 = icmp eq i32 %144, 0
  br i1 %.not8, label %145, label %148

145:                                              ; preds = %143
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %147 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %146)
  br label %148

148:                                              ; preds = %145, %143
  store i32 1, i32* @Fault_Flag, align 4
  br label %185

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i64 0, i32 19
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = sext i32 %.14 to i64
  %154 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 %152, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = shl i32 %.12, 1
  %157 = or i32 %156, 1
  %158 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i64 0, i32 22
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %157, %159
  %161 = zext i8 %155 to i64
  %162 = getelementptr inbounds i32, i32* %30, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %160, %163
  %165 = ashr i32 %164, 5
  %.not7 = icmp eq i32 %.05, 0
  br i1 %.not7, label %168, label %166

166:                                              ; preds = %149
  %167 = sub nsw i32 0, %165
  br label %169

168:                                              ; preds = %149
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i32 [ %167, %166 ], [ %165, %168 ]
  %171 = trunc i32 %170 to i16
  %172 = zext i8 %155 to i64
  %173 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i64 0, i32 24, i64 %11, i64 %172
  store i16 %171, i16* %173, align 2
  %174 = add nuw nsw i32 %.06, 1
  %175 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 17), align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %182

177:                                              ; preds = %169
  %178 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i64 0, i32 21), align 4
  %179 = add nsw i32 %178, -63
  %180 = icmp eq i32 %174, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %182

182:                                              ; preds = %181, %177, %169
  br label %183

183:                                              ; preds = %182
  %184 = add nsw i32 %.14, 1
  br label %31

185:                                              ; preds = %148, %126, %113, %95
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
