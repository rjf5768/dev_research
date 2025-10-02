; ModuleID = './va-arg-22.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A1 = type { [1 x i8] }
%struct.A3 = type { [3 x i8] }
%struct.A5 = type { [5 x i8] }
%struct.A6 = type { [6 x i8] }
%struct.A7 = type { [7 x i8] }
%struct.A9 = type { [9 x i8] }
%struct.A10 = type { [10 x i8] }
%struct.A11 = type { [11 x i8] }
%struct.A12 = type { [12 x i8] }
%struct.A13 = type { [13 x i8] }
%struct.A14 = type { [14 x i8] }
%struct.A15 = type { [15 x i8] }
%struct.A16 = type { [16 x i8] }
%struct.A31 = type { [31 x i8] }
%struct.A32 = type { [32 x i8] }
%struct.A35 = type { [35 x i8] }
%struct.A72 = type { [72 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@bar.lastn = internal global i32 -1, align 4
@bar.lastc = internal global i32 -1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @bar.lastn, align 4
  %.not = icmp eq i32 %3, %0
  br i1 %.not, label %9, label %4

4:                                                ; preds = %2
  %5 = load i32, i32* @bar.lastc, align 4
  %6 = load i32, i32* @bar.lastn, align 4
  %.not2 = icmp eq i32 %5, %6
  br i1 %.not2, label %8, label %7

7:                                                ; preds = %4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  store i32 0, i32* @bar.lastc, align 4
  store i32 %0, i32* @bar.lastn, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* @bar.lastc, align 4
  %11 = shl i32 %0, 27
  %12 = shl i32 %10, 24
  %sext = xor i32 %11, %12
  %13 = ashr exact i32 %sext, 24
  %.not1 = icmp eq i32 %13, %1
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %9
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %9
  %16 = load i32, i32* @bar.lastc, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @bar.lastc, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %14, %7
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.A1, align 1
  %3 = alloca i16, align 2
  %4 = alloca %struct.A3, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.A5, align 1
  %7 = alloca %struct.A6, align 1
  %8 = alloca %struct.A7, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.A9, align 1
  %11 = alloca %struct.A10, align 1
  %12 = alloca %struct.A11, align 1
  %13 = alloca %struct.A12, align 1
  %14 = alloca %struct.A13, align 1
  %15 = alloca %struct.A14, align 1
  %16 = alloca %struct.A15, align 1
  %17 = alloca %struct.A16, align 1
  %18 = alloca %struct.A31, align 1
  %19 = alloca %struct.A32, align 1
  %20 = alloca %struct.A35, align 1
  %21 = alloca %struct.A72, align 1
  %22 = alloca [1 x %struct.__va_list_tag], align 16
  %.not = icmp eq i32 %0, 21
  br i1 %.not, label %24, label %23

23:                                               ; preds = %1
  call void @abort() #5
  unreachable

24:                                               ; preds = %1
  %25 = bitcast [1 x %struct.__va_list_tag]* %22 to i8*
  call void @llvm.va_start(i8* nonnull %25)
  br label %26

26:                                               ; preds = %28, %24
  br i1 false, label %27, label %29

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  br label %26, !llvm.loop !4

29:                                               ; preds = %26
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %31 = load i32, i32* %30, align 16
  %32 = icmp ult i32 %31, 41
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %35 = load i8*, i8** %34, align 16
  %36 = sext i32 %31 to i64
  %37 = getelementptr i8, i8* %35, i64 %36
  %38 = add i32 %31, 8
  store i32 %38, i32* %30, align 16
  br label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr i8, i8* %41, i64 8
  store i8* %42, i8** %40, align 8
  br label %43

43:                                               ; preds = %39, %33
  %.in = phi i8* [ %37, %33 ], [ %41, %39 ]
  %44 = getelementptr inbounds %struct.A1, %struct.A1* %2, i64 0, i32 0, i64 0
  %45 = load i8, i8* %.in, align 1
  store i8 %45, i8* %44, align 1
  br label %46

46:                                               ; preds = %52, %43
  %.1 = phi i32 [ 0, %43 ], [ %53, %52 ]
  %47 = icmp eq i32 %.1, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.A1, %struct.A1* %2, i64 0, i32 0, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  call void @bar(i32 noundef 1, i32 noundef %51)
  br label %52

52:                                               ; preds = %48
  %53 = add nuw nsw i32 %.1, 1
  br label %46, !llvm.loop !6

54:                                               ; preds = %46
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %56 = load i32, i32* %55, align 16
  %57 = icmp ult i32 %56, 41
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %60 = load i8*, i8** %59, align 16
  %61 = sext i32 %56 to i64
  %62 = getelementptr i8, i8* %60, i64 %61
  %63 = add i32 %56, 8
  store i32 %63, i32* %55, align 16
  br label %68

64:                                               ; preds = %54
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr i8, i8* %66, i64 8
  store i8* %67, i8** %65, align 8
  br label %68

68:                                               ; preds = %64, %58
  %.in1 = phi i8* [ %62, %58 ], [ %66, %64 ]
  %69 = bitcast i8* %.in1 to i16*
  %70 = load i16, i16* %69, align 1
  store i16 %70, i16* %3, align 2
  br label %71

71:                                               ; preds = %79, %68
  %.2 = phi i32 [ 0, %68 ], [ %80, %79 ]
  %72 = icmp ult i32 %.2, 2
  br i1 %72, label %73, label %81

73:                                               ; preds = %71
  %74 = bitcast i16* %3 to [2 x i8]*
  %75 = zext i32 %.2 to i64
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %74, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  call void @bar(i32 noundef 2, i32 noundef %78)
  br label %79

79:                                               ; preds = %73
  %80 = add nuw nsw i32 %.2, 1
  br label %71, !llvm.loop !7

81:                                               ; preds = %71
  %82 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %83 = load i32, i32* %82, align 16
  %84 = icmp ult i32 %83, 41
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %87 = load i8*, i8** %86, align 16
  %88 = sext i32 %83 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = add i32 %83, 8
  store i32 %90, i32* %82, align 16
  br label %95

91:                                               ; preds = %81
  %92 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr i8, i8* %93, i64 8
  store i8* %94, i8** %92, align 8
  br label %95

95:                                               ; preds = %91, %85
  %.in2 = phi i8* [ %89, %85 ], [ %93, %91 ]
  %96 = getelementptr inbounds %struct.A3, %struct.A3* %4, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %96, i8* noundef nonnull align 1 dereferenceable(3) %.in2, i64 3, i1 false)
  br label %97

97:                                               ; preds = %104, %95
  %.3 = phi i32 [ 0, %95 ], [ %105, %104 ]
  %98 = icmp ult i32 %.3, 3
  br i1 %98, label %99, label %106

99:                                               ; preds = %97
  %100 = zext i32 %.3 to i64
  %101 = getelementptr inbounds %struct.A3, %struct.A3* %4, i64 0, i32 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  call void @bar(i32 noundef 3, i32 noundef %103)
  br label %104

104:                                              ; preds = %99
  %105 = add nuw nsw i32 %.3, 1
  br label %97, !llvm.loop !8

106:                                              ; preds = %97
  %107 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %108 = load i32, i32* %107, align 16
  %109 = icmp ult i32 %108, 41
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %112 = load i8*, i8** %111, align 16
  %113 = sext i32 %108 to i64
  %114 = getelementptr i8, i8* %112, i64 %113
  %115 = add i32 %108, 8
  store i32 %115, i32* %107, align 16
  br label %120

116:                                              ; preds = %106
  %117 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr i8, i8* %118, i64 8
  store i8* %119, i8** %117, align 8
  br label %120

120:                                              ; preds = %116, %110
  %.in3 = phi i8* [ %114, %110 ], [ %118, %116 ]
  %121 = bitcast i8* %.in3 to i32*
  %122 = load i32, i32* %121, align 1
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %131, %120
  %.4 = phi i32 [ 0, %120 ], [ %132, %131 ]
  %124 = icmp ult i32 %.4, 4
  br i1 %124, label %125, label %133

125:                                              ; preds = %123
  %126 = bitcast i32* %5 to [4 x i8]*
  %127 = zext i32 %.4 to i64
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %126, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  call void @bar(i32 noundef 4, i32 noundef %130)
  br label %131

131:                                              ; preds = %125
  %132 = add nuw nsw i32 %.4, 1
  br label %123, !llvm.loop !9

133:                                              ; preds = %123
  %134 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %135 = load i32, i32* %134, align 16
  %136 = icmp ult i32 %135, 41
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %139 = load i8*, i8** %138, align 16
  %140 = sext i32 %135 to i64
  %141 = getelementptr i8, i8* %139, i64 %140
  %142 = add i32 %135, 8
  store i32 %142, i32* %134, align 16
  br label %147

143:                                              ; preds = %133
  %144 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr i8, i8* %145, i64 8
  store i8* %146, i8** %144, align 8
  br label %147

147:                                              ; preds = %143, %137
  %.in5 = phi i8* [ %141, %137 ], [ %145, %143 ]
  %148 = getelementptr inbounds %struct.A5, %struct.A5* %6, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %148, i8* noundef nonnull align 1 dereferenceable(5) %.in5, i64 5, i1 false)
  br label %149

149:                                              ; preds = %156, %147
  %.5 = phi i32 [ 0, %147 ], [ %157, %156 ]
  %150 = icmp ult i32 %.5, 5
  br i1 %150, label %151, label %158

151:                                              ; preds = %149
  %152 = zext i32 %.5 to i64
  %153 = getelementptr inbounds %struct.A5, %struct.A5* %6, i64 0, i32 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  call void @bar(i32 noundef 5, i32 noundef %155)
  br label %156

156:                                              ; preds = %151
  %157 = add nuw nsw i32 %.5, 1
  br label %149, !llvm.loop !10

158:                                              ; preds = %149
  %159 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %160 = load i32, i32* %159, align 16
  %161 = icmp ult i32 %160, 41
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %164 = load i8*, i8** %163, align 16
  %165 = sext i32 %160 to i64
  %166 = getelementptr i8, i8* %164, i64 %165
  %167 = add i32 %160, 8
  store i32 %167, i32* %159, align 16
  br label %172

168:                                              ; preds = %158
  %169 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr i8, i8* %170, i64 8
  store i8* %171, i8** %169, align 8
  br label %172

172:                                              ; preds = %168, %162
  %.in6 = phi i8* [ %166, %162 ], [ %170, %168 ]
  %173 = getelementptr inbounds %struct.A6, %struct.A6* %7, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %173, i8* noundef nonnull align 1 dereferenceable(6) %.in6, i64 6, i1 false)
  br label %174

174:                                              ; preds = %181, %172
  %.6 = phi i32 [ 0, %172 ], [ %182, %181 ]
  %175 = icmp ult i32 %.6, 6
  br i1 %175, label %176, label %183

176:                                              ; preds = %174
  %177 = zext i32 %.6 to i64
  %178 = getelementptr inbounds %struct.A6, %struct.A6* %7, i64 0, i32 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  call void @bar(i32 noundef 6, i32 noundef %180)
  br label %181

181:                                              ; preds = %176
  %182 = add nuw nsw i32 %.6, 1
  br label %174, !llvm.loop !11

183:                                              ; preds = %174
  %184 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %185 = load i32, i32* %184, align 16
  %186 = icmp ult i32 %185, 41
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %189 = load i8*, i8** %188, align 16
  %190 = sext i32 %185 to i64
  %191 = getelementptr i8, i8* %189, i64 %190
  %192 = add i32 %185, 8
  store i32 %192, i32* %184, align 16
  br label %197

193:                                              ; preds = %183
  %194 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr i8, i8* %195, i64 8
  store i8* %196, i8** %194, align 8
  br label %197

197:                                              ; preds = %193, %187
  %.in7 = phi i8* [ %191, %187 ], [ %195, %193 ]
  %198 = getelementptr inbounds %struct.A7, %struct.A7* %8, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %198, i8* noundef nonnull align 1 dereferenceable(7) %.in7, i64 7, i1 false)
  br label %199

199:                                              ; preds = %206, %197
  %.7 = phi i32 [ 0, %197 ], [ %207, %206 ]
  %200 = icmp ult i32 %.7, 7
  br i1 %200, label %201, label %208

201:                                              ; preds = %199
  %202 = zext i32 %.7 to i64
  %203 = getelementptr inbounds %struct.A7, %struct.A7* %8, i64 0, i32 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  call void @bar(i32 noundef 7, i32 noundef %205)
  br label %206

206:                                              ; preds = %201
  %207 = add nuw nsw i32 %.7, 1
  br label %199, !llvm.loop !12

208:                                              ; preds = %199
  %209 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %210 = load i32, i32* %209, align 16
  %211 = icmp ult i32 %210, 41
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %214 = load i8*, i8** %213, align 16
  %215 = sext i32 %210 to i64
  %216 = getelementptr i8, i8* %214, i64 %215
  %217 = add i32 %210, 8
  store i32 %217, i32* %209, align 16
  br label %222

218:                                              ; preds = %208
  %219 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr i8, i8* %220, i64 8
  store i8* %221, i8** %219, align 8
  br label %222

222:                                              ; preds = %218, %212
  %.in8 = phi i8* [ %216, %212 ], [ %220, %218 ]
  %223 = bitcast i8* %.in8 to i64*
  %224 = load i64, i64* %223, align 1
  store i64 %224, i64* %9, align 8
  br label %225

225:                                              ; preds = %233, %222
  %.8 = phi i32 [ 0, %222 ], [ %234, %233 ]
  %226 = icmp ult i32 %.8, 8
  br i1 %226, label %227, label %235

227:                                              ; preds = %225
  %228 = bitcast i64* %9 to [8 x i8]*
  %229 = zext i32 %.8 to i64
  %230 = getelementptr inbounds [8 x i8], [8 x i8]* %228, i64 0, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  call void @bar(i32 noundef 8, i32 noundef %232)
  br label %233

233:                                              ; preds = %227
  %234 = add nuw nsw i32 %.8, 1
  br label %225, !llvm.loop !13

235:                                              ; preds = %225
  %236 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %237 = load i32, i32* %236, align 16
  %238 = icmp ult i32 %237, 33
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %241 = load i8*, i8** %240, align 16
  %242 = sext i32 %237 to i64
  %243 = getelementptr i8, i8* %241, i64 %242
  %244 = add i32 %237, 16
  store i32 %244, i32* %236, align 16
  br label %249

245:                                              ; preds = %235
  %246 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr i8, i8* %247, i64 16
  store i8* %248, i8** %246, align 8
  br label %249

249:                                              ; preds = %245, %239
  %.in10 = phi i8* [ %243, %239 ], [ %247, %245 ]
  %250 = getelementptr inbounds %struct.A9, %struct.A9* %10, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %250, i8* noundef nonnull align 1 dereferenceable(9) %.in10, i64 9, i1 false)
  br label %251

251:                                              ; preds = %258, %249
  %.9 = phi i32 [ 0, %249 ], [ %259, %258 ]
  %252 = icmp ult i32 %.9, 9
  br i1 %252, label %253, label %260

253:                                              ; preds = %251
  %254 = zext i32 %.9 to i64
  %255 = getelementptr inbounds %struct.A9, %struct.A9* %10, i64 0, i32 0, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  call void @bar(i32 noundef 9, i32 noundef %257)
  br label %258

258:                                              ; preds = %253
  %259 = add nuw nsw i32 %.9, 1
  br label %251, !llvm.loop !14

260:                                              ; preds = %251
  %261 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %262 = load i32, i32* %261, align 16
  %263 = icmp ult i32 %262, 33
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %266 = load i8*, i8** %265, align 16
  %267 = sext i32 %262 to i64
  %268 = getelementptr i8, i8* %266, i64 %267
  %269 = add i32 %262, 16
  store i32 %269, i32* %261, align 16
  br label %274

270:                                              ; preds = %260
  %271 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr i8, i8* %272, i64 16
  store i8* %273, i8** %271, align 8
  br label %274

274:                                              ; preds = %270, %264
  %.in11 = phi i8* [ %268, %264 ], [ %272, %270 ]
  %275 = getelementptr inbounds %struct.A10, %struct.A10* %11, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %275, i8* noundef nonnull align 1 dereferenceable(10) %.in11, i64 10, i1 false)
  br label %276

276:                                              ; preds = %283, %274
  %.10 = phi i32 [ 0, %274 ], [ %284, %283 ]
  %277 = icmp ult i32 %.10, 10
  br i1 %277, label %278, label %285

278:                                              ; preds = %276
  %279 = zext i32 %.10 to i64
  %280 = getelementptr inbounds %struct.A10, %struct.A10* %11, i64 0, i32 0, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  call void @bar(i32 noundef 10, i32 noundef %282)
  br label %283

283:                                              ; preds = %278
  %284 = add nuw nsw i32 %.10, 1
  br label %276, !llvm.loop !15

285:                                              ; preds = %276
  %286 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %287 = load i32, i32* %286, align 16
  %288 = icmp ult i32 %287, 33
  br i1 %288, label %289, label %295

289:                                              ; preds = %285
  %290 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %291 = load i8*, i8** %290, align 16
  %292 = sext i32 %287 to i64
  %293 = getelementptr i8, i8* %291, i64 %292
  %294 = add i32 %287, 16
  store i32 %294, i32* %286, align 16
  br label %299

295:                                              ; preds = %285
  %296 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr i8, i8* %297, i64 16
  store i8* %298, i8** %296, align 8
  br label %299

299:                                              ; preds = %295, %289
  %.in12 = phi i8* [ %293, %289 ], [ %297, %295 ]
  %300 = getelementptr inbounds %struct.A11, %struct.A11* %12, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %300, i8* noundef nonnull align 1 dereferenceable(11) %.in12, i64 11, i1 false)
  br label %301

301:                                              ; preds = %308, %299
  %.11 = phi i32 [ 0, %299 ], [ %309, %308 ]
  %302 = icmp ult i32 %.11, 11
  br i1 %302, label %303, label %310

303:                                              ; preds = %301
  %304 = zext i32 %.11 to i64
  %305 = getelementptr inbounds %struct.A11, %struct.A11* %12, i64 0, i32 0, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  call void @bar(i32 noundef 11, i32 noundef %307)
  br label %308

308:                                              ; preds = %303
  %309 = add nuw nsw i32 %.11, 1
  br label %301, !llvm.loop !16

310:                                              ; preds = %301
  %311 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %312 = load i32, i32* %311, align 16
  %313 = icmp ult i32 %312, 33
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %316 = load i8*, i8** %315, align 16
  %317 = sext i32 %312 to i64
  %318 = getelementptr i8, i8* %316, i64 %317
  %319 = add i32 %312, 16
  store i32 %319, i32* %311, align 16
  br label %324

320:                                              ; preds = %310
  %321 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %322 = load i8*, i8** %321, align 8
  %323 = getelementptr i8, i8* %322, i64 16
  store i8* %323, i8** %321, align 8
  br label %324

324:                                              ; preds = %320, %314
  %.in13 = phi i8* [ %318, %314 ], [ %322, %320 ]
  %325 = getelementptr inbounds %struct.A12, %struct.A12* %13, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %325, i8* noundef nonnull align 1 dereferenceable(12) %.in13, i64 12, i1 false)
  br label %326

326:                                              ; preds = %333, %324
  %.12 = phi i32 [ 0, %324 ], [ %334, %333 ]
  %327 = icmp ult i32 %.12, 12
  br i1 %327, label %328, label %335

328:                                              ; preds = %326
  %329 = zext i32 %.12 to i64
  %330 = getelementptr inbounds %struct.A12, %struct.A12* %13, i64 0, i32 0, i64 %329
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  call void @bar(i32 noundef 12, i32 noundef %332)
  br label %333

333:                                              ; preds = %328
  %334 = add nuw nsw i32 %.12, 1
  br label %326, !llvm.loop !17

335:                                              ; preds = %326
  %336 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %337 = load i32, i32* %336, align 16
  %338 = icmp ult i32 %337, 33
  br i1 %338, label %339, label %345

339:                                              ; preds = %335
  %340 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %341 = load i8*, i8** %340, align 16
  %342 = sext i32 %337 to i64
  %343 = getelementptr i8, i8* %341, i64 %342
  %344 = add i32 %337, 16
  store i32 %344, i32* %336, align 16
  br label %349

345:                                              ; preds = %335
  %346 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %347 = load i8*, i8** %346, align 8
  %348 = getelementptr i8, i8* %347, i64 16
  store i8* %348, i8** %346, align 8
  br label %349

349:                                              ; preds = %345, %339
  %.in14 = phi i8* [ %343, %339 ], [ %347, %345 ]
  %350 = getelementptr inbounds %struct.A13, %struct.A13* %14, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %350, i8* noundef nonnull align 1 dereferenceable(13) %.in14, i64 13, i1 false)
  br label %351

351:                                              ; preds = %358, %349
  %.13 = phi i32 [ 0, %349 ], [ %359, %358 ]
  %352 = icmp ult i32 %.13, 13
  br i1 %352, label %353, label %360

353:                                              ; preds = %351
  %354 = zext i32 %.13 to i64
  %355 = getelementptr inbounds %struct.A13, %struct.A13* %14, i64 0, i32 0, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  call void @bar(i32 noundef 13, i32 noundef %357)
  br label %358

358:                                              ; preds = %353
  %359 = add nuw nsw i32 %.13, 1
  br label %351, !llvm.loop !18

360:                                              ; preds = %351
  %361 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %362 = load i32, i32* %361, align 16
  %363 = icmp ult i32 %362, 33
  br i1 %363, label %364, label %370

364:                                              ; preds = %360
  %365 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %366 = load i8*, i8** %365, align 16
  %367 = sext i32 %362 to i64
  %368 = getelementptr i8, i8* %366, i64 %367
  %369 = add i32 %362, 16
  store i32 %369, i32* %361, align 16
  br label %374

370:                                              ; preds = %360
  %371 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %372 = load i8*, i8** %371, align 8
  %373 = getelementptr i8, i8* %372, i64 16
  store i8* %373, i8** %371, align 8
  br label %374

374:                                              ; preds = %370, %364
  %.in15 = phi i8* [ %368, %364 ], [ %372, %370 ]
  %375 = getelementptr inbounds %struct.A14, %struct.A14* %15, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %375, i8* noundef nonnull align 1 dereferenceable(14) %.in15, i64 14, i1 false)
  br label %376

376:                                              ; preds = %383, %374
  %.14 = phi i32 [ 0, %374 ], [ %384, %383 ]
  %377 = icmp ult i32 %.14, 14
  br i1 %377, label %378, label %385

378:                                              ; preds = %376
  %379 = zext i32 %.14 to i64
  %380 = getelementptr inbounds %struct.A14, %struct.A14* %15, i64 0, i32 0, i64 %379
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  call void @bar(i32 noundef 14, i32 noundef %382)
  br label %383

383:                                              ; preds = %378
  %384 = add nuw nsw i32 %.14, 1
  br label %376, !llvm.loop !19

385:                                              ; preds = %376
  %386 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %387 = load i32, i32* %386, align 16
  %388 = icmp ult i32 %387, 33
  br i1 %388, label %389, label %395

389:                                              ; preds = %385
  %390 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %391 = load i8*, i8** %390, align 16
  %392 = sext i32 %387 to i64
  %393 = getelementptr i8, i8* %391, i64 %392
  %394 = add i32 %387, 16
  store i32 %394, i32* %386, align 16
  br label %399

395:                                              ; preds = %385
  %396 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %397 = load i8*, i8** %396, align 8
  %398 = getelementptr i8, i8* %397, i64 16
  store i8* %398, i8** %396, align 8
  br label %399

399:                                              ; preds = %395, %389
  %.in16 = phi i8* [ %393, %389 ], [ %397, %395 ]
  %400 = getelementptr inbounds %struct.A15, %struct.A15* %16, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(15) %400, i8* noundef nonnull align 1 dereferenceable(15) %.in16, i64 15, i1 false)
  br label %401

401:                                              ; preds = %408, %399
  %.15 = phi i32 [ 0, %399 ], [ %409, %408 ]
  %402 = icmp ult i32 %.15, 15
  br i1 %402, label %403, label %410

403:                                              ; preds = %401
  %404 = zext i32 %.15 to i64
  %405 = getelementptr inbounds %struct.A15, %struct.A15* %16, i64 0, i32 0, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = sext i8 %406 to i32
  call void @bar(i32 noundef 15, i32 noundef %407)
  br label %408

408:                                              ; preds = %403
  %409 = add nuw nsw i32 %.15, 1
  br label %401, !llvm.loop !20

410:                                              ; preds = %401
  %411 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 0
  %412 = load i32, i32* %411, align 16
  %413 = icmp ult i32 %412, 33
  br i1 %413, label %414, label %420

414:                                              ; preds = %410
  %415 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 3
  %416 = load i8*, i8** %415, align 16
  %417 = sext i32 %412 to i64
  %418 = getelementptr i8, i8* %416, i64 %417
  %419 = add i32 %412, 16
  store i32 %419, i32* %411, align 16
  br label %424

420:                                              ; preds = %410
  %421 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %422 = load i8*, i8** %421, align 8
  %423 = getelementptr i8, i8* %422, i64 16
  store i8* %423, i8** %421, align 8
  br label %424

424:                                              ; preds = %420, %414
  %.in17 = phi i8* [ %418, %414 ], [ %422, %420 ]
  %425 = getelementptr inbounds %struct.A16, %struct.A16* %17, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %425, i8* noundef nonnull align 1 dereferenceable(16) %.in17, i64 16, i1 false)
  br label %426

426:                                              ; preds = %433, %424
  %.16 = phi i32 [ 0, %424 ], [ %434, %433 ]
  %427 = icmp ult i32 %.16, 16
  br i1 %427, label %428, label %435

428:                                              ; preds = %426
  %429 = zext i32 %.16 to i64
  %430 = getelementptr inbounds %struct.A16, %struct.A16* %17, i64 0, i32 0, i64 %429
  %431 = load i8, i8* %430, align 1
  %432 = sext i8 %431 to i32
  call void @bar(i32 noundef 16, i32 noundef %432)
  br label %433

433:                                              ; preds = %428
  %434 = add nuw nsw i32 %.16, 1
  br label %426, !llvm.loop !21

435:                                              ; preds = %426
  %436 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %437 = load i8*, i8** %436, align 8
  %438 = getelementptr i8, i8* %437, i64 32
  store i8* %438, i8** %436, align 8
  %439 = getelementptr inbounds %struct.A31, %struct.A31* %18, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(31) %439, i8* noundef nonnull align 1 dereferenceable(31) %437, i64 31, i1 false)
  br label %440

440:                                              ; preds = %447, %435
  %.17 = phi i32 [ 0, %435 ], [ %448, %447 ]
  %441 = icmp ult i32 %.17, 31
  br i1 %441, label %442, label %449

442:                                              ; preds = %440
  %443 = zext i32 %.17 to i64
  %444 = getelementptr inbounds %struct.A31, %struct.A31* %18, i64 0, i32 0, i64 %443
  %445 = load i8, i8* %444, align 1
  %446 = sext i8 %445 to i32
  call void @bar(i32 noundef 31, i32 noundef %446)
  br label %447

447:                                              ; preds = %442
  %448 = add nuw nsw i32 %.17, 1
  br label %440, !llvm.loop !22

449:                                              ; preds = %440
  %450 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %451 = load i8*, i8** %450, align 8
  %452 = getelementptr i8, i8* %451, i64 32
  store i8* %452, i8** %450, align 8
  %453 = getelementptr inbounds %struct.A32, %struct.A32* %19, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %453, i8* noundef nonnull align 1 dereferenceable(32) %451, i64 32, i1 false)
  br label %454

454:                                              ; preds = %461, %449
  %.18 = phi i32 [ 0, %449 ], [ %462, %461 ]
  %455 = icmp ult i32 %.18, 32
  br i1 %455, label %456, label %463

456:                                              ; preds = %454
  %457 = zext i32 %.18 to i64
  %458 = getelementptr inbounds %struct.A32, %struct.A32* %19, i64 0, i32 0, i64 %457
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  call void @bar(i32 noundef 32, i32 noundef %460)
  br label %461

461:                                              ; preds = %456
  %462 = add nuw nsw i32 %.18, 1
  br label %454, !llvm.loop !23

463:                                              ; preds = %454
  %464 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %465 = load i8*, i8** %464, align 8
  %466 = getelementptr i8, i8* %465, i64 40
  store i8* %466, i8** %464, align 8
  %467 = getelementptr inbounds %struct.A35, %struct.A35* %20, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(35) %467, i8* noundef nonnull align 1 dereferenceable(35) %465, i64 35, i1 false)
  br label %468

468:                                              ; preds = %475, %463
  %.19 = phi i32 [ 0, %463 ], [ %476, %475 ]
  %469 = icmp ult i32 %.19, 35
  br i1 %469, label %470, label %477

470:                                              ; preds = %468
  %471 = zext i32 %.19 to i64
  %472 = getelementptr inbounds %struct.A35, %struct.A35* %20, i64 0, i32 0, i64 %471
  %473 = load i8, i8* %472, align 1
  %474 = sext i8 %473 to i32
  call void @bar(i32 noundef 35, i32 noundef %474)
  br label %475

475:                                              ; preds = %470
  %476 = add nuw nsw i32 %.19, 1
  br label %468, !llvm.loop !24

477:                                              ; preds = %468
  %478 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %22, i64 0, i64 0, i32 2
  %479 = load i8*, i8** %478, align 8
  %480 = getelementptr i8, i8* %479, i64 72
  store i8* %480, i8** %478, align 8
  %481 = getelementptr inbounds %struct.A72, %struct.A72* %21, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(72) %481, i8* noundef nonnull align 1 dereferenceable(72) %479, i64 72, i1 false)
  br label %482

482:                                              ; preds = %489, %477
  %.20 = phi i32 [ 0, %477 ], [ %490, %489 ]
  %483 = icmp ult i32 %.20, 72
  br i1 %483, label %484, label %491

484:                                              ; preds = %482
  %485 = zext i32 %.20 to i64
  %486 = getelementptr inbounds %struct.A72, %struct.A72* %21, i64 0, i32 0, i64 %485
  %487 = load i8, i8* %486, align 1
  %488 = sext i8 %487 to i32
  call void @bar(i32 noundef 72, i32 noundef %488)
  br label %489

489:                                              ; preds = %484
  %490 = add nuw nsw i32 %.20, 1
  br label %482, !llvm.loop !25

491:                                              ; preds = %482
  %492 = bitcast [1 x %struct.__va_list_tag]* %22 to i8*
  call void @llvm.va_end(i8* %492)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = alloca %struct.A1, align 1
  %2 = alloca i16, align 2
  %3 = alloca %struct.A3, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.A5, align 1
  %6 = alloca %struct.A6, align 1
  %7 = alloca %struct.A7, align 1
  %8 = alloca i64, align 8
  %9 = alloca %struct.A9, align 8
  %10 = alloca %struct.A10, align 8
  %11 = alloca %struct.A11, align 8
  %12 = alloca %struct.A12, align 8
  %13 = alloca %struct.A13, align 8
  %14 = alloca %struct.A14, align 8
  %15 = alloca %struct.A15, align 8
  %16 = alloca %struct.A16, align 8
  %17 = alloca %struct.A31, align 8
  %18 = alloca %struct.A32, align 8
  %19 = alloca %struct.A35, align 8
  %20 = alloca %struct.A72, align 8
  %21 = alloca i24, align 4
  %22 = alloca i40, align 8
  %23 = alloca i48, align 8
  %24 = alloca i56, align 8
  br label %25

25:                                               ; preds = %27, %0
  br i1 false, label %26, label %28

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26
  br label %25, !llvm.loop !26

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %35, %28
  %.1 = phi i32 [ 0, %28 ], [ %36, %35 ]
  %30 = icmp eq i32 %.1, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = trunc i32 %.1 to i8
  %33 = xor i8 %32, 8
  %34 = getelementptr inbounds %struct.A1, %struct.A1* %1, i64 0, i32 0, i64 0
  store i8 %33, i8* %34, align 1
  br label %35

35:                                               ; preds = %31
  %36 = add nuw nsw i32 %.1, 1
  br label %29, !llvm.loop !27

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %46, %37
  %.2 = phi i32 [ 0, %37 ], [ %47, %46 ]
  %39 = icmp ult i32 %.2, 2
  br i1 %39, label %40, label %48

40:                                               ; preds = %38
  %41 = trunc i32 %.2 to i8
  %42 = xor i8 %41, 16
  %43 = bitcast i16* %2 to [2 x i8]*
  %44 = zext i32 %.2 to i64
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %43, i64 0, i64 %44
  store i8 %42, i8* %45, align 1
  br label %46

46:                                               ; preds = %40
  %47 = add nuw nsw i32 %.2, 1
  br label %38, !llvm.loop !28

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %56, %48
  %.3 = phi i32 [ 0, %48 ], [ %57, %56 ]
  %50 = icmp ult i32 %.3, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %49
  %52 = trunc i32 %.3 to i8
  %53 = xor i8 %52, 24
  %54 = zext i32 %.3 to i64
  %55 = getelementptr inbounds %struct.A3, %struct.A3* %3, i64 0, i32 0, i64 %54
  store i8 %53, i8* %55, align 1
  br label %56

56:                                               ; preds = %51
  %57 = add nuw nsw i32 %.3, 1
  br label %49, !llvm.loop !29

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %67, %58
  %.4 = phi i32 [ 0, %58 ], [ %68, %67 ]
  %60 = icmp ult i32 %.4, 4
  br i1 %60, label %61, label %69

61:                                               ; preds = %59
  %62 = trunc i32 %.4 to i8
  %63 = xor i8 %62, 32
  %64 = bitcast i32* %4 to [4 x i8]*
  %65 = zext i32 %.4 to i64
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %64, i64 0, i64 %65
  store i8 %63, i8* %66, align 1
  br label %67

67:                                               ; preds = %61
  %68 = add nuw nsw i32 %.4, 1
  br label %59, !llvm.loop !30

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %77, %69
  %.5 = phi i32 [ 0, %69 ], [ %78, %77 ]
  %71 = icmp ult i32 %.5, 5
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = trunc i32 %.5 to i8
  %74 = xor i8 %73, 40
  %75 = zext i32 %.5 to i64
  %76 = getelementptr inbounds %struct.A5, %struct.A5* %5, i64 0, i32 0, i64 %75
  store i8 %74, i8* %76, align 1
  br label %77

77:                                               ; preds = %72
  %78 = add nuw nsw i32 %.5, 1
  br label %70, !llvm.loop !31

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %87, %79
  %.6 = phi i32 [ 0, %79 ], [ %88, %87 ]
  %81 = icmp ult i32 %.6, 6
  br i1 %81, label %82, label %89

82:                                               ; preds = %80
  %83 = trunc i32 %.6 to i8
  %84 = xor i8 %83, 48
  %85 = zext i32 %.6 to i64
  %86 = getelementptr inbounds %struct.A6, %struct.A6* %6, i64 0, i32 0, i64 %85
  store i8 %84, i8* %86, align 1
  br label %87

87:                                               ; preds = %82
  %88 = add nuw nsw i32 %.6, 1
  br label %80, !llvm.loop !32

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %97, %89
  %.7 = phi i32 [ 0, %89 ], [ %98, %97 ]
  %91 = icmp ult i32 %.7, 7
  br i1 %91, label %92, label %99

92:                                               ; preds = %90
  %93 = trunc i32 %.7 to i8
  %94 = xor i8 %93, 56
  %95 = zext i32 %.7 to i64
  %96 = getelementptr inbounds %struct.A7, %struct.A7* %7, i64 0, i32 0, i64 %95
  store i8 %94, i8* %96, align 1
  br label %97

97:                                               ; preds = %92
  %98 = add nuw nsw i32 %.7, 1
  br label %90, !llvm.loop !33

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %108, %99
  %.8 = phi i32 [ 0, %99 ], [ %109, %108 ]
  %101 = icmp ult i32 %.8, 8
  br i1 %101, label %102, label %110

102:                                              ; preds = %100
  %103 = trunc i32 %.8 to i8
  %104 = xor i8 %103, 64
  %105 = bitcast i64* %8 to [8 x i8]*
  %106 = zext i32 %.8 to i64
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %105, i64 0, i64 %106
  store i8 %104, i8* %107, align 1
  br label %108

108:                                              ; preds = %102
  %109 = add nuw nsw i32 %.8, 1
  br label %100, !llvm.loop !34

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %118, %110
  %.9 = phi i32 [ 0, %110 ], [ %119, %118 ]
  %112 = icmp ult i32 %.9, 9
  br i1 %112, label %113, label %120

113:                                              ; preds = %111
  %114 = trunc i32 %.9 to i8
  %115 = xor i8 %114, 72
  %116 = zext i32 %.9 to i64
  %117 = getelementptr inbounds %struct.A9, %struct.A9* %9, i64 0, i32 0, i64 %116
  store i8 %115, i8* %117, align 1
  br label %118

118:                                              ; preds = %113
  %119 = add nuw nsw i32 %.9, 1
  br label %111, !llvm.loop !35

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %128, %120
  %.10 = phi i32 [ 0, %120 ], [ %129, %128 ]
  %122 = icmp ult i32 %.10, 10
  br i1 %122, label %123, label %130

123:                                              ; preds = %121
  %124 = trunc i32 %.10 to i8
  %125 = xor i8 %124, 80
  %126 = zext i32 %.10 to i64
  %127 = getelementptr inbounds %struct.A10, %struct.A10* %10, i64 0, i32 0, i64 %126
  store i8 %125, i8* %127, align 1
  br label %128

128:                                              ; preds = %123
  %129 = add nuw nsw i32 %.10, 1
  br label %121, !llvm.loop !36

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %138, %130
  %.11 = phi i32 [ 0, %130 ], [ %139, %138 ]
  %132 = icmp ult i32 %.11, 11
  br i1 %132, label %133, label %140

133:                                              ; preds = %131
  %134 = trunc i32 %.11 to i8
  %135 = xor i8 %134, 88
  %136 = zext i32 %.11 to i64
  %137 = getelementptr inbounds %struct.A11, %struct.A11* %11, i64 0, i32 0, i64 %136
  store i8 %135, i8* %137, align 1
  br label %138

138:                                              ; preds = %133
  %139 = add nuw nsw i32 %.11, 1
  br label %131, !llvm.loop !37

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %148, %140
  %.12 = phi i32 [ 0, %140 ], [ %149, %148 ]
  %142 = icmp ult i32 %.12, 12
  br i1 %142, label %143, label %150

143:                                              ; preds = %141
  %144 = trunc i32 %.12 to i8
  %145 = xor i8 %144, 96
  %146 = zext i32 %.12 to i64
  %147 = getelementptr inbounds %struct.A12, %struct.A12* %12, i64 0, i32 0, i64 %146
  store i8 %145, i8* %147, align 1
  br label %148

148:                                              ; preds = %143
  %149 = add nuw nsw i32 %.12, 1
  br label %141, !llvm.loop !38

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %158, %150
  %.13 = phi i32 [ 0, %150 ], [ %159, %158 ]
  %152 = icmp ult i32 %.13, 13
  br i1 %152, label %153, label %160

153:                                              ; preds = %151
  %154 = trunc i32 %.13 to i8
  %155 = xor i8 %154, 104
  %156 = zext i32 %.13 to i64
  %157 = getelementptr inbounds %struct.A13, %struct.A13* %13, i64 0, i32 0, i64 %156
  store i8 %155, i8* %157, align 1
  br label %158

158:                                              ; preds = %153
  %159 = add nuw nsw i32 %.13, 1
  br label %151, !llvm.loop !39

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %168, %160
  %.14 = phi i32 [ 0, %160 ], [ %169, %168 ]
  %162 = icmp ult i32 %.14, 14
  br i1 %162, label %163, label %170

163:                                              ; preds = %161
  %164 = trunc i32 %.14 to i8
  %165 = xor i8 %164, 112
  %166 = zext i32 %.14 to i64
  %167 = getelementptr inbounds %struct.A14, %struct.A14* %14, i64 0, i32 0, i64 %166
  store i8 %165, i8* %167, align 1
  br label %168

168:                                              ; preds = %163
  %169 = add nuw nsw i32 %.14, 1
  br label %161, !llvm.loop !40

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %178, %170
  %.15 = phi i32 [ 0, %170 ], [ %179, %178 ]
  %172 = icmp ult i32 %.15, 15
  br i1 %172, label %173, label %180

173:                                              ; preds = %171
  %174 = trunc i32 %.15 to i8
  %175 = xor i8 %174, 120
  %176 = zext i32 %.15 to i64
  %177 = getelementptr inbounds %struct.A15, %struct.A15* %15, i64 0, i32 0, i64 %176
  store i8 %175, i8* %177, align 1
  br label %178

178:                                              ; preds = %173
  %179 = add nuw nsw i32 %.15, 1
  br label %171, !llvm.loop !41

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %188, %180
  %.16 = phi i32 [ 0, %180 ], [ %189, %188 ]
  %182 = icmp ult i32 %.16, 16
  br i1 %182, label %183, label %190

183:                                              ; preds = %181
  %184 = trunc i32 %.16 to i8
  %185 = xor i8 %184, -128
  %186 = zext i32 %.16 to i64
  %187 = getelementptr inbounds %struct.A16, %struct.A16* %16, i64 0, i32 0, i64 %186
  store i8 %185, i8* %187, align 1
  br label %188

188:                                              ; preds = %183
  %189 = add nuw nsw i32 %.16, 1
  br label %181, !llvm.loop !42

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %198, %190
  %.17 = phi i32 [ 0, %190 ], [ %199, %198 ]
  %192 = icmp ult i32 %.17, 31
  br i1 %192, label %193, label %200

193:                                              ; preds = %191
  %194 = trunc i32 %.17 to i8
  %195 = xor i8 %194, -8
  %196 = zext i32 %.17 to i64
  %197 = getelementptr inbounds %struct.A31, %struct.A31* %17, i64 0, i32 0, i64 %196
  store i8 %195, i8* %197, align 1
  br label %198

198:                                              ; preds = %193
  %199 = add nuw nsw i32 %.17, 1
  br label %191, !llvm.loop !43

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %207, %200
  %.18 = phi i32 [ 0, %200 ], [ %208, %207 ]
  %202 = icmp ult i32 %.18, 32
  br i1 %202, label %203, label %209

203:                                              ; preds = %201
  %204 = trunc i32 %.18 to i8
  %205 = zext i32 %.18 to i64
  %206 = getelementptr inbounds %struct.A32, %struct.A32* %18, i64 0, i32 0, i64 %205
  store i8 %204, i8* %206, align 1
  br label %207

207:                                              ; preds = %203
  %208 = add nuw nsw i32 %.18, 1
  br label %201, !llvm.loop !44

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %217, %209
  %.19 = phi i32 [ 0, %209 ], [ %218, %217 ]
  %211 = icmp ult i32 %.19, 35
  br i1 %211, label %212, label %219

212:                                              ; preds = %210
  %213 = trunc i32 %.19 to i8
  %214 = xor i8 %213, 24
  %215 = zext i32 %.19 to i64
  %216 = getelementptr inbounds %struct.A35, %struct.A35* %19, i64 0, i32 0, i64 %215
  store i8 %214, i8* %216, align 1
  br label %217

217:                                              ; preds = %212
  %218 = add nuw nsw i32 %.19, 1
  br label %210, !llvm.loop !45

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %227, %219
  %.20 = phi i32 [ 0, %219 ], [ %228, %227 ]
  %221 = icmp ult i32 %.20, 72
  br i1 %221, label %222, label %229

222:                                              ; preds = %220
  %223 = trunc i32 %.20 to i8
  %224 = xor i8 %223, 64
  %225 = zext i32 %.20 to i64
  %226 = getelementptr inbounds %struct.A72, %struct.A72* %20, i64 0, i32 0, i64 %225
  store i8 %224, i8* %226, align 1
  br label %227

227:                                              ; preds = %222
  %228 = add nuw nsw i32 %.20, 1
  br label %220, !llvm.loop !46

229:                                              ; preds = %220
  %230 = getelementptr inbounds %struct.A1, %struct.A1* %1, i64 0, i32 0, i64 0
  %231 = load i8, i8* %230, align 1
  %232 = load i16, i16* %2, align 2
  %233 = bitcast i24* %21 to i8*
  %234 = getelementptr inbounds %struct.A3, %struct.A3* %3, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(3) %233, i8* noundef nonnull align 1 dereferenceable(3) %234, i64 3, i1 false)
  %235 = load i24, i24* %21, align 4
  %236 = load i32, i32* %4, align 4
  %237 = bitcast i40* %22 to i8*
  %238 = getelementptr inbounds %struct.A5, %struct.A5* %5, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(5) %237, i8* noundef nonnull align 1 dereferenceable(5) %238, i64 5, i1 false)
  %239 = load i40, i40* %22, align 8
  %240 = bitcast i48* %23 to i8*
  %241 = getelementptr inbounds %struct.A6, %struct.A6* %6, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(6) %240, i8* noundef nonnull align 1 dereferenceable(6) %241, i64 6, i1 false)
  %242 = load i48, i48* %23, align 8
  %243 = bitcast i56* %24 to i8*
  %244 = getelementptr inbounds %struct.A7, %struct.A7* %7, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(7) %243, i8* noundef nonnull align 1 dereferenceable(7) %244, i64 7, i1 false)
  %245 = load i56, i56* %24, align 8
  %246 = load i64, i64* %8, align 8
  call void (i32, ...) @foo(i32 noundef 21, i8 %231, i16 %232, i24 %235, i32 %236, i40 %239, i48 %242, i56 %245, i64 %246, %struct.A9* noundef nonnull byval(%struct.A9) align 8 %9, %struct.A10* noundef nonnull byval(%struct.A10) align 8 %10, %struct.A11* noundef nonnull byval(%struct.A11) align 8 %11, %struct.A12* noundef nonnull byval(%struct.A12) align 8 %12, %struct.A13* noundef nonnull byval(%struct.A13) align 8 %13, %struct.A14* noundef nonnull byval(%struct.A14) align 8 %14, %struct.A15* noundef nonnull byval(%struct.A15) align 8 %15, %struct.A16* noundef nonnull byval(%struct.A16) align 8 %16, %struct.A31* noundef nonnull byval(%struct.A31) align 8 %17, %struct.A32* noundef nonnull byval(%struct.A32) align 8 %18, %struct.A35* noundef nonnull byval(%struct.A35) align 8 %19, %struct.A72* noundef nonnull byval(%struct.A72) align 8 %20)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
