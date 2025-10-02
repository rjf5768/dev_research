; ModuleID = './short_term.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/short_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }
%_wyvern_thunk_type.6 = type { i16* (%_wyvern_thunk_type.6*)*, i16*, i1 }
%_wyvern_thunk_type.4 = type { i16* (%_wyvern_thunk_type.4*)*, i16*, i1 }
%_wyvern_thunk_type.2 = type { i16* (%_wyvern_thunk_type.2*)*, i16*, i1 }
%_wyvern_thunk_type.0 = type { i16* (%_wyvern_thunk_type.0*)*, i16*, i1 }
%_wyvern_thunk_type.14 = type { i16* (%_wyvern_thunk_type.14*)*, i16*, i1 }
%_wyvern_thunk_type.12 = type { i16* (%_wyvern_thunk_type.12*)*, i16*, i1 }
%_wyvern_thunk_type.10 = type { i16* (%_wyvern_thunk_type.10*)*, i16*, i1 }
%_wyvern_thunk_type.8 = type { i16* (%_wyvern_thunk_type.8*)*, i16*, i1 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state* nocapture noundef %0, i16* nocapture noundef readonly %1, i16* nocapture noundef %2) #0 {
  %_wyvern_thunk_alloca7 = alloca %_wyvern_thunk_type.6, align 8
  %_wyvern_thunk_alloca4 = alloca %_wyvern_thunk_type.4, align 8
  %_wyvern_thunk_alloca1 = alloca %_wyvern_thunk_type.2, align 8
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %4 = alloca [8 x i16], align 16
  %5 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 6
  %6 = load i16, i16* %5, align 4
  %7 = sext i16 %6 to i64
  %8 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 5, i64 %7, i64 0
  %9 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 6
  %10 = xor i16 %6, 1
  store i16 %10, i16* %9, align 4
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 5, i64 %11, i64 0
  call void @Decoding_of_the_coded_Log_Area_Ratios(i16* noundef %1, i16* noundef nonnull %8)
  %13 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  call void @Coefficients_0_12(i16* noundef nonnull %12, i16* noundef nonnull %8, i16* noundef nonnull %13)
  %14 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef nonnull %14)
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_Gsm_Short_Term_Analysis_Filter_623650542, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_Short_term_analysis_filtering_1306296810(%struct.gsm_state* noundef %0, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef 13, i16* noundef %2)
  %15 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  call void @Coefficients_13_26(i16* noundef nonnull %12, i16* noundef nonnull %8, i16* noundef nonnull %15)
  %16 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef nonnull %16)
  %_wyvern_thunk_fptr_gep2 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_Gsm_Short_Term_Analysis_Filter_744443152, i16* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep2, align 8
  %_wyvern_thunk_flag_gep3 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep3, align 8
  %17 = getelementptr inbounds i16, i16* %2, i64 13
  call void @_wyvern_calleeclone_Short_term_analysis_filtering_131783542(%struct.gsm_state* noundef %0, %_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca1, i32 noundef 14, i16* noundef nonnull %17)
  %18 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  call void @Coefficients_27_39(i16* noundef nonnull %12, i16* noundef nonnull %8, i16* noundef nonnull %18)
  %19 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef nonnull %19)
  %_wyvern_thunk_fptr_gep5 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca4, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.4*)* @_wyvern_slice_memo_Gsm_Short_Term_Analysis_Filter_291618651, i16* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_gep5, align 8
  %_wyvern_thunk_flag_gep6 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca4, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep6, align 8
  %20 = getelementptr inbounds i16, i16* %2, i64 27
  call void @_wyvern_calleeclone_Short_term_analysis_filtering_1741246245(%struct.gsm_state* noundef %0, %_wyvern_thunk_type.4* noundef nonnull %_wyvern_thunk_alloca4, i32 noundef 13, i16* noundef nonnull %20)
  %21 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  call void @Coefficients_40_159(i16* noundef nonnull %8, i16* noundef nonnull %21)
  %22 = getelementptr inbounds [8 x i16], [8 x i16]* %4, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef nonnull %22)
  %_wyvern_thunk_fptr_gep8 = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca7, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.6*)* @_wyvern_slice_memo_Gsm_Short_Term_Analysis_Filter_270981769, i16* (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_gep8, align 8
  %_wyvern_thunk_flag_gep9 = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca7, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep9, align 8
  %23 = getelementptr inbounds i16, i16* %2, i64 40
  call void @_wyvern_calleeclone_Short_term_analysis_filtering_1532131301(%struct.gsm_state* noundef %0, %_wyvern_thunk_type.6* noundef nonnull %_wyvern_thunk_alloca7, i32 noundef 120, i16* noundef nonnull %23)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Decoding_of_the_coded_Log_Area_Ratios(i16* nocapture noundef readonly %0, i16* nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds i16, i16* %0, i64 1
  %4 = load i16, i16* %0, align 2
  %5 = sext i16 %4 to i64
  %6 = add nsw i64 %5, -32800
  %7 = icmp ult i64 %6, -65536
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = icmp sgt i16 %4, 32
  %10 = select i1 %9, i16 32767, i16 -32768
  br label %13

11:                                               ; preds = %2
  %12 = add i16 %4, -32
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i16 [ %10, %8 ], [ %12, %11 ]
  %15 = shl i16 %14, 10
  br i1 false, label %16, label %17

16:                                               ; preds = %13
  br label %23

17:                                               ; preds = %13
  %18 = icmp eq i16 %15, -32768
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %21

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i16 [ -32768, %19 ], [ %15, %20 ]
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i16 [ 32767, %16 ], [ %22, %21 ]
  %25 = sext i16 %24 to i64
  %26 = mul nsw i64 %25, 13107
  %27 = add nsw i64 %26, 16384
  %28 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %27, i32 noundef 15) #4
  %29 = trunc i32 %28 to i16
  %30 = sext i16 %29 to i64
  %31 = sext i16 %29 to i64
  %32 = add nsw i64 %30, %31
  %33 = add nsw i64 %32, -32768
  %34 = icmp ult i64 %33, -65536
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = icmp sgt i64 %32, 0
  %37 = select i1 %36, i64 32767, i64 -32768
  br label %39

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i64 [ %37, %35 ], [ %32, %38 ]
  %41 = trunc i64 %40 to i16
  %42 = getelementptr inbounds i16, i16* %1, i64 1
  store i16 %41, i16* %1, align 2
  %43 = getelementptr inbounds i16, i16* %0, i64 2
  %44 = load i16, i16* %3, align 2
  %45 = sext i16 %44 to i64
  %46 = add nsw i64 %45, -32800
  %47 = icmp ult i64 %46, -65536
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = icmp sgt i16 %44, 32
  %50 = select i1 %49, i16 32767, i16 -32768
  br label %53

51:                                               ; preds = %39
  %52 = add i16 %44, -32
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i16 [ %50, %48 ], [ %52, %51 ]
  %55 = shl i16 %54, 10
  br i1 false, label %56, label %57

56:                                               ; preds = %53
  br label %63

57:                                               ; preds = %53
  %58 = icmp eq i16 %55, -32768
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %61

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %59
  %62 = phi i16 [ -32768, %59 ], [ %55, %60 ]
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i16 [ 32767, %56 ], [ %62, %61 ]
  %65 = sext i16 %64 to i64
  %66 = mul nsw i64 %65, 13107
  %67 = add nsw i64 %66, 16384
  %68 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %67, i32 noundef 15) #4
  %69 = trunc i32 %68 to i16
  %70 = sext i16 %69 to i64
  %71 = sext i16 %69 to i64
  %72 = add nsw i64 %70, %71
  %73 = add nsw i64 %72, -32768
  %74 = icmp ult i64 %73, -65536
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = icmp sgt i64 %72, 0
  %77 = select i1 %76, i64 32767, i64 -32768
  br label %79

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i64 [ %77, %75 ], [ %72, %78 ]
  %81 = trunc i64 %80 to i16
  %82 = getelementptr inbounds i16, i16* %1, i64 2
  store i16 %81, i16* %42, align 2
  %83 = getelementptr inbounds i16, i16* %0, i64 3
  %84 = load i16, i16* %43, align 2
  %85 = sext i16 %84 to i64
  %86 = add nsw i64 %85, -32784
  %87 = icmp ult i64 %86, -65536
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = icmp sgt i16 %84, 16
  %90 = select i1 %89, i16 32767, i16 -32768
  br label %93

91:                                               ; preds = %79
  %92 = add i16 %84, -16
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i16 [ %90, %88 ], [ %92, %91 ]
  %95 = shl i16 %94, 10
  %96 = add i16 %95, -4096
  br i1 false, label %97, label %98

97:                                               ; preds = %93
  br label %104

98:                                               ; preds = %93
  %99 = icmp slt i16 %95, -28671
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  br label %102

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %100
  %103 = phi i16 [ -32768, %100 ], [ %96, %101 ]
  br label %104

104:                                              ; preds = %102, %97
  %105 = phi i16 [ 32767, %97 ], [ %103, %102 ]
  %106 = sext i16 %105 to i64
  %107 = mul nsw i64 %106, 13107
  %108 = add nsw i64 %107, 16384
  %109 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %108, i32 noundef 15) #4
  %110 = trunc i32 %109 to i16
  %111 = sext i16 %110 to i64
  %112 = sext i16 %110 to i64
  %113 = add nsw i64 %111, %112
  %114 = add nsw i64 %113, -32768
  %115 = icmp ult i64 %114, -65536
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = icmp sgt i64 %113, 0
  %118 = select i1 %117, i64 32767, i64 -32768
  br label %120

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i64 [ %118, %116 ], [ %113, %119 ]
  %122 = trunc i64 %121 to i16
  %123 = getelementptr inbounds i16, i16* %1, i64 3
  store i16 %122, i16* %82, align 2
  %124 = getelementptr inbounds i16, i16* %0, i64 4
  %125 = load i16, i16* %83, align 2
  %126 = sext i16 %125 to i64
  %127 = add nsw i64 %126, -32784
  %128 = icmp ult i64 %127, -65536
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = icmp sgt i16 %125, 16
  %131 = select i1 %130, i16 32767, i16 -32768
  br label %134

132:                                              ; preds = %120
  %133 = add i16 %125, -16
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i16 [ %131, %129 ], [ %133, %132 ]
  %136 = shl i16 %135, 10
  %137 = add i16 %136, 5120
  %138 = icmp sgt i16 %136, 27646
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %145

140:                                              ; preds = %134
  br i1 false, label %141, label %142

141:                                              ; preds = %140
  br label %143

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142, %141
  %144 = phi i16 [ -32768, %141 ], [ %137, %142 ]
  br label %145

145:                                              ; preds = %143, %139
  %146 = phi i16 [ 32767, %139 ], [ %144, %143 ]
  %147 = sext i16 %146 to i64
  %148 = mul nsw i64 %147, 13107
  %149 = add nsw i64 %148, 16384
  %150 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %149, i32 noundef 15) #4
  %151 = trunc i32 %150 to i16
  %152 = sext i16 %151 to i64
  %153 = sext i16 %151 to i64
  %154 = add nsw i64 %152, %153
  %155 = add nsw i64 %154, -32768
  %156 = icmp ult i64 %155, -65536
  br i1 %156, label %157, label %160

157:                                              ; preds = %145
  %158 = icmp sgt i64 %154, 0
  %159 = select i1 %158, i64 32767, i64 -32768
  br label %161

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %157
  %162 = phi i64 [ %159, %157 ], [ %154, %160 ]
  %163 = trunc i64 %162 to i16
  %164 = getelementptr inbounds i16, i16* %1, i64 4
  store i16 %163, i16* %123, align 2
  %165 = getelementptr inbounds i16, i16* %0, i64 5
  %166 = load i16, i16* %124, align 2
  %167 = sext i16 %166 to i64
  %168 = add nsw i64 %167, -32776
  %169 = icmp ult i64 %168, -65536
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = icmp sgt i16 %166, 8
  %172 = select i1 %171, i16 32767, i16 -32768
  br label %175

173:                                              ; preds = %161
  %174 = add i16 %166, -8
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi i16 [ %172, %170 ], [ %174, %173 ]
  %177 = shl i16 %176, 10
  %178 = add i16 %177, -188
  br i1 false, label %179, label %180

179:                                              ; preds = %175
  br label %186

180:                                              ; preds = %175
  %181 = icmp slt i16 %177, -32579
  br i1 %181, label %182, label %183

182:                                              ; preds = %180
  br label %184

183:                                              ; preds = %180
  br label %184

184:                                              ; preds = %183, %182
  %185 = phi i16 [ -32768, %182 ], [ %178, %183 ]
  br label %186

186:                                              ; preds = %184, %179
  %187 = phi i16 [ 32767, %179 ], [ %185, %184 ]
  %188 = sext i16 %187 to i64
  %189 = mul nsw i64 %188, 19223
  %190 = add nsw i64 %189, 16384
  %191 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %190, i32 noundef 15) #4
  %192 = trunc i32 %191 to i16
  %193 = sext i16 %192 to i64
  %194 = sext i16 %192 to i64
  %195 = add nsw i64 %193, %194
  %196 = add nsw i64 %195, -32768
  %197 = icmp ult i64 %196, -65536
  br i1 %197, label %198, label %201

198:                                              ; preds = %186
  %199 = icmp sgt i64 %195, 0
  %200 = select i1 %199, i64 32767, i64 -32768
  br label %202

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201, %198
  %203 = phi i64 [ %200, %198 ], [ %195, %201 ]
  %204 = trunc i64 %203 to i16
  %205 = getelementptr inbounds i16, i16* %1, i64 5
  store i16 %204, i16* %164, align 2
  %206 = getelementptr inbounds i16, i16* %0, i64 6
  %207 = load i16, i16* %165, align 2
  %208 = sext i16 %207 to i64
  %209 = add nsw i64 %208, -32776
  %210 = icmp ult i64 %209, -65536
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = icmp sgt i16 %207, 8
  %213 = select i1 %212, i16 32767, i16 -32768
  br label %216

214:                                              ; preds = %202
  %215 = add i16 %207, -8
  br label %216

216:                                              ; preds = %214, %211
  %217 = phi i16 [ %213, %211 ], [ %215, %214 ]
  %218 = shl i16 %217, 10
  %219 = add i16 %218, 3584
  %220 = icmp sgt i16 %218, 29182
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %227

222:                                              ; preds = %216
  br i1 false, label %223, label %224

223:                                              ; preds = %222
  br label %225

224:                                              ; preds = %222
  br label %225

225:                                              ; preds = %224, %223
  %226 = phi i16 [ -32768, %223 ], [ %219, %224 ]
  br label %227

227:                                              ; preds = %225, %221
  %228 = phi i16 [ 32767, %221 ], [ %226, %225 ]
  %229 = sext i16 %228 to i64
  %230 = mul nsw i64 %229, 17476
  %231 = add nsw i64 %230, 16384
  %232 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %231, i32 noundef 15) #4
  %233 = trunc i32 %232 to i16
  %234 = sext i16 %233 to i64
  %235 = sext i16 %233 to i64
  %236 = add nsw i64 %234, %235
  %237 = add nsw i64 %236, -32768
  %238 = icmp ult i64 %237, -65536
  br i1 %238, label %239, label %242

239:                                              ; preds = %227
  %240 = icmp sgt i64 %236, 0
  %241 = select i1 %240, i64 32767, i64 -32768
  br label %243

242:                                              ; preds = %227
  br label %243

243:                                              ; preds = %242, %239
  %244 = phi i64 [ %241, %239 ], [ %236, %242 ]
  %245 = trunc i64 %244 to i16
  %246 = getelementptr inbounds i16, i16* %1, i64 6
  store i16 %245, i16* %205, align 2
  %247 = getelementptr inbounds i16, i16* %0, i64 7
  %248 = load i16, i16* %206, align 2
  %249 = sext i16 %248 to i64
  %250 = add nsw i64 %249, -32772
  %251 = icmp ult i64 %250, -65536
  br i1 %251, label %252, label %255

252:                                              ; preds = %243
  %253 = icmp sgt i16 %248, 4
  %254 = select i1 %253, i16 32767, i16 -32768
  br label %257

255:                                              ; preds = %243
  %256 = add i16 %248, -4
  br label %257

257:                                              ; preds = %255, %252
  %258 = phi i16 [ %254, %252 ], [ %256, %255 ]
  %259 = shl i16 %258, 10
  %260 = or i16 %259, 682
  br i1 false, label %261, label %262

261:                                              ; preds = %257
  br label %267

262:                                              ; preds = %257
  br i1 false, label %263, label %264

263:                                              ; preds = %262
  br label %265

264:                                              ; preds = %262
  br label %265

265:                                              ; preds = %264, %263
  %266 = phi i16 [ -32768, %263 ], [ %260, %264 ]
  br label %267

267:                                              ; preds = %265, %261
  %268 = phi i16 [ 32767, %261 ], [ %266, %265 ]
  %269 = sext i16 %268 to i64
  %270 = mul nsw i64 %269, 31454
  %271 = add nsw i64 %270, 16384
  %272 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %271, i32 noundef 15) #4
  %273 = trunc i32 %272 to i16
  %274 = sext i16 %273 to i64
  %275 = sext i16 %273 to i64
  %276 = add nsw i64 %274, %275
  %277 = add nsw i64 %276, -32768
  %278 = icmp ult i64 %277, -65536
  br i1 %278, label %279, label %282

279:                                              ; preds = %267
  %280 = icmp sgt i64 %276, 0
  %281 = select i1 %280, i64 32767, i64 -32768
  br label %283

282:                                              ; preds = %267
  br label %283

283:                                              ; preds = %282, %279
  %284 = phi i64 [ %281, %279 ], [ %276, %282 ]
  %285 = trunc i64 %284 to i16
  store i16 %285, i16* %246, align 2
  %286 = load i16, i16* %247, align 2
  %287 = sext i16 %286 to i64
  %288 = add nsw i64 %287, -32772
  %289 = icmp ult i64 %288, -65536
  br i1 %289, label %290, label %293

290:                                              ; preds = %283
  %291 = icmp sgt i16 %286, 4
  %292 = select i1 %291, i16 32767, i16 -32768
  br label %295

293:                                              ; preds = %283
  %294 = add i16 %286, -4
  br label %295

295:                                              ; preds = %293, %290
  %296 = phi i16 [ %292, %290 ], [ %294, %293 ]
  %297 = shl i16 %296, 10
  %298 = add i16 %297, 2288
  %299 = icmp sgt i16 %297, 30478
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  br label %306

301:                                              ; preds = %295
  br i1 false, label %302, label %303

302:                                              ; preds = %301
  br label %304

303:                                              ; preds = %301
  br label %304

304:                                              ; preds = %303, %302
  %305 = phi i16 [ -32768, %302 ], [ %298, %303 ]
  br label %306

306:                                              ; preds = %304, %300
  %307 = phi i16 [ 32767, %300 ], [ %305, %304 ]
  %308 = sext i16 %307 to i64
  %309 = mul nsw i64 %308, 29708
  %310 = add nsw i64 %309, 16384
  %311 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %310, i32 noundef 15) #4
  %312 = trunc i32 %311 to i16
  %313 = sext i16 %312 to i64
  %314 = sext i16 %312 to i64
  %315 = add nsw i64 %313, %314
  %316 = add nsw i64 %315, -32768
  %317 = icmp ult i64 %316, -65536
  br i1 %317, label %318, label %321

318:                                              ; preds = %306
  %319 = icmp sgt i64 %315, 0
  %320 = select i1 %319, i64 32767, i64 -32768
  br label %322

321:                                              ; preds = %306
  br label %322

322:                                              ; preds = %321, %318
  %323 = phi i64 [ %320, %318 ], [ %315, %321 ]
  %324 = getelementptr inbounds i16, i16* %1, i64 7
  %325 = trunc i64 %323 to i16
  store i16 %325, i16* %324, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Coefficients_0_12(i16* nocapture noundef readonly %0, i16* nocapture noundef readonly %1, i16* nocapture noundef %2) #0 {
  br label %4

4:                                                ; preds = %40, %3
  %.03 = phi i32 [ 1, %3 ], [ %41, %40 ]
  %.02 = phi i16* [ %2, %3 ], [ %42, %40 ]
  %.01 = phi i16* [ %1, %3 ], [ %44, %40 ]
  %.0 = phi i16* [ %0, %3 ], [ %43, %40 ]
  %5 = icmp ult i32 %.03, 9
  br i1 %5, label %6, label %45

6:                                                ; preds = %4
  %7 = load i16, i16* %.0, align 2
  %8 = sext i16 %7 to i32
  %9 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %8, i32 noundef 2) #4
  %10 = sext i32 %9 to i64
  %11 = load i16, i16* %.01, align 2
  %12 = sext i16 %11 to i32
  %13 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef 2) #4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %10, %14
  %16 = add nsw i64 %15, -32768
  %17 = icmp ult i64 %16, -65536
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = icmp sgt i64 %15, 0
  %20 = select i1 %19, i64 32767, i64 -32768
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i64 [ %20, %18 ], [ %15, %21 ]
  %24 = trunc i64 %23 to i16
  store i16 %24, i16* %.02, align 2
  %sext = shl i64 %23, 48
  %25 = ashr exact i64 %sext, 48
  %26 = load i16, i16* %.0, align 2
  %27 = sext i16 %26 to i32
  %28 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %27, i32 noundef 1) #4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = add nsw i64 %30, -32768
  %32 = icmp ult i64 %31, -65536
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = icmp sgt i64 %30, 0
  %35 = select i1 %34, i64 32767, i64 -32768
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i64 [ %35, %33 ], [ %30, %36 ]
  %39 = trunc i64 %38 to i16
  store i16 %39, i16* %.02, align 2
  br label %40

40:                                               ; preds = %37
  %41 = add nuw nsw i32 %.03, 1
  %42 = getelementptr inbounds i16, i16* %.02, i64 1
  %43 = getelementptr inbounds i16, i16* %.0, i64 1
  %44 = getelementptr inbounds i16, i16* %.01, i64 1
  br label %4, !llvm.loop !4

45:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @LARp_to_rp(i16* nocapture noundef %0) #1 {
  br label %2

2:                                                ; preds = %51, %1
  %.01 = phi i32 [ 1, %1 ], [ %52, %51 ]
  %.0 = phi i16* [ %0, %1 ], [ %53, %51 ]
  %3 = icmp ult i32 %.01, 9
  br i1 %3, label %4, label %54

4:                                                ; preds = %2
  %5 = load i16, i16* %.0, align 2
  %6 = icmp slt i16 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = load i16, i16* %.0, align 2
  %9 = icmp eq i16 %8, -32768
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %14

11:                                               ; preds = %7
  %12 = load i16, i16* %.0, align 2
  %13 = sub i16 0, %12
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i16 [ 32767, %10 ], [ %13, %11 ]
  %16 = icmp slt i16 %15, 11059
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  %.neg = mul i16 %15, -2
  br label %28

18:                                               ; preds = %14
  %19 = icmp slt i16 %15, 20070
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  %.neg2 = sub i16 -11059, %15
  br label %27

21:                                               ; preds = %18
  %22 = icmp sgt i16 %15, 26623
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %26

24:                                               ; preds = %21
  %25 = ashr i16 %15, 2
  %.neg3 = sub i16 -26112, %25
  br label %26

26:                                               ; preds = %24, %23
  %.neg4 = phi i16 [ -32767, %23 ], [ %.neg3, %24 ]
  br label %27

27:                                               ; preds = %26, %20
  %.neg5 = phi i16 [ %.neg2, %20 ], [ %.neg4, %26 ]
  br label %28

28:                                               ; preds = %27, %17
  %.neg6 = phi i16 [ %.neg, %17 ], [ %.neg5, %27 ]
  br label %50

29:                                               ; preds = %4
  %30 = load i16, i16* %.0, align 2
  %31 = icmp slt i16 %30, 11059
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = shl i16 %30, 1
  br label %48

34:                                               ; preds = %29
  %35 = icmp slt i16 %30, 20070
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = add i16 %30, 11059
  br label %46

38:                                               ; preds = %34
  %39 = icmp sgt i16 %30, 26623
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %44

41:                                               ; preds = %38
  %42 = ashr i16 %30, 2
  %43 = add i16 %42, 26112
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i16 [ 32767, %40 ], [ %43, %41 ]
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi i16 [ %37, %36 ], [ %45, %44 ]
  br label %48

48:                                               ; preds = %46, %32
  %49 = phi i16 [ %33, %32 ], [ %47, %46 ]
  br label %50

50:                                               ; preds = %48, %28
  %storemerge.in = phi i16 [ %49, %48 ], [ %.neg6, %28 ]
  store i16 %storemerge.in, i16* %.0, align 2
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.01, 1
  %53 = getelementptr inbounds i16, i16* %.0, i64 1
  br label %2, !llvm.loop !6

54:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Short_term_analysis_filtering(%struct.gsm_state* nocapture noundef %0, i16* nocapture noundef readonly %1, i32 noundef %2, i16* nocapture noundef %3) #0 {
  br label %5

5:                                                ; preds = %59, %4
  %.02 = phi i16* [ %3, %4 ], [ %60, %59 ]
  %.01 = phi i32 [ %2, %4 ], [ %6, %59 ]
  %6 = add nsw i32 %.01, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %61, label %7

7:                                                ; preds = %5
  %8 = load i16, i16* %.02, align 2
  br label %9

9:                                                ; preds = %55, %7
  %.04 = phi i16 [ %8, %7 ], [ %56, %55 ]
  %.03 = phi i32 [ 0, %7 ], [ %57, %55 ]
  %.0 = phi i16 [ %8, %7 ], [ %37, %55 ]
  %10 = icmp ult i32 %.03, 8
  br i1 %10, label %11, label %58

11:                                               ; preds = %9
  %12 = zext i32 %.03 to i64
  %13 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = zext i32 %.03 to i64
  %16 = getelementptr inbounds i16, i16* %1, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i32 %.03 to i64
  %19 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %18
  store i16 %.0, i16* %19, align 2
  %20 = sext i16 %17 to i64
  %21 = sext i16 %.04 to i64
  %22 = mul nsw i64 %20, %21
  %23 = add nsw i64 %22, 16384
  %24 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %23, i32 noundef 15) #4
  %25 = zext i32 %24 to i64
  %26 = sext i16 %14 to i64
  %sext = shl i64 %25, 48
  %27 = ashr exact i64 %sext, 48
  %28 = add nsw i64 %27, %26
  %29 = add nsw i64 %28, -32768
  %30 = icmp ult i64 %29, -65536
  br i1 %30, label %31, label %34

31:                                               ; preds = %11
  %32 = icmp sgt i64 %28, 0
  %33 = select i1 %32, i64 32767, i64 -32768
  br label %35

34:                                               ; preds = %11
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i64 [ %33, %31 ], [ %28, %34 ]
  %37 = trunc i64 %36 to i16
  %38 = sext i16 %17 to i64
  %39 = sext i16 %14 to i64
  %40 = mul nsw i64 %38, %39
  %41 = add nsw i64 %40, 16384
  %42 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %41, i32 noundef 15) #4
  %43 = zext i32 %42 to i64
  %44 = sext i16 %.04 to i64
  %sext5 = shl i64 %43, 48
  %45 = ashr exact i64 %sext5, 48
  %46 = add nsw i64 %45, %44
  %47 = add nsw i64 %46, -32768
  %48 = icmp ult i64 %47, -65536
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = icmp sgt i64 %46, 0
  %51 = select i1 %50, i64 32767, i64 -32768
  br label %53

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i64 [ %51, %49 ], [ %46, %52 ]
  br label %55

55:                                               ; preds = %53
  %56 = trunc i64 %54 to i16
  %57 = add nuw nsw i32 %.03, 1
  br label %9, !llvm.loop !7

58:                                               ; preds = %9
  store i16 %.04, i16* %.02, align 2
  br label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds i16, i16* %.02, i64 1
  br label %5, !llvm.loop !8

61:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Coefficients_13_26(i16* nocapture noundef readonly %0, i16* nocapture noundef readonly %1, i16* nocapture noundef writeonly %2) #0 {
  br label %4

4:                                                ; preds = %25, %3
  %.03 = phi i32 [ 1, %3 ], [ %26, %25 ]
  %.02 = phi i16* [ %2, %3 ], [ %29, %25 ]
  %.01 = phi i16* [ %1, %3 ], [ %28, %25 ]
  %.0 = phi i16* [ %0, %3 ], [ %27, %25 ]
  %5 = icmp ult i32 %.03, 9
  br i1 %5, label %6, label %30

6:                                                ; preds = %4
  %7 = load i16, i16* %.0, align 2
  %8 = sext i16 %7 to i32
  %9 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %8, i32 noundef 1) #4
  %10 = sext i32 %9 to i64
  %11 = load i16, i16* %.01, align 2
  %12 = sext i16 %11 to i32
  %13 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef 1) #4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %10, %14
  %16 = add nsw i64 %15, -32768
  %17 = icmp ult i64 %16, -65536
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = icmp sgt i64 %15, 0
  %20 = select i1 %19, i64 32767, i64 -32768
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i64 [ %20, %18 ], [ %15, %21 ]
  %24 = trunc i64 %23 to i16
  store i16 %24, i16* %.02, align 2
  br label %25

25:                                               ; preds = %22
  %26 = add nuw nsw i32 %.03, 1
  %27 = getelementptr inbounds i16, i16* %.0, i64 1
  %28 = getelementptr inbounds i16, i16* %.01, i64 1
  %29 = getelementptr inbounds i16, i16* %.02, i64 1
  br label %4, !llvm.loop !9

30:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Coefficients_27_39(i16* nocapture noundef readonly %0, i16* nocapture noundef readonly %1, i16* nocapture noundef %2) #0 {
  br label %4

4:                                                ; preds = %40, %3
  %.03 = phi i32 [ 1, %3 ], [ %41, %40 ]
  %.02 = phi i16* [ %2, %3 ], [ %44, %40 ]
  %.01 = phi i16* [ %1, %3 ], [ %43, %40 ]
  %.0 = phi i16* [ %0, %3 ], [ %42, %40 ]
  %5 = icmp ult i32 %.03, 9
  br i1 %5, label %6, label %45

6:                                                ; preds = %4
  %7 = load i16, i16* %.0, align 2
  %8 = sext i16 %7 to i32
  %9 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %8, i32 noundef 2) #4
  %10 = sext i32 %9 to i64
  %11 = load i16, i16* %.01, align 2
  %12 = sext i16 %11 to i32
  %13 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef 2) #4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %10, %14
  %16 = add nsw i64 %15, -32768
  %17 = icmp ult i64 %16, -65536
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = icmp sgt i64 %15, 0
  %20 = select i1 %19, i64 32767, i64 -32768
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i64 [ %20, %18 ], [ %15, %21 ]
  %24 = trunc i64 %23 to i16
  store i16 %24, i16* %.02, align 2
  %sext = shl i64 %23, 48
  %25 = ashr exact i64 %sext, 48
  %26 = load i16, i16* %.01, align 2
  %27 = sext i16 %26 to i32
  %28 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %27, i32 noundef 1) #4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = add nsw i64 %30, -32768
  %32 = icmp ult i64 %31, -65536
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = icmp sgt i64 %30, 0
  %35 = select i1 %34, i64 32767, i64 -32768
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i64 [ %35, %33 ], [ %30, %36 ]
  %39 = trunc i64 %38 to i16
  store i16 %39, i16* %.02, align 2
  br label %40

40:                                               ; preds = %37
  %41 = add nuw nsw i32 %.03, 1
  %42 = getelementptr inbounds i16, i16* %.0, i64 1
  %43 = getelementptr inbounds i16, i16* %.01, i64 1
  %44 = getelementptr inbounds i16, i16* %.02, i64 1
  br label %4, !llvm.loop !10

45:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @Coefficients_40_159(i16* nocapture noundef readonly %0, i16* nocapture noundef writeonly %1) #1 {
  br label %3

3:                                                ; preds = %7, %2
  %.02 = phi i32 [ 1, %2 ], [ %8, %7 ]
  %.01 = phi i16* [ %1, %2 ], [ %9, %7 ]
  %.0 = phi i16* [ %0, %2 ], [ %10, %7 ]
  %4 = icmp ult i32 %.02, 9
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = load i16, i16* %.0, align 2
  store i16 %6, i16* %.01, align 2
  br label %7

7:                                                ; preds = %5
  %8 = add nuw nsw i32 %.02, 1
  %9 = getelementptr inbounds i16, i16* %.01, i64 1
  %10 = getelementptr inbounds i16, i16* %.0, i64 1
  br label %3, !llvm.loop !11

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state* nocapture noundef %0, i16* nocapture noundef readonly %1, i16* nocapture noundef readonly %2, i16* nocapture noundef writeonly %3) #0 {
  %_wyvern_thunk_alloca7 = alloca %_wyvern_thunk_type.14, align 8
  %_wyvern_thunk_alloca4 = alloca %_wyvern_thunk_type.12, align 8
  %_wyvern_thunk_alloca1 = alloca %_wyvern_thunk_type.10, align 8
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.8, align 8
  %5 = alloca [8 x i16], align 16
  %6 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 6
  %7 = load i16, i16* %6, align 4
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 5, i64 %8, i64 0
  %10 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 6
  %11 = xor i16 %7, 1
  store i16 %11, i16* %10, align 4
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 5, i64 %12, i64 0
  call void @Decoding_of_the_coded_Log_Area_Ratios(i16* noundef %1, i16* noundef nonnull %9)
  %14 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 0
  call void @Coefficients_0_12(i16* noundef nonnull %13, i16* noundef nonnull %9, i16* noundef nonnull %14)
  %15 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef nonnull %15)
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.8*)* @_wyvern_slice_memo_Gsm_Short_Term_Synthesis_Filter_399560928, i16* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_Short_term_synthesis_filtering_1960536880(%struct.gsm_state* noundef %0, %_wyvern_thunk_type.8* noundef nonnull %_wyvern_thunk_alloca, i32 noundef 13, i16* noundef %2, i16* noundef %3)
  %16 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 0
  call void @Coefficients_13_26(i16* noundef nonnull %13, i16* noundef nonnull %9, i16* noundef nonnull %16)
  %17 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef nonnull %17)
  %_wyvern_thunk_fptr_gep2 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca1, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.10*)* @_wyvern_slice_memo_Gsm_Short_Term_Synthesis_Filter_815728135, i16* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_gep2, align 8
  %_wyvern_thunk_flag_gep3 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca1, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep3, align 8
  %18 = getelementptr inbounds i16, i16* %2, i64 13
  %19 = getelementptr inbounds i16, i16* %3, i64 13
  call void @_wyvern_calleeclone_Short_term_synthesis_filtering_1663362229(%struct.gsm_state* noundef %0, %_wyvern_thunk_type.10* noundef nonnull %_wyvern_thunk_alloca1, i32 noundef 14, i16* noundef nonnull %18, i16* noundef nonnull %19)
  %20 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 0
  call void @Coefficients_27_39(i16* noundef nonnull %13, i16* noundef nonnull %9, i16* noundef nonnull %20)
  %21 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef nonnull %21)
  %_wyvern_thunk_fptr_gep5 = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunk_alloca4, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.12*)* @_wyvern_slice_memo_Gsm_Short_Term_Synthesis_Filter_391531969, i16* (%_wyvern_thunk_type.12*)** %_wyvern_thunk_fptr_gep5, align 8
  %_wyvern_thunk_flag_gep6 = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunk_alloca4, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep6, align 8
  %22 = getelementptr inbounds i16, i16* %2, i64 27
  %23 = getelementptr inbounds i16, i16* %3, i64 27
  call void @_wyvern_calleeclone_Short_term_synthesis_filtering_1118767180(%struct.gsm_state* noundef %0, %_wyvern_thunk_type.12* noundef nonnull %_wyvern_thunk_alloca4, i32 noundef 13, i16* noundef nonnull %22, i16* noundef nonnull %23)
  %24 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 0
  call void @Coefficients_40_159(i16* noundef nonnull %9, i16* noundef nonnull %24)
  %25 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef nonnull %25)
  %_wyvern_thunk_fptr_gep8 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca7, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.14*)* @_wyvern_slice_memo_Gsm_Short_Term_Synthesis_Filter_194791227, i16* (%_wyvern_thunk_type.14*)** %_wyvern_thunk_fptr_gep8, align 8
  %_wyvern_thunk_flag_gep9 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca7, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep9, align 8
  %26 = getelementptr inbounds i16, i16* %2, i64 40
  %27 = getelementptr inbounds i16, i16* %3, i64 40
  call void @_wyvern_calleeclone_Short_term_synthesis_filtering_1323940480(%struct.gsm_state* noundef %0, %_wyvern_thunk_type.14* noundef nonnull %_wyvern_thunk_alloca7, i32 noundef 120, i16* noundef nonnull %26, i16* noundef nonnull %27)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @Short_term_synthesis_filtering(%struct.gsm_state* nocapture noundef %0, i16* nocapture noundef readonly %1, i32 noundef %2, i16* nocapture noundef readonly %3, i16* nocapture noundef writeonly %4) #1 {
  %6 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 0
  br label %7

7:                                                ; preds = %78, %5
  %.02 = phi i16* [ %4, %5 ], [ %79, %78 ]
  %.01 = phi i16* [ %3, %5 ], [ %10, %78 ]
  %.0 = phi i32 [ %2, %5 ], [ %8, %78 ]
  %8 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %80, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds i16, i16* %.01, i64 1
  %11 = load i16, i16* %.01, align 2
  br label %12

12:                                               ; preds = %73, %9
  %.04 = phi i16 [ %11, %9 ], [ %47, %73 ]
  %.03 = phi i32 [ 8, %9 ], [ %13, %73 ]
  %13 = add nsw i32 %.03, -1
  %.not5 = icmp eq i32 %.03, 0
  br i1 %.not5, label %78, label %14

14:                                               ; preds = %12
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i16, i16* %1, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = icmp eq i16 %17, -32768
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = icmp eq i16 %20, -32768
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %32

25:                                               ; preds = %22, %14
  %26 = sext i16 %17 to i64
  %27 = sext i16 %20 to i64
  %28 = mul nsw i64 %26, %27
  %29 = add nsw i64 %28, 16384
  %30 = lshr i64 %29, 15
  %31 = and i64 %30, 65535
  br label %32

32:                                               ; preds = %25, %24
  %33 = phi i64 [ 32767, %24 ], [ %31, %25 ]
  %34 = sext i16 %.04 to i64
  %sext = shl nuw i64 %33, 48
  %35 = ashr exact i64 %sext, 48
  %36 = sub nsw i64 %34, %35
  %37 = icmp sgt i64 %36, 32766
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %45

39:                                               ; preds = %32
  %40 = icmp slt i64 %36, -32767
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  br label %43

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %41
  %44 = phi i64 [ -32768, %41 ], [ %36, %42 ]
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi i64 [ 32767, %38 ], [ %44, %43 ]
  %47 = trunc i64 %46 to i16
  %48 = icmp eq i16 %17, -32768
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = icmp eq i16 %47, -32768
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %59

52:                                               ; preds = %49, %45
  %53 = sext i16 %17 to i64
  %sext6 = shl i64 %46, 48
  %54 = ashr exact i64 %sext6, 48
  %55 = mul nsw i64 %54, %53
  %56 = add nsw i64 %55, 16384
  %57 = lshr i64 %56, 15
  %58 = and i64 %57, 65535
  br label %59

59:                                               ; preds = %52, %51
  %60 = phi i64 [ 32767, %51 ], [ %58, %52 ]
  %61 = sext i32 %13 to i64
  %62 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %61
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i64
  %sext7 = shl nuw i64 %60, 48
  %65 = ashr exact i64 %sext7, 48
  %66 = add nsw i64 %65, %64
  %67 = add nsw i64 %66, -32768
  %68 = icmp ult i64 %67, -65536
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = icmp sgt i64 %66, 0
  %71 = select i1 %70, i64 32767, i64 -32768
  br label %73

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i64 [ %71, %69 ], [ %66, %72 ]
  %75 = trunc i64 %74 to i16
  %76 = sext i32 %.03 to i64
  %77 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %76
  store i16 %75, i16* %77, align 2
  br label %12, !llvm.loop !12

78:                                               ; preds = %12
  store i16 %.04, i16* %6, align 2
  %79 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %.04, i16* %.02, align 2
  br label %7, !llvm.loop !13

80:                                               ; preds = %7
  ret void
}

declare dso_local i32 @SASR(...) #2

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_Short_Term_Analysis_Filter_623650542(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [8 x i16], align 16
  %1 = getelementptr inbounds [8 x i16], [8 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_Short_term_analysis_filtering_1306296810(%struct.gsm_state* nocapture noundef %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %1, i16* nocapture noundef %2) #0 {
  br label %4

4:                                                ; preds = %58, %3
  %.02 = phi i16* [ %2, %3 ], [ %59, %58 ]
  %.01 = phi i32 [ %1, %3 ], [ %5, %58 ]
  %5 = add nsw i32 %.01, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %60, label %6

6:                                                ; preds = %4
  %7 = load i16, i16* %.02, align 2
  br label %8

8:                                                ; preds = %54, %6
  %.04 = phi i16 [ %7, %6 ], [ %55, %54 ]
  %.03 = phi i32 [ 0, %6 ], [ %56, %54 ]
  %.0 = phi i16 [ %7, %6 ], [ %36, %54 ]
  %9 = icmp ult i32 %.03, 8
  br i1 %9, label %10, label %57

10:                                               ; preds = %8
  %11 = zext i32 %.03 to i64
  %12 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = zext i32 %.03 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.0*)*, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = zext i32 %.03 to i64
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %17
  store i16 %.0, i16* %18, align 2
  %19 = sext i16 %16 to i64
  %20 = sext i16 %.04 to i64
  %21 = mul nsw i64 %19, %20
  %22 = add nsw i64 %21, 16384
  %23 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %22, i32 noundef 15) #4
  %24 = zext i32 %23 to i64
  %25 = sext i16 %13 to i64
  %sext = shl i64 %24, 48
  %26 = ashr exact i64 %sext, 48
  %27 = add nsw i64 %26, %25
  %28 = add nsw i64 %27, -32768
  %29 = icmp ult i64 %28, -65536
  br i1 %29, label %30, label %33

30:                                               ; preds = %10
  %31 = icmp sgt i64 %27, 0
  %32 = select i1 %31, i64 32767, i64 -32768
  br label %34

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i64 [ %32, %30 ], [ %27, %33 ]
  %36 = trunc i64 %35 to i16
  %37 = sext i16 %16 to i64
  %38 = sext i16 %13 to i64
  %39 = mul nsw i64 %37, %38
  %40 = add nsw i64 %39, 16384
  %41 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %40, i32 noundef 15) #4
  %42 = zext i32 %41 to i64
  %43 = sext i16 %.04 to i64
  %sext1 = shl i64 %42, 48
  %44 = ashr exact i64 %sext1, 48
  %45 = add nsw i64 %44, %43
  %46 = add nsw i64 %45, -32768
  %47 = icmp ult i64 %46, -65536
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = icmp sgt i64 %45, 0
  %50 = select i1 %49, i64 32767, i64 -32768
  br label %52

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i64 [ %50, %48 ], [ %45, %51 ]
  br label %54

54:                                               ; preds = %52
  %55 = trunc i64 %53 to i16
  %56 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !7

57:                                               ; preds = %8
  store i16 %.04, i16* %.02, align 2
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds i16, i16* %.02, i64 1
  br label %4, !llvm.loop !8

60:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_Short_Term_Analysis_Filter_744443152(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [8 x i16], align 16
  %1 = getelementptr inbounds [8 x i16], [8 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_Short_term_analysis_filtering_131783542(%struct.gsm_state* nocapture noundef %0, %_wyvern_thunk_type.2* noundef %_wyvern_thunkptr, i32 noundef %1, i16* nocapture noundef %2) #0 {
  br label %4

4:                                                ; preds = %58, %3
  %.02 = phi i16* [ %2, %3 ], [ %59, %58 ]
  %.01 = phi i32 [ %1, %3 ], [ %5, %58 ]
  %5 = add nsw i32 %.01, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %60, label %6

6:                                                ; preds = %4
  %7 = load i16, i16* %.02, align 2
  br label %8

8:                                                ; preds = %54, %6
  %.04 = phi i16 [ %7, %6 ], [ %55, %54 ]
  %.03 = phi i32 [ 0, %6 ], [ %56, %54 ]
  %.0 = phi i16 [ %7, %6 ], [ %36, %54 ]
  %9 = icmp ult i32 %.03, 8
  br i1 %9, label %10, label %57

10:                                               ; preds = %8
  %11 = zext i32 %.03 to i64
  %12 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = zext i32 %.03 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.2*)*, i16* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = zext i32 %.03 to i64
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %17
  store i16 %.0, i16* %18, align 2
  %19 = sext i16 %16 to i64
  %20 = sext i16 %.04 to i64
  %21 = mul nsw i64 %19, %20
  %22 = add nsw i64 %21, 16384
  %23 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %22, i32 noundef 15) #4
  %24 = zext i32 %23 to i64
  %25 = sext i16 %13 to i64
  %sext = shl i64 %24, 48
  %26 = ashr exact i64 %sext, 48
  %27 = add nsw i64 %26, %25
  %28 = add nsw i64 %27, -32768
  %29 = icmp ult i64 %28, -65536
  br i1 %29, label %30, label %33

30:                                               ; preds = %10
  %31 = icmp sgt i64 %27, 0
  %32 = select i1 %31, i64 32767, i64 -32768
  br label %34

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i64 [ %32, %30 ], [ %27, %33 ]
  %36 = trunc i64 %35 to i16
  %37 = sext i16 %16 to i64
  %38 = sext i16 %13 to i64
  %39 = mul nsw i64 %37, %38
  %40 = add nsw i64 %39, 16384
  %41 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %40, i32 noundef 15) #4
  %42 = zext i32 %41 to i64
  %43 = sext i16 %.04 to i64
  %sext1 = shl i64 %42, 48
  %44 = ashr exact i64 %sext1, 48
  %45 = add nsw i64 %44, %43
  %46 = add nsw i64 %45, -32768
  %47 = icmp ult i64 %46, -65536
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = icmp sgt i64 %45, 0
  %50 = select i1 %49, i64 32767, i64 -32768
  br label %52

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i64 [ %50, %48 ], [ %45, %51 ]
  br label %54

54:                                               ; preds = %52
  %55 = trunc i64 %53 to i16
  %56 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !7

57:                                               ; preds = %8
  store i16 %.04, i16* %.02, align 2
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds i16, i16* %.02, i64 1
  br label %4, !llvm.loop !8

60:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_Short_Term_Analysis_Filter_291618651(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [8 x i16], align 16
  %1 = getelementptr inbounds [8 x i16], [8 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_Short_term_analysis_filtering_1741246245(%struct.gsm_state* nocapture noundef %0, %_wyvern_thunk_type.4* noundef %_wyvern_thunkptr, i32 noundef %1, i16* nocapture noundef %2) #0 {
  br label %4

4:                                                ; preds = %58, %3
  %.02 = phi i16* [ %2, %3 ], [ %59, %58 ]
  %.01 = phi i32 [ %1, %3 ], [ %5, %58 ]
  %5 = add nsw i32 %.01, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %60, label %6

6:                                                ; preds = %4
  %7 = load i16, i16* %.02, align 2
  br label %8

8:                                                ; preds = %54, %6
  %.04 = phi i16 [ %7, %6 ], [ %55, %54 ]
  %.03 = phi i32 [ 0, %6 ], [ %56, %54 ]
  %.0 = phi i16 [ %7, %6 ], [ %36, %54 ]
  %9 = icmp ult i32 %.03, 8
  br i1 %9, label %10, label %57

10:                                               ; preds = %8
  %11 = zext i32 %.03 to i64
  %12 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = zext i32 %.03 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.4*)*, i16* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = zext i32 %.03 to i64
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %17
  store i16 %.0, i16* %18, align 2
  %19 = sext i16 %16 to i64
  %20 = sext i16 %.04 to i64
  %21 = mul nsw i64 %19, %20
  %22 = add nsw i64 %21, 16384
  %23 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %22, i32 noundef 15) #4
  %24 = zext i32 %23 to i64
  %25 = sext i16 %13 to i64
  %sext = shl i64 %24, 48
  %26 = ashr exact i64 %sext, 48
  %27 = add nsw i64 %26, %25
  %28 = add nsw i64 %27, -32768
  %29 = icmp ult i64 %28, -65536
  br i1 %29, label %30, label %33

30:                                               ; preds = %10
  %31 = icmp sgt i64 %27, 0
  %32 = select i1 %31, i64 32767, i64 -32768
  br label %34

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i64 [ %32, %30 ], [ %27, %33 ]
  %36 = trunc i64 %35 to i16
  %37 = sext i16 %16 to i64
  %38 = sext i16 %13 to i64
  %39 = mul nsw i64 %37, %38
  %40 = add nsw i64 %39, 16384
  %41 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %40, i32 noundef 15) #4
  %42 = zext i32 %41 to i64
  %43 = sext i16 %.04 to i64
  %sext1 = shl i64 %42, 48
  %44 = ashr exact i64 %sext1, 48
  %45 = add nsw i64 %44, %43
  %46 = add nsw i64 %45, -32768
  %47 = icmp ult i64 %46, -65536
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = icmp sgt i64 %45, 0
  %50 = select i1 %49, i64 32767, i64 -32768
  br label %52

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i64 [ %50, %48 ], [ %45, %51 ]
  br label %54

54:                                               ; preds = %52
  %55 = trunc i64 %53 to i16
  %56 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !7

57:                                               ; preds = %8
  store i16 %.04, i16* %.02, align 2
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds i16, i16* %.02, i64 1
  br label %4, !llvm.loop !8

60:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_Short_Term_Analysis_Filter_270981769(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [8 x i16], align 16
  %1 = getelementptr inbounds [8 x i16], [8 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_Short_term_analysis_filtering_1532131301(%struct.gsm_state* nocapture noundef %0, %_wyvern_thunk_type.6* noundef %_wyvern_thunkptr, i32 noundef %1, i16* nocapture noundef %2) #0 {
  br label %4

4:                                                ; preds = %58, %3
  %.02 = phi i16* [ %2, %3 ], [ %59, %58 ]
  %.01 = phi i32 [ %1, %3 ], [ %5, %58 ]
  %5 = add nsw i32 %.01, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %60, label %6

6:                                                ; preds = %4
  %7 = load i16, i16* %.02, align 2
  br label %8

8:                                                ; preds = %54, %6
  %.04 = phi i16 [ %7, %6 ], [ %55, %54 ]
  %.03 = phi i32 [ 0, %6 ], [ %56, %54 ]
  %.0 = phi i16 [ %7, %6 ], [ %36, %54 ]
  %9 = icmp ult i32 %.03, 8
  br i1 %9, label %10, label %57

10:                                               ; preds = %8
  %11 = zext i32 %.03 to i64
  %12 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = zext i32 %.03 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.6*)*, i16* (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = zext i32 %.03 to i64
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 4, i64 %17
  store i16 %.0, i16* %18, align 2
  %19 = sext i16 %16 to i64
  %20 = sext i16 %.04 to i64
  %21 = mul nsw i64 %19, %20
  %22 = add nsw i64 %21, 16384
  %23 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %22, i32 noundef 15) #4
  %24 = zext i32 %23 to i64
  %25 = sext i16 %13 to i64
  %sext = shl i64 %24, 48
  %26 = ashr exact i64 %sext, 48
  %27 = add nsw i64 %26, %25
  %28 = add nsw i64 %27, -32768
  %29 = icmp ult i64 %28, -65536
  br i1 %29, label %30, label %33

30:                                               ; preds = %10
  %31 = icmp sgt i64 %27, 0
  %32 = select i1 %31, i64 32767, i64 -32768
  br label %34

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i64 [ %32, %30 ], [ %27, %33 ]
  %36 = trunc i64 %35 to i16
  %37 = sext i16 %16 to i64
  %38 = sext i16 %13 to i64
  %39 = mul nsw i64 %37, %38
  %40 = add nsw i64 %39, 16384
  %41 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %40, i32 noundef 15) #4
  %42 = zext i32 %41 to i64
  %43 = sext i16 %.04 to i64
  %sext1 = shl i64 %42, 48
  %44 = ashr exact i64 %sext1, 48
  %45 = add nsw i64 %44, %43
  %46 = add nsw i64 %45, -32768
  %47 = icmp ult i64 %46, -65536
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = icmp sgt i64 %45, 0
  %50 = select i1 %49, i64 32767, i64 -32768
  br label %52

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i64 [ %50, %48 ], [ %45, %51 ]
  br label %54

54:                                               ; preds = %52
  %55 = trunc i64 %53 to i16
  %56 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !7

57:                                               ; preds = %8
  store i16 %.04, i16* %.02, align 2
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds i16, i16* %.02, i64 1
  br label %4, !llvm.loop !8

60:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_Short_Term_Synthesis_Filter_399560928(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [8 x i16], align 16
  %1 = getelementptr inbounds [8 x i16], [8 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_Short_term_synthesis_filtering_1960536880(%struct.gsm_state* nocapture noundef %0, %_wyvern_thunk_type.8* noundef %_wyvern_thunkptr, i32 noundef %1, i16* nocapture noundef readonly %2, i16* nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 0
  br label %6

6:                                                ; preds = %77, %4
  %.02 = phi i16* [ %3, %4 ], [ %78, %77 ]
  %.01 = phi i16* [ %2, %4 ], [ %9, %77 ]
  %.0 = phi i32 [ %1, %4 ], [ %7, %77 ]
  %7 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %79, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i16, i16* %.01, i64 1
  %10 = load i16, i16* %.01, align 2
  br label %11

11:                                               ; preds = %72, %8
  %.04 = phi i16 [ %10, %8 ], [ %46, %72 ]
  %.03 = phi i32 [ 8, %8 ], [ %12, %72 ]
  %12 = add nsw i32 %.03, -1
  %.not1 = icmp eq i32 %.03, 0
  br i1 %.not1, label %77, label %13

13:                                               ; preds = %11
  %14 = sext i32 %12 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.8*)*, i16* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = icmp eq i16 %16, -32768
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = icmp eq i16 %19, -32768
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %31

24:                                               ; preds = %21, %13
  %25 = sext i16 %16 to i64
  %26 = sext i16 %19 to i64
  %27 = mul nsw i64 %25, %26
  %28 = add nsw i64 %27, 16384
  %29 = lshr i64 %28, 15
  %30 = and i64 %29, 65535
  br label %31

31:                                               ; preds = %24, %23
  %32 = phi i64 [ 32767, %23 ], [ %30, %24 ]
  %33 = sext i16 %.04 to i64
  %sext = shl nuw i64 %32, 48
  %34 = ashr exact i64 %sext, 48
  %35 = sub nsw i64 %33, %34
  %36 = icmp sgt i64 %35, 32766
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %44

38:                                               ; preds = %31
  %39 = icmp slt i64 %35, -32767
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %42

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi i64 [ -32768, %40 ], [ %35, %41 ]
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i64 [ 32767, %37 ], [ %43, %42 ]
  %46 = trunc i64 %45 to i16
  %47 = icmp eq i16 %16, -32768
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = icmp eq i16 %46, -32768
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %58

51:                                               ; preds = %48, %44
  %52 = sext i16 %16 to i64
  %sext2 = shl i64 %45, 48
  %53 = ashr exact i64 %sext2, 48
  %54 = mul nsw i64 %53, %52
  %55 = add nsw i64 %54, 16384
  %56 = lshr i64 %55, 15
  %57 = and i64 %56, 65535
  br label %58

58:                                               ; preds = %51, %50
  %59 = phi i64 [ 32767, %50 ], [ %57, %51 ]
  %60 = sext i32 %12 to i64
  %61 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i64
  %sext3 = shl nuw i64 %59, 48
  %64 = ashr exact i64 %sext3, 48
  %65 = add nsw i64 %64, %63
  %66 = add nsw i64 %65, -32768
  %67 = icmp ult i64 %66, -65536
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = icmp sgt i64 %65, 0
  %70 = select i1 %69, i64 32767, i64 -32768
  br label %72

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i64 [ %70, %68 ], [ %65, %71 ]
  %74 = trunc i64 %73 to i16
  %75 = sext i32 %.03 to i64
  %76 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %75
  store i16 %74, i16* %76, align 2
  br label %11, !llvm.loop !12

77:                                               ; preds = %11
  store i16 %.04, i16* %5, align 2
  %78 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %.04, i16* %.02, align 2
  br label %6, !llvm.loop !13

79:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_Short_Term_Synthesis_Filter_815728135(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [8 x i16], align 16
  %1 = getelementptr inbounds [8 x i16], [8 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_Short_term_synthesis_filtering_1663362229(%struct.gsm_state* nocapture noundef %0, %_wyvern_thunk_type.10* noundef %_wyvern_thunkptr, i32 noundef %1, i16* nocapture noundef readonly %2, i16* nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 0
  br label %6

6:                                                ; preds = %77, %4
  %.02 = phi i16* [ %3, %4 ], [ %78, %77 ]
  %.01 = phi i16* [ %2, %4 ], [ %9, %77 ]
  %.0 = phi i32 [ %1, %4 ], [ %7, %77 ]
  %7 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %79, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i16, i16* %.01, i64 1
  %10 = load i16, i16* %.01, align 2
  br label %11

11:                                               ; preds = %72, %8
  %.04 = phi i16 [ %10, %8 ], [ %46, %72 ]
  %.03 = phi i32 [ 8, %8 ], [ %12, %72 ]
  %12 = add nsw i32 %.03, -1
  %.not1 = icmp eq i32 %.03, 0
  br i1 %.not1, label %77, label %13

13:                                               ; preds = %11
  %14 = sext i32 %12 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.10*)*, i16* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = icmp eq i16 %16, -32768
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = icmp eq i16 %19, -32768
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %31

24:                                               ; preds = %21, %13
  %25 = sext i16 %16 to i64
  %26 = sext i16 %19 to i64
  %27 = mul nsw i64 %25, %26
  %28 = add nsw i64 %27, 16384
  %29 = lshr i64 %28, 15
  %30 = and i64 %29, 65535
  br label %31

31:                                               ; preds = %24, %23
  %32 = phi i64 [ 32767, %23 ], [ %30, %24 ]
  %33 = sext i16 %.04 to i64
  %sext = shl nuw i64 %32, 48
  %34 = ashr exact i64 %sext, 48
  %35 = sub nsw i64 %33, %34
  %36 = icmp sgt i64 %35, 32766
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %44

38:                                               ; preds = %31
  %39 = icmp slt i64 %35, -32767
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %42

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi i64 [ -32768, %40 ], [ %35, %41 ]
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i64 [ 32767, %37 ], [ %43, %42 ]
  %46 = trunc i64 %45 to i16
  %47 = icmp eq i16 %16, -32768
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = icmp eq i16 %46, -32768
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %58

51:                                               ; preds = %48, %44
  %52 = sext i16 %16 to i64
  %sext2 = shl i64 %45, 48
  %53 = ashr exact i64 %sext2, 48
  %54 = mul nsw i64 %53, %52
  %55 = add nsw i64 %54, 16384
  %56 = lshr i64 %55, 15
  %57 = and i64 %56, 65535
  br label %58

58:                                               ; preds = %51, %50
  %59 = phi i64 [ 32767, %50 ], [ %57, %51 ]
  %60 = sext i32 %12 to i64
  %61 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i64
  %sext3 = shl nuw i64 %59, 48
  %64 = ashr exact i64 %sext3, 48
  %65 = add nsw i64 %64, %63
  %66 = add nsw i64 %65, -32768
  %67 = icmp ult i64 %66, -65536
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = icmp sgt i64 %65, 0
  %70 = select i1 %69, i64 32767, i64 -32768
  br label %72

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i64 [ %70, %68 ], [ %65, %71 ]
  %74 = trunc i64 %73 to i16
  %75 = sext i32 %.03 to i64
  %76 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %75
  store i16 %74, i16* %76, align 2
  br label %11, !llvm.loop !12

77:                                               ; preds = %11
  store i16 %.04, i16* %5, align 2
  %78 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %.04, i16* %.02, align 2
  br label %6, !llvm.loop !13

79:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_Short_Term_Synthesis_Filter_391531969(%_wyvern_thunk_type.12* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [8 x i16], align 16
  %1 = getelementptr inbounds [8 x i16], [8 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_Short_term_synthesis_filtering_1118767180(%struct.gsm_state* nocapture noundef %0, %_wyvern_thunk_type.12* noundef %_wyvern_thunkptr, i32 noundef %1, i16* nocapture noundef readonly %2, i16* nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 0
  br label %6

6:                                                ; preds = %77, %4
  %.02 = phi i16* [ %3, %4 ], [ %78, %77 ]
  %.01 = phi i16* [ %2, %4 ], [ %9, %77 ]
  %.0 = phi i32 [ %1, %4 ], [ %7, %77 ]
  %7 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %79, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i16, i16* %.01, i64 1
  %10 = load i16, i16* %.01, align 2
  br label %11

11:                                               ; preds = %72, %8
  %.04 = phi i16 [ %10, %8 ], [ %46, %72 ]
  %.03 = phi i32 [ 8, %8 ], [ %12, %72 ]
  %12 = add nsw i32 %.03, -1
  %.not1 = icmp eq i32 %.03, 0
  br i1 %.not1, label %77, label %13

13:                                               ; preds = %11
  %14 = sext i32 %12 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.12*)*, i16* (%_wyvern_thunk_type.12*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.12* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = icmp eq i16 %16, -32768
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = icmp eq i16 %19, -32768
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %31

24:                                               ; preds = %21, %13
  %25 = sext i16 %16 to i64
  %26 = sext i16 %19 to i64
  %27 = mul nsw i64 %25, %26
  %28 = add nsw i64 %27, 16384
  %29 = lshr i64 %28, 15
  %30 = and i64 %29, 65535
  br label %31

31:                                               ; preds = %24, %23
  %32 = phi i64 [ 32767, %23 ], [ %30, %24 ]
  %33 = sext i16 %.04 to i64
  %sext = shl nuw i64 %32, 48
  %34 = ashr exact i64 %sext, 48
  %35 = sub nsw i64 %33, %34
  %36 = icmp sgt i64 %35, 32766
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %44

38:                                               ; preds = %31
  %39 = icmp slt i64 %35, -32767
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %42

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi i64 [ -32768, %40 ], [ %35, %41 ]
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i64 [ 32767, %37 ], [ %43, %42 ]
  %46 = trunc i64 %45 to i16
  %47 = icmp eq i16 %16, -32768
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = icmp eq i16 %46, -32768
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %58

51:                                               ; preds = %48, %44
  %52 = sext i16 %16 to i64
  %sext2 = shl i64 %45, 48
  %53 = ashr exact i64 %sext2, 48
  %54 = mul nsw i64 %53, %52
  %55 = add nsw i64 %54, 16384
  %56 = lshr i64 %55, 15
  %57 = and i64 %56, 65535
  br label %58

58:                                               ; preds = %51, %50
  %59 = phi i64 [ 32767, %50 ], [ %57, %51 ]
  %60 = sext i32 %12 to i64
  %61 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i64
  %sext3 = shl nuw i64 %59, 48
  %64 = ashr exact i64 %sext3, 48
  %65 = add nsw i64 %64, %63
  %66 = add nsw i64 %65, -32768
  %67 = icmp ult i64 %66, -65536
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = icmp sgt i64 %65, 0
  %70 = select i1 %69, i64 32767, i64 -32768
  br label %72

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i64 [ %70, %68 ], [ %65, %71 ]
  %74 = trunc i64 %73 to i16
  %75 = sext i32 %.03 to i64
  %76 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %75
  store i16 %74, i16* %76, align 2
  br label %11, !llvm.loop !12

77:                                               ; preds = %11
  store i16 %.04, i16* %5, align 2
  %78 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %.04, i16* %.02, align 2
  br label %6, !llvm.loop !13

79:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_Short_Term_Synthesis_Filter_194791227(%_wyvern_thunk_type.14* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [8 x i16], align 16
  %1 = getelementptr inbounds [8 x i16], [8 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_Short_term_synthesis_filtering_1323940480(%struct.gsm_state* nocapture noundef %0, %_wyvern_thunk_type.14* noundef %_wyvern_thunkptr, i32 noundef %1, i16* nocapture noundef readonly %2, i16* nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 0
  br label %6

6:                                                ; preds = %77, %4
  %.02 = phi i16* [ %3, %4 ], [ %78, %77 ]
  %.01 = phi i16* [ %2, %4 ], [ %9, %77 ]
  %.0 = phi i32 [ %1, %4 ], [ %7, %77 ]
  %7 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %79, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds i16, i16* %.01, i64 1
  %10 = load i16, i16* %.01, align 2
  br label %11

11:                                               ; preds = %72, %8
  %.04 = phi i16 [ %10, %8 ], [ %46, %72 ]
  %.03 = phi i32 [ 8, %8 ], [ %12, %72 ]
  %12 = add nsw i32 %.03, -1
  %.not1 = icmp eq i32 %.03, 0
  br i1 %.not1, label %77, label %13

13:                                               ; preds = %11
  %14 = sext i32 %12 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.14*)*, i16* (%_wyvern_thunk_type.14*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.14* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = icmp eq i16 %16, -32768
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = icmp eq i16 %19, -32768
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %31

24:                                               ; preds = %21, %13
  %25 = sext i16 %16 to i64
  %26 = sext i16 %19 to i64
  %27 = mul nsw i64 %25, %26
  %28 = add nsw i64 %27, 16384
  %29 = lshr i64 %28, 15
  %30 = and i64 %29, 65535
  br label %31

31:                                               ; preds = %24, %23
  %32 = phi i64 [ 32767, %23 ], [ %30, %24 ]
  %33 = sext i16 %.04 to i64
  %sext = shl nuw i64 %32, 48
  %34 = ashr exact i64 %sext, 48
  %35 = sub nsw i64 %33, %34
  %36 = icmp sgt i64 %35, 32766
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %44

38:                                               ; preds = %31
  %39 = icmp slt i64 %35, -32767
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %42

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi i64 [ -32768, %40 ], [ %35, %41 ]
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i64 [ 32767, %37 ], [ %43, %42 ]
  %46 = trunc i64 %45 to i16
  %47 = icmp eq i16 %16, -32768
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = icmp eq i16 %46, -32768
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %58

51:                                               ; preds = %48, %44
  %52 = sext i16 %16 to i64
  %sext2 = shl i64 %45, 48
  %53 = ashr exact i64 %sext2, 48
  %54 = mul nsw i64 %53, %52
  %55 = add nsw i64 %54, 16384
  %56 = lshr i64 %55, 15
  %57 = and i64 %56, 65535
  br label %58

58:                                               ; preds = %51, %50
  %59 = phi i64 [ 32767, %50 ], [ %57, %51 ]
  %60 = sext i32 %12 to i64
  %61 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i64
  %sext3 = shl nuw i64 %59, 48
  %64 = ashr exact i64 %sext3, 48
  %65 = add nsw i64 %64, %63
  %66 = add nsw i64 %65, -32768
  %67 = icmp ult i64 %66, -65536
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = icmp sgt i64 %65, 0
  %70 = select i1 %69, i64 32767, i64 -32768
  br label %72

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i64 [ %70, %68 ], [ %65, %71 ]
  %74 = trunc i64 %73 to i16
  %75 = sext i32 %.03 to i64
  %76 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 8, i64 %75
  store i16 %74, i16* %76, align 2
  br label %11, !llvm.loop !12

77:                                               ; preds = %11
  store i16 %.04, i16* %5, align 2
  %78 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %.04, i16* %.02, align 2
  br label %6, !llvm.loop !13

79:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }

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
