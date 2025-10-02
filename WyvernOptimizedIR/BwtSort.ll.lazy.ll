; ModuleID = './BwtSort.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/BwtSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i32* (%_wyvern_thunk_type.0*)*, i32*, i1, i32, i32* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SortGroup(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32* noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_SortGroup_938618342, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %2, i32* %_wyvern_thunk_arg_gep_, align 4
  %_wyvern_thunk_arg_gep_38 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 4
  store i32* %5, i32** %_wyvern_thunk_arg_gep_38, align 8
  %9 = icmp ult i32 %3, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %212

11:                                               ; preds = %8
  %12 = zext i32 %0 to i64
  %13 = getelementptr inbounds i32, i32* %5, i64 %12
  %14 = getelementptr inbounds i32, i32* %13, i64 65536
  %15 = shl i32 1, %4
  %.not = icmp ult i32 %15, %3
  br i1 %.not, label %100, label %16

16:                                               ; preds = %11
  %.not61 = icmp ugt i32 %3, %7
  br i1 %.not61, label %100, label %17

17:                                               ; preds = %16
  %18 = zext i32 %0 to i64
  %19 = getelementptr inbounds i32, i32* %5, i64 %18
  %_wyvern_thunkcall = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %20 = load i32, i32* %_wyvern_thunkcall, align 4
  %21 = add i32 %20, %1
  %.not62 = icmp ult i32 %21, %0
  br i1 %.not62, label %24, label %22

22:                                               ; preds = %17
  %23 = sub i32 %21, %0
  br label %24

24:                                               ; preds = %22, %17
  %.017 = phi i32 [ %23, %22 ], [ %21, %17 ]
  %25 = zext i32 %.017 to i64
  %26 = getelementptr inbounds i32, i32* %14, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, %4
  store i32 %28, i32* %19, align 4
  br label %29

29:                                               ; preds = %46, %24
  %.021 = phi i32 [ 0, %24 ], [ %48, %46 ]
  %.018 = phi i32 [ 1, %24 ], [ %49, %46 ]
  %30 = icmp ult i32 %.018, %3
  br i1 %30, label %31, label %50

31:                                               ; preds = %29
  %32 = zext i32 %.018 to i64
  %_wyvern_thunkcall39 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %33 = getelementptr inbounds i32, i32* %_wyvern_thunkcall39, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, %1
  %.not64 = icmp ult i32 %35, %0
  br i1 %.not64, label %38, label %36

36:                                               ; preds = %31
  %37 = sub i32 %35, %0
  br label %38

38:                                               ; preds = %36, %31
  %.016 = phi i32 [ %37, %36 ], [ %35, %31 ]
  %39 = zext i32 %.016 to i64
  %40 = getelementptr inbounds i32, i32* %14, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, %4
  %43 = or i32 %42, %.018
  %44 = zext i32 %.018 to i64
  %45 = getelementptr inbounds i32, i32* %19, i64 %44
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38
  %47 = xor i32 %27, %41
  %48 = or i32 %.021, %47
  %49 = add i32 %.018, 1
  br label %29, !llvm.loop !4

50:                                               ; preds = %29
  %51 = icmp eq i32 %.021, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  call void @_wyvern_calleeclone_SetGroupSize_0808030522(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %3)
  br label %212

53:                                               ; preds = %50
  call void @HeapSort(i32* noundef nonnull %19, i32 noundef %3) #4
  %notmask = shl nsw i32 -1, %4
  %54 = xor i32 %notmask, -1
  %55 = load i32, i32* %19, align 4
  %56 = lshr i32 %55, %4
  %57 = and i32 %55, %54
  %58 = zext i32 %57 to i64
  %_wyvern_thunkcall40 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %59 = getelementptr inbounds i32, i32* %_wyvern_thunkcall40, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %19, align 4
  br label %61

61:                                               ; preds = %83, %53
  %.026 = phi i32 [ %56, %53 ], [ %.127, %83 ]
  %.024 = phi i32 [ %2, %53 ], [ %.125, %83 ]
  %.022 = phi i32 [ 0, %53 ], [ %.123, %83 ]
  %.119 = phi i32 [ 1, %53 ], [ %84, %83 ]
  %.014 = phi i32 [ 0, %53 ], [ %.115, %83 ]
  %62 = icmp ult i32 %.119, %3
  br i1 %62, label %63, label %85

63:                                               ; preds = %61
  %64 = zext i32 %.119 to i64
  %65 = getelementptr inbounds i32, i32* %19, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = lshr i32 %66, %4
  %.not63 = icmp eq i32 %67, %.026
  br i1 %.not63, label %73, label %68

68:                                               ; preds = %63
  %69 = add i32 %.119, %2
  %70 = zext i32 %.014 to i64
  %71 = getelementptr inbounds i32, i32* %19, i64 %70
  %72 = sub i32 %.119, %.014
  call void @SetGroupSize(i32* noundef nonnull %71, i32 noundef %72)
  br label %74

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %68
  %.127 = phi i32 [ %67, %68 ], [ %.026, %73 ]
  %.125 = phi i32 [ %69, %68 ], [ %.024, %73 ]
  %.123 = phi i32 [ %.022, %68 ], [ 1, %73 ]
  %.115 = phi i32 [ %.119, %68 ], [ %.014, %73 ]
  %75 = and i32 %66, %54
  %76 = zext i32 %75 to i64
  %_wyvern_thunkcall41 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %77 = getelementptr inbounds i32, i32* %_wyvern_thunkcall41, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %.119 to i64
  %80 = getelementptr inbounds i32, i32* %19, i64 %79
  store i32 %78, i32* %80, align 4
  %81 = zext i32 %78 to i64
  %82 = getelementptr inbounds i32, i32* %14, i64 %81
  store i32 %.125, i32* %82, align 4
  br label %83

83:                                               ; preds = %74
  %84 = add i32 %.119, 1
  br label %61, !llvm.loop !6

85:                                               ; preds = %61
  %86 = zext i32 %.014 to i64
  %87 = getelementptr inbounds i32, i32* %19, i64 %86
  %88 = sub i32 %.119, %.014
  call void @SetGroupSize(i32* noundef nonnull %87, i32 noundef %88)
  br label %89

89:                                               ; preds = %97, %85
  %.220 = phi i32 [ 0, %85 ], [ %98, %97 ]
  %90 = icmp ult i32 %.220, %3
  br i1 %90, label %91, label %99

91:                                               ; preds = %89
  %92 = zext i32 %.220 to i64
  %93 = getelementptr inbounds i32, i32* %19, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %.220 to i64
  %_wyvern_thunkcall42 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %96 = getelementptr inbounds i32, i32* %_wyvern_thunkcall42, i64 %95
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91
  %98 = add i32 %.220, 1
  br label %89, !llvm.loop !7

99:                                               ; preds = %89
  br label %212

100:                                              ; preds = %16, %11
  %_wyvern_thunkcall43 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %101 = load i32, i32* %_wyvern_thunkcall43, align 4
  %102 = add i32 %101, %1
  %.not54 = icmp ult i32 %102, %0
  br i1 %.not54, label %105, label %103

103:                                              ; preds = %100
  %104 = sub i32 %102, %0
  br label %105

105:                                              ; preds = %103, %100
  %.07 = phi i32 [ %104, %103 ], [ %102, %100 ]
  %106 = zext i32 %.07 to i64
  %107 = getelementptr inbounds i32, i32* %14, i64 %106
  %108 = load i32, i32* %107, align 4
  br label %109

109:                                              ; preds = %124, %105
  %.09 = phi i32 [ 1, %105 ], [ %125, %124 ]
  %110 = icmp ult i32 %.09, %3
  br i1 %110, label %111, label %.loopexit29

111:                                              ; preds = %109
  %112 = zext i32 %.09 to i64
  %_wyvern_thunkcall44 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %113 = getelementptr inbounds i32, i32* %_wyvern_thunkcall44, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, %1
  %.not59 = icmp ult i32 %115, %0
  br i1 %.not59, label %118, label %116

116:                                              ; preds = %111
  %117 = sub i32 %115, %0
  br label %118

118:                                              ; preds = %116, %111
  %.18 = phi i32 [ %117, %116 ], [ %115, %111 ]
  %119 = zext i32 %.18 to i64
  %120 = getelementptr inbounds i32, i32* %14, i64 %119
  %121 = load i32, i32* %120, align 4
  %.not60 = icmp eq i32 %121, %108
  br i1 %.not60, label %123, label %122

122:                                              ; preds = %118
  br label %126

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123
  %125 = add i32 %.09, 1
  br label %109, !llvm.loop !8

.loopexit29:                                      ; preds = %109
  br label %126

126:                                              ; preds = %.loopexit29, %122
  %127 = icmp eq i32 %.09, %3
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  %_wyvern_thunkcall45 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  call void @SetGroupSize(i32* noundef %_wyvern_thunkcall45, i32 noundef %3)
  br label %212

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %192, %129
  %.012 = phi i32 [ %7, %129 ], [ %.113, %192 ]
  %.010 = phi i32 [ %6, %129 ], [ %.111, %192 ]
  %131 = icmp ult i32 %.012, 2
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  %_wyvern_thunkcall46 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  call void @SetGroupSize(i32* noundef %_wyvern_thunkcall46, i32 noundef %3)
  br label %212

133:                                              ; preds = %130
  %134 = add i32 %.012, 1
  %135 = lshr i32 %134, 1
  %136 = add i32 %.010, %135
  br label %137

137:                                              ; preds = %180, %133
  %.05 = phi i32 [ 0, %133 ], [ %181, %180 ]
  %.03 = phi i32 [ %3, %133 ], [ %.2, %180 ]
  %138 = zext i32 %.05 to i64
  %_wyvern_thunkcall47 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %139 = getelementptr inbounds i32, i32* %_wyvern_thunkcall47, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, %1
  %.not55 = icmp ult i32 %141, %0
  br i1 %.not55, label %144, label %142

142:                                              ; preds = %137
  %143 = sub i32 %141, %0
  br label %144

144:                                              ; preds = %142, %137
  %.02 = phi i32 [ %143, %142 ], [ %141, %137 ]
  %145 = zext i32 %.02 to i64
  %146 = getelementptr inbounds i32, i32* %14, i64 %145
  %147 = load i32, i32* %146, align 4
  %.not56 = icmp ult i32 %147, %136
  br i1 %.not56, label %179, label %148

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %175, %148
  %.14.in = phi i32 [ %.03, %148 ], [ %.14, %175 ]
  %.14 = add i32 %.14.in, -1
  %150 = icmp ugt i32 %.14, %.05
  br i1 %150, label %151, label %.loopexit

151:                                              ; preds = %149
  %152 = zext i32 %.14 to i64
  %_wyvern_thunkcall48 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %153 = getelementptr inbounds i32, i32* %_wyvern_thunkcall48, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = add i32 %154, %1
  %.not58 = icmp ult i32 %155, %0
  br i1 %.not58, label %158, label %156

156:                                              ; preds = %151
  %157 = sub i32 %155, %0
  br label %158

158:                                              ; preds = %156, %151
  %.1 = phi i32 [ %157, %156 ], [ %155, %151 ]
  %159 = zext i32 %.1 to i64
  %160 = getelementptr inbounds i32, i32* %14, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp ult i32 %161, %136
  br i1 %162, label %163, label %174

163:                                              ; preds = %158
  %164 = zext i32 %.05 to i64
  %_wyvern_thunkcall49 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %165 = getelementptr inbounds i32, i32* %_wyvern_thunkcall49, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = zext i32 %.14 to i64
  %_wyvern_thunkcall50 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %168 = getelementptr inbounds i32, i32* %_wyvern_thunkcall50, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %.05 to i64
  %_wyvern_thunkcall51 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %171 = getelementptr inbounds i32, i32* %_wyvern_thunkcall51, i64 %170
  store i32 %169, i32* %171, align 4
  %172 = zext i32 %.14 to i64
  %_wyvern_thunkcall52 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %173 = getelementptr inbounds i32, i32* %_wyvern_thunkcall52, i64 %172
  store i32 %166, i32* %173, align 4
  br label %176

174:                                              ; preds = %158
  br label %175

175:                                              ; preds = %174
  br label %149, !llvm.loop !9

.loopexit:                                        ; preds = %149
  br label %176

176:                                              ; preds = %.loopexit, %163
  %.not57 = icmp ult i32 %.05, %.14
  br i1 %.not57, label %178, label %177

177:                                              ; preds = %176
  br label %183

178:                                              ; preds = %176
  br label %179

179:                                              ; preds = %178, %144
  %.2 = phi i32 [ %.14, %178 ], [ %.03, %144 ]
  br label %180

180:                                              ; preds = %179
  %181 = add i32 %.05, 1
  %182 = icmp ult i32 %181, %.2
  br i1 %182, label %137, label %.loopexit28, !llvm.loop !10

.loopexit28:                                      ; preds = %180
  br label %183

183:                                              ; preds = %.loopexit28, %177
  %.16 = phi i32 [ %.05, %177 ], [ %181, %.loopexit28 ]
  %184 = icmp eq i32 %.16, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %183
  %186 = sub i32 %.012, %135
  br label %192

187:                                              ; preds = %183
  %188 = icmp eq i32 %.16, %3
  br i1 %188, label %189, label %190

189:                                              ; preds = %187
  br label %191

190:                                              ; preds = %187
  br label %193

191:                                              ; preds = %189
  br label %192

192:                                              ; preds = %191, %185
  %.113 = phi i32 [ %186, %185 ], [ %135, %191 ]
  %.111 = phi i32 [ %136, %185 ], [ %.010, %191 ]
  br label %130

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %203, %193
  %.01 = phi i32 [ %.16, %193 ], [ %204, %203 ]
  %195 = icmp ult i32 %.01, %3
  br i1 %195, label %196, label %205

196:                                              ; preds = %194
  %197 = add i32 %.16, %2
  %198 = zext i32 %.01 to i64
  %_wyvern_thunkcall53 = call i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %199 = getelementptr inbounds i32, i32* %_wyvern_thunkcall53, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %14, i64 %201
  store i32 %197, i32* %202, align 4
  br label %203

203:                                              ; preds = %196
  %204 = add i32 %.01, 1
  br label %194, !llvm.loop !11

205:                                              ; preds = %194
  %206 = call i32 @SortGroup(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %.16, i32 noundef %4, i32* noundef %5, i32 noundef %.010, i32 noundef %135)
  %207 = add i32 %.16, %2
  %208 = sub i32 %3, %.16
  %209 = sub i32 %.012, %135
  %210 = call i32 @SortGroup(i32 noundef %0, i32 noundef %1, i32 noundef %207, i32 noundef %208, i32 noundef %4, i32* noundef %5, i32 noundef %136, i32 noundef %209)
  %211 = or i32 %206, %210
  br label %212

212:                                              ; preds = %205, %132, %128, %99, %52, %10
  %.0 = phi i32 [ 0, %10 ], [ 1, %52 ], [ %.022, %99 ], [ 1, %128 ], [ 1, %132 ], [ %211, %205 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @SetGroupSize(i32* nocapture noundef %0, i32 noundef %1) #1 {
  %3 = add i32 %1, -1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %21

6:                                                ; preds = %2
  %7 = shl i32 %3, 20
  %8 = and i32 %7, 1072693248
  %9 = or i32 %8, -2147483648
  %10 = load i32, i32* %0, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %0, align 4
  %12 = icmp ugt i32 %3, 1023
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load i32, i32* %0, align 4
  %15 = or i32 %14, 1073741824
  store i32 %15, i32* %0, align 4
  %16 = shl i32 %3, 10
  %17 = and i32 %16, -1048576
  %18 = getelementptr inbounds i32, i32* %0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %13, %6, %5
  ret void
}

declare dso_local void @HeapSort(i32* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @BlockSort(i32* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  br label %6

6:                                                ; preds = %11, %3
  %.04 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %7 = icmp ult i32 %.04, 65536
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = zext i32 %.04 to i64
  %10 = getelementptr inbounds i32, i32* %5, i64 %9
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %8
  %12 = add i32 %.04, 1
  br label %6, !llvm.loop !12

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %32, %13
  %.15 = phi i32 [ 0, %13 ], [ %33, %32 ]
  %15 = add i32 %2, -1
  %16 = icmp ult i32 %.15, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = zext i32 %.15 to i64
  %19 = getelementptr inbounds i8, i8* %1, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = add i32 %.15, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %1, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or i64 %22, %27
  %29 = getelementptr inbounds i32, i32* %5, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %17
  %33 = add i32 %.15, 1
  br label %14, !llvm.loop !13

34:                                               ; preds = %14
  %35 = zext i32 %.15 to i64
  %36 = getelementptr inbounds i8, i8* %1, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 8
  %40 = load i8, i8* %1, align 1
  %41 = zext i8 %40 to i64
  %42 = or i64 %39, %41
  %43 = getelementptr inbounds i32, i32* %5, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds i32, i32* %5, i64 65536
  br label %47

47:                                               ; preds = %59, %34
  %.08 = phi i32 [ 0, %34 ], [ %.19, %59 ]
  %.26 = phi i32 [ 0, %34 ], [ %60, %59 ]
  %48 = icmp ult i32 %.26, 65536
  br i1 %48, label %49, label %61

49:                                               ; preds = %47
  %50 = zext i32 %.26 to i64
  %51 = getelementptr inbounds i32, i32* %5, i64 %50
  %52 = load i32, i32* %51, align 4
  %.not23 = icmp eq i32 %52, 0
  br i1 %.not23, label %55, label %53

53:                                               ; preds = %49
  %54 = add i32 %.08, %52
  br label %55

55:                                               ; preds = %53, %49
  %.19 = phi i32 [ %54, %53 ], [ %.08, %49 ]
  %56 = sub i32 %.19, %52
  %57 = zext i32 %.26 to i64
  %58 = getelementptr inbounds i32, i32* %5, i64 %57
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55
  %60 = add i32 %.26, 1
  br label %47, !llvm.loop !14

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %81, %61
  %.3 = phi i32 [ 0, %61 ], [ %82, %81 ]
  %63 = add i32 %2, -1
  %64 = icmp ult i32 %.3, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = zext i32 %.3 to i64
  %67 = getelementptr inbounds i8, i8* %1, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = add i32 %.3, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %1, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = or i64 %70, %75
  %77 = getelementptr inbounds i32, i32* %5, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %.3 to i64
  %80 = getelementptr inbounds i32, i32* %46, i64 %79
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %65
  %82 = add i32 %.3, 1
  br label %62, !llvm.loop !15

83:                                               ; preds = %62
  %84 = zext i32 %.3 to i64
  %85 = getelementptr inbounds i8, i8* %1, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = shl nuw nsw i64 %87, 8
  %89 = load i8, i8* %1, align 1
  %90 = zext i8 %89 to i64
  %91 = or i64 %88, %90
  %92 = getelementptr inbounds i32, i32* %5, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %.3 to i64
  %95 = getelementptr inbounds i32, i32* %46, i64 %94
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %116, %83
  %.4 = phi i32 [ 0, %83 ], [ %117, %116 ]
  %97 = add i32 %2, -1
  %98 = icmp ult i32 %.4, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  %100 = zext i32 %.4 to i64
  %101 = getelementptr inbounds i8, i8* %1, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i64
  %104 = shl nuw nsw i64 %103, 8
  %105 = add i32 %.4, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %1, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i64
  %110 = or i64 %104, %109
  %111 = getelementptr inbounds i32, i32* %5, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %0, i64 %114
  store i32 %.4, i32* %115, align 4
  br label %116

116:                                              ; preds = %99
  %117 = add i32 %.4, 1
  br label %96, !llvm.loop !16

118:                                              ; preds = %96
  %119 = zext i32 %.4 to i64
  %120 = getelementptr inbounds i8, i8* %1, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i64
  %123 = shl nuw nsw i64 %122, 8
  %124 = load i8, i8* %1, align 1
  %125 = zext i8 %124 to i64
  %126 = or i64 %123, %125
  %127 = getelementptr inbounds i32, i32* %5, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %0, i64 %130
  store i32 %.4, i32* %131, align 4
  br label %132

132:                                              ; preds = %147, %118
  %.011 = phi i32 [ 0, %118 ], [ %.112, %147 ]
  %.5 = phi i32 [ 0, %118 ], [ %148, %147 ]
  %133 = icmp ult i32 %.5, 65536
  br i1 %133, label %134, label %149

134:                                              ; preds = %132
  %135 = zext i32 %.5 to i64
  %136 = getelementptr inbounds i32, i32* %5, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sub i32 %137, %.011
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %147

141:                                              ; preds = %134
  %142 = zext i32 %.011 to i64
  %143 = getelementptr inbounds i32, i32* %0, i64 %142
  call void @SetGroupSize(i32* noundef %143, i32 noundef %138)
  %144 = zext i32 %.5 to i64
  %145 = getelementptr inbounds i32, i32* %5, i64 %144
  %146 = load i32, i32* %145, align 4
  br label %147

147:                                              ; preds = %141, %140
  %.112 = phi i32 [ %.011, %140 ], [ %146, %141 ]
  %148 = add i32 %.5, 1
  br label %132, !llvm.loop !17

149:                                              ; preds = %132
  br label %150

150:                                              ; preds = %154, %149
  %.013 = phi i32 [ 0, %149 ], [ %155, %154 ]
  %151 = add i32 %2, -1
  %152 = lshr i32 %151, %.013
  %.not = icmp eq i32 %152, 0
  br i1 %.not, label %156, label %153

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %153
  %155 = add nuw nsw i32 %.013, 1
  br label %150, !llvm.loop !18

156:                                              ; preds = %150
  %157 = sub nsw i32 32, %.013
  %158 = icmp ult i32 %.013, 20
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %160

160:                                              ; preds = %159, %156
  %.114 = phi i32 [ 12, %159 ], [ %157, %156 ]
  br label %161

161:                                              ; preds = %271, %160
  %.010 = phi i32 [ 2, %160 ], [ %272, %271 ]
  br label %.outer

.outer:                                           ; preds = %265, %161
  %.6.ph = phi i32 [ %266, %265 ], [ 0, %161 ]
  %.03.ph = phi i32 [ %.2, %265 ], [ 0, %161 ]
  br label %162

162:                                              ; preds = %.outer, %244
  %.07 = phi i32 [ %213, %244 ], [ 0, %.outer ]
  %.6 = phi i32 [ %245, %244 ], [ %.6.ph, %.outer ]
  %163 = icmp ult i32 %.6, %2
  br i1 %163, label %164, label %267

164:                                              ; preds = %162
  %165 = zext i32 %.6 to i64
  %166 = getelementptr inbounds i32, i32* %0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = lshr i32 %167, 20
  %169 = and i32 %168, 1023
  %170 = zext i32 %.6 to i64
  %171 = getelementptr inbounds i32, i32* %0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %.6 to i64
  %174 = getelementptr inbounds i32, i32* %0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 1073741824
  %.not19 = icmp eq i32 %176, 0
  br i1 %.not19, label %190, label %177

177:                                              ; preds = %164
  %178 = add i32 %.6, 1
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = lshr i32 %181, 10
  %183 = and i32 %182, 4193280
  %184 = or i32 %169, %183
  %185 = add i32 %.6, 1
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 1048575
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %177, %164
  %.02 = phi i32 [ %184, %177 ], [ %169, %164 ]
  %191 = zext i32 %.6 to i64
  %192 = getelementptr inbounds i32, i32* %0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 1048575
  store i32 %194, i32* %192, align 4
  %195 = add nsw i32 %.02, 1
  %.not20 = icmp slt i32 %172, 0
  br i1 %.not20, label %196, label %198

196:                                              ; preds = %190
  %197 = icmp eq i32 %.02, 0
  br i1 %197, label %198, label %246

198:                                              ; preds = %196, %190
  %199 = sub i32 %.6, %.07
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 1048575
  store i32 %203, i32* %201, align 4
  %204 = icmp ugt i32 %.07, 1
  br i1 %204, label %205, label %212

205:                                              ; preds = %198
  %206 = sub i32 %.6, %.07
  %207 = add i32 %206, 1
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 1048575
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %205, %198
  %213 = add i32 %195, %.07
  %214 = add i32 %.02, %.07
  %215 = shl i32 %214, 20
  %216 = and i32 %215, 1072693248
  %217 = zext i32 %.6 to i64
  %218 = getelementptr inbounds i32, i32* %0, i64 %217
  %219 = zext i32 %.07 to i64
  %220 = sub nsw i64 0, %219
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %216
  store i32 %223, i32* %221, align 4
  %224 = icmp ugt i32 %213, 1024
  br i1 %224, label %225, label %244

225:                                              ; preds = %212
  %226 = zext i32 %.6 to i64
  %227 = getelementptr inbounds i32, i32* %0, i64 %226
  %228 = zext i32 %.07 to i64
  %229 = sub nsw i64 0, %228
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, 1073741824
  store i32 %232, i32* %230, align 4
  %233 = add i32 %.02, %.07
  %234 = shl i32 %233, 10
  %235 = and i32 %234, -1048576
  %236 = zext i32 %.6 to i64
  %237 = getelementptr inbounds i32, i32* %0, i64 1
  %238 = zext i32 %.07 to i64
  %239 = sub nsw i64 0, %238
  %240 = getelementptr inbounds i32, i32* %237, i64 %236
  %241 = getelementptr inbounds i32, i32* %240, i64 %239
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %235
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %225, %212
  %245 = add i32 %.6, %195
  br label %162, !llvm.loop !19

246:                                              ; preds = %196
  %.not21 = icmp ult i32 %.010, %2
  br i1 %.not21, label %260, label %247

247:                                              ; preds = %246
  br label %248

248:                                              ; preds = %257, %247
  %.01 = phi i32 [ 0, %247 ], [ %258, %257 ]
  %249 = icmp ult i32 %.01, %195
  br i1 %249, label %250, label %259

250:                                              ; preds = %248
  %251 = add i32 %.6, %.01
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %46, i64 %255
  store i32 %251, i32* %256, align 4
  br label %257

257:                                              ; preds = %250
  %258 = add i32 %.01, 1
  br label %248, !llvm.loop !20

259:                                              ; preds = %248
  br label %265

260:                                              ; preds = %246
  %261 = call i32 @SortGroup(i32 noundef %2, i32 noundef %.010, i32 noundef %.6, i32 noundef %195, i32 noundef %.114, i32* noundef %0, i32 noundef 0, i32 noundef %2)
  %.not22 = icmp eq i32 %261, 0
  br i1 %.not22, label %264, label %262

262:                                              ; preds = %260
  %263 = add i32 %.6, %195
  br label %264

264:                                              ; preds = %262, %260
  %.1 = phi i32 [ %263, %262 ], [ %.03.ph, %260 ]
  br label %265

265:                                              ; preds = %264, %259
  %.2 = phi i32 [ %.03.ph, %259 ], [ %.1, %264 ]
  %266 = add i32 %.6, %195
  br label %.outer, !llvm.loop !19

267:                                              ; preds = %162
  %268 = icmp eq i32 %.03.ph, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %267
  br label %273

270:                                              ; preds = %267
  br label %271

271:                                              ; preds = %270
  %272 = shl i32 %.010, 1
  br label %161

273:                                              ; preds = %269
  br label %274

274:                                              ; preds = %299, %273
  %.7 = phi i32 [ 0, %273 ], [ %305, %299 ]
  %275 = icmp ult i32 %.7, %2
  br i1 %275, label %276, label %306

276:                                              ; preds = %274
  %277 = zext i32 %.7 to i64
  %278 = getelementptr inbounds i32, i32* %0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = lshr i32 %279, 20
  %281 = and i32 %280, 1023
  %282 = zext i32 %.7 to i64
  %283 = getelementptr inbounds i32, i32* %0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 1073741824
  %.not18 = icmp eq i32 %285, 0
  br i1 %.not18, label %299, label %286

286:                                              ; preds = %276
  %287 = add i32 %.7, 1
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %0, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = lshr i32 %290, 10
  %292 = and i32 %291, 4193280
  %293 = or i32 %281, %292
  %294 = add i32 %.7, 1
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %0, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 1048575
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %286, %276
  %.0 = phi i32 [ %293, %286 ], [ %281, %276 ]
  %300 = zext i32 %.7 to i64
  %301 = getelementptr inbounds i32, i32* %0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 1048575
  store i32 %303, i32* %301, align 4
  %304 = add nsw i32 %.0, 1
  %305 = add i32 %.7, %304
  br label %274, !llvm.loop !21

306:                                              ; preds = %274
  %307 = load i32, i32* %46, align 4
  ret i32 %307
}

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_SortGroup_938618342(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %_wyvern_arg_addr_1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 4
  %_wyvern_arg_2 = load i32*, i32** %_wyvern_arg_addr_1, align 8
  %0 = zext i32 %_wyvern_arg_ to i64
  %1 = getelementptr inbounds i32, i32* %_wyvern_arg_2, i64 %0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %1, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @_wyvern_calleeclone_SetGroupSize_0808030522(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %0) #1 {
  %2 = add i32 %0, -1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %20

5:                                                ; preds = %1
  %6 = shl i32 %2, 20
  %7 = and i32 %6, 1072693248
  %8 = or i32 %7, -2147483648
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call i32* %_wyvern_thunkfptr11(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %9 = load i32, i32* %_wyvern_thunkcall12, align 4
  %10 = or i32 %9, %8
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i32* %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  store i32 %10, i32* %_wyvern_thunkcall9, align 4
  %11 = icmp ugt i32 %2, 1023
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i32* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %13 = load i32, i32* %_wyvern_thunkcall6, align 4
  %14 = or i32 %13, 1073741824
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  store i32 %14, i32* %_wyvern_thunkcall3, align 4
  %15 = shl i32 %2, 10
  %16 = and i32 %15, -1048576
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %17 = getelementptr inbounds i32, i32* %_wyvern_thunkcall, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %12, %5, %4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
