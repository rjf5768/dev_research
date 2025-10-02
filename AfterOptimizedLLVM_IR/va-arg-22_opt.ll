; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-22.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A0 = type { [0 x i8] }
%struct.A1 = type { [1 x i8] }
%struct.A2 = type { [2 x i8] }
%struct.A3 = type { [3 x i8] }
%struct.A4 = type { [4 x i8] }
%struct.A5 = type { [5 x i8] }
%struct.A6 = type { [6 x i8] }
%struct.A7 = type { [7 x i8] }
%struct.A8 = type { [8 x i8] }
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @bar.lastn, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @bar.lastc, align 4
  %10 = load i32, i32* @bar.lastn, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @abort() #4
  unreachable

13:                                               ; preds = %8
  store i32 0, i32* @bar.lastc, align 4
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* @bar.lastn, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @bar.lastc, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 3
  %20 = xor i32 %17, %19
  %21 = trunc i32 %20 to i8
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  call void @abort() #4
  unreachable

25:                                               ; preds = %15
  %26 = load i32, i32* @bar.lastc, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @bar.lastc, align 4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.A0, align 1
  %4 = alloca %struct.A1, align 1
  %5 = alloca %struct.A2, align 1
  %6 = alloca %struct.A3, align 1
  %7 = alloca %struct.A4, align 1
  %8 = alloca %struct.A5, align 1
  %9 = alloca %struct.A6, align 1
  %10 = alloca %struct.A7, align 1
  %11 = alloca %struct.A8, align 1
  %12 = alloca %struct.A9, align 1
  %13 = alloca %struct.A10, align 1
  %14 = alloca %struct.A11, align 1
  %15 = alloca %struct.A12, align 1
  %16 = alloca %struct.A13, align 1
  %17 = alloca %struct.A14, align 1
  %18 = alloca %struct.A15, align 1
  %19 = alloca %struct.A16, align 1
  %20 = alloca %struct.A31, align 1
  %21 = alloca %struct.A32, align 1
  %22 = alloca %struct.A35, align 1
  %23 = alloca %struct.A72, align 1
  %24 = alloca [1 x %struct.__va_list_tag], align 16
  %25 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 21
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  call void @abort() #4
  unreachable

29:                                               ; preds = %1
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %31 = bitcast %struct.__va_list_tag* %30 to i8*
  call void @llvm.va_start(i8* %31)
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.A0*
  %36 = getelementptr i8, i8* %34, i32 0
  store i8* %36, i8** %33, align 8
  %37 = bitcast %struct.A0* %3 to i8*
  %38 = bitcast %struct.A0* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 0, i1 false)
  store i32 0, i32* %25, align 4
  br label %39

39:                                               ; preds = %49, %29
  %40 = load i32, i32* %25, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.A0, %struct.A0* %3, i32 0, i32 0
  %44 = load i32, i32* %25, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [0 x i8], [0 x i8]* %43, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  call void @bar(i32 noundef 0, i32 noundef %48)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %25, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %25, align 4
  br label %39, !llvm.loop !4

52:                                               ; preds = %39
  %53 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 16
  %56 = icmp ule i32 %55, 40
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %53, i32 0, i32 3
  %59 = load i8*, i8** %58, align 16
  %60 = getelementptr i8, i8* %59, i32 %55
  %61 = bitcast i8* %60 to %struct.A1*
  %62 = add i32 %55, 8
  store i32 %62, i32* %54, align 16
  br label %68

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %53, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.A1*
  %67 = getelementptr i8, i8* %65, i32 8
  store i8* %67, i8** %64, align 8
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi %struct.A1* [ %61, %57 ], [ %66, %63 ]
  %70 = bitcast %struct.A1* %4 to i8*
  %71 = bitcast %struct.A1* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %70, i8* align 1 %71, i64 1, i1 false)
  store i32 0, i32* %25, align 4
  br label %72

72:                                               ; preds = %82, %68
  %73 = load i32, i32* %25, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.A1, %struct.A1* %4, i32 0, i32 0
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [1 x i8], [1 x i8]* %76, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  call void @bar(i32 noundef 1, i32 noundef %81)
  br label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %25, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %25, align 4
  br label %72, !llvm.loop !6

85:                                               ; preds = %72
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 16
  %89 = icmp ule i32 %88, 40
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 3
  %92 = load i8*, i8** %91, align 16
  %93 = getelementptr i8, i8* %92, i32 %88
  %94 = bitcast i8* %93 to %struct.A2*
  %95 = add i32 %88, 8
  store i32 %95, i32* %87, align 16
  br label %101

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %98 to %struct.A2*
  %100 = getelementptr i8, i8* %98, i32 8
  store i8* %100, i8** %97, align 8
  br label %101

101:                                              ; preds = %96, %90
  %102 = phi %struct.A2* [ %94, %90 ], [ %99, %96 ]
  %103 = bitcast %struct.A2* %5 to i8*
  %104 = bitcast %struct.A2* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %103, i8* align 1 %104, i64 2, i1 false)
  store i32 0, i32* %25, align 4
  br label %105

105:                                              ; preds = %115, %101
  %106 = load i32, i32* %25, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.A2, %struct.A2* %5, i32 0, i32 0
  %110 = load i32, i32* %25, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i8], [2 x i8]* %109, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  call void @bar(i32 noundef 2, i32 noundef %114)
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %25, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %25, align 4
  br label %105, !llvm.loop !7

118:                                              ; preds = %105
  %119 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %120 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 16
  %122 = icmp ule i32 %121, 40
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %119, i32 0, i32 3
  %125 = load i8*, i8** %124, align 16
  %126 = getelementptr i8, i8* %125, i32 %121
  %127 = bitcast i8* %126 to %struct.A3*
  %128 = add i32 %121, 8
  store i32 %128, i32* %120, align 16
  br label %134

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %119, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = bitcast i8* %131 to %struct.A3*
  %133 = getelementptr i8, i8* %131, i32 8
  store i8* %133, i8** %130, align 8
  br label %134

134:                                              ; preds = %129, %123
  %135 = phi %struct.A3* [ %127, %123 ], [ %132, %129 ]
  %136 = bitcast %struct.A3* %6 to i8*
  %137 = bitcast %struct.A3* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %136, i8* align 1 %137, i64 3, i1 false)
  store i32 0, i32* %25, align 4
  br label %138

138:                                              ; preds = %148, %134
  %139 = load i32, i32* %25, align 4
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.A3, %struct.A3* %6, i32 0, i32 0
  %143 = load i32, i32* %25, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x i8], [3 x i8]* %142, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  call void @bar(i32 noundef 3, i32 noundef %147)
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %25, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %25, align 4
  br label %138, !llvm.loop !8

151:                                              ; preds = %138
  %152 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %153 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 16
  %155 = icmp ule i32 %154, 40
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %152, i32 0, i32 3
  %158 = load i8*, i8** %157, align 16
  %159 = getelementptr i8, i8* %158, i32 %154
  %160 = bitcast i8* %159 to %struct.A4*
  %161 = add i32 %154, 8
  store i32 %161, i32* %153, align 16
  br label %167

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %152, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = bitcast i8* %164 to %struct.A4*
  %166 = getelementptr i8, i8* %164, i32 8
  store i8* %166, i8** %163, align 8
  br label %167

167:                                              ; preds = %162, %156
  %168 = phi %struct.A4* [ %160, %156 ], [ %165, %162 ]
  %169 = bitcast %struct.A4* %7 to i8*
  %170 = bitcast %struct.A4* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %169, i8* align 1 %170, i64 4, i1 false)
  store i32 0, i32* %25, align 4
  br label %171

171:                                              ; preds = %181, %167
  %172 = load i32, i32* %25, align 4
  %173 = icmp slt i32 %172, 4
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.A4, %struct.A4* %7, i32 0, i32 0
  %176 = load i32, i32* %25, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i8], [4 x i8]* %175, i64 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  call void @bar(i32 noundef 4, i32 noundef %180)
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %25, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %25, align 4
  br label %171, !llvm.loop !9

184:                                              ; preds = %171
  %185 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %186 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 16
  %188 = icmp ule i32 %187, 40
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %185, i32 0, i32 3
  %191 = load i8*, i8** %190, align 16
  %192 = getelementptr i8, i8* %191, i32 %187
  %193 = bitcast i8* %192 to %struct.A5*
  %194 = add i32 %187, 8
  store i32 %194, i32* %186, align 16
  br label %200

195:                                              ; preds = %184
  %196 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %185, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = bitcast i8* %197 to %struct.A5*
  %199 = getelementptr i8, i8* %197, i32 8
  store i8* %199, i8** %196, align 8
  br label %200

200:                                              ; preds = %195, %189
  %201 = phi %struct.A5* [ %193, %189 ], [ %198, %195 ]
  %202 = bitcast %struct.A5* %8 to i8*
  %203 = bitcast %struct.A5* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %202, i8* align 1 %203, i64 5, i1 false)
  store i32 0, i32* %25, align 4
  br label %204

204:                                              ; preds = %214, %200
  %205 = load i32, i32* %25, align 4
  %206 = icmp slt i32 %205, 5
  br i1 %206, label %207, label %217

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.A5, %struct.A5* %8, i32 0, i32 0
  %209 = load i32, i32* %25, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [5 x i8], [5 x i8]* %208, i64 0, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  call void @bar(i32 noundef 5, i32 noundef %213)
  br label %214

214:                                              ; preds = %207
  %215 = load i32, i32* %25, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %25, align 4
  br label %204, !llvm.loop !10

217:                                              ; preds = %204
  %218 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %219 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 16
  %221 = icmp ule i32 %220, 40
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %218, i32 0, i32 3
  %224 = load i8*, i8** %223, align 16
  %225 = getelementptr i8, i8* %224, i32 %220
  %226 = bitcast i8* %225 to %struct.A6*
  %227 = add i32 %220, 8
  store i32 %227, i32* %219, align 16
  br label %233

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %218, i32 0, i32 2
  %230 = load i8*, i8** %229, align 8
  %231 = bitcast i8* %230 to %struct.A6*
  %232 = getelementptr i8, i8* %230, i32 8
  store i8* %232, i8** %229, align 8
  br label %233

233:                                              ; preds = %228, %222
  %234 = phi %struct.A6* [ %226, %222 ], [ %231, %228 ]
  %235 = bitcast %struct.A6* %9 to i8*
  %236 = bitcast %struct.A6* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %235, i8* align 1 %236, i64 6, i1 false)
  store i32 0, i32* %25, align 4
  br label %237

237:                                              ; preds = %247, %233
  %238 = load i32, i32* %25, align 4
  %239 = icmp slt i32 %238, 6
  br i1 %239, label %240, label %250

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.A6, %struct.A6* %9, i32 0, i32 0
  %242 = load i32, i32* %25, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [6 x i8], [6 x i8]* %241, i64 0, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  call void @bar(i32 noundef 6, i32 noundef %246)
  br label %247

247:                                              ; preds = %240
  %248 = load i32, i32* %25, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %25, align 4
  br label %237, !llvm.loop !11

250:                                              ; preds = %237
  %251 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %252 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 16
  %254 = icmp ule i32 %253, 40
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %251, i32 0, i32 3
  %257 = load i8*, i8** %256, align 16
  %258 = getelementptr i8, i8* %257, i32 %253
  %259 = bitcast i8* %258 to %struct.A7*
  %260 = add i32 %253, 8
  store i32 %260, i32* %252, align 16
  br label %266

261:                                              ; preds = %250
  %262 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %251, i32 0, i32 2
  %263 = load i8*, i8** %262, align 8
  %264 = bitcast i8* %263 to %struct.A7*
  %265 = getelementptr i8, i8* %263, i32 8
  store i8* %265, i8** %262, align 8
  br label %266

266:                                              ; preds = %261, %255
  %267 = phi %struct.A7* [ %259, %255 ], [ %264, %261 ]
  %268 = bitcast %struct.A7* %10 to i8*
  %269 = bitcast %struct.A7* %267 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %268, i8* align 1 %269, i64 7, i1 false)
  store i32 0, i32* %25, align 4
  br label %270

270:                                              ; preds = %280, %266
  %271 = load i32, i32* %25, align 4
  %272 = icmp slt i32 %271, 7
  br i1 %272, label %273, label %283

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.A7, %struct.A7* %10, i32 0, i32 0
  %275 = load i32, i32* %25, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [7 x i8], [7 x i8]* %274, i64 0, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  call void @bar(i32 noundef 7, i32 noundef %279)
  br label %280

280:                                              ; preds = %273
  %281 = load i32, i32* %25, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %25, align 4
  br label %270, !llvm.loop !12

283:                                              ; preds = %270
  %284 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %285 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 16
  %287 = icmp ule i32 %286, 40
  br i1 %287, label %288, label %294

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %284, i32 0, i32 3
  %290 = load i8*, i8** %289, align 16
  %291 = getelementptr i8, i8* %290, i32 %286
  %292 = bitcast i8* %291 to %struct.A8*
  %293 = add i32 %286, 8
  store i32 %293, i32* %285, align 16
  br label %299

294:                                              ; preds = %283
  %295 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %284, i32 0, i32 2
  %296 = load i8*, i8** %295, align 8
  %297 = bitcast i8* %296 to %struct.A8*
  %298 = getelementptr i8, i8* %296, i32 8
  store i8* %298, i8** %295, align 8
  br label %299

299:                                              ; preds = %294, %288
  %300 = phi %struct.A8* [ %292, %288 ], [ %297, %294 ]
  %301 = bitcast %struct.A8* %11 to i8*
  %302 = bitcast %struct.A8* %300 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %301, i8* align 1 %302, i64 8, i1 false)
  store i32 0, i32* %25, align 4
  br label %303

303:                                              ; preds = %313, %299
  %304 = load i32, i32* %25, align 4
  %305 = icmp slt i32 %304, 8
  br i1 %305, label %306, label %316

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.A8, %struct.A8* %11, i32 0, i32 0
  %308 = load i32, i32* %25, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [8 x i8], [8 x i8]* %307, i64 0, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  call void @bar(i32 noundef 8, i32 noundef %312)
  br label %313

313:                                              ; preds = %306
  %314 = load i32, i32* %25, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %25, align 4
  br label %303, !llvm.loop !13

316:                                              ; preds = %303
  %317 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %318 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 16
  %320 = icmp ule i32 %319, 32
  br i1 %320, label %321, label %327

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %317, i32 0, i32 3
  %323 = load i8*, i8** %322, align 16
  %324 = getelementptr i8, i8* %323, i32 %319
  %325 = bitcast i8* %324 to %struct.A9*
  %326 = add i32 %319, 16
  store i32 %326, i32* %318, align 16
  br label %332

327:                                              ; preds = %316
  %328 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %317, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = bitcast i8* %329 to %struct.A9*
  %331 = getelementptr i8, i8* %329, i32 16
  store i8* %331, i8** %328, align 8
  br label %332

332:                                              ; preds = %327, %321
  %333 = phi %struct.A9* [ %325, %321 ], [ %330, %327 ]
  %334 = bitcast %struct.A9* %12 to i8*
  %335 = bitcast %struct.A9* %333 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %334, i8* align 1 %335, i64 9, i1 false)
  store i32 0, i32* %25, align 4
  br label %336

336:                                              ; preds = %346, %332
  %337 = load i32, i32* %25, align 4
  %338 = icmp slt i32 %337, 9
  br i1 %338, label %339, label %349

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.A9, %struct.A9* %12, i32 0, i32 0
  %341 = load i32, i32* %25, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [9 x i8], [9 x i8]* %340, i64 0, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  call void @bar(i32 noundef 9, i32 noundef %345)
  br label %346

346:                                              ; preds = %339
  %347 = load i32, i32* %25, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %25, align 4
  br label %336, !llvm.loop !14

349:                                              ; preds = %336
  %350 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %351 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 16
  %353 = icmp ule i32 %352, 32
  br i1 %353, label %354, label %360

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %350, i32 0, i32 3
  %356 = load i8*, i8** %355, align 16
  %357 = getelementptr i8, i8* %356, i32 %352
  %358 = bitcast i8* %357 to %struct.A10*
  %359 = add i32 %352, 16
  store i32 %359, i32* %351, align 16
  br label %365

360:                                              ; preds = %349
  %361 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %350, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = bitcast i8* %362 to %struct.A10*
  %364 = getelementptr i8, i8* %362, i32 16
  store i8* %364, i8** %361, align 8
  br label %365

365:                                              ; preds = %360, %354
  %366 = phi %struct.A10* [ %358, %354 ], [ %363, %360 ]
  %367 = bitcast %struct.A10* %13 to i8*
  %368 = bitcast %struct.A10* %366 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %367, i8* align 1 %368, i64 10, i1 false)
  store i32 0, i32* %25, align 4
  br label %369

369:                                              ; preds = %379, %365
  %370 = load i32, i32* %25, align 4
  %371 = icmp slt i32 %370, 10
  br i1 %371, label %372, label %382

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.A10, %struct.A10* %13, i32 0, i32 0
  %374 = load i32, i32* %25, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [10 x i8], [10 x i8]* %373, i64 0, i64 %375
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  call void @bar(i32 noundef 10, i32 noundef %378)
  br label %379

379:                                              ; preds = %372
  %380 = load i32, i32* %25, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %25, align 4
  br label %369, !llvm.loop !15

382:                                              ; preds = %369
  %383 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %384 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 16
  %386 = icmp ule i32 %385, 32
  br i1 %386, label %387, label %393

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %383, i32 0, i32 3
  %389 = load i8*, i8** %388, align 16
  %390 = getelementptr i8, i8* %389, i32 %385
  %391 = bitcast i8* %390 to %struct.A11*
  %392 = add i32 %385, 16
  store i32 %392, i32* %384, align 16
  br label %398

393:                                              ; preds = %382
  %394 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %383, i32 0, i32 2
  %395 = load i8*, i8** %394, align 8
  %396 = bitcast i8* %395 to %struct.A11*
  %397 = getelementptr i8, i8* %395, i32 16
  store i8* %397, i8** %394, align 8
  br label %398

398:                                              ; preds = %393, %387
  %399 = phi %struct.A11* [ %391, %387 ], [ %396, %393 ]
  %400 = bitcast %struct.A11* %14 to i8*
  %401 = bitcast %struct.A11* %399 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %400, i8* align 1 %401, i64 11, i1 false)
  store i32 0, i32* %25, align 4
  br label %402

402:                                              ; preds = %412, %398
  %403 = load i32, i32* %25, align 4
  %404 = icmp slt i32 %403, 11
  br i1 %404, label %405, label %415

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct.A11, %struct.A11* %14, i32 0, i32 0
  %407 = load i32, i32* %25, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [11 x i8], [11 x i8]* %406, i64 0, i64 %408
  %410 = load i8, i8* %409, align 1
  %411 = sext i8 %410 to i32
  call void @bar(i32 noundef 11, i32 noundef %411)
  br label %412

412:                                              ; preds = %405
  %413 = load i32, i32* %25, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %25, align 4
  br label %402, !llvm.loop !16

415:                                              ; preds = %402
  %416 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %417 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 16
  %419 = icmp ule i32 %418, 32
  br i1 %419, label %420, label %426

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %416, i32 0, i32 3
  %422 = load i8*, i8** %421, align 16
  %423 = getelementptr i8, i8* %422, i32 %418
  %424 = bitcast i8* %423 to %struct.A12*
  %425 = add i32 %418, 16
  store i32 %425, i32* %417, align 16
  br label %431

426:                                              ; preds = %415
  %427 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %416, i32 0, i32 2
  %428 = load i8*, i8** %427, align 8
  %429 = bitcast i8* %428 to %struct.A12*
  %430 = getelementptr i8, i8* %428, i32 16
  store i8* %430, i8** %427, align 8
  br label %431

431:                                              ; preds = %426, %420
  %432 = phi %struct.A12* [ %424, %420 ], [ %429, %426 ]
  %433 = bitcast %struct.A12* %15 to i8*
  %434 = bitcast %struct.A12* %432 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %433, i8* align 1 %434, i64 12, i1 false)
  store i32 0, i32* %25, align 4
  br label %435

435:                                              ; preds = %445, %431
  %436 = load i32, i32* %25, align 4
  %437 = icmp slt i32 %436, 12
  br i1 %437, label %438, label %448

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.A12, %struct.A12* %15, i32 0, i32 0
  %440 = load i32, i32* %25, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [12 x i8], [12 x i8]* %439, i64 0, i64 %441
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  call void @bar(i32 noundef 12, i32 noundef %444)
  br label %445

445:                                              ; preds = %438
  %446 = load i32, i32* %25, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %25, align 4
  br label %435, !llvm.loop !17

448:                                              ; preds = %435
  %449 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %450 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 16
  %452 = icmp ule i32 %451, 32
  br i1 %452, label %453, label %459

453:                                              ; preds = %448
  %454 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %449, i32 0, i32 3
  %455 = load i8*, i8** %454, align 16
  %456 = getelementptr i8, i8* %455, i32 %451
  %457 = bitcast i8* %456 to %struct.A13*
  %458 = add i32 %451, 16
  store i32 %458, i32* %450, align 16
  br label %464

459:                                              ; preds = %448
  %460 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %449, i32 0, i32 2
  %461 = load i8*, i8** %460, align 8
  %462 = bitcast i8* %461 to %struct.A13*
  %463 = getelementptr i8, i8* %461, i32 16
  store i8* %463, i8** %460, align 8
  br label %464

464:                                              ; preds = %459, %453
  %465 = phi %struct.A13* [ %457, %453 ], [ %462, %459 ]
  %466 = bitcast %struct.A13* %16 to i8*
  %467 = bitcast %struct.A13* %465 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %466, i8* align 1 %467, i64 13, i1 false)
  store i32 0, i32* %25, align 4
  br label %468

468:                                              ; preds = %478, %464
  %469 = load i32, i32* %25, align 4
  %470 = icmp slt i32 %469, 13
  br i1 %470, label %471, label %481

471:                                              ; preds = %468
  %472 = getelementptr inbounds %struct.A13, %struct.A13* %16, i32 0, i32 0
  %473 = load i32, i32* %25, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [13 x i8], [13 x i8]* %472, i64 0, i64 %474
  %476 = load i8, i8* %475, align 1
  %477 = sext i8 %476 to i32
  call void @bar(i32 noundef 13, i32 noundef %477)
  br label %478

478:                                              ; preds = %471
  %479 = load i32, i32* %25, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %25, align 4
  br label %468, !llvm.loop !18

481:                                              ; preds = %468
  %482 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %483 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 16
  %485 = icmp ule i32 %484, 32
  br i1 %485, label %486, label %492

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %482, i32 0, i32 3
  %488 = load i8*, i8** %487, align 16
  %489 = getelementptr i8, i8* %488, i32 %484
  %490 = bitcast i8* %489 to %struct.A14*
  %491 = add i32 %484, 16
  store i32 %491, i32* %483, align 16
  br label %497

492:                                              ; preds = %481
  %493 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %482, i32 0, i32 2
  %494 = load i8*, i8** %493, align 8
  %495 = bitcast i8* %494 to %struct.A14*
  %496 = getelementptr i8, i8* %494, i32 16
  store i8* %496, i8** %493, align 8
  br label %497

497:                                              ; preds = %492, %486
  %498 = phi %struct.A14* [ %490, %486 ], [ %495, %492 ]
  %499 = bitcast %struct.A14* %17 to i8*
  %500 = bitcast %struct.A14* %498 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %499, i8* align 1 %500, i64 14, i1 false)
  store i32 0, i32* %25, align 4
  br label %501

501:                                              ; preds = %511, %497
  %502 = load i32, i32* %25, align 4
  %503 = icmp slt i32 %502, 14
  br i1 %503, label %504, label %514

504:                                              ; preds = %501
  %505 = getelementptr inbounds %struct.A14, %struct.A14* %17, i32 0, i32 0
  %506 = load i32, i32* %25, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [14 x i8], [14 x i8]* %505, i64 0, i64 %507
  %509 = load i8, i8* %508, align 1
  %510 = sext i8 %509 to i32
  call void @bar(i32 noundef 14, i32 noundef %510)
  br label %511

511:                                              ; preds = %504
  %512 = load i32, i32* %25, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %25, align 4
  br label %501, !llvm.loop !19

514:                                              ; preds = %501
  %515 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %516 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 16
  %518 = icmp ule i32 %517, 32
  br i1 %518, label %519, label %525

519:                                              ; preds = %514
  %520 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %515, i32 0, i32 3
  %521 = load i8*, i8** %520, align 16
  %522 = getelementptr i8, i8* %521, i32 %517
  %523 = bitcast i8* %522 to %struct.A15*
  %524 = add i32 %517, 16
  store i32 %524, i32* %516, align 16
  br label %530

525:                                              ; preds = %514
  %526 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %515, i32 0, i32 2
  %527 = load i8*, i8** %526, align 8
  %528 = bitcast i8* %527 to %struct.A15*
  %529 = getelementptr i8, i8* %527, i32 16
  store i8* %529, i8** %526, align 8
  br label %530

530:                                              ; preds = %525, %519
  %531 = phi %struct.A15* [ %523, %519 ], [ %528, %525 ]
  %532 = bitcast %struct.A15* %18 to i8*
  %533 = bitcast %struct.A15* %531 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %532, i8* align 1 %533, i64 15, i1 false)
  store i32 0, i32* %25, align 4
  br label %534

534:                                              ; preds = %544, %530
  %535 = load i32, i32* %25, align 4
  %536 = icmp slt i32 %535, 15
  br i1 %536, label %537, label %547

537:                                              ; preds = %534
  %538 = getelementptr inbounds %struct.A15, %struct.A15* %18, i32 0, i32 0
  %539 = load i32, i32* %25, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [15 x i8], [15 x i8]* %538, i64 0, i64 %540
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  call void @bar(i32 noundef 15, i32 noundef %543)
  br label %544

544:                                              ; preds = %537
  %545 = load i32, i32* %25, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %25, align 4
  br label %534, !llvm.loop !20

547:                                              ; preds = %534
  %548 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %549 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 16
  %551 = icmp ule i32 %550, 32
  br i1 %551, label %552, label %558

552:                                              ; preds = %547
  %553 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %548, i32 0, i32 3
  %554 = load i8*, i8** %553, align 16
  %555 = getelementptr i8, i8* %554, i32 %550
  %556 = bitcast i8* %555 to %struct.A16*
  %557 = add i32 %550, 16
  store i32 %557, i32* %549, align 16
  br label %563

558:                                              ; preds = %547
  %559 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %548, i32 0, i32 2
  %560 = load i8*, i8** %559, align 8
  %561 = bitcast i8* %560 to %struct.A16*
  %562 = getelementptr i8, i8* %560, i32 16
  store i8* %562, i8** %559, align 8
  br label %563

563:                                              ; preds = %558, %552
  %564 = phi %struct.A16* [ %556, %552 ], [ %561, %558 ]
  %565 = bitcast %struct.A16* %19 to i8*
  %566 = bitcast %struct.A16* %564 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %565, i8* align 1 %566, i64 16, i1 false)
  store i32 0, i32* %25, align 4
  br label %567

567:                                              ; preds = %577, %563
  %568 = load i32, i32* %25, align 4
  %569 = icmp slt i32 %568, 16
  br i1 %569, label %570, label %580

570:                                              ; preds = %567
  %571 = getelementptr inbounds %struct.A16, %struct.A16* %19, i32 0, i32 0
  %572 = load i32, i32* %25, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [16 x i8], [16 x i8]* %571, i64 0, i64 %573
  %575 = load i8, i8* %574, align 1
  %576 = sext i8 %575 to i32
  call void @bar(i32 noundef 16, i32 noundef %576)
  br label %577

577:                                              ; preds = %570
  %578 = load i32, i32* %25, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %25, align 4
  br label %567, !llvm.loop !21

580:                                              ; preds = %567
  %581 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %582 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %581, i32 0, i32 2
  %583 = load i8*, i8** %582, align 8
  %584 = bitcast i8* %583 to %struct.A31*
  %585 = getelementptr i8, i8* %583, i32 32
  store i8* %585, i8** %582, align 8
  %586 = bitcast %struct.A31* %20 to i8*
  %587 = bitcast %struct.A31* %584 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %586, i8* align 1 %587, i64 31, i1 false)
  store i32 0, i32* %25, align 4
  br label %588

588:                                              ; preds = %598, %580
  %589 = load i32, i32* %25, align 4
  %590 = icmp slt i32 %589, 31
  br i1 %590, label %591, label %601

591:                                              ; preds = %588
  %592 = getelementptr inbounds %struct.A31, %struct.A31* %20, i32 0, i32 0
  %593 = load i32, i32* %25, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds [31 x i8], [31 x i8]* %592, i64 0, i64 %594
  %596 = load i8, i8* %595, align 1
  %597 = sext i8 %596 to i32
  call void @bar(i32 noundef 31, i32 noundef %597)
  br label %598

598:                                              ; preds = %591
  %599 = load i32, i32* %25, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %25, align 4
  br label %588, !llvm.loop !22

601:                                              ; preds = %588
  %602 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %603 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %602, i32 0, i32 2
  %604 = load i8*, i8** %603, align 8
  %605 = bitcast i8* %604 to %struct.A32*
  %606 = getelementptr i8, i8* %604, i32 32
  store i8* %606, i8** %603, align 8
  %607 = bitcast %struct.A32* %21 to i8*
  %608 = bitcast %struct.A32* %605 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %607, i8* align 1 %608, i64 32, i1 false)
  store i32 0, i32* %25, align 4
  br label %609

609:                                              ; preds = %619, %601
  %610 = load i32, i32* %25, align 4
  %611 = icmp slt i32 %610, 32
  br i1 %611, label %612, label %622

612:                                              ; preds = %609
  %613 = getelementptr inbounds %struct.A32, %struct.A32* %21, i32 0, i32 0
  %614 = load i32, i32* %25, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [32 x i8], [32 x i8]* %613, i64 0, i64 %615
  %617 = load i8, i8* %616, align 1
  %618 = sext i8 %617 to i32
  call void @bar(i32 noundef 32, i32 noundef %618)
  br label %619

619:                                              ; preds = %612
  %620 = load i32, i32* %25, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %25, align 4
  br label %609, !llvm.loop !23

622:                                              ; preds = %609
  %623 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %624 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %623, i32 0, i32 2
  %625 = load i8*, i8** %624, align 8
  %626 = bitcast i8* %625 to %struct.A35*
  %627 = getelementptr i8, i8* %625, i32 40
  store i8* %627, i8** %624, align 8
  %628 = bitcast %struct.A35* %22 to i8*
  %629 = bitcast %struct.A35* %626 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %628, i8* align 1 %629, i64 35, i1 false)
  store i32 0, i32* %25, align 4
  br label %630

630:                                              ; preds = %640, %622
  %631 = load i32, i32* %25, align 4
  %632 = icmp slt i32 %631, 35
  br i1 %632, label %633, label %643

633:                                              ; preds = %630
  %634 = getelementptr inbounds %struct.A35, %struct.A35* %22, i32 0, i32 0
  %635 = load i32, i32* %25, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [35 x i8], [35 x i8]* %634, i64 0, i64 %636
  %638 = load i8, i8* %637, align 1
  %639 = sext i8 %638 to i32
  call void @bar(i32 noundef 35, i32 noundef %639)
  br label %640

640:                                              ; preds = %633
  %641 = load i32, i32* %25, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %25, align 4
  br label %630, !llvm.loop !24

643:                                              ; preds = %630
  %644 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %645 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %644, i32 0, i32 2
  %646 = load i8*, i8** %645, align 8
  %647 = bitcast i8* %646 to %struct.A72*
  %648 = getelementptr i8, i8* %646, i32 72
  store i8* %648, i8** %645, align 8
  %649 = bitcast %struct.A72* %23 to i8*
  %650 = bitcast %struct.A72* %647 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %649, i8* align 1 %650, i64 72, i1 false)
  store i32 0, i32* %25, align 4
  br label %651

651:                                              ; preds = %661, %643
  %652 = load i32, i32* %25, align 4
  %653 = icmp slt i32 %652, 72
  br i1 %653, label %654, label %664

654:                                              ; preds = %651
  %655 = getelementptr inbounds %struct.A72, %struct.A72* %23, i32 0, i32 0
  %656 = load i32, i32* %25, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds [72 x i8], [72 x i8]* %655, i64 0, i64 %657
  %659 = load i8, i8* %658, align 1
  %660 = sext i8 %659 to i32
  call void @bar(i32 noundef 72, i32 noundef %660)
  br label %661

661:                                              ; preds = %654
  %662 = load i32, i32* %25, align 4
  %663 = add nsw i32 %662, 1
  store i32 %663, i32* %25, align 4
  br label %651, !llvm.loop !25

664:                                              ; preds = %651
  %665 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %666 = bitcast %struct.__va_list_tag* %665 to i8*
  call void @llvm.va_end(i8* %666)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A0, align 1
  %3 = alloca %struct.A1, align 1
  %4 = alloca %struct.A2, align 1
  %5 = alloca %struct.A3, align 1
  %6 = alloca %struct.A4, align 1
  %7 = alloca %struct.A5, align 1
  %8 = alloca %struct.A6, align 1
  %9 = alloca %struct.A7, align 1
  %10 = alloca %struct.A8, align 1
  %11 = alloca %struct.A9, align 8
  %12 = alloca %struct.A10, align 8
  %13 = alloca %struct.A11, align 8
  %14 = alloca %struct.A12, align 8
  %15 = alloca %struct.A13, align 8
  %16 = alloca %struct.A14, align 8
  %17 = alloca %struct.A15, align 8
  %18 = alloca %struct.A16, align 8
  %19 = alloca %struct.A31, align 8
  %20 = alloca %struct.A32, align 8
  %21 = alloca %struct.A35, align 8
  %22 = alloca %struct.A72, align 8
  %23 = alloca i32, align 4
  %24 = alloca i24, align 4
  %25 = alloca i40, align 8
  %26 = alloca i48, align 8
  %27 = alloca i56, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %23, align 4
  br label %28

28:                                               ; preds = %39, %0
  %29 = load i32, i32* %23, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %23, align 4
  %33 = xor i32 %32, 0
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.A0, %struct.A0* %2, i32 0, i32 0
  %36 = load i32, i32* %23, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i8], [0 x i8]* %35, i64 0, i64 %37
  store i8 %34, i8* %38, align 1
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %23, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %23, align 4
  br label %28, !llvm.loop !26

42:                                               ; preds = %28
  store i32 0, i32* %23, align 4
  br label %43

43:                                               ; preds = %54, %42
  %44 = load i32, i32* %23, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32, i32* %23, align 4
  %48 = xor i32 %47, 8
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.A1, %struct.A1* %3, i32 0, i32 0
  %51 = load i32, i32* %23, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1 x i8], [1 x i8]* %50, i64 0, i64 %52
  store i8 %49, i8* %53, align 1
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %23, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %23, align 4
  br label %43, !llvm.loop !27

57:                                               ; preds = %43
  store i32 0, i32* %23, align 4
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32, i32* %23, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, i32* %23, align 4
  %63 = xor i32 %62, 16
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds %struct.A2, %struct.A2* %4, i32 0, i32 0
  %66 = load i32, i32* %23, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %65, i64 0, i64 %67
  store i8 %64, i8* %68, align 1
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %23, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %23, align 4
  br label %58, !llvm.loop !28

72:                                               ; preds = %58
  store i32 0, i32* %23, align 4
  br label %73

73:                                               ; preds = %84, %72
  %74 = load i32, i32* %23, align 4
  %75 = icmp slt i32 %74, 3
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %23, align 4
  %78 = xor i32 %77, 24
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.A3, %struct.A3* %5, i32 0, i32 0
  %81 = load i32, i32* %23, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i8], [3 x i8]* %80, i64 0, i64 %82
  store i8 %79, i8* %83, align 1
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %23, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %23, align 4
  br label %73, !llvm.loop !29

87:                                               ; preds = %73
  store i32 0, i32* %23, align 4
  br label %88

88:                                               ; preds = %99, %87
  %89 = load i32, i32* %23, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32, i32* %23, align 4
  %93 = xor i32 %92, 32
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds %struct.A4, %struct.A4* %6, i32 0, i32 0
  %96 = load i32, i32* %23, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %95, i64 0, i64 %97
  store i8 %94, i8* %98, align 1
  br label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %23, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %23, align 4
  br label %88, !llvm.loop !30

102:                                              ; preds = %88
  store i32 0, i32* %23, align 4
  br label %103

103:                                              ; preds = %114, %102
  %104 = load i32, i32* %23, align 4
  %105 = icmp slt i32 %104, 5
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load i32, i32* %23, align 4
  %108 = xor i32 %107, 40
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds %struct.A5, %struct.A5* %7, i32 0, i32 0
  %111 = load i32, i32* %23, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [5 x i8], [5 x i8]* %110, i64 0, i64 %112
  store i8 %109, i8* %113, align 1
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %23, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %23, align 4
  br label %103, !llvm.loop !31

117:                                              ; preds = %103
  store i32 0, i32* %23, align 4
  br label %118

118:                                              ; preds = %129, %117
  %119 = load i32, i32* %23, align 4
  %120 = icmp slt i32 %119, 6
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load i32, i32* %23, align 4
  %123 = xor i32 %122, 48
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds %struct.A6, %struct.A6* %8, i32 0, i32 0
  %126 = load i32, i32* %23, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [6 x i8], [6 x i8]* %125, i64 0, i64 %127
  store i8 %124, i8* %128, align 1
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %23, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %23, align 4
  br label %118, !llvm.loop !32

132:                                              ; preds = %118
  store i32 0, i32* %23, align 4
  br label %133

133:                                              ; preds = %144, %132
  %134 = load i32, i32* %23, align 4
  %135 = icmp slt i32 %134, 7
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i32, i32* %23, align 4
  %138 = xor i32 %137, 56
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds %struct.A7, %struct.A7* %9, i32 0, i32 0
  %141 = load i32, i32* %23, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [7 x i8], [7 x i8]* %140, i64 0, i64 %142
  store i8 %139, i8* %143, align 1
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %23, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %23, align 4
  br label %133, !llvm.loop !33

147:                                              ; preds = %133
  store i32 0, i32* %23, align 4
  br label %148

148:                                              ; preds = %159, %147
  %149 = load i32, i32* %23, align 4
  %150 = icmp slt i32 %149, 8
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load i32, i32* %23, align 4
  %153 = xor i32 %152, 64
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds %struct.A8, %struct.A8* %10, i32 0, i32 0
  %156 = load i32, i32* %23, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i8], [8 x i8]* %155, i64 0, i64 %157
  store i8 %154, i8* %158, align 1
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %23, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %23, align 4
  br label %148, !llvm.loop !34

162:                                              ; preds = %148
  store i32 0, i32* %23, align 4
  br label %163

163:                                              ; preds = %174, %162
  %164 = load i32, i32* %23, align 4
  %165 = icmp slt i32 %164, 9
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load i32, i32* %23, align 4
  %168 = xor i32 %167, 72
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.A9, %struct.A9* %11, i32 0, i32 0
  %171 = load i32, i32* %23, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [9 x i8], [9 x i8]* %170, i64 0, i64 %172
  store i8 %169, i8* %173, align 1
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %23, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %23, align 4
  br label %163, !llvm.loop !35

177:                                              ; preds = %163
  store i32 0, i32* %23, align 4
  br label %178

178:                                              ; preds = %189, %177
  %179 = load i32, i32* %23, align 4
  %180 = icmp slt i32 %179, 10
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load i32, i32* %23, align 4
  %183 = xor i32 %182, 80
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds %struct.A10, %struct.A10* %12, i32 0, i32 0
  %186 = load i32, i32* %23, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [10 x i8], [10 x i8]* %185, i64 0, i64 %187
  store i8 %184, i8* %188, align 1
  br label %189

189:                                              ; preds = %181
  %190 = load i32, i32* %23, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %23, align 4
  br label %178, !llvm.loop !36

192:                                              ; preds = %178
  store i32 0, i32* %23, align 4
  br label %193

193:                                              ; preds = %204, %192
  %194 = load i32, i32* %23, align 4
  %195 = icmp slt i32 %194, 11
  br i1 %195, label %196, label %207

196:                                              ; preds = %193
  %197 = load i32, i32* %23, align 4
  %198 = xor i32 %197, 88
  %199 = trunc i32 %198 to i8
  %200 = getelementptr inbounds %struct.A11, %struct.A11* %13, i32 0, i32 0
  %201 = load i32, i32* %23, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [11 x i8], [11 x i8]* %200, i64 0, i64 %202
  store i8 %199, i8* %203, align 1
  br label %204

204:                                              ; preds = %196
  %205 = load i32, i32* %23, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %23, align 4
  br label %193, !llvm.loop !37

207:                                              ; preds = %193
  store i32 0, i32* %23, align 4
  br label %208

208:                                              ; preds = %219, %207
  %209 = load i32, i32* %23, align 4
  %210 = icmp slt i32 %209, 12
  br i1 %210, label %211, label %222

211:                                              ; preds = %208
  %212 = load i32, i32* %23, align 4
  %213 = xor i32 %212, 96
  %214 = trunc i32 %213 to i8
  %215 = getelementptr inbounds %struct.A12, %struct.A12* %14, i32 0, i32 0
  %216 = load i32, i32* %23, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [12 x i8], [12 x i8]* %215, i64 0, i64 %217
  store i8 %214, i8* %218, align 1
  br label %219

219:                                              ; preds = %211
  %220 = load i32, i32* %23, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %23, align 4
  br label %208, !llvm.loop !38

222:                                              ; preds = %208
  store i32 0, i32* %23, align 4
  br label %223

223:                                              ; preds = %234, %222
  %224 = load i32, i32* %23, align 4
  %225 = icmp slt i32 %224, 13
  br i1 %225, label %226, label %237

226:                                              ; preds = %223
  %227 = load i32, i32* %23, align 4
  %228 = xor i32 %227, 104
  %229 = trunc i32 %228 to i8
  %230 = getelementptr inbounds %struct.A13, %struct.A13* %15, i32 0, i32 0
  %231 = load i32, i32* %23, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [13 x i8], [13 x i8]* %230, i64 0, i64 %232
  store i8 %229, i8* %233, align 1
  br label %234

234:                                              ; preds = %226
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %23, align 4
  br label %223, !llvm.loop !39

237:                                              ; preds = %223
  store i32 0, i32* %23, align 4
  br label %238

238:                                              ; preds = %249, %237
  %239 = load i32, i32* %23, align 4
  %240 = icmp slt i32 %239, 14
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = load i32, i32* %23, align 4
  %243 = xor i32 %242, 112
  %244 = trunc i32 %243 to i8
  %245 = getelementptr inbounds %struct.A14, %struct.A14* %16, i32 0, i32 0
  %246 = load i32, i32* %23, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [14 x i8], [14 x i8]* %245, i64 0, i64 %247
  store i8 %244, i8* %248, align 1
  br label %249

249:                                              ; preds = %241
  %250 = load i32, i32* %23, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %23, align 4
  br label %238, !llvm.loop !40

252:                                              ; preds = %238
  store i32 0, i32* %23, align 4
  br label %253

253:                                              ; preds = %264, %252
  %254 = load i32, i32* %23, align 4
  %255 = icmp slt i32 %254, 15
  br i1 %255, label %256, label %267

256:                                              ; preds = %253
  %257 = load i32, i32* %23, align 4
  %258 = xor i32 %257, 120
  %259 = trunc i32 %258 to i8
  %260 = getelementptr inbounds %struct.A15, %struct.A15* %17, i32 0, i32 0
  %261 = load i32, i32* %23, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [15 x i8], [15 x i8]* %260, i64 0, i64 %262
  store i8 %259, i8* %263, align 1
  br label %264

264:                                              ; preds = %256
  %265 = load i32, i32* %23, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %23, align 4
  br label %253, !llvm.loop !41

267:                                              ; preds = %253
  store i32 0, i32* %23, align 4
  br label %268

268:                                              ; preds = %279, %267
  %269 = load i32, i32* %23, align 4
  %270 = icmp slt i32 %269, 16
  br i1 %270, label %271, label %282

271:                                              ; preds = %268
  %272 = load i32, i32* %23, align 4
  %273 = xor i32 %272, 128
  %274 = trunc i32 %273 to i8
  %275 = getelementptr inbounds %struct.A16, %struct.A16* %18, i32 0, i32 0
  %276 = load i32, i32* %23, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [16 x i8], [16 x i8]* %275, i64 0, i64 %277
  store i8 %274, i8* %278, align 1
  br label %279

279:                                              ; preds = %271
  %280 = load i32, i32* %23, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %23, align 4
  br label %268, !llvm.loop !42

282:                                              ; preds = %268
  store i32 0, i32* %23, align 4
  br label %283

283:                                              ; preds = %294, %282
  %284 = load i32, i32* %23, align 4
  %285 = icmp slt i32 %284, 31
  br i1 %285, label %286, label %297

286:                                              ; preds = %283
  %287 = load i32, i32* %23, align 4
  %288 = xor i32 %287, 248
  %289 = trunc i32 %288 to i8
  %290 = getelementptr inbounds %struct.A31, %struct.A31* %19, i32 0, i32 0
  %291 = load i32, i32* %23, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [31 x i8], [31 x i8]* %290, i64 0, i64 %292
  store i8 %289, i8* %293, align 1
  br label %294

294:                                              ; preds = %286
  %295 = load i32, i32* %23, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %23, align 4
  br label %283, !llvm.loop !43

297:                                              ; preds = %283
  store i32 0, i32* %23, align 4
  br label %298

298:                                              ; preds = %309, %297
  %299 = load i32, i32* %23, align 4
  %300 = icmp slt i32 %299, 32
  br i1 %300, label %301, label %312

301:                                              ; preds = %298
  %302 = load i32, i32* %23, align 4
  %303 = xor i32 %302, 256
  %304 = trunc i32 %303 to i8
  %305 = getelementptr inbounds %struct.A32, %struct.A32* %20, i32 0, i32 0
  %306 = load i32, i32* %23, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [32 x i8], [32 x i8]* %305, i64 0, i64 %307
  store i8 %304, i8* %308, align 1
  br label %309

309:                                              ; preds = %301
  %310 = load i32, i32* %23, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %23, align 4
  br label %298, !llvm.loop !44

312:                                              ; preds = %298
  store i32 0, i32* %23, align 4
  br label %313

313:                                              ; preds = %324, %312
  %314 = load i32, i32* %23, align 4
  %315 = icmp slt i32 %314, 35
  br i1 %315, label %316, label %327

316:                                              ; preds = %313
  %317 = load i32, i32* %23, align 4
  %318 = xor i32 %317, 280
  %319 = trunc i32 %318 to i8
  %320 = getelementptr inbounds %struct.A35, %struct.A35* %21, i32 0, i32 0
  %321 = load i32, i32* %23, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [35 x i8], [35 x i8]* %320, i64 0, i64 %322
  store i8 %319, i8* %323, align 1
  br label %324

324:                                              ; preds = %316
  %325 = load i32, i32* %23, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %23, align 4
  br label %313, !llvm.loop !45

327:                                              ; preds = %313
  store i32 0, i32* %23, align 4
  br label %328

328:                                              ; preds = %339, %327
  %329 = load i32, i32* %23, align 4
  %330 = icmp slt i32 %329, 72
  br i1 %330, label %331, label %342

331:                                              ; preds = %328
  %332 = load i32, i32* %23, align 4
  %333 = xor i32 %332, 576
  %334 = trunc i32 %333 to i8
  %335 = getelementptr inbounds %struct.A72, %struct.A72* %22, i32 0, i32 0
  %336 = load i32, i32* %23, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [72 x i8], [72 x i8]* %335, i64 0, i64 %337
  store i8 %334, i8* %338, align 1
  br label %339

339:                                              ; preds = %331
  %340 = load i32, i32* %23, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %23, align 4
  br label %328, !llvm.loop !46

342:                                              ; preds = %328
  %343 = getelementptr inbounds %struct.A1, %struct.A1* %3, i32 0, i32 0
  %344 = bitcast [1 x i8]* %343 to i8*
  %345 = load i8, i8* %344, align 1
  %346 = getelementptr inbounds %struct.A2, %struct.A2* %4, i32 0, i32 0
  %347 = bitcast [2 x i8]* %346 to i16*
  %348 = load i16, i16* %347, align 1
  %349 = getelementptr inbounds %struct.A3, %struct.A3* %5, i32 0, i32 0
  %350 = bitcast i24* %24 to i8*
  %351 = bitcast [3 x i8]* %349 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %350, i8* align 1 %351, i64 3, i1 false)
  %352 = load i24, i24* %24, align 4
  %353 = getelementptr inbounds %struct.A4, %struct.A4* %6, i32 0, i32 0
  %354 = bitcast [4 x i8]* %353 to i32*
  %355 = load i32, i32* %354, align 1
  %356 = getelementptr inbounds %struct.A5, %struct.A5* %7, i32 0, i32 0
  %357 = bitcast i40* %25 to i8*
  %358 = bitcast [5 x i8]* %356 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %357, i8* align 1 %358, i64 5, i1 false)
  %359 = load i40, i40* %25, align 8
  %360 = getelementptr inbounds %struct.A6, %struct.A6* %8, i32 0, i32 0
  %361 = bitcast i48* %26 to i8*
  %362 = bitcast [6 x i8]* %360 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %361, i8* align 1 %362, i64 6, i1 false)
  %363 = load i48, i48* %26, align 8
  %364 = getelementptr inbounds %struct.A7, %struct.A7* %9, i32 0, i32 0
  %365 = bitcast i56* %27 to i8*
  %366 = bitcast [7 x i8]* %364 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %365, i8* align 1 %366, i64 7, i1 false)
  %367 = load i56, i56* %27, align 8
  %368 = getelementptr inbounds %struct.A8, %struct.A8* %10, i32 0, i32 0
  %369 = bitcast [8 x i8]* %368 to i64*
  %370 = load i64, i64* %369, align 1
  call void (i32, ...) @foo(i32 noundef 21, i8 %345, i16 %348, i24 %352, i32 %355, i40 %359, i48 %363, i56 %367, i64 %370, %struct.A9* noundef byval(%struct.A9) align 8 %11, %struct.A10* noundef byval(%struct.A10) align 8 %12, %struct.A11* noundef byval(%struct.A11) align 8 %13, %struct.A12* noundef byval(%struct.A12) align 8 %14, %struct.A13* noundef byval(%struct.A13) align 8 %15, %struct.A14* noundef byval(%struct.A14) align 8 %16, %struct.A15* noundef byval(%struct.A15) align 8 %17, %struct.A16* noundef byval(%struct.A16) align 8 %18, %struct.A31* noundef byval(%struct.A31) align 8 %19, %struct.A32* noundef byval(%struct.A32) align 8 %20, %struct.A35* noundef byval(%struct.A35) align 8 %21, %struct.A72* noundef byval(%struct.A72) align 8 %22)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }

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
