; ModuleID = './format.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMORY = external dso_local global i8*, align 8
@REGISTER = external dso_local global [10 x i32], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @FORMAT2(i32* nocapture noundef %0, i32* nocapture noundef writeonly %1) #0 {
  %3 = load i8*, i8** @MEMORY, align 8
  %4 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %3, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %9) #3
  %11 = sdiv i32 %10, 16
  store i32 %11, i32* %0, align 4
  %12 = load i8*, i8** @MEMORY, align 8
  %13 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %18) #3
  %20 = load i32, i32* %0, align 4
  %.neg = mul i32 %20, -16
  %21 = add i32 %.neg, %19
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  ret void
}

declare dso_local i32 @INT(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FORMAT3_4(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca [32 x i32], align 16
  %4 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %5 = icmp sgt i32 %4, 1048573
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %61

7:                                                ; preds = %2
  %8 = load i8*, i8** @MEMORY, align 8
  %9 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %13) #3
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %14, i32 noundef 1, i32* noundef nonnull %15) #3
  %16 = load i8*, i8** @MEMORY, align 8
  %17 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %22) #3
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 8
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %23, i32 noundef 1, i32* noundef nonnull %24) #3
  %25 = load i8*, i8** @MEMORY, align 8
  %26 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %31) #3
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 16
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %32, i32 noundef 1, i32* noundef nonnull %33) #3
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 11
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %60

37:                                               ; preds = %7
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 6
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 7
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %47 = icmp sgt i32 %46, 1048572
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %59

49:                                               ; preds = %45
  %50 = load i8*, i8** @MEMORY, align 8
  %51 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %52 = add nsw i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %56) #3
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 24
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %57, i32 noundef 1, i32* noundef nonnull %58) #3
  br label %59

59:                                               ; preds = %49, %48
  %.04 = phi i32 [ 3, %48 ], [ 4, %49 ]
  %.03 = phi i32 [ 1, %48 ], [ 0, %49 ]
  br label %60

60:                                               ; preds = %59, %41, %7
  %.15 = phi i32 [ 3, %41 ], [ %.04, %59 ], [ 3, %7 ]
  %.1 = phi i32 [ 0, %41 ], [ %.03, %59 ], [ 0, %7 ]
  br label %61

61:                                               ; preds = %60, %6
  %.26 = phi i32 [ 3, %6 ], [ %.15, %60 ]
  %.2 = phi i32 [ 1, %6 ], [ %.1, %60 ]
  %.not = icmp eq i32 %.2, 0
  br i1 %.not, label %63, label %62

62:                                               ; preds = %61
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 2) #3
  br label %248

63:                                               ; preds = %61
  %64 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %65 = add nsw i32 %64, %.26
  store i32 %65, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %66 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 6
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 7
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 12
  %75 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef nonnull %74, i32 noundef 12) #3
  br label %138

76:                                               ; preds = %69, %63
  %77 = icmp eq i32 %.26, 3
  br i1 %77, label %78, label %118

78:                                               ; preds = %76
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 12
  %80 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef nonnull %79, i32 noundef 12) #3
  %81 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 9
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 10
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #3
  br label %248

89:                                               ; preds = %84, %78
  %90 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 8
  %91 = load i32, i32* %90, align 16
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %95 = add nsw i32 %80, %94
  br label %96

96:                                               ; preds = %93, %89
  %.07 = phi i32 [ %95, %93 ], [ %80, %89 ]
  %97 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 9
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 3), align 4
  %102 = add nsw i32 %.07, %101
  br label %103

103:                                              ; preds = %100, %96
  %.18 = phi i32 [ %102, %100 ], [ %.07, %96 ]
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 10
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = icmp sgt i32 %.18, 2047
  br i1 %108, label %109, label %113

109:                                              ; preds = %107
  %110 = add nsw i32 %.18, -4096
  %111 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %112 = add nsw i32 %110, %111
  br label %116

113:                                              ; preds = %107
  %114 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %115 = add nsw i32 %.18, %114
  br label %116

116:                                              ; preds = %113, %109
  %.29 = phi i32 [ %112, %109 ], [ %115, %113 ]
  br label %117

117:                                              ; preds = %116, %103
  %.3 = phi i32 [ %.29, %116 ], [ %.18, %103 ]
  br label %137

118:                                              ; preds = %76
  %119 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 9
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 10
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %118
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #3
  br label %248

127:                                              ; preds = %122
  %128 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 12
  %129 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef nonnull %128, i32 noundef 20) #3
  %130 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 8
  %131 = load i32, i32* %130, align 16
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %135 = add nsw i32 %129, %134
  br label %136

136:                                              ; preds = %133, %127
  %.4 = phi i32 [ %135, %133 ], [ %129, %127 ]
  br label %137

137:                                              ; preds = %136, %117
  %.5 = phi i32 [ %.3, %117 ], [ %.4, %136 ]
  br label %138

138:                                              ; preds = %137, %73
  %.6 = phi i32 [ %75, %73 ], [ %.5, %137 ]
  %139 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 6
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %173

142:                                              ; preds = %138
  %143 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 7
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %173

146:                                              ; preds = %142
  %147 = icmp eq i32 %0, 1
  br i1 %147, label %148, label %172

148:                                              ; preds = %146
  %149 = icmp slt i32 %.6, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %148
  %151 = icmp sgt i32 %.6, 1048573
  br i1 %151, label %152, label %153

152:                                              ; preds = %150, %148
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #3
  br label %248

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %164, %153
  %.010 = phi i32 [ 0, %153 ], [ %166, %164 ]
  %.02 = phi i32 [ 0, %153 ], [ %167, %164 ]
  %155 = icmp slt i32 %.02, %1
  br i1 %155, label %156, label %168

156:                                              ; preds = %154
  %157 = load i8*, i8** @MEMORY, align 8
  %158 = add nsw i32 %.6, %.02
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %162) #3
  br label %164

164:                                              ; preds = %156
  %165 = shl nsw i32 %.010, 8
  %166 = add nsw i32 %165, %163
  %167 = add nuw nsw i32 %.02, 1
  br label %154, !llvm.loop !4

168:                                              ; preds = %154
  %exp215 = call double @exp2(double 2.400000e+01) #3
  %169 = icmp sgt i32 %.010, 16777215
  br i1 %169, label %170, label %171

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %170, %168
  %.111 = phi i32 [ 0, %170 ], [ %.010, %168 ]
  br label %248

172:                                              ; preds = %146
  br label %248

173:                                              ; preds = %142, %138
  %174 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 6
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %235

177:                                              ; preds = %173
  %178 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 7
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %235

181:                                              ; preds = %177
  %182 = icmp slt i32 %.6, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %181
  %184 = icmp sgt i32 %.6, 1048573
  br i1 %184, label %185, label %186

185:                                              ; preds = %183, %181
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #3
  br label %248

186:                                              ; preds = %183
  %187 = load i8*, i8** @MEMORY, align 8
  %188 = sext i32 %.6 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %191) #3
  %193 = shl nsw i32 %192, 8
  %194 = load i8*, i8** @MEMORY, align 8
  %195 = add nsw i32 %.6, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %199) #3
  %201 = add nsw i32 %193, %200
  %202 = shl nsw i32 %201, 8
  %203 = load i8*, i8** @MEMORY, align 8
  %204 = add nsw i32 %.6, 2
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %208) #3
  %210 = add nsw i32 %202, %209
  %211 = icmp eq i32 %0, 1
  br i1 %211, label %212, label %234

212:                                              ; preds = %186
  %213 = icmp sgt i32 %210, 1048576
  br i1 %213, label %214, label %215

214:                                              ; preds = %212
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 2) #3
  br label %248

215:                                              ; preds = %212
  br label %216

216:                                              ; preds = %226, %215
  %.212 = phi i32 [ 0, %215 ], [ %228, %226 ]
  %.01 = phi i32 [ 0, %215 ], [ %229, %226 ]
  %217 = icmp slt i32 %.01, %1
  br i1 %217, label %218, label %230

218:                                              ; preds = %216
  %219 = load i8*, i8** @MEMORY, align 8
  %220 = add nsw i32 %210, %.01
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %224) #3
  br label %226

226:                                              ; preds = %218
  %227 = shl nsw i32 %.212, 8
  %228 = add nsw i32 %227, %225
  %229 = add nuw nsw i32 %.01, 1
  br label %216, !llvm.loop !6

230:                                              ; preds = %216
  %exp214 = call double @exp2(double 2.400000e+01) #3
  %231 = icmp sgt i32 %.212, 16777215
  br i1 %231, label %232, label %233

232:                                              ; preds = %230
  br label %233

233:                                              ; preds = %232, %230
  %.313 = phi i32 [ 0, %232 ], [ %.212, %230 ]
  br label %248

234:                                              ; preds = %186
  br label %248

235:                                              ; preds = %177, %173
  %236 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 6
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 7
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %exp2 = call double @exp2(double 2.400000e+01) #3
  %244 = icmp sgt i32 %.6, 16777215
  br i1 %244, label %245, label %246

245:                                              ; preds = %243
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0) #3
  br label %248

246:                                              ; preds = %243
  br label %248

247:                                              ; preds = %239, %235
  br label %248

248:                                              ; preds = %247, %246, %245, %234, %233, %214, %185, %172, %171, %152, %126, %88, %62
  %.0 = phi i32 [ 0, %62 ], [ 0, %152 ], [ %.111, %171 ], [ %.6, %172 ], [ 0, %185 ], [ 0, %214 ], [ %.313, %233 ], [ %210, %234 ], [ 0, %245 ], [ %.6, %246 ], [ 0, %247 ], [ 0, %88 ], [ 0, %126 ]
  ret i32 %.0
}

declare dso_local void @BYTES_TO_BITS(...) #1

declare dso_local void @SIGNAL_INTERUPT(...) #1

declare dso_local i32 @BITS_TO_BYTE(...) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #2

declare double @exp2(double)

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
