; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49886.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49886.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PMC = type { i32 }
%struct.Pcc_cell = type { %struct.PMC*, i64, i64 }

@cond = dso_local global i32 0, align 4
@gi = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @never_ever(i32 noundef %0, %struct.PMC* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PMC*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.PMC* %1, %struct.PMC** %4, align 8
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* @cond, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %8, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = call %struct.Pcc_cell* @getnull()
  call void @foo(i32* noundef @gi, %struct.Pcc_cell* noundef %7)
  br label %8

8:                                                ; preds = %6
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  br label %3, !llvm.loop !4

11:                                               ; preds = %3
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(i32* noundef %0, %struct.Pcc_cell* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Pcc_cell*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.Pcc_cell* %1, %struct.Pcc_cell** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  call void @mark_cell(i32* noundef %5, %struct.Pcc_cell* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.Pcc_cell* @getnull() #0 {
  ret %struct.Pcc_cell* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_1(i32* noundef %0, %struct.Pcc_cell* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Pcc_cell*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.Pcc_cell* %1, %struct.Pcc_cell** %4, align 8
  %5 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %6 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  call void @mark_cell(i32* noundef %9, %struct.Pcc_cell* noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mark_cell(i32* noundef nonnull %0, %struct.Pcc_cell* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Pcc_cell*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.Pcc_cell* %1, %struct.Pcc_cell** %4, align 8
  %5 = load i32, i32* @cond, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %251

8:                                                ; preds = %2
  %9 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %10 = icmp ne %struct.Pcc_cell* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %13 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %18 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %17, i32 0, i32 0
  %19 = load %struct.PMC*, %struct.PMC** %18, align 8
  %20 = icmp ne %struct.PMC* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %23 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %22, i32 0, i32 0
  %24 = load %struct.PMC*, %struct.PMC** %23, align 8
  %25 = getelementptr inbounds %struct.PMC, %struct.PMC* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 262144
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @gi, align 4
  %31 = add nsw i32 %30, 1
  %32 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %33 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %32, i32 0, i32 0
  %34 = load %struct.PMC*, %struct.PMC** %33, align 8
  call void @never_ever(i32 noundef %31, %struct.PMC* noundef %34)
  br label %35

35:                                               ; preds = %29, %21, %16, %11, %8
  %36 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %37 = icmp ne %struct.Pcc_cell* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %40 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %45 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %44, i32 0, i32 0
  %46 = load %struct.PMC*, %struct.PMC** %45, align 8
  %47 = icmp ne %struct.PMC* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %50 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %49, i32 0, i32 0
  %51 = load %struct.PMC*, %struct.PMC** %50, align 8
  %52 = getelementptr inbounds %struct.PMC, %struct.PMC* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 131072
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @gi, align 4
  %58 = add nsw i32 %57, 2
  %59 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %60 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %59, i32 0, i32 0
  %61 = load %struct.PMC*, %struct.PMC** %60, align 8
  call void @never_ever(i32 noundef %58, %struct.PMC* noundef %61)
  br label %62

62:                                               ; preds = %56, %48, %43, %38, %35
  %63 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %64 = icmp ne %struct.Pcc_cell* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %67 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %72 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %71, i32 0, i32 0
  %73 = load %struct.PMC*, %struct.PMC** %72, align 8
  %74 = icmp ne %struct.PMC* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %77 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %76, i32 0, i32 0
  %78 = load %struct.PMC*, %struct.PMC** %77, align 8
  %79 = getelementptr inbounds %struct.PMC, %struct.PMC* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 65536
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @gi, align 4
  %85 = add nsw i32 %84, 3
  %86 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %87 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %86, i32 0, i32 0
  %88 = load %struct.PMC*, %struct.PMC** %87, align 8
  call void @never_ever(i32 noundef %85, %struct.PMC* noundef %88)
  br label %89

89:                                               ; preds = %83, %75, %70, %65, %62
  %90 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %91 = icmp ne %struct.Pcc_cell* %90, null
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %94 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 4
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %99 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %98, i32 0, i32 0
  %100 = load %struct.PMC*, %struct.PMC** %99, align 8
  %101 = icmp ne %struct.PMC* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %104 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %103, i32 0, i32 0
  %105 = load %struct.PMC*, %struct.PMC** %104, align 8
  %106 = getelementptr inbounds %struct.PMC, %struct.PMC* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 32768
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @gi, align 4
  %112 = add nsw i32 %111, 4
  %113 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %114 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %113, i32 0, i32 0
  %115 = load %struct.PMC*, %struct.PMC** %114, align 8
  call void @never_ever(i32 noundef %112, %struct.PMC* noundef %115)
  br label %116

116:                                              ; preds = %110, %102, %97, %92, %89
  %117 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %118 = icmp ne %struct.Pcc_cell* %117, null
  br i1 %118, label %119, label %143

119:                                              ; preds = %116
  %120 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %121 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %124, label %143

124:                                              ; preds = %119
  %125 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %126 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %125, i32 0, i32 0
  %127 = load %struct.PMC*, %struct.PMC** %126, align 8
  %128 = icmp ne %struct.PMC* %127, null
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %131 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %130, i32 0, i32 0
  %132 = load %struct.PMC*, %struct.PMC** %131, align 8
  %133 = getelementptr inbounds %struct.PMC, %struct.PMC* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 16384
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* @gi, align 4
  %139 = add nsw i32 %138, 5
  %140 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %141 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %140, i32 0, i32 0
  %142 = load %struct.PMC*, %struct.PMC** %141, align 8
  call void @never_ever(i32 noundef %139, %struct.PMC* noundef %142)
  br label %143

143:                                              ; preds = %137, %129, %124, %119, %116
  %144 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %145 = icmp ne %struct.Pcc_cell* %144, null
  br i1 %145, label %146, label %170

146:                                              ; preds = %143
  %147 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %148 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 4
  br i1 %150, label %151, label %170

151:                                              ; preds = %146
  %152 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %153 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %152, i32 0, i32 0
  %154 = load %struct.PMC*, %struct.PMC** %153, align 8
  %155 = icmp ne %struct.PMC* %154, null
  br i1 %155, label %156, label %170

156:                                              ; preds = %151
  %157 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %158 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %157, i32 0, i32 0
  %159 = load %struct.PMC*, %struct.PMC** %158, align 8
  %160 = getelementptr inbounds %struct.PMC, %struct.PMC* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 8192
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %156
  %165 = load i32, i32* @gi, align 4
  %166 = add nsw i32 %165, 6
  %167 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %168 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %167, i32 0, i32 0
  %169 = load %struct.PMC*, %struct.PMC** %168, align 8
  call void @never_ever(i32 noundef %166, %struct.PMC* noundef %169)
  br label %170

170:                                              ; preds = %164, %156, %151, %146, %143
  %171 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %172 = icmp ne %struct.Pcc_cell* %171, null
  br i1 %172, label %173, label %197

173:                                              ; preds = %170
  %174 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %175 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 4
  br i1 %177, label %178, label %197

178:                                              ; preds = %173
  %179 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %180 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %179, i32 0, i32 0
  %181 = load %struct.PMC*, %struct.PMC** %180, align 8
  %182 = icmp ne %struct.PMC* %181, null
  br i1 %182, label %183, label %197

183:                                              ; preds = %178
  %184 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %185 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %184, i32 0, i32 0
  %186 = load %struct.PMC*, %struct.PMC** %185, align 8
  %187 = getelementptr inbounds %struct.PMC, %struct.PMC* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 4096
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %183
  %192 = load i32, i32* @gi, align 4
  %193 = add nsw i32 %192, 7
  %194 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %195 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %194, i32 0, i32 0
  %196 = load %struct.PMC*, %struct.PMC** %195, align 8
  call void @never_ever(i32 noundef %193, %struct.PMC* noundef %196)
  br label %197

197:                                              ; preds = %191, %183, %178, %173, %170
  %198 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %199 = icmp ne %struct.Pcc_cell* %198, null
  br i1 %199, label %200, label %224

200:                                              ; preds = %197
  %201 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %202 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 4
  br i1 %204, label %205, label %224

205:                                              ; preds = %200
  %206 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %207 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %206, i32 0, i32 0
  %208 = load %struct.PMC*, %struct.PMC** %207, align 8
  %209 = icmp ne %struct.PMC* %208, null
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %212 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %211, i32 0, i32 0
  %213 = load %struct.PMC*, %struct.PMC** %212, align 8
  %214 = getelementptr inbounds %struct.PMC, %struct.PMC* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 2048
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %210
  %219 = load i32, i32* @gi, align 4
  %220 = add nsw i32 %219, 8
  %221 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %222 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %221, i32 0, i32 0
  %223 = load %struct.PMC*, %struct.PMC** %222, align 8
  call void @never_ever(i32 noundef %220, %struct.PMC* noundef %223)
  br label %224

224:                                              ; preds = %218, %210, %205, %200, %197
  %225 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %226 = icmp ne %struct.Pcc_cell* %225, null
  br i1 %226, label %227, label %251

227:                                              ; preds = %224
  %228 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %229 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %230, 4
  br i1 %231, label %232, label %251

232:                                              ; preds = %227
  %233 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %234 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %233, i32 0, i32 0
  %235 = load %struct.PMC*, %struct.PMC** %234, align 8
  %236 = icmp ne %struct.PMC* %235, null
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %239 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %238, i32 0, i32 0
  %240 = load %struct.PMC*, %struct.PMC** %239, align 8
  %241 = getelementptr inbounds %struct.PMC, %struct.PMC* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 1024
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %237
  %246 = load i32, i32* @gi, align 4
  %247 = add nsw i32 %246, 9
  %248 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %249 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %248, i32 0, i32 0
  %250 = load %struct.PMC*, %struct.PMC** %249, align 8
  call void @never_ever(i32 noundef %247, %struct.PMC* noundef %250)
  br label %251

251:                                              ; preds = %7, %245, %237, %232, %227, %224
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar_2(i32* noundef %0, %struct.Pcc_cell* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Pcc_cell*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.Pcc_cell* %1, %struct.Pcc_cell** %4, align 8
  %5 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  %6 = getelementptr inbounds %struct.Pcc_cell, %struct.Pcc_cell* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 2
  store i64 %8, i64* %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.Pcc_cell*, %struct.Pcc_cell** %4, align 8
  call void @mark_cell(i32* noundef %9, %struct.Pcc_cell* noundef %10)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
