; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/short_term.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/short_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca %struct.gsm_state*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca [8 x i16], align 16
  store %struct.gsm_state* %0, %struct.gsm_state** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  %10 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %11 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %10, i32 0, i32 5
  %12 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %13 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %12, i32 0, i32 6
  %14 = load i16, i16* %13, align 4
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds [2 x [8 x i16]], [2 x [8 x i16]]* %11, i64 0, i64 %15
  %17 = getelementptr inbounds [8 x i16], [8 x i16]* %16, i64 0, i64 0
  store i16* %17, i16** %7, align 8
  %18 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %19 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %18, i32 0, i32 5
  %20 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %21 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %20, i32 0, i32 6
  %22 = load i16, i16* %21, align 4
  %23 = sext i16 %22 to i32
  %24 = xor i32 %23, 1
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %21, align 4
  %26 = sext i16 %25 to i64
  %27 = getelementptr inbounds [2 x [8 x i16]], [2 x [8 x i16]]* %19, i64 0, i64 %26
  %28 = getelementptr inbounds [8 x i16], [8 x i16]* %27, i64 0, i64 0
  store i16* %28, i16** %8, align 8
  %29 = load i16*, i16** %5, align 8
  %30 = load i16*, i16** %7, align 8
  call void @Decoding_of_the_coded_Log_Area_Ratios(i16* noundef %29, i16* noundef %30)
  %31 = load i16*, i16** %8, align 8
  %32 = load i16*, i16** %7, align 8
  %33 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  call void @Coefficients_0_12(i16* noundef %31, i16* noundef %32, i16* noundef %33)
  %34 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef %34)
  %35 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %36 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  %37 = load i16*, i16** %6, align 8
  call void @Short_term_analysis_filtering(%struct.gsm_state* noundef %35, i16* noundef %36, i32 noundef 13, i16* noundef %37)
  %38 = load i16*, i16** %8, align 8
  %39 = load i16*, i16** %7, align 8
  %40 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  call void @Coefficients_13_26(i16* noundef %38, i16* noundef %39, i16* noundef %40)
  %41 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef %41)
  %42 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %43 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  %44 = load i16*, i16** %6, align 8
  %45 = getelementptr inbounds i16, i16* %44, i64 13
  call void @Short_term_analysis_filtering(%struct.gsm_state* noundef %42, i16* noundef %43, i32 noundef 14, i16* noundef %45)
  %46 = load i16*, i16** %8, align 8
  %47 = load i16*, i16** %7, align 8
  %48 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  call void @Coefficients_27_39(i16* noundef %46, i16* noundef %47, i16* noundef %48)
  %49 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef %49)
  %50 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %51 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  %52 = load i16*, i16** %6, align 8
  %53 = getelementptr inbounds i16, i16* %52, i64 27
  call void @Short_term_analysis_filtering(%struct.gsm_state* noundef %50, i16* noundef %51, i32 noundef 13, i16* noundef %53)
  %54 = load i16*, i16** %7, align 8
  %55 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  call void @Coefficients_40_159(i16* noundef %54, i16* noundef %55)
  %56 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef %56)
  %57 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %58 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 0
  %59 = load i16*, i16** %6, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 40
  call void @Short_term_analysis_filtering(%struct.gsm_state* noundef %57, i16* noundef %58, i32 noundef 120, i16* noundef %60)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Decoding_of_the_coded_Log_Area_Ratios(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %7 = load i16*, i16** %3, align 8
  %8 = getelementptr inbounds i16, i16* %7, i32 1
  store i16* %8, i16** %3, align 8
  %9 = load i16, i16* %7, align 2
  %10 = sext i16 %9 to i64
  %11 = add nsw i64 %10, -32
  store i64 %11, i64* %6, align 8
  %12 = sub nsw i64 %11, -32768
  %13 = icmp ugt i64 %12, 65535
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 32767, i32 -32768
  %19 = sext i32 %18 to i64
  br label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i64 [ %19, %14 ], [ %21, %20 ]
  %24 = shl i64 %23, 10
  %25 = trunc i64 %24 to i16
  store i16 %25, i16* %5, align 2
  %26 = load i16, i16* %5, align 2
  %27 = sext i16 %26 to i64
  %28 = sub nsw i64 %27, 0
  store i64 %28, i64* %6, align 8
  %29 = icmp sge i64 %28, 32767
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %39

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = icmp sle i64 %32, -32768
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %37

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i64 [ -32768, %34 ], [ %36, %35 ]
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi i64 [ 32767, %30 ], [ %38, %37 ]
  %41 = trunc i64 %40 to i16
  store i16 %41, i16* %5, align 2
  %42 = load i16, i16* %5, align 2
  %43 = sext i16 %42 to i64
  %44 = mul nsw i64 13107, %43
  %45 = add nsw i64 %44, 16384
  %46 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %45, i32 noundef 15)
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %5, align 2
  %48 = load i16, i16* %5, align 2
  %49 = sext i16 %48 to i64
  %50 = load i16, i16* %5, align 2
  %51 = sext i16 %50 to i64
  %52 = add nsw i64 %49, %51
  store i64 %52, i64* %6, align 8
  %53 = sub nsw i64 %52, -32768
  %54 = icmp ugt i64 %53, 65535
  br i1 %54, label %55, label %61

55:                                               ; preds = %39
  %56 = load i64, i64* %6, align 8
  %57 = icmp sgt i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 32767, i32 -32768
  %60 = sext i32 %59 to i64
  br label %63

61:                                               ; preds = %39
  %62 = load i64, i64* %6, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i64 [ %60, %55 ], [ %62, %61 ]
  %65 = trunc i64 %64 to i16
  %66 = load i16*, i16** %4, align 8
  %67 = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %67, i16** %4, align 8
  store i16 %65, i16* %66, align 2
  %68 = load i16*, i16** %3, align 8
  %69 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %69, i16** %3, align 8
  %70 = load i16, i16* %68, align 2
  %71 = sext i16 %70 to i64
  %72 = add nsw i64 %71, -32
  store i64 %72, i64* %6, align 8
  %73 = sub nsw i64 %72, -32768
  %74 = icmp ugt i64 %73, 65535
  br i1 %74, label %75, label %81

75:                                               ; preds = %63
  %76 = load i64, i64* %6, align 8
  %77 = icmp sgt i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 32767, i32 -32768
  %80 = sext i32 %79 to i64
  br label %83

81:                                               ; preds = %63
  %82 = load i64, i64* %6, align 8
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi i64 [ %80, %75 ], [ %82, %81 ]
  %85 = shl i64 %84, 10
  %86 = trunc i64 %85 to i16
  store i16 %86, i16* %5, align 2
  %87 = load i16, i16* %5, align 2
  %88 = sext i16 %87 to i64
  %89 = sub nsw i64 %88, 0
  store i64 %89, i64* %6, align 8
  %90 = icmp sge i64 %89, 32767
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %100

92:                                               ; preds = %83
  %93 = load i64, i64* %6, align 8
  %94 = icmp sle i64 %93, -32768
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %98

96:                                               ; preds = %92
  %97 = load i64, i64* %6, align 8
  br label %98

98:                                               ; preds = %96, %95
  %99 = phi i64 [ -32768, %95 ], [ %97, %96 ]
  br label %100

100:                                              ; preds = %98, %91
  %101 = phi i64 [ 32767, %91 ], [ %99, %98 ]
  %102 = trunc i64 %101 to i16
  store i16 %102, i16* %5, align 2
  %103 = load i16, i16* %5, align 2
  %104 = sext i16 %103 to i64
  %105 = mul nsw i64 13107, %104
  %106 = add nsw i64 %105, 16384
  %107 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %106, i32 noundef 15)
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %5, align 2
  %109 = load i16, i16* %5, align 2
  %110 = sext i16 %109 to i64
  %111 = load i16, i16* %5, align 2
  %112 = sext i16 %111 to i64
  %113 = add nsw i64 %110, %112
  store i64 %113, i64* %6, align 8
  %114 = sub nsw i64 %113, -32768
  %115 = icmp ugt i64 %114, 65535
  br i1 %115, label %116, label %122

116:                                              ; preds = %100
  %117 = load i64, i64* %6, align 8
  %118 = icmp sgt i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 32767, i32 -32768
  %121 = sext i32 %120 to i64
  br label %124

122:                                              ; preds = %100
  %123 = load i64, i64* %6, align 8
  br label %124

124:                                              ; preds = %122, %116
  %125 = phi i64 [ %121, %116 ], [ %123, %122 ]
  %126 = trunc i64 %125 to i16
  %127 = load i16*, i16** %4, align 8
  %128 = getelementptr inbounds i16, i16* %127, i32 1
  store i16* %128, i16** %4, align 8
  store i16 %126, i16* %127, align 2
  %129 = load i16*, i16** %3, align 8
  %130 = getelementptr inbounds i16, i16* %129, i32 1
  store i16* %130, i16** %3, align 8
  %131 = load i16, i16* %129, align 2
  %132 = sext i16 %131 to i64
  %133 = add nsw i64 %132, -16
  store i64 %133, i64* %6, align 8
  %134 = sub nsw i64 %133, -32768
  %135 = icmp ugt i64 %134, 65535
  br i1 %135, label %136, label %142

136:                                              ; preds = %124
  %137 = load i64, i64* %6, align 8
  %138 = icmp sgt i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 32767, i32 -32768
  %141 = sext i32 %140 to i64
  br label %144

142:                                              ; preds = %124
  %143 = load i64, i64* %6, align 8
  br label %144

144:                                              ; preds = %142, %136
  %145 = phi i64 [ %141, %136 ], [ %143, %142 ]
  %146 = shl i64 %145, 10
  %147 = trunc i64 %146 to i16
  store i16 %147, i16* %5, align 2
  %148 = load i16, i16* %5, align 2
  %149 = sext i16 %148 to i64
  %150 = sub nsw i64 %149, 4096
  store i64 %150, i64* %6, align 8
  %151 = icmp sge i64 %150, 32767
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %161

153:                                              ; preds = %144
  %154 = load i64, i64* %6, align 8
  %155 = icmp sle i64 %154, -32768
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %159

157:                                              ; preds = %153
  %158 = load i64, i64* %6, align 8
  br label %159

159:                                              ; preds = %157, %156
  %160 = phi i64 [ -32768, %156 ], [ %158, %157 ]
  br label %161

161:                                              ; preds = %159, %152
  %162 = phi i64 [ 32767, %152 ], [ %160, %159 ]
  %163 = trunc i64 %162 to i16
  store i16 %163, i16* %5, align 2
  %164 = load i16, i16* %5, align 2
  %165 = sext i16 %164 to i64
  %166 = mul nsw i64 13107, %165
  %167 = add nsw i64 %166, 16384
  %168 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %167, i32 noundef 15)
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* %5, align 2
  %170 = load i16, i16* %5, align 2
  %171 = sext i16 %170 to i64
  %172 = load i16, i16* %5, align 2
  %173 = sext i16 %172 to i64
  %174 = add nsw i64 %171, %173
  store i64 %174, i64* %6, align 8
  %175 = sub nsw i64 %174, -32768
  %176 = icmp ugt i64 %175, 65535
  br i1 %176, label %177, label %183

177:                                              ; preds = %161
  %178 = load i64, i64* %6, align 8
  %179 = icmp sgt i64 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 32767, i32 -32768
  %182 = sext i32 %181 to i64
  br label %185

183:                                              ; preds = %161
  %184 = load i64, i64* %6, align 8
  br label %185

185:                                              ; preds = %183, %177
  %186 = phi i64 [ %182, %177 ], [ %184, %183 ]
  %187 = trunc i64 %186 to i16
  %188 = load i16*, i16** %4, align 8
  %189 = getelementptr inbounds i16, i16* %188, i32 1
  store i16* %189, i16** %4, align 8
  store i16 %187, i16* %188, align 2
  %190 = load i16*, i16** %3, align 8
  %191 = getelementptr inbounds i16, i16* %190, i32 1
  store i16* %191, i16** %3, align 8
  %192 = load i16, i16* %190, align 2
  %193 = sext i16 %192 to i64
  %194 = add nsw i64 %193, -16
  store i64 %194, i64* %6, align 8
  %195 = sub nsw i64 %194, -32768
  %196 = icmp ugt i64 %195, 65535
  br i1 %196, label %197, label %203

197:                                              ; preds = %185
  %198 = load i64, i64* %6, align 8
  %199 = icmp sgt i64 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 32767, i32 -32768
  %202 = sext i32 %201 to i64
  br label %205

203:                                              ; preds = %185
  %204 = load i64, i64* %6, align 8
  br label %205

205:                                              ; preds = %203, %197
  %206 = phi i64 [ %202, %197 ], [ %204, %203 ]
  %207 = shl i64 %206, 10
  %208 = trunc i64 %207 to i16
  store i16 %208, i16* %5, align 2
  %209 = load i16, i16* %5, align 2
  %210 = sext i16 %209 to i64
  %211 = sub nsw i64 %210, -5120
  store i64 %211, i64* %6, align 8
  %212 = icmp sge i64 %211, 32767
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %222

214:                                              ; preds = %205
  %215 = load i64, i64* %6, align 8
  %216 = icmp sle i64 %215, -32768
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  br label %220

218:                                              ; preds = %214
  %219 = load i64, i64* %6, align 8
  br label %220

220:                                              ; preds = %218, %217
  %221 = phi i64 [ -32768, %217 ], [ %219, %218 ]
  br label %222

222:                                              ; preds = %220, %213
  %223 = phi i64 [ 32767, %213 ], [ %221, %220 ]
  %224 = trunc i64 %223 to i16
  store i16 %224, i16* %5, align 2
  %225 = load i16, i16* %5, align 2
  %226 = sext i16 %225 to i64
  %227 = mul nsw i64 13107, %226
  %228 = add nsw i64 %227, 16384
  %229 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %228, i32 noundef 15)
  %230 = trunc i32 %229 to i16
  store i16 %230, i16* %5, align 2
  %231 = load i16, i16* %5, align 2
  %232 = sext i16 %231 to i64
  %233 = load i16, i16* %5, align 2
  %234 = sext i16 %233 to i64
  %235 = add nsw i64 %232, %234
  store i64 %235, i64* %6, align 8
  %236 = sub nsw i64 %235, -32768
  %237 = icmp ugt i64 %236, 65535
  br i1 %237, label %238, label %244

238:                                              ; preds = %222
  %239 = load i64, i64* %6, align 8
  %240 = icmp sgt i64 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 32767, i32 -32768
  %243 = sext i32 %242 to i64
  br label %246

244:                                              ; preds = %222
  %245 = load i64, i64* %6, align 8
  br label %246

246:                                              ; preds = %244, %238
  %247 = phi i64 [ %243, %238 ], [ %245, %244 ]
  %248 = trunc i64 %247 to i16
  %249 = load i16*, i16** %4, align 8
  %250 = getelementptr inbounds i16, i16* %249, i32 1
  store i16* %250, i16** %4, align 8
  store i16 %248, i16* %249, align 2
  %251 = load i16*, i16** %3, align 8
  %252 = getelementptr inbounds i16, i16* %251, i32 1
  store i16* %252, i16** %3, align 8
  %253 = load i16, i16* %251, align 2
  %254 = sext i16 %253 to i64
  %255 = add nsw i64 %254, -8
  store i64 %255, i64* %6, align 8
  %256 = sub nsw i64 %255, -32768
  %257 = icmp ugt i64 %256, 65535
  br i1 %257, label %258, label %264

258:                                              ; preds = %246
  %259 = load i64, i64* %6, align 8
  %260 = icmp sgt i64 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i32 32767, i32 -32768
  %263 = sext i32 %262 to i64
  br label %266

264:                                              ; preds = %246
  %265 = load i64, i64* %6, align 8
  br label %266

266:                                              ; preds = %264, %258
  %267 = phi i64 [ %263, %258 ], [ %265, %264 ]
  %268 = shl i64 %267, 10
  %269 = trunc i64 %268 to i16
  store i16 %269, i16* %5, align 2
  %270 = load i16, i16* %5, align 2
  %271 = sext i16 %270 to i64
  %272 = sub nsw i64 %271, 188
  store i64 %272, i64* %6, align 8
  %273 = icmp sge i64 %272, 32767
  br i1 %273, label %274, label %275

274:                                              ; preds = %266
  br label %283

275:                                              ; preds = %266
  %276 = load i64, i64* %6, align 8
  %277 = icmp sle i64 %276, -32768
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  br label %281

279:                                              ; preds = %275
  %280 = load i64, i64* %6, align 8
  br label %281

281:                                              ; preds = %279, %278
  %282 = phi i64 [ -32768, %278 ], [ %280, %279 ]
  br label %283

283:                                              ; preds = %281, %274
  %284 = phi i64 [ 32767, %274 ], [ %282, %281 ]
  %285 = trunc i64 %284 to i16
  store i16 %285, i16* %5, align 2
  %286 = load i16, i16* %5, align 2
  %287 = sext i16 %286 to i64
  %288 = mul nsw i64 19223, %287
  %289 = add nsw i64 %288, 16384
  %290 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %289, i32 noundef 15)
  %291 = trunc i32 %290 to i16
  store i16 %291, i16* %5, align 2
  %292 = load i16, i16* %5, align 2
  %293 = sext i16 %292 to i64
  %294 = load i16, i16* %5, align 2
  %295 = sext i16 %294 to i64
  %296 = add nsw i64 %293, %295
  store i64 %296, i64* %6, align 8
  %297 = sub nsw i64 %296, -32768
  %298 = icmp ugt i64 %297, 65535
  br i1 %298, label %299, label %305

299:                                              ; preds = %283
  %300 = load i64, i64* %6, align 8
  %301 = icmp sgt i64 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i32 32767, i32 -32768
  %304 = sext i32 %303 to i64
  br label %307

305:                                              ; preds = %283
  %306 = load i64, i64* %6, align 8
  br label %307

307:                                              ; preds = %305, %299
  %308 = phi i64 [ %304, %299 ], [ %306, %305 ]
  %309 = trunc i64 %308 to i16
  %310 = load i16*, i16** %4, align 8
  %311 = getelementptr inbounds i16, i16* %310, i32 1
  store i16* %311, i16** %4, align 8
  store i16 %309, i16* %310, align 2
  %312 = load i16*, i16** %3, align 8
  %313 = getelementptr inbounds i16, i16* %312, i32 1
  store i16* %313, i16** %3, align 8
  %314 = load i16, i16* %312, align 2
  %315 = sext i16 %314 to i64
  %316 = add nsw i64 %315, -8
  store i64 %316, i64* %6, align 8
  %317 = sub nsw i64 %316, -32768
  %318 = icmp ugt i64 %317, 65535
  br i1 %318, label %319, label %325

319:                                              ; preds = %307
  %320 = load i64, i64* %6, align 8
  %321 = icmp sgt i64 %320, 0
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i32 32767, i32 -32768
  %324 = sext i32 %323 to i64
  br label %327

325:                                              ; preds = %307
  %326 = load i64, i64* %6, align 8
  br label %327

327:                                              ; preds = %325, %319
  %328 = phi i64 [ %324, %319 ], [ %326, %325 ]
  %329 = shl i64 %328, 10
  %330 = trunc i64 %329 to i16
  store i16 %330, i16* %5, align 2
  %331 = load i16, i16* %5, align 2
  %332 = sext i16 %331 to i64
  %333 = sub nsw i64 %332, -3584
  store i64 %333, i64* %6, align 8
  %334 = icmp sge i64 %333, 32767
  br i1 %334, label %335, label %336

335:                                              ; preds = %327
  br label %344

336:                                              ; preds = %327
  %337 = load i64, i64* %6, align 8
  %338 = icmp sle i64 %337, -32768
  br i1 %338, label %339, label %340

339:                                              ; preds = %336
  br label %342

340:                                              ; preds = %336
  %341 = load i64, i64* %6, align 8
  br label %342

342:                                              ; preds = %340, %339
  %343 = phi i64 [ -32768, %339 ], [ %341, %340 ]
  br label %344

344:                                              ; preds = %342, %335
  %345 = phi i64 [ 32767, %335 ], [ %343, %342 ]
  %346 = trunc i64 %345 to i16
  store i16 %346, i16* %5, align 2
  %347 = load i16, i16* %5, align 2
  %348 = sext i16 %347 to i64
  %349 = mul nsw i64 17476, %348
  %350 = add nsw i64 %349, 16384
  %351 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %350, i32 noundef 15)
  %352 = trunc i32 %351 to i16
  store i16 %352, i16* %5, align 2
  %353 = load i16, i16* %5, align 2
  %354 = sext i16 %353 to i64
  %355 = load i16, i16* %5, align 2
  %356 = sext i16 %355 to i64
  %357 = add nsw i64 %354, %356
  store i64 %357, i64* %6, align 8
  %358 = sub nsw i64 %357, -32768
  %359 = icmp ugt i64 %358, 65535
  br i1 %359, label %360, label %366

360:                                              ; preds = %344
  %361 = load i64, i64* %6, align 8
  %362 = icmp sgt i64 %361, 0
  %363 = zext i1 %362 to i64
  %364 = select i1 %362, i32 32767, i32 -32768
  %365 = sext i32 %364 to i64
  br label %368

366:                                              ; preds = %344
  %367 = load i64, i64* %6, align 8
  br label %368

368:                                              ; preds = %366, %360
  %369 = phi i64 [ %365, %360 ], [ %367, %366 ]
  %370 = trunc i64 %369 to i16
  %371 = load i16*, i16** %4, align 8
  %372 = getelementptr inbounds i16, i16* %371, i32 1
  store i16* %372, i16** %4, align 8
  store i16 %370, i16* %371, align 2
  %373 = load i16*, i16** %3, align 8
  %374 = getelementptr inbounds i16, i16* %373, i32 1
  store i16* %374, i16** %3, align 8
  %375 = load i16, i16* %373, align 2
  %376 = sext i16 %375 to i64
  %377 = add nsw i64 %376, -4
  store i64 %377, i64* %6, align 8
  %378 = sub nsw i64 %377, -32768
  %379 = icmp ugt i64 %378, 65535
  br i1 %379, label %380, label %386

380:                                              ; preds = %368
  %381 = load i64, i64* %6, align 8
  %382 = icmp sgt i64 %381, 0
  %383 = zext i1 %382 to i64
  %384 = select i1 %382, i32 32767, i32 -32768
  %385 = sext i32 %384 to i64
  br label %388

386:                                              ; preds = %368
  %387 = load i64, i64* %6, align 8
  br label %388

388:                                              ; preds = %386, %380
  %389 = phi i64 [ %385, %380 ], [ %387, %386 ]
  %390 = shl i64 %389, 10
  %391 = trunc i64 %390 to i16
  store i16 %391, i16* %5, align 2
  %392 = load i16, i16* %5, align 2
  %393 = sext i16 %392 to i64
  %394 = sub nsw i64 %393, -682
  store i64 %394, i64* %6, align 8
  %395 = icmp sge i64 %394, 32767
  br i1 %395, label %396, label %397

396:                                              ; preds = %388
  br label %405

397:                                              ; preds = %388
  %398 = load i64, i64* %6, align 8
  %399 = icmp sle i64 %398, -32768
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  br label %403

401:                                              ; preds = %397
  %402 = load i64, i64* %6, align 8
  br label %403

403:                                              ; preds = %401, %400
  %404 = phi i64 [ -32768, %400 ], [ %402, %401 ]
  br label %405

405:                                              ; preds = %403, %396
  %406 = phi i64 [ 32767, %396 ], [ %404, %403 ]
  %407 = trunc i64 %406 to i16
  store i16 %407, i16* %5, align 2
  %408 = load i16, i16* %5, align 2
  %409 = sext i16 %408 to i64
  %410 = mul nsw i64 31454, %409
  %411 = add nsw i64 %410, 16384
  %412 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %411, i32 noundef 15)
  %413 = trunc i32 %412 to i16
  store i16 %413, i16* %5, align 2
  %414 = load i16, i16* %5, align 2
  %415 = sext i16 %414 to i64
  %416 = load i16, i16* %5, align 2
  %417 = sext i16 %416 to i64
  %418 = add nsw i64 %415, %417
  store i64 %418, i64* %6, align 8
  %419 = sub nsw i64 %418, -32768
  %420 = icmp ugt i64 %419, 65535
  br i1 %420, label %421, label %427

421:                                              ; preds = %405
  %422 = load i64, i64* %6, align 8
  %423 = icmp sgt i64 %422, 0
  %424 = zext i1 %423 to i64
  %425 = select i1 %423, i32 32767, i32 -32768
  %426 = sext i32 %425 to i64
  br label %429

427:                                              ; preds = %405
  %428 = load i64, i64* %6, align 8
  br label %429

429:                                              ; preds = %427, %421
  %430 = phi i64 [ %426, %421 ], [ %428, %427 ]
  %431 = trunc i64 %430 to i16
  %432 = load i16*, i16** %4, align 8
  %433 = getelementptr inbounds i16, i16* %432, i32 1
  store i16* %433, i16** %4, align 8
  store i16 %431, i16* %432, align 2
  %434 = load i16*, i16** %3, align 8
  %435 = getelementptr inbounds i16, i16* %434, i32 1
  store i16* %435, i16** %3, align 8
  %436 = load i16, i16* %434, align 2
  %437 = sext i16 %436 to i64
  %438 = add nsw i64 %437, -4
  store i64 %438, i64* %6, align 8
  %439 = sub nsw i64 %438, -32768
  %440 = icmp ugt i64 %439, 65535
  br i1 %440, label %441, label %447

441:                                              ; preds = %429
  %442 = load i64, i64* %6, align 8
  %443 = icmp sgt i64 %442, 0
  %444 = zext i1 %443 to i64
  %445 = select i1 %443, i32 32767, i32 -32768
  %446 = sext i32 %445 to i64
  br label %449

447:                                              ; preds = %429
  %448 = load i64, i64* %6, align 8
  br label %449

449:                                              ; preds = %447, %441
  %450 = phi i64 [ %446, %441 ], [ %448, %447 ]
  %451 = shl i64 %450, 10
  %452 = trunc i64 %451 to i16
  store i16 %452, i16* %5, align 2
  %453 = load i16, i16* %5, align 2
  %454 = sext i16 %453 to i64
  %455 = sub nsw i64 %454, -2288
  store i64 %455, i64* %6, align 8
  %456 = icmp sge i64 %455, 32767
  br i1 %456, label %457, label %458

457:                                              ; preds = %449
  br label %466

458:                                              ; preds = %449
  %459 = load i64, i64* %6, align 8
  %460 = icmp sle i64 %459, -32768
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  br label %464

462:                                              ; preds = %458
  %463 = load i64, i64* %6, align 8
  br label %464

464:                                              ; preds = %462, %461
  %465 = phi i64 [ -32768, %461 ], [ %463, %462 ]
  br label %466

466:                                              ; preds = %464, %457
  %467 = phi i64 [ 32767, %457 ], [ %465, %464 ]
  %468 = trunc i64 %467 to i16
  store i16 %468, i16* %5, align 2
  %469 = load i16, i16* %5, align 2
  %470 = sext i16 %469 to i64
  %471 = mul nsw i64 29708, %470
  %472 = add nsw i64 %471, 16384
  %473 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %472, i32 noundef 15)
  %474 = trunc i32 %473 to i16
  store i16 %474, i16* %5, align 2
  %475 = load i16, i16* %5, align 2
  %476 = sext i16 %475 to i64
  %477 = load i16, i16* %5, align 2
  %478 = sext i16 %477 to i64
  %479 = add nsw i64 %476, %478
  store i64 %479, i64* %6, align 8
  %480 = sub nsw i64 %479, -32768
  %481 = icmp ugt i64 %480, 65535
  br i1 %481, label %482, label %488

482:                                              ; preds = %466
  %483 = load i64, i64* %6, align 8
  %484 = icmp sgt i64 %483, 0
  %485 = zext i1 %484 to i64
  %486 = select i1 %484, i32 32767, i32 -32768
  %487 = sext i32 %486 to i64
  br label %490

488:                                              ; preds = %466
  %489 = load i64, i64* %6, align 8
  br label %490

490:                                              ; preds = %488, %482
  %491 = phi i64 [ %487, %482 ], [ %489, %488 ]
  %492 = trunc i64 %491 to i16
  %493 = load i16*, i16** %4, align 8
  %494 = getelementptr inbounds i16, i16* %493, i32 1
  store i16* %494, i16** %4, align 8
  store i16 %492, i16* %493, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Coefficients_0_12(i16* noundef %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %61, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 8
  br i1 %11, label %12, label %70

12:                                               ; preds = %9
  %13 = load i16*, i16** %4, align 8
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef 2)
  %17 = sext i32 %16 to i64
  %18 = load i16*, i16** %5, align 8
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  %21 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %20, i32 noundef 2)
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %17, %22
  store i64 %23, i64* %8, align 8
  %24 = sub nsw i64 %23, -32768
  %25 = icmp ugt i64 %24, 65535
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 32767, i32 -32768
  %31 = sext i32 %30 to i64
  br label %34

32:                                               ; preds = %12
  %33 = load i64, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i64 [ %31, %26 ], [ %33, %32 ]
  %36 = trunc i64 %35 to i16
  %37 = load i16*, i16** %6, align 8
  store i16 %36, i16* %37, align 2
  %38 = load i16*, i16** %6, align 8
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i64
  %41 = load i16*, i16** %4, align 8
  %42 = load i16, i16* %41, align 2
  %43 = sext i16 %42 to i32
  %44 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %43, i32 noundef 1)
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %40, %45
  store i64 %46, i64* %8, align 8
  %47 = sub nsw i64 %46, -32768
  %48 = icmp ugt i64 %47, 65535
  br i1 %48, label %49, label %55

49:                                               ; preds = %34
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 32767, i32 -32768
  %54 = sext i32 %53 to i64
  br label %57

55:                                               ; preds = %34
  %56 = load i64, i64* %8, align 8
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi i64 [ %54, %49 ], [ %56, %55 ]
  %59 = trunc i64 %58 to i16
  %60 = load i16*, i16** %6, align 8
  store i16 %59, i16* %60, align 2
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i16*, i16** %6, align 8
  %65 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %65, i16** %6, align 8
  %66 = load i16*, i16** %4, align 8
  %67 = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %67, i16** %4, align 8
  %68 = load i16*, i16** %5, align 8
  %69 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %69, i16** %5, align 8
  br label %9, !llvm.loop !4

70:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @LARp_to_rp(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  store i16* %0, i16** %2, align 8
  store i32 1, i32* %3, align 4
  br label %6

6:                                                ; preds = %115, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 8
  br i1 %8, label %9, label %120

9:                                                ; preds = %6
  %10 = load i16*, i16** %2, align 8
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %9
  %15 = load i16*, i16** %2, align 8
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %17, -32768
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %25

20:                                               ; preds = %14
  %21 = load i16*, i16** %2, align 8
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = sub nsw i32 0, %23
  br label %25

25:                                               ; preds = %20, %19
  %26 = phi i32 [ 32767, %19 ], [ %24, %20 ]
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %4, align 2
  %28 = load i16, i16* %4, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp slt i32 %29, 11059
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i16, i16* %4, align 2
  %33 = sext i16 %32 to i32
  %34 = shl i32 %33, 1
  %35 = sext i32 %34 to i64
  br label %65

36:                                               ; preds = %25
  %37 = load i16, i16* %4, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp slt i32 %38, 20070
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i16, i16* %4, align 2
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %42, 11059
  %44 = sext i32 %43 to i64
  br label %63

45:                                               ; preds = %36
  %46 = load i16, i16* %4, align 2
  %47 = sext i16 %46 to i32
  %48 = ashr i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, 26112
  store i64 %50, i64* %5, align 8
  %51 = sub nsw i64 %50, -32768
  %52 = icmp ugt i64 %51, 65535
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i64, i64* %5, align 8
  %55 = icmp sgt i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 32767, i32 -32768
  %58 = sext i32 %57 to i64
  br label %61

59:                                               ; preds = %45
  %60 = load i64, i64* %5, align 8
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi i64 [ %58, %53 ], [ %60, %59 ]
  br label %63

63:                                               ; preds = %61, %40
  %64 = phi i64 [ %44, %40 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %31
  %66 = phi i64 [ %35, %31 ], [ %64, %63 ]
  %67 = sub nsw i64 0, %66
  %68 = trunc i64 %67 to i16
  %69 = load i16*, i16** %2, align 8
  store i16 %68, i16* %69, align 2
  br label %114

70:                                               ; preds = %9
  %71 = load i16*, i16** %2, align 8
  %72 = load i16, i16* %71, align 2
  store i16 %72, i16* %4, align 2
  %73 = load i16, i16* %4, align 2
  %74 = sext i16 %73 to i32
  %75 = icmp slt i32 %74, 11059
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i16, i16* %4, align 2
  %78 = sext i16 %77 to i32
  %79 = shl i32 %78, 1
  %80 = sext i32 %79 to i64
  br label %110

81:                                               ; preds = %70
  %82 = load i16, i16* %4, align 2
  %83 = sext i16 %82 to i32
  %84 = icmp slt i32 %83, 20070
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i16, i16* %4, align 2
  %87 = sext i16 %86 to i32
  %88 = add nsw i32 %87, 11059
  %89 = sext i32 %88 to i64
  br label %108

90:                                               ; preds = %81
  %91 = load i16, i16* %4, align 2
  %92 = sext i16 %91 to i32
  %93 = ashr i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, 26112
  store i64 %95, i64* %5, align 8
  %96 = sub nsw i64 %95, -32768
  %97 = icmp ugt i64 %96, 65535
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i64, i64* %5, align 8
  %100 = icmp sgt i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 32767, i32 -32768
  %103 = sext i32 %102 to i64
  br label %106

104:                                              ; preds = %90
  %105 = load i64, i64* %5, align 8
  br label %106

106:                                              ; preds = %104, %98
  %107 = phi i64 [ %103, %98 ], [ %105, %104 ]
  br label %108

108:                                              ; preds = %106, %85
  %109 = phi i64 [ %89, %85 ], [ %107, %106 ]
  br label %110

110:                                              ; preds = %108, %76
  %111 = phi i64 [ %80, %76 ], [ %109, %108 ]
  %112 = trunc i64 %111 to i16
  %113 = load i16*, i16** %2, align 8
  store i16 %112, i16* %113, align 2
  br label %114

114:                                              ; preds = %110, %65
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  %118 = load i16*, i16** %2, align 8
  %119 = getelementptr inbounds i16, i16* %118, i32 1
  store i16* %119, i16** %2, align 8
  br label %6, !llvm.loop !6

120:                                              ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Short_term_analysis_filtering(%struct.gsm_state* noundef %0, i16* noundef %1, i32 noundef %2, i16* noundef %3) #0 {
  %5 = alloca %struct.gsm_state*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i64, align 8
  store %struct.gsm_state* %0, %struct.gsm_state** %5, align 8
  store i16* %1, i16** %6, align 8
  store i32 %2, i32* %7, align 4
  store i16* %3, i16** %8, align 8
  %17 = load %struct.gsm_state*, %struct.gsm_state** %5, align 8
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %17, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i16], [8 x i16]* %18, i64 0, i64 0
  store i16* %19, i16** %9, align 8
  br label %20

20:                                               ; preds = %104, %4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %107

24:                                               ; preds = %20
  %25 = load i16*, i16** %8, align 8
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %14, align 2
  store i16 %26, i16* %11, align 2
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %98, %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %101

30:                                               ; preds = %27
  %31 = load i16*, i16** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  store i16 %35, i16* %13, align 2
  %36 = load i16*, i16** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %36, i64 %38
  %40 = load i16, i16* %39, align 2
  store i16 %40, i16* %15, align 2
  %41 = load i16, i16* %14, align 2
  %42 = load i16*, i16** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %42, i64 %44
  store i16 %41, i16* %45, align 2
  %46 = load i16, i16* %15, align 2
  %47 = sext i16 %46 to i64
  %48 = load i16, i16* %11, align 2
  %49 = sext i16 %48 to i64
  %50 = mul nsw i64 %47, %49
  %51 = add nsw i64 %50, 16384
  %52 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %51, i32 noundef 15)
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %12, align 2
  %54 = load i16, i16* %13, align 2
  %55 = sext i16 %54 to i64
  %56 = load i16, i16* %12, align 2
  %57 = sext i16 %56 to i64
  %58 = add nsw i64 %55, %57
  store i64 %58, i64* %16, align 8
  %59 = sub nsw i64 %58, -32768
  %60 = icmp ugt i64 %59, 65535
  br i1 %60, label %61, label %67

61:                                               ; preds = %30
  %62 = load i64, i64* %16, align 8
  %63 = icmp sgt i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 32767, i32 -32768
  %66 = sext i32 %65 to i64
  br label %69

67:                                               ; preds = %30
  %68 = load i64, i64* %16, align 8
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i64 [ %66, %61 ], [ %68, %67 ]
  %71 = trunc i64 %70 to i16
  store i16 %71, i16* %14, align 2
  %72 = load i16, i16* %15, align 2
  %73 = sext i16 %72 to i64
  %74 = load i16, i16* %13, align 2
  %75 = sext i16 %74 to i64
  %76 = mul nsw i64 %73, %75
  %77 = add nsw i64 %76, 16384
  %78 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %77, i32 noundef 15)
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %12, align 2
  %80 = load i16, i16* %11, align 2
  %81 = sext i16 %80 to i64
  %82 = load i16, i16* %12, align 2
  %83 = sext i16 %82 to i64
  %84 = add nsw i64 %81, %83
  store i64 %84, i64* %16, align 8
  %85 = sub nsw i64 %84, -32768
  %86 = icmp ugt i64 %85, 65535
  br i1 %86, label %87, label %93

87:                                               ; preds = %69
  %88 = load i64, i64* %16, align 8
  %89 = icmp sgt i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 32767, i32 -32768
  %92 = sext i32 %91 to i64
  br label %95

93:                                               ; preds = %69
  %94 = load i64, i64* %16, align 8
  br label %95

95:                                               ; preds = %93, %87
  %96 = phi i64 [ %92, %87 ], [ %94, %93 ]
  %97 = trunc i64 %96 to i16
  store i16 %97, i16* %11, align 2
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %27, !llvm.loop !7

101:                                              ; preds = %27
  %102 = load i16, i16* %11, align 2
  %103 = load i16*, i16** %8, align 8
  store i16 %102, i16* %103, align 2
  br label %104

104:                                              ; preds = %101
  %105 = load i16*, i16** %8, align 8
  %106 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %106, i16** %8, align 8
  br label %20, !llvm.loop !8

107:                                              ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Coefficients_13_26(i16* noundef %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %38, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 8
  br i1 %11, label %12, label %47

12:                                               ; preds = %9
  %13 = load i16*, i16** %4, align 8
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef 1)
  %17 = sext i32 %16 to i64
  %18 = load i16*, i16** %5, align 8
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  %21 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %20, i32 noundef 1)
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %17, %22
  store i64 %23, i64* %8, align 8
  %24 = sub nsw i64 %23, -32768
  %25 = icmp ugt i64 %24, 65535
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 32767, i32 -32768
  %31 = sext i32 %30 to i64
  br label %34

32:                                               ; preds = %12
  %33 = load i64, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i64 [ %31, %26 ], [ %33, %32 ]
  %36 = trunc i64 %35 to i16
  %37 = load i16*, i16** %6, align 8
  store i16 %36, i16* %37, align 2
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i16*, i16** %4, align 8
  %42 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %42, i16** %4, align 8
  %43 = load i16*, i16** %5, align 8
  %44 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %44, i16** %5, align 8
  %45 = load i16*, i16** %6, align 8
  %46 = getelementptr inbounds i16, i16* %45, i32 1
  store i16* %46, i16** %6, align 8
  br label %9, !llvm.loop !9

47:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Coefficients_27_39(i16* noundef %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %61, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 8
  br i1 %11, label %12, label %70

12:                                               ; preds = %9
  %13 = load i16*, i16** %4, align 8
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef 2)
  %17 = sext i32 %16 to i64
  %18 = load i16*, i16** %5, align 8
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  %21 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %20, i32 noundef 2)
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %17, %22
  store i64 %23, i64* %8, align 8
  %24 = sub nsw i64 %23, -32768
  %25 = icmp ugt i64 %24, 65535
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 32767, i32 -32768
  %31 = sext i32 %30 to i64
  br label %34

32:                                               ; preds = %12
  %33 = load i64, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i64 [ %31, %26 ], [ %33, %32 ]
  %36 = trunc i64 %35 to i16
  %37 = load i16*, i16** %6, align 8
  store i16 %36, i16* %37, align 2
  %38 = load i16*, i16** %6, align 8
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i64
  %41 = load i16*, i16** %5, align 8
  %42 = load i16, i16* %41, align 2
  %43 = sext i16 %42 to i32
  %44 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %43, i32 noundef 1)
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %40, %45
  store i64 %46, i64* %8, align 8
  %47 = sub nsw i64 %46, -32768
  %48 = icmp ugt i64 %47, 65535
  br i1 %48, label %49, label %55

49:                                               ; preds = %34
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 32767, i32 -32768
  %54 = sext i32 %53 to i64
  br label %57

55:                                               ; preds = %34
  %56 = load i64, i64* %8, align 8
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi i64 [ %54, %49 ], [ %56, %55 ]
  %59 = trunc i64 %58 to i16
  %60 = load i16*, i16** %6, align 8
  store i16 %59, i16* %60, align 2
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i16*, i16** %4, align 8
  %65 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %65, i16** %4, align 8
  %66 = load i16*, i16** %5, align 8
  %67 = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %67, i16** %5, align 8
  %68 = load i16*, i16** %6, align 8
  %69 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %69, i16** %6, align 8
  br label %9, !llvm.loop !10

70:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Coefficients_40_159(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %13, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 8
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load i16*, i16** %3, align 8
  %11 = load i16, i16* %10, align 2
  %12 = load i16*, i16** %4, align 8
  store i16 %11, i16* %12, align 2
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i16*, i16** %4, align 8
  %17 = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %17, i16** %4, align 8
  %18 = load i16*, i16** %3, align 8
  %19 = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %19, i16** %3, align 8
  br label %6, !llvm.loop !11

20:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef %2, i16* noundef %3) #0 {
  %5 = alloca %struct.gsm_state*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca [8 x i16], align 16
  store %struct.gsm_state* %0, %struct.gsm_state** %5, align 8
  store i16* %1, i16** %6, align 8
  store i16* %2, i16** %7, align 8
  store i16* %3, i16** %8, align 8
  %12 = load %struct.gsm_state*, %struct.gsm_state** %5, align 8
  %13 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %12, i32 0, i32 5
  %14 = load %struct.gsm_state*, %struct.gsm_state** %5, align 8
  %15 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %14, i32 0, i32 6
  %16 = load i16, i16* %15, align 4
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds [2 x [8 x i16]], [2 x [8 x i16]]* %13, i64 0, i64 %17
  %19 = getelementptr inbounds [8 x i16], [8 x i16]* %18, i64 0, i64 0
  store i16* %19, i16** %9, align 8
  %20 = load %struct.gsm_state*, %struct.gsm_state** %5, align 8
  %21 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %20, i32 0, i32 5
  %22 = load %struct.gsm_state*, %struct.gsm_state** %5, align 8
  %23 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %22, i32 0, i32 6
  %24 = load i16, i16* %23, align 4
  %25 = sext i16 %24 to i32
  %26 = xor i32 %25, 1
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %23, align 4
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds [2 x [8 x i16]], [2 x [8 x i16]]* %21, i64 0, i64 %28
  %30 = getelementptr inbounds [8 x i16], [8 x i16]* %29, i64 0, i64 0
  store i16* %30, i16** %10, align 8
  %31 = load i16*, i16** %6, align 8
  %32 = load i16*, i16** %9, align 8
  call void @Decoding_of_the_coded_Log_Area_Ratios(i16* noundef %31, i16* noundef %32)
  %33 = load i16*, i16** %10, align 8
  %34 = load i16*, i16** %9, align 8
  %35 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  call void @Coefficients_0_12(i16* noundef %33, i16* noundef %34, i16* noundef %35)
  %36 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef %36)
  %37 = load %struct.gsm_state*, %struct.gsm_state** %5, align 8
  %38 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  %39 = load i16*, i16** %7, align 8
  %40 = load i16*, i16** %8, align 8
  call void @Short_term_synthesis_filtering(%struct.gsm_state* noundef %37, i16* noundef %38, i32 noundef 13, i16* noundef %39, i16* noundef %40)
  %41 = load i16*, i16** %10, align 8
  %42 = load i16*, i16** %9, align 8
  %43 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  call void @Coefficients_13_26(i16* noundef %41, i16* noundef %42, i16* noundef %43)
  %44 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef %44)
  %45 = load %struct.gsm_state*, %struct.gsm_state** %5, align 8
  %46 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  %47 = load i16*, i16** %7, align 8
  %48 = getelementptr inbounds i16, i16* %47, i64 13
  %49 = load i16*, i16** %8, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 13
  call void @Short_term_synthesis_filtering(%struct.gsm_state* noundef %45, i16* noundef %46, i32 noundef 14, i16* noundef %48, i16* noundef %50)
  %51 = load i16*, i16** %10, align 8
  %52 = load i16*, i16** %9, align 8
  %53 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  call void @Coefficients_27_39(i16* noundef %51, i16* noundef %52, i16* noundef %53)
  %54 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef %54)
  %55 = load %struct.gsm_state*, %struct.gsm_state** %5, align 8
  %56 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  %57 = load i16*, i16** %7, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 27
  %59 = load i16*, i16** %8, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 27
  call void @Short_term_synthesis_filtering(%struct.gsm_state* noundef %55, i16* noundef %56, i32 noundef 13, i16* noundef %58, i16* noundef %60)
  %61 = load i16*, i16** %9, align 8
  %62 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  call void @Coefficients_40_159(i16* noundef %61, i16* noundef %62)
  %63 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  call void @LARp_to_rp(i16* noundef %63)
  %64 = load %struct.gsm_state*, %struct.gsm_state** %5, align 8
  %65 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  %66 = load i16*, i16** %7, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 40
  %68 = load i16*, i16** %8, align 8
  %69 = getelementptr inbounds i16, i16* %68, i64 40
  call void @Short_term_synthesis_filtering(%struct.gsm_state* noundef %64, i16* noundef %65, i32 noundef 120, i16* noundef %67, i16* noundef %69)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Short_term_synthesis_filtering(%struct.gsm_state* noundef %0, i16* noundef %1, i32 noundef %2, i16* noundef %3, i16* noundef %4) #0 {
  %6 = alloca %struct.gsm_state*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i64, align 8
  store %struct.gsm_state* %0, %struct.gsm_state** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16* %3, i16** %9, align 8
  store i16* %4, i16** %10, align 8
  %17 = load %struct.gsm_state*, %struct.gsm_state** %6, align 8
  %18 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %17, i32 0, i32 8
  %19 = getelementptr inbounds [9 x i16], [9 x i16]* %18, i64 0, i64 0
  store i16* %19, i16** %11, align 8
  br label %20

20:                                               ; preds = %128, %5
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %134

24:                                               ; preds = %20
  %25 = load i16*, i16** %9, align 8
  %26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %26, i16** %9, align 8
  %27 = load i16, i16* %25, align 2
  store i16 %27, i16* %13, align 2
  store i32 8, i32* %12, align 4
  br label %28

28:                                               ; preds = %120, %24
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %12, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %128

32:                                               ; preds = %28
  %33 = load i16*, i16** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %33, i64 %35
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %14, align 2
  %38 = load i16*, i16** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %15, align 2
  %43 = load i16, i16* %14, align 2
  %44 = sext i16 %43 to i32
  %45 = icmp eq i32 %44, -32768
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load i16, i16* %15, align 2
  %48 = sext i16 %47 to i32
  %49 = icmp eq i32 %48, -32768
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %60

51:                                               ; preds = %46, %32
  %52 = load i16, i16* %14, align 2
  %53 = sext i16 %52 to i64
  %54 = load i16, i16* %15, align 2
  %55 = sext i16 %54 to i64
  %56 = mul nsw i64 %53, %55
  %57 = add nsw i64 %56, 16384
  %58 = ashr i64 %57, 15
  %59 = and i64 65535, %58
  br label %60

60:                                               ; preds = %51, %50
  %61 = phi i64 [ 32767, %50 ], [ %59, %51 ]
  %62 = trunc i64 %61 to i16
  store i16 %62, i16* %15, align 2
  %63 = load i16, i16* %13, align 2
  %64 = sext i16 %63 to i64
  %65 = load i16, i16* %15, align 2
  %66 = sext i16 %65 to i64
  %67 = sub nsw i64 %64, %66
  store i64 %67, i64* %16, align 8
  %68 = icmp sge i64 %67, 32767
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %78

70:                                               ; preds = %60
  %71 = load i64, i64* %16, align 8
  %72 = icmp sle i64 %71, -32768
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %76

74:                                               ; preds = %70
  %75 = load i64, i64* %16, align 8
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i64 [ -32768, %73 ], [ %75, %74 ]
  br label %78

78:                                               ; preds = %76, %69
  %79 = phi i64 [ 32767, %69 ], [ %77, %76 ]
  %80 = trunc i64 %79 to i16
  store i16 %80, i16* %13, align 2
  %81 = load i16, i16* %14, align 2
  %82 = sext i16 %81 to i32
  %83 = icmp eq i32 %82, -32768
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i16, i16* %13, align 2
  %86 = sext i16 %85 to i32
  %87 = icmp eq i32 %86, -32768
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %98

89:                                               ; preds = %84, %78
  %90 = load i16, i16* %14, align 2
  %91 = sext i16 %90 to i64
  %92 = load i16, i16* %13, align 2
  %93 = sext i16 %92 to i64
  %94 = mul nsw i64 %91, %93
  %95 = add nsw i64 %94, 16384
  %96 = ashr i64 %95, 15
  %97 = and i64 65535, %96
  br label %98

98:                                               ; preds = %89, %88
  %99 = phi i64 [ 32767, %88 ], [ %97, %89 ]
  %100 = trunc i64 %99 to i16
  store i16 %100, i16* %14, align 2
  %101 = load i16*, i16** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16, i16* %101, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i64
  %107 = load i16, i16* %14, align 2
  %108 = sext i16 %107 to i64
  %109 = add nsw i64 %106, %108
  store i64 %109, i64* %16, align 8
  %110 = sub nsw i64 %109, -32768
  %111 = icmp ugt i64 %110, 65535
  br i1 %111, label %112, label %118

112:                                              ; preds = %98
  %113 = load i64, i64* %16, align 8
  %114 = icmp sgt i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 32767, i32 -32768
  %117 = sext i32 %116 to i64
  br label %120

118:                                              ; preds = %98
  %119 = load i64, i64* %16, align 8
  br label %120

120:                                              ; preds = %118, %112
  %121 = phi i64 [ %117, %112 ], [ %119, %118 ]
  %122 = trunc i64 %121 to i16
  %123 = load i16*, i16** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i16, i16* %123, i64 %126
  store i16 %122, i16* %127, align 2
  br label %28, !llvm.loop !12

128:                                              ; preds = %28
  %129 = load i16, i16* %13, align 2
  %130 = load i16*, i16** %11, align 8
  %131 = getelementptr inbounds i16, i16* %130, i64 0
  store i16 %129, i16* %131, align 2
  %132 = load i16*, i16** %10, align 8
  %133 = getelementptr inbounds i16, i16* %132, i32 1
  store i16* %133, i16** %10, align 8
  store i16 %129, i16* %132, align 2
  br label %20, !llvm.loop !13

134:                                              ; preds = %20
  ret void
}

declare dso_local i32 @SASR(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
