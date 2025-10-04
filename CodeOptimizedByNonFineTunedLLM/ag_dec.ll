; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/ag_dec.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/ag_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BitBuffer = type { i8*, i8*, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_standard_ag_params(%struct.AGParamRec* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.AGParamRec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.AGParamRec* %0, %struct.AGParamRec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.AGParamRec*, %struct.AGParamRec** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  call void @set_ag_params(%struct.AGParamRec* noundef %7, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %8, i32 noundef %9, i32 noundef 255)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_ag_params(%struct.AGParamRec* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.AGParamRec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.AGParamRec* %0, %struct.AGParamRec** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %17 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %19 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %22 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %25 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %27 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1, %28
  %30 = sub i32 %29, 1
  %31 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %32 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %34 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 512, %35
  %37 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %38 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %41 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %44 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.AGParamRec*, %struct.AGParamRec** %8, align 8
  %47 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dyn_decomp(%struct.AGParamRec* noundef %0, %struct.BitBuffer* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.AGParamRec*, align 8
  %11 = alloca %struct.BitBuffer*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.AGParamRec* %0, %struct.AGParamRec** %10, align 8
  store %struct.BitBuffer* %1, %struct.BitBuffer** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  %36 = load i32*, i32** %12, align 8
  store i32* %36, i32** %17, align 8
  %37 = load %struct.AGParamRec*, %struct.AGParamRec** %10, align 8
  %38 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %30, align 4
  %40 = load %struct.AGParamRec*, %struct.AGParamRec** %10, align 8
  %41 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %31, align 4
  %43 = load %struct.AGParamRec*, %struct.AGParamRec** %10, align 8
  %44 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %32, align 4
  %46 = load %struct.BitBuffer*, %struct.BitBuffer** %11, align 8
  %47 = icmp ne %struct.BitBuffer* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %6
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %15, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %48, %6
  store i32 -50, i32* %9, align 4
  br label %209

55:                                               ; preds = %51
  %56 = load i32*, i32** %15, align 8
  store i32 0, i32* %56, align 4
  %57 = load %struct.BitBuffer*, %struct.BitBuffer** %11, align 8
  %58 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %16, align 8
  %60 = load %struct.BitBuffer*, %struct.BitBuffer** %11, align 8
  %61 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %19, align 4
  %63 = load %struct.BitBuffer*, %struct.BitBuffer** %11, align 8
  %64 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = mul i32 %65, 8
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %19, align 4
  store i32 %67, i32* %18, align 4
  %68 = load %struct.AGParamRec*, %struct.AGParamRec** %10, align 8
  %69 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %29, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %33, align 4
  br label %71

71:                                               ; preds = %189, %55
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %190

75:                                               ; preds = %71
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 -50, i32* %33, align 4
  br label %191

80:                                               ; preds = %75
  %81 = load i32, i32* %29, align 4
  %82 = lshr i32 %81, 9
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %22, align 4
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 3
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @lead(i32 noundef %86) #2
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 31, %88
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %31, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load i32, i32* %23, align 4
  br label %97

95:                                               ; preds = %80
  %96 = load i32, i32* %31, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %23, align 4
  %99 = load i32, i32* %23, align 4
  %100 = shl i32 1, %99
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %22, align 4
  %102 = load i8*, i8** %16, align 8
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @dyn_get_32bit(i8* noundef %102, i32* noundef %18, i32 noundef %103, i32 noundef %104, i32 noundef %105)
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* %28, align 4
  %109 = add i32 %107, %108
  store i32 %109, i32* %34, align 4
  %110 = load i32, i32* %34, align 4
  %111 = and i32 %110, 1
  %112 = sub i32 0, %111
  store i32 %112, i32* %35, align 4
  %113 = load i32, i32* %35, align 4
  %114 = or i32 %113, 1
  store i32 %114, i32* %35, align 4
  %115 = load i32, i32* %34, align 4
  %116 = add i32 %115, 1
  %117 = lshr i32 %116, 1
  %118 = load i32, i32* %35, align 4
  %119 = mul i32 %117, %118
  store i32 %119, i32* %27, align 4
  %120 = load i32, i32* %27, align 4
  %121 = load i32*, i32** %17, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %17, align 8
  store i32 %120, i32* %121, align 4
  %123 = load i32, i32* %25, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %25, align 4
  %125 = load i32, i32* %30, align 4
  %126 = load i32, i32* %24, align 4
  %127 = load i32, i32* %28, align 4
  %128 = add i32 %126, %127
  %129 = mul i32 %125, %128
  %130 = load i32, i32* %29, align 4
  %131 = add i32 %129, %130
  %132 = load i32, i32* %30, align 4
  %133 = load i32, i32* %29, align 4
  %134 = mul i32 %132, %133
  %135 = lshr i32 %134, 9
  %136 = sub i32 %131, %135
  store i32 %136, i32* %29, align 4
  %137 = load i32, i32* %24, align 4
  %138 = icmp ugt i32 %137, 65535
  br i1 %138, label %139, label %140

139:                                              ; preds = %97
  store i32 65535, i32* %29, align 4
  br label %140

140:                                              ; preds = %139, %97
  store i32 0, i32* %28, align 4
  %141 = load i32, i32* %29, align 4
  %142 = shl i32 %141, 2
  %143 = icmp ult i32 %142, 512
  br i1 %143, label %144, label %189

144:                                              ; preds = %140
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %189

148:                                              ; preds = %144
  store i32 1, i32* %28, align 4
  %149 = load i32, i32* %29, align 4
  %150 = call i32 @lead(i32 noundef %149)
  %151 = sub nsw i32 %150, 24
  %152 = load i32, i32* %29, align 4
  %153 = add i32 %152, 16
  %154 = lshr i32 %153, 6
  %155 = add i32 %151, %154
  store i32 %155, i32* %23, align 4
  %156 = load i32, i32* %23, align 4
  %157 = shl i32 1, %156
  %158 = sub nsw i32 %157, 1
  %159 = load i32, i32* %32, align 4
  %160 = and i32 %158, %159
  store i32 %160, i32* %26, align 4
  %161 = load i8*, i8** %16, align 8
  %162 = load i32, i32* %26, align 4
  %163 = load i32, i32* %23, align 4
  %164 = call i32 @dyn_get(i8* noundef %161, i32* noundef %18, i32 noundef %162, i32 noundef %163)
  store i32 %164, i32* %24, align 4
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %24, align 4
  %167 = add i32 %165, %166
  %168 = load i32, i32* %13, align 4
  %169 = icmp ule i32 %167, %168
  br i1 %169, label %171, label %170

170:                                              ; preds = %148
  store i32 -50, i32* %33, align 4
  br label %191

171:                                              ; preds = %148
  store i32 0, i32* %21, align 4
  br label %172

172:                                              ; preds = %181, %171
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %24, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load i32*, i32** %17, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %17, align 8
  store i32 0, i32* %177, align 4
  %179 = load i32, i32* %25, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %25, align 4
  br label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %21, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %21, align 4
  br label %172, !llvm.loop !4

184:                                              ; preds = %172
  %185 = load i32, i32* %24, align 4
  %186 = icmp uge i32 %185, 65535
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 0, i32* %28, align 4
  br label %188

188:                                              ; preds = %187, %184
  store i32 0, i32* %29, align 4
  br label %189

189:                                              ; preds = %188, %144, %140
  br label %71, !llvm.loop !6

190:                                              ; preds = %71
  br label %191

191:                                              ; preds = %190, %170, %79
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %19, align 4
  %194 = sub i32 %192, %193
  %195 = load i32*, i32** %15, align 8
  store i32 %194, i32* %195, align 4
  %196 = load %struct.BitBuffer*, %struct.BitBuffer** %11, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = load i32, i32* %197, align 4
  call void @BitBufferAdvance(%struct.BitBuffer* noundef %196, i32 noundef %198)
  %199 = load %struct.BitBuffer*, %struct.BitBuffer** %11, align 8
  %200 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.BitBuffer*, %struct.BitBuffer** %11, align 8
  %203 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ule i8* %201, %204
  br i1 %205, label %207, label %206

206:                                              ; preds = %191
  store i32 -50, i32* %33, align 4
  br label %207

207:                                              ; preds = %206, %191
  %208 = load i32, i32* %33, align 4
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %207, %54
  %210 = load i32, i32* %9, align 4
  ret i32 %210
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dyn_get_32bit(i8* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %18, align 8
  store i32* %1, i32** %19, align 8
  store i32 %2, i32* %20, align 4
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  %28 = load i32*, i32** %19, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %23, align 4
  %30 = load i8*, i8** %18, align 8
  %31 = load i32, i32* %23, align 4
  %32 = lshr i32 %31, 3
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8* %34, i8** %16, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 24
  %39 = load i8*, i8** %16, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 16
  %44 = or i32 %38, %43
  %45 = load i8*, i8** %16, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 8
  %50 = or i32 %44, %49
  %51 = load i8*, i8** %16, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %50, %54
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %25, align 4
  %57 = load i32, i32* %23, align 4
  %58 = and i32 %57, 7
  %59 = load i32, i32* %25, align 4
  %60 = shl i32 %59, %58
  store i32 %60, i32* %25, align 4
  %61 = load i32, i32* %25, align 4
  %62 = xor i32 %61, -1
  store i32 %62, i32* %27, align 4
  %63 = load i32, i32* %27, align 4
  %64 = call i32 @lead(i32 noundef %63)
  store i32 %64, i32* %26, align 4
  %65 = load i32, i32* %26, align 4
  %66 = icmp uge i32 %65, 9
  br i1 %66, label %67, label %160

67:                                               ; preds = %5
  %68 = load i8*, i8** %18, align 8
  %69 = load i32, i32* %23, align 4
  %70 = add i32 %69, 9
  %71 = load i32, i32* %22, align 4
  store i8* %68, i8** %8, align 8
  store i32 %70, i32* %9, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %72, 8
  store i32 %73, i32* %13, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 24
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 16
  %87 = or i32 %81, %86
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = or i32 %87, %92
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %93, %97
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, 7
  %103 = add nsw i32 %100, %102
  %104 = icmp sgt i32 %103, 32
  br i1 %104, label %105, label %133

105:                                              ; preds = %67
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, 7
  %109 = shl i32 %106, %108
  store i32 %109, i32* %14, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = add i32 %111, 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, 7
  %120 = add nsw i32 %117, %119
  %121 = sub nsw i32 %120, 32
  %122 = sub nsw i32 8, %121
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %12, align 4
  %125 = lshr i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 32, %126
  %128 = load i32, i32* %14, align 4
  %129 = lshr i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %14, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %14, align 4
  br label %141

133:                                              ; preds = %67
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %10, align 4
  %136 = sub nsw i32 32, %135
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, 7
  %139 = sub nsw i32 %136, %138
  %140 = lshr i32 %134, %139
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %133, %105
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ne i64 %143, 32
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = shl i64 4294967295, %147
  %149 = xor i64 %148, -1
  %150 = load i32, i32* %14, align 4
  %151 = zext i32 %150 to i64
  %152 = and i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %141, %145
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %26, align 4
  %156 = load i32, i32* %22, align 4
  %157 = add nsw i32 9, %156
  %158 = load i32, i32* %23, align 4
  %159 = add i32 %158, %157
  store i32 %159, i32* %23, align 4
  br label %196

160:                                              ; preds = %5
  %161 = load i32, i32* %26, align 4
  %162 = load i32, i32* %23, align 4
  %163 = add i32 %162, %161
  store i32 %163, i32* %23, align 4
  %164 = load i32, i32* %23, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %23, align 4
  %166 = load i32, i32* %21, align 4
  %167 = icmp ne i32 %166, 1
  br i1 %167, label %168, label %195

168:                                              ; preds = %160
  %169 = load i32, i32* %26, align 4
  %170 = add i32 %169, 1
  %171 = load i32, i32* %25, align 4
  %172 = shl i32 %171, %170
  store i32 %172, i32* %25, align 4
  %173 = load i32, i32* %25, align 4
  %174 = load i32, i32* %21, align 4
  %175 = sub nsw i32 32, %174
  %176 = lshr i32 %173, %175
  store i32 %176, i32* %24, align 4
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %23, align 4
  %179 = add i32 %178, %177
  store i32 %179, i32* %23, align 4
  %180 = load i32, i32* %23, align 4
  %181 = sub i32 %180, 1
  store i32 %181, i32* %23, align 4
  %182 = load i32, i32* %26, align 4
  %183 = load i32, i32* %20, align 4
  %184 = mul i32 %182, %183
  store i32 %184, i32* %26, align 4
  %185 = load i32, i32* %24, align 4
  %186 = icmp uge i32 %185, 2
  br i1 %186, label %187, label %194

187:                                              ; preds = %168
  %188 = load i32, i32* %24, align 4
  %189 = sub i32 %188, 1
  %190 = load i32, i32* %26, align 4
  %191 = add i32 %190, %189
  store i32 %191, i32* %26, align 4
  %192 = load i32, i32* %23, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %23, align 4
  br label %194

194:                                              ; preds = %187, %168
  br label %195

195:                                              ; preds = %194, %160
  br label %196

196:                                              ; preds = %195, %154
  %197 = load i32, i32* %23, align 4
  %198 = load i32*, i32** %19, align 8
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %26, align 4
  ret i32 %199
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lead(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 2147483648, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = and i64 %9, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %21

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = lshr i64 %16, 1
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %5, !llvm.loop !7

21:                                               ; preds = %14, %5
  %22 = load i64, i64* %3, align 8
  %23 = trunc i64 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dyn_get(i8* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = lshr i32 %20, 3
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 24
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 16
  %33 = or i32 %27, %32
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = or i32 %33, %38
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %39, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 7
  %48 = load i32, i32* %15, align 4
  %49 = shl i32 %48, %47
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = xor i32 %50, -1
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @lead(i32 noundef %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp uge i32 %54, 9
  br i1 %55, label %56, label %67

56:                                               ; preds = %4
  store i32 9, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 %61, %60
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = lshr i32 %63, 16
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %65, 16
  store i32 %66, i32* %11, align 4
  br label %100

67:                                               ; preds = %4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %73, 1
  %75 = load i32, i32* %15, align 4
  %76 = shl i32 %75, %74
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub i32 32, %78
  %80 = lshr i32 %77, %79
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul i32 %84, %85
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %86, %87
  %89 = sub i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %92, label %99

92:                                               ; preds = %67
  %93 = load i32, i32* %14, align 4
  %94 = sub i32 %93, 1
  %95 = load i32, i32* %12, align 4
  %96 = sub i32 %95, %94
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %92, %67
  br label %100

100:                                              ; preds = %99, %56
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %12, align 4
  ret i32 %103
}

declare dso_local void @BitBufferAdvance(%struct.BitBuffer* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
