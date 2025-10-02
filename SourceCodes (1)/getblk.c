; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/getblk.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG1_Intra_Block(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.DCTtab*, align 8
  %11 = alloca i16*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 24
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %13, i64 0, i64 %15
  %17 = getelementptr inbounds [64 x i16], [64 x i16]* %16, i64 0, i64 0
  store i16* %17, i16** %11, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = call i32 @Get_Luma_DC_dct_diff()
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = shl i32 %25, 3
  %27 = trunc i32 %26 to i16
  %28 = load i16*, i16** %11, align 8
  %29 = getelementptr inbounds i16, i16* %28, i64 0
  store i16 %27, i16* %29, align 2
  br label %54

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = call i32 @Get_Chroma_DC_dct_diff()
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = shl i32 %38, 3
  %40 = trunc i32 %39 to i16
  %41 = load i16*, i16** %11, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 0
  store i16 %40, i16* %42, align 2
  br label %53

43:                                               ; preds = %30
  %44 = call i32 @Get_Chroma_DC_dct_diff()
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = shl i32 %48, 3
  %50 = trunc i32 %49 to i16
  %51 = load i16*, i16** %11, align 8
  %52 = getelementptr inbounds i16, i16* %51, i64 0
  store i16 %50, i16* %52, align 2
  br label %53

53:                                               ; preds = %43, %33
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i32, i32* @Fault_Flag, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %277

58:                                               ; preds = %54
  %59 = load i32, i32* @picture_coding_type, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %277

62:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %274, %62
  %64 = call i32 @Show_Bits(i32 noundef 16)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp uge i32 %65, 16384
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = lshr i32 %68, 12
  %70 = sub i32 %69, 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i64 0, i64 %71
  store %struct.DCTtab* %72, %struct.DCTtab** %10, align 8
  br label %148

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = icmp uge i32 %74, 1024
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 8
  %79 = sub i32 %78, 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i64 0, i64 %80
  store %struct.DCTtab* %81, %struct.DCTtab** %10, align 8
  br label %147

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = icmp uge i32 %83, 512
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = lshr i32 %86, 6
  %88 = sub i32 %87, 8
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i64 0, i64 %89
  store %struct.DCTtab* %90, %struct.DCTtab** %10, align 8
  br label %146

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = icmp uge i32 %92, 256
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = lshr i32 %95, 4
  %97 = sub i32 %96, 16
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i64 0, i64 %98
  store %struct.DCTtab* %99, %struct.DCTtab** %10, align 8
  br label %145

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = icmp uge i32 %101, 128
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = lshr i32 %104, 3
  %106 = sub i32 %105, 16
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i64 0, i64 %107
  store %struct.DCTtab* %108, %struct.DCTtab** %10, align 8
  br label %144

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp uge i32 %110, 64
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = lshr i32 %113, 2
  %115 = sub i32 %114, 16
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i64 0, i64 %116
  store %struct.DCTtab* %117, %struct.DCTtab** %10, align 8
  br label %143

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  %120 = icmp uge i32 %119, 32
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = lshr i32 %122, 1
  %124 = sub i32 %123, 16
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i64 0, i64 %125
  store %struct.DCTtab* %126, %struct.DCTtab** %10, align 8
  br label %142

127:                                              ; preds = %118
  %128 = load i32, i32* %9, align 4
  %129 = icmp uge i32 %128, 16
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = sub i32 %131, 16
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i64 0, i64 %133
  store %struct.DCTtab* %134, %struct.DCTtab** %10, align 8
  br label %141

135:                                              ; preds = %127
  %136 = load i32, i32* @Quiet_Flag, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  store i32 1, i32* @Fault_Flag, align 4
  br label %277

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %121
  br label %143

143:                                              ; preds = %142, %112
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %144, %94
  br label %146

146:                                              ; preds = %145, %85
  br label %147

147:                                              ; preds = %146, %76
  br label %148

148:                                              ; preds = %147, %67
  %149 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %150 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %149, i32 0, i32 2
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  call void @Flush_Buffer(i32 noundef %152)
  %153 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %154 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %153, i32 0, i32 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 64
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %277

159:                                              ; preds = %148
  %160 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %161 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 65
  br i1 %164, label %165, label %196

165:                                              ; preds = %159
  %166 = call i32 @Get_Bits(i32 noundef 6)
  %167 = load i32, i32* %6, align 4
  %168 = add i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %173, i32* %5, align 4
  br label %188

174:                                              ; preds = %165
  %175 = load i32, i32* %5, align 4
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = call i32 @Get_Bits(i32 noundef 8)
  %179 = sub i32 %178, 256
  store i32 %179, i32* %5, align 4
  br label %187

180:                                              ; preds = %174
  %181 = load i32, i32* %5, align 4
  %182 = icmp sgt i32 %181, 128
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %5, align 4
  %185 = sub nsw i32 %184, 256
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %177
  br label %188

188:                                              ; preds = %187, %172
  %189 = load i32, i32* %5, align 4
  %190 = icmp slt i32 %189, 0
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %8, align 4
  br i1 %190, label %192, label %195

192:                                              ; preds = %188
  %193 = load i32, i32* %5, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %192, %188
  br label %208

196:                                              ; preds = %159
  %197 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %198 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %197, i32 0, i32 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %6, align 4
  %203 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %204 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %203, i32 0, i32 1
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  store i32 %206, i32* %5, align 4
  %207 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %196, %195
  %209 = load i32, i32* %6, align 4
  %210 = icmp sge i32 %209, 64
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* @Quiet_Flag, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %215, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %211
  store i32 1, i32* @Fault_Flag, align 4
  br label %277

218:                                              ; preds = %208
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %226 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %225, i32 0, i32 22
  %227 = load i32, i32* %226, align 8
  %228 = mul nsw i32 %224, %227
  %229 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %230 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %229, i32 0, i32 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [64 x i32], [64 x i32]* %230, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %228, %234
  %236 = ashr i32 %235, 3
  store i32 %236, i32* %5, align 4
  %237 = load i32, i32* %5, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %218
  %240 = load i32, i32* %5, align 4
  %241 = sub nsw i32 %240, 1
  %242 = or i32 %241, 1
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %239, %218
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %5, align 4
  %248 = icmp sgt i32 %247, 2047
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %252

250:                                              ; preds = %246
  %251 = load i32, i32* %5, align 4
  br label %252

252:                                              ; preds = %250, %249
  %253 = phi i32 [ 2047, %249 ], [ %251, %250 ]
  %254 = trunc i32 %253 to i16
  %255 = load i16*, i16** %11, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i16, i16* %255, i64 %257
  store i16 %254, i16* %258, align 2
  br label %273

259:                                              ; preds = %243
  %260 = load i32, i32* %5, align 4
  %261 = icmp sgt i32 %260, 2048
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %266

263:                                              ; preds = %259
  %264 = load i32, i32* %5, align 4
  %265 = sub nsw i32 0, %264
  br label %266

266:                                              ; preds = %263, %262
  %267 = phi i32 [ -2048, %262 ], [ %265, %263 ]
  %268 = trunc i32 %267 to i16
  %269 = load i16*, i16** %11, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i16, i16* %269, i64 %271
  store i16 %268, i16* %272, align 2
  br label %273

273:                                              ; preds = %266, %252
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %6, align 4
  br label %63

277:                                              ; preds = %217, %158, %140, %61, %57
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.DCTtab*, align 8
  %9 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 24
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %11, i64 0, i64 %13
  %15 = getelementptr inbounds [64 x i16], [64 x i16]* %14, i64 0, i64 0
  store i16* %15, i16** %9, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %239, %1
  %17 = call i32 @Show_Bits(i32 noundef 16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp uge i32 %18, 16384
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = lshr i32 %24, 12
  %26 = sub i32 %25, 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabfirst, i64 0, i64 %27
  store %struct.DCTtab* %28, %struct.DCTtab** %8, align 8
  br label %35

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = lshr i32 %30, 12
  %32 = sub i32 %31, 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i64 0, i64 %33
  store %struct.DCTtab* %34, %struct.DCTtab** %8, align 8
  br label %35

35:                                               ; preds = %29, %23
  br label %111

36:                                               ; preds = %16
  %37 = load i32, i32* %7, align 4
  %38 = icmp uge i32 %37, 1024
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = lshr i32 %40, 8
  %42 = sub i32 %41, 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i64 0, i64 %43
  store %struct.DCTtab* %44, %struct.DCTtab** %8, align 8
  br label %110

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = icmp uge i32 %46, 512
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = lshr i32 %49, 6
  %51 = sub i32 %50, 8
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i64 0, i64 %52
  store %struct.DCTtab* %53, %struct.DCTtab** %8, align 8
  br label %109

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp uge i32 %55, 256
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = lshr i32 %58, 4
  %60 = sub i32 %59, 16
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i64 0, i64 %61
  store %struct.DCTtab* %62, %struct.DCTtab** %8, align 8
  br label %108

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = icmp uge i32 %64, 128
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = lshr i32 %67, 3
  %69 = sub i32 %68, 16
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i64 0, i64 %70
  store %struct.DCTtab* %71, %struct.DCTtab** %8, align 8
  br label %107

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = icmp uge i32 %73, 64
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = lshr i32 %76, 2
  %78 = sub i32 %77, 16
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i64 0, i64 %79
  store %struct.DCTtab* %80, %struct.DCTtab** %8, align 8
  br label %106

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = icmp uge i32 %82, 32
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = lshr i32 %85, 1
  %87 = sub i32 %86, 16
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i64 0, i64 %88
  store %struct.DCTtab* %89, %struct.DCTtab** %8, align 8
  br label %105

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  %92 = icmp uge i32 %91, 16
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = sub i32 %94, 16
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i64 0, i64 %96
  store %struct.DCTtab* %97, %struct.DCTtab** %8, align 8
  br label %104

98:                                               ; preds = %90
  %99 = load i32, i32* @Quiet_Flag, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  store i32 1, i32* @Fault_Flag, align 4
  br label %242

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %84
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106, %66
  br label %108

108:                                              ; preds = %107, %57
  br label %109

109:                                              ; preds = %108, %48
  br label %110

110:                                              ; preds = %109, %39
  br label %111

111:                                              ; preds = %110, %35
  %112 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %113 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %112, i32 0, i32 2
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  call void @Flush_Buffer(i32 noundef %115)
  %116 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %117 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 64
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %242

122:                                              ; preds = %111
  %123 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %124 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %123, i32 0, i32 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 65
  br i1 %127, label %128, label %159

128:                                              ; preds = %122
  %129 = call i32 @Get_Bits(i32 noundef 6)
  %130 = load i32, i32* %4, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = call i32 @Get_Bits(i32 noundef 8)
  store i32 %136, i32* %3, align 4
  br label %151

137:                                              ; preds = %128
  %138 = load i32, i32* %3, align 4
  %139 = icmp eq i32 %138, 128
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = call i32 @Get_Bits(i32 noundef 8)
  %142 = sub i32 %141, 256
  store i32 %142, i32* %3, align 4
  br label %150

143:                                              ; preds = %137
  %144 = load i32, i32* %3, align 4
  %145 = icmp sgt i32 %144, 128
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %3, align 4
  %148 = sub nsw i32 %147, 256
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %140
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i32, i32* %3, align 4
  %153 = icmp slt i32 %152, 0
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %6, align 4
  br i1 %153, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* %3, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %155, %151
  br label %171

159:                                              ; preds = %122
  %160 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %161 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %4, align 4
  %166 = load %struct.DCTtab*, %struct.DCTtab** %8, align 8
  %167 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %166, i32 0, i32 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  store i32 %169, i32* %3, align 4
  %170 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %159, %158
  %172 = load i32, i32* %4, align 4
  %173 = icmp sge i32 %172, 64
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32, i32* @Quiet_Flag, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %178, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %174
  store i32 1, i32* @Fault_Flag, align 4
  br label %242

181:                                              ; preds = %171
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 0), i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %3, align 4
  %188 = shl i32 %187, 1
  %189 = add nsw i32 %188, 1
  %190 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %191 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %190, i32 0, i32 22
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %189, %192
  %194 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %195 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %194, i32 0, i32 9
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [64 x i32], [64 x i32]* %195, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %193, %199
  %201 = ashr i32 %200, 4
  store i32 %201, i32* %3, align 4
  %202 = load i32, i32* %3, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %181
  %205 = load i32, i32* %3, align 4
  %206 = sub nsw i32 %205, 1
  %207 = or i32 %206, 1
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %204, %181
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %3, align 4
  %213 = icmp sgt i32 %212, 2047
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %217

215:                                              ; preds = %211
  %216 = load i32, i32* %3, align 4
  br label %217

217:                                              ; preds = %215, %214
  %218 = phi i32 [ 2047, %214 ], [ %216, %215 ]
  %219 = trunc i32 %218 to i16
  %220 = load i16*, i16** %9, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i16, i16* %220, i64 %222
  store i16 %219, i16* %223, align 2
  br label %238

224:                                              ; preds = %208
  %225 = load i32, i32* %3, align 4
  %226 = icmp sgt i32 %225, 2048
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  br label %231

228:                                              ; preds = %224
  %229 = load i32, i32* %3, align 4
  %230 = sub nsw i32 0, %229
  br label %231

231:                                              ; preds = %228, %227
  %232 = phi i32 [ -2048, %227 ], [ %230, %228 ]
  %233 = trunc i32 %232 to i16
  %234 = load i16*, i16** %9, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i16, i16* %234, i64 %236
  store i16 %233, i16* %237, align 2
  br label %238

238:                                              ; preds = %231, %217
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %4, align 4
  br label %16

242:                                              ; preds = %180, %121, %103
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG2_Intra_Block(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.DCTtab*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.layer_data*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %18 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i32 0, i32 17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %24

22:                                               ; preds = %2
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi %struct.layer_data* [ @base, %21 ], [ %23, %22 ]
  store %struct.layer_data* %25, %struct.layer_data** %16, align 8
  %26 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %27 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i32 0, i32 24
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %27, i64 0, i64 %29
  %31 = getelementptr inbounds [64 x i16], [64 x i16]* %30, i64 0, i64 0
  store i16* %31, i16** %14, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %36 = icmp slt i32 %35, 64
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %39

38:                                               ; preds = %34
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 1
  %47 = add nsw i32 %46, 1
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i32 [ 0, %43 ], [ %47, %44 ]
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @chroma_format, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52, %48
  %56 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %57 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %56, i32 0, i32 8
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %57, i64 0, i64 0
  br label %63

59:                                               ; preds = %52
  %60 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %61 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %60, i32 0, i32 10
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %61, i64 0, i64 0
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32* [ %58, %55 ], [ %62, %59 ]
  store i32* %64, i32** %15, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = call i32 @Get_Luma_DC_dct_diff()
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  store i32 %72, i32* %5, align 4
  br label %89

73:                                               ; preds = %63
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = call i32 @Get_Chroma_DC_dct_diff()
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  store i32 %81, i32* %5, align 4
  br label %88

82:                                               ; preds = %73
  %83 = call i32 @Get_Chroma_DC_dct_diff()
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i32, i32* @Fault_Flag, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %321

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @intra_dc_precision, align 4
  %96 = sub nsw i32 3, %95
  %97 = shl i32 %94, %96
  %98 = trunc i32 %97 to i16
  %99 = load i16*, i16** %14, align 8
  %100 = getelementptr inbounds i16, i16* %99, i64 0
  store i16 %98, i16* %100, align 2
  store i32 0, i32* %9, align 4
  store i32 1, i32* %6, align 4
  br label %101

101:                                              ; preds = %318, %93
  %102 = call i32 @Show_Bits(i32 noundef 16)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp uge i32 %103, 16384
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* @intra_vlc_format, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = lshr i32 %109, 12
  %111 = sub i32 %110, 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i64 0, i64 %112
  store %struct.DCTtab* %113, %struct.DCTtab** %13, align 8
  br label %209

114:                                              ; preds = %105, %101
  %115 = load i32, i32* %12, align 4
  %116 = icmp uge i32 %115, 1024
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load i32, i32* @intra_vlc_format, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = lshr i32 %121, 8
  %123 = sub i32 %122, 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0a, i64 0, i64 %124
  store %struct.DCTtab* %125, %struct.DCTtab** %13, align 8
  br label %132

126:                                              ; preds = %117
  %127 = load i32, i32* %12, align 4
  %128 = lshr i32 %127, 8
  %129 = sub i32 %128, 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i64 0, i64 %130
  store %struct.DCTtab* %131, %struct.DCTtab** %13, align 8
  br label %132

132:                                              ; preds = %126, %120
  br label %208

133:                                              ; preds = %114
  %134 = load i32, i32* %12, align 4
  %135 = icmp uge i32 %134, 512
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i32, i32* @intra_vlc_format, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = lshr i32 %140, 6
  %142 = sub i32 %141, 8
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1a, i64 0, i64 %143
  store %struct.DCTtab* %144, %struct.DCTtab** %13, align 8
  br label %151

145:                                              ; preds = %136
  %146 = load i32, i32* %12, align 4
  %147 = lshr i32 %146, 6
  %148 = sub i32 %147, 8
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i64 0, i64 %149
  store %struct.DCTtab* %150, %struct.DCTtab** %13, align 8
  br label %151

151:                                              ; preds = %145, %139
  br label %207

152:                                              ; preds = %133
  %153 = load i32, i32* %12, align 4
  %154 = icmp uge i32 %153, 256
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, i32* %12, align 4
  %157 = lshr i32 %156, 4
  %158 = sub i32 %157, 16
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i64 0, i64 %159
  store %struct.DCTtab* %160, %struct.DCTtab** %13, align 8
  br label %206

161:                                              ; preds = %152
  %162 = load i32, i32* %12, align 4
  %163 = icmp uge i32 %162, 128
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = lshr i32 %165, 3
  %167 = sub i32 %166, 16
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i64 0, i64 %168
  store %struct.DCTtab* %169, %struct.DCTtab** %13, align 8
  br label %205

170:                                              ; preds = %161
  %171 = load i32, i32* %12, align 4
  %172 = icmp uge i32 %171, 64
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i32, i32* %12, align 4
  %175 = lshr i32 %174, 2
  %176 = sub i32 %175, 16
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i64 0, i64 %177
  store %struct.DCTtab* %178, %struct.DCTtab** %13, align 8
  br label %204

179:                                              ; preds = %170
  %180 = load i32, i32* %12, align 4
  %181 = icmp uge i32 %180, 32
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i32, i32* %12, align 4
  %184 = lshr i32 %183, 1
  %185 = sub i32 %184, 16
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i64 0, i64 %186
  store %struct.DCTtab* %187, %struct.DCTtab** %13, align 8
  br label %203

188:                                              ; preds = %179
  %189 = load i32, i32* %12, align 4
  %190 = icmp uge i32 %189, 16
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i32, i32* %12, align 4
  %193 = sub i32 %192, 16
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i64 0, i64 %194
  store %struct.DCTtab* %195, %struct.DCTtab** %13, align 8
  br label %202

196:                                              ; preds = %188
  %197 = load i32, i32* @Quiet_Flag, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %196
  %200 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %196
  store i32 1, i32* @Fault_Flag, align 4
  br label %321

202:                                              ; preds = %191
  br label %203

203:                                              ; preds = %202, %182
  br label %204

204:                                              ; preds = %203, %173
  br label %205

205:                                              ; preds = %204, %164
  br label %206

206:                                              ; preds = %205, %155
  br label %207

207:                                              ; preds = %206, %151
  br label %208

208:                                              ; preds = %207, %132
  br label %209

209:                                              ; preds = %208, %108
  %210 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %211 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %210, i32 0, i32 2
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  call void @Flush_Buffer(i32 noundef %213)
  %214 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %215 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %214, i32 0, i32 0
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 64
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  br label %321

220:                                              ; preds = %209
  %221 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %222 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %221, i32 0, i32 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 65
  br i1 %225, label %226, label %248

226:                                              ; preds = %220
  %227 = call i32 @Get_Bits(i32 noundef 6)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %6, align 4
  %230 = call i32 @Get_Bits(i32 noundef 12)
  store i32 %230, i32* %5, align 4
  %231 = load i32, i32* %5, align 4
  %232 = and i32 %231, 2047
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load i32, i32* @Quiet_Flag, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %234
  %238 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %234
  store i32 1, i32* @Fault_Flag, align 4
  br label %321

240:                                              ; preds = %226
  %241 = load i32, i32* %5, align 4
  %242 = icmp sge i32 %241, 2048
  %243 = zext i1 %242 to i32
  store i32 %243, i32* %8, align 4
  br i1 %242, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32, i32* %5, align 4
  %246 = sub nsw i32 4096, %245
  store i32 %246, i32* %5, align 4
  br label %247

247:                                              ; preds = %244, %240
  br label %260

248:                                              ; preds = %220
  %249 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %250 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %249, i32 0, i32 0
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  store i32 %252, i32* %11, align 4
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %6, align 4
  %255 = load %struct.DCTtab*, %struct.DCTtab** %13, align 8
  %256 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %255, i32 0, i32 1
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  store i32 %258, i32* %5, align 4
  %259 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %259, i32* %8, align 4
  br label %260

260:                                              ; preds = %248, %247
  %261 = load i32, i32* %6, align 4
  %262 = icmp sge i32 %261, 64
  br i1 %262, label %263, label %270

263:                                              ; preds = %260
  %264 = load i32, i32* @Quiet_Flag, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %267, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %269

269:                                              ; preds = %266, %263
  store i32 1, i32* @Fault_Flag, align 4
  br label %321

270:                                              ; preds = %260
  %271 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %272 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %271, i32 0, i32 19
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 %274
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [64 x i8], [64 x i8]* %275, i64 0, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* %5, align 4
  %282 = load %struct.layer_data*, %struct.layer_data** %16, align 8
  %283 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %282, i32 0, i32 22
  %284 = load i32, i32* %283, align 8
  %285 = mul nsw i32 %281, %284
  %286 = load i32*, i32** %15, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 %285, %290
  %292 = ashr i32 %291, 4
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %270
  %296 = load i32, i32* %5, align 4
  %297 = sub nsw i32 0, %296
  br label %300

298:                                              ; preds = %270
  %299 = load i32, i32* %5, align 4
  br label %300

300:                                              ; preds = %298, %295
  %301 = phi i32 [ %297, %295 ], [ %299, %298 ]
  %302 = trunc i32 %301 to i16
  %303 = load i16*, i16** %14, align 8
  %304 = load i32, i32* %7, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i16, i16* %303, i64 %305
  store i16 %302, i16* %306, align 2
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %317

311:                                              ; preds = %300
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %314 = sub nsw i32 %313, 63
  %315 = icmp eq i32 %312, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %317

317:                                              ; preds = %316, %311, %300
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %6, align 4
  br label %101

321:                                              ; preds = %269, %239, %219, %201, %92
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Decode_MPEG2_Non_Intra_Block(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.DCTtab*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.layer_data*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %15 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 17
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %21

19:                                               ; preds = %1
  %20 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi %struct.layer_data* [ @base, %18 ], [ %20, %19 ]
  store %struct.layer_data* %22, %struct.layer_data** %13, align 8
  %23 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %24 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 24
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %24, i64 0, i64 %26
  %28 = getelementptr inbounds [64 x i16], [64 x i16]* %27, i64 0, i64 0
  store i16* %28, i16** %11, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %33 = icmp slt i32 %32, 64
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %36

35:                                               ; preds = %31
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @chroma_format, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %37
  %44 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %45 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %44, i32 0, i32 9
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %45, i64 0, i64 0
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %49 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %48, i32 0, i32 11
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %49, i64 0, i64 0
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32* [ %46, %43 ], [ %50, %47 ]
  store i32* %52, i32** %12, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %259, %51
  %54 = call i32 @Show_Bits(i32 noundef 16)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp uge i32 %55, 16384
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = lshr i32 %61, 12
  %63 = sub i32 %62, 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabfirst, i64 0, i64 %64
  store %struct.DCTtab* %65, %struct.DCTtab** %10, align 8
  br label %72

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = lshr i32 %67, 12
  %69 = sub i32 %68, 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i64 0, i64 %70
  store %struct.DCTtab* %71, %struct.DCTtab** %10, align 8
  br label %72

72:                                               ; preds = %66, %60
  br label %148

73:                                               ; preds = %53
  %74 = load i32, i32* %9, align 4
  %75 = icmp uge i32 %74, 1024
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 8
  %79 = sub i32 %78, 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i64 0, i64 %80
  store %struct.DCTtab* %81, %struct.DCTtab** %10, align 8
  br label %147

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = icmp uge i32 %83, 512
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = lshr i32 %86, 6
  %88 = sub i32 %87, 8
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i64 0, i64 %89
  store %struct.DCTtab* %90, %struct.DCTtab** %10, align 8
  br label %146

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = icmp uge i32 %92, 256
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = lshr i32 %95, 4
  %97 = sub i32 %96, 16
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i64 0, i64 %98
  store %struct.DCTtab* %99, %struct.DCTtab** %10, align 8
  br label %145

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = icmp uge i32 %101, 128
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = lshr i32 %104, 3
  %106 = sub i32 %105, 16
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i64 0, i64 %107
  store %struct.DCTtab* %108, %struct.DCTtab** %10, align 8
  br label %144

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp uge i32 %110, 64
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = lshr i32 %113, 2
  %115 = sub i32 %114, 16
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i64 0, i64 %116
  store %struct.DCTtab* %117, %struct.DCTtab** %10, align 8
  br label %143

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  %120 = icmp uge i32 %119, 32
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = lshr i32 %122, 1
  %124 = sub i32 %123, 16
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i64 0, i64 %125
  store %struct.DCTtab* %126, %struct.DCTtab** %10, align 8
  br label %142

127:                                              ; preds = %118
  %128 = load i32, i32* %9, align 4
  %129 = icmp uge i32 %128, 16
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = sub i32 %131, 16
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i64 0, i64 %133
  store %struct.DCTtab* %134, %struct.DCTtab** %10, align 8
  br label %141

135:                                              ; preds = %127
  %136 = load i32, i32* @Quiet_Flag, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  store i32 1, i32* @Fault_Flag, align 4
  br label %262

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %121
  br label %143

143:                                              ; preds = %142, %112
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %144, %94
  br label %146

146:                                              ; preds = %145, %85
  br label %147

147:                                              ; preds = %146, %76
  br label %148

148:                                              ; preds = %147, %72
  %149 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %150 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %149, i32 0, i32 2
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  call void @Flush_Buffer(i32 noundef %152)
  %153 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %154 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %153, i32 0, i32 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 64
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %262

159:                                              ; preds = %148
  %160 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %161 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 65
  br i1 %164, label %165, label %187

165:                                              ; preds = %159
  %166 = call i32 @Get_Bits(i32 noundef 6)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %4, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %4, align 4
  %169 = call i32 @Get_Bits(i32 noundef 12)
  store i32 %169, i32* %3, align 4
  %170 = load i32, i32* %3, align 4
  %171 = and i32 %170, 2047
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %165
  %174 = load i32, i32* @Quiet_Flag, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %173
  store i32 1, i32* @Fault_Flag, align 4
  br label %262

179:                                              ; preds = %165
  %180 = load i32, i32* %3, align 4
  %181 = icmp sge i32 %180, 2048
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %6, align 4
  br i1 %181, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* %3, align 4
  %185 = sub nsw i32 4096, %184
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %183, %179
  br label %199

187:                                              ; preds = %159
  %188 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %189 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %188, i32 0, i32 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %4, align 4
  %194 = load %struct.DCTtab*, %struct.DCTtab** %10, align 8
  %195 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %194, i32 0, i32 1
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  store i32 %197, i32* %3, align 4
  %198 = call i32 @Get_Bits(i32 noundef 1)
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %187, %186
  %200 = load i32, i32* %4, align 4
  %201 = icmp sge i32 %200, 64
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load i32, i32* @Quiet_Flag, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %206, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %202
  store i32 1, i32* @Fault_Flag, align 4
  br label %262

209:                                              ; preds = %199
  %210 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %211 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %210, i32 0, i32 19
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i64 0, i64 %213
  %215 = load i32, i32* %4, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [64 x i8], [64 x i8]* %214, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %3, align 4
  %221 = shl i32 %220, 1
  %222 = add nsw i32 %221, 1
  %223 = load %struct.layer_data*, %struct.layer_data** %13, align 8
  %224 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %223, i32 0, i32 22
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 %222, %225
  %227 = load i32*, i32** %12, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %226, %231
  %233 = ashr i32 %232, 5
  store i32 %233, i32* %3, align 4
  %234 = load i32, i32* %6, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %209
  %237 = load i32, i32* %3, align 4
  %238 = sub nsw i32 0, %237
  br label %241

239:                                              ; preds = %209
  %240 = load i32, i32* %3, align 4
  br label %241

241:                                              ; preds = %239, %236
  %242 = phi i32 [ %238, %236 ], [ %240, %239 ]
  %243 = trunc i32 %242 to i16
  %244 = load i16*, i16** %11, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i16, i16* %244, i64 %246
  store i16 %243, i16* %247, align 2
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %258

252:                                              ; preds = %241
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4
  %255 = sub nsw i32 %254, 63
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8
  br label %258

258:                                              ; preds = %257, %252, %241
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %4, align 4
  br label %53

262:                                              ; preds = %208, %178, %158, %140
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
