; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findwinr.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findwinr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16
@umove = external dso_local global i32, align 4
@l = external dso_local global [19 x [19 x i8]], align 16
@lib = external dso_local global i32, align 4
@mymove = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findwinner(i32* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %5, align 8
  store i32 -1, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 -1, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %210, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 19
  br i1 %22, label %23, label %213

23:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %206, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 19
  br i1 %26, label %27, label %209

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %29
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [19 x i8], [19 x i8]* %30, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* @umove, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %205

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %40
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [19 x i8], [19 x i8]* %41, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %205

48:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  call void @initmark()
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %53 = load i32, i32* @umove, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %55
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [19 x i8], [19 x i8]* %56, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 @findopen(i32 noundef %49, i32 noundef %50, i32* noundef %51, i32* noundef %52, i32 noundef %53, i32 noundef %61, i32* noundef %13)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %204

64:                                               ; preds = %48
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %66
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [19 x i8], [19 x i8]* %67, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 120
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  store i32 120, i32* %79, align 4
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %74
  br label %203

87:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %199, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [19 x i8], [19 x i8]* %92, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp slt i32 %89, %97
  br i1 %98, label %99, label %202

99:                                               ; preds = %88
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %195, %99
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %103
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [19 x i8], [19 x i8]* %104, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %101, %109
  br i1 %110, label %111, label %198

111:                                              ; preds = %100
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %194

115:                                              ; preds = %111
  store i32 0, i32* @lib, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %119, i32 noundef %123, i32 noundef %124)
  %125 = load i32, i32* @lib, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %115
  %128 = load i32, i32* @lib, align 4
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* @mymove, align 4
  %130 = trunc i32 %129 to i8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %135
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [19 x i8], [19 x i8]* %136, i64 0, i64 %141
  store i8 %130, i8* %142, align 1
  store i32 0, i32* @lib, align 4
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @umove, align 4
  call void @countlib(i32 noundef %146, i32 noundef %150, i32 noundef %151)
  %152 = load i32, i32* %16, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %158

154:                                              ; preds = %127
  %155 = load i32, i32* @lib, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %12, align 4
  br label %162

158:                                              ; preds = %154, %127
  %159 = load i32, i32* @lib, align 4
  %160 = mul nsw i32 20, %159
  %161 = sub nsw i32 120, %160
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %158, %157
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %162
  %168 = load i32, i32* %12, align 4
  %169 = load i32*, i32** %7, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %5, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %6, align 8
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %167, %162
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %185
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [19 x i8], [19 x i8]* %186, i64 0, i64 %191
  store i8 0, i8* %192, align 1
  br label %193

193:                                              ; preds = %180, %115
  br label %194

194:                                              ; preds = %193, %111
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %100, !llvm.loop !4

198:                                              ; preds = %100
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %88, !llvm.loop !6

202:                                              ; preds = %88
  br label %203

203:                                              ; preds = %202, %86
  br label %204

204:                                              ; preds = %203, %48
  br label %205

205:                                              ; preds = %204, %38, %27
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %24, !llvm.loop !7

209:                                              ; preds = %24
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %20, !llvm.loop !8

213:                                              ; preds = %20
  %214 = load i32*, i32** %7, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store i32 1, i32* %4, align 4
  br label %219

218:                                              ; preds = %213
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %218, %217
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local void @initmark() #1

declare dso_local i32 @findopen(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32 noundef, i32 noundef, i32* noundef) #1

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

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
