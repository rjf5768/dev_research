; ModuleID = './c4.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Fhourstones/c4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, i32 }

@history = dso_local global [2 x [56 x i32]] [[56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0], [56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0]], align 16
@nodes = dso_local global i64 0, align 8
@plycnt = external dso_local global i32, align 4
@height = external dso_local global [0 x i32], align 4
@colthr = external dso_local global [0 x i32], align 4
@columns = external dso_local global [0 x i32], align 4
@posed = external dso_local global i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"##-<=>+#\00", align 1
@msecs = dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Fhourstones 2.0\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Using %d transposition table entries with %d probes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Solving %d-ply position after \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%lu pos / %lu msec = %.1f Kpos/sec\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @c4_init() #0 {
  %1 = call i32 (...) @trans_init() #3
  ret void
}

declare dso_local i32 @trans_init(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ab(i32 noundef %0, i32 noundef %1) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %3 = alloca [8 x i32], align 16
  %4 = load i64, i64* @nodes, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* @nodes, align 8
  %6 = load i32, i32* @plycnt, align 4
  %7 = icmp eq i32 %6, 41
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %232

9:                                                ; preds = %2
  %10 = load i32, i32* @plycnt, align 4
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  br label %13

13:                                               ; preds = %70, %9
  %.023 = phi i32 [ 0, %9 ], [ %.225, %70 ]
  %.07 = phi i32 [ 0, %9 ], [ %14, %70 ]
  %14 = add nuw nsw i32 %.07, 1
  %15 = icmp ult i32 %.07, 7
  br i1 %15, label %16, label %.loopexit28

16:                                               ; preds = %13
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 7
  br i1 %20, label %21, label %70

21:                                               ; preds = %16
  %22 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %14, i32 noundef %19, i32 noundef 3) #3
  %.not40 = icmp eq i32 %22, 0
  br i1 %.not40, label %23, label %30

23:                                               ; preds = %21
  %24 = zext i32 %14 to i64
  %25 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %.not41 = icmp eq i32 %29, 0
  br i1 %.not41, label %59, label %30

30:                                               ; preds = %23, %21
  %31 = icmp slt i32 %19, 6
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = add nsw i32 %19, 1
  %34 = shl i32 1, %11
  %35 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %14, i32 noundef %33, i32 noundef %34) #3
  %.not45 = icmp eq i32 %35, 0
  br i1 %.not45, label %37, label %36

36:                                               ; preds = %32
  br label %232

37:                                               ; preds = %32, %30
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  store i32 %14, i32* %38, align 16
  br label %39

39:                                               ; preds = %57, %37
  %.18 = phi i32 [ %14, %37 ], [ %40, %57 ]
  %40 = add nuw nsw i32 %.18, 1
  %41 = icmp ult i32 %.18, 7
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = zext i32 %40 to i64
  %44 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 7
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %40, i32 noundef %45, i32 noundef 3) #3
  %.not43 = icmp eq i32 %48, 0
  br i1 %.not43, label %49, label %56

49:                                               ; preds = %47
  %50 = zext i32 %40 to i64
  %51 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %.not44 = icmp eq i32 %55, 0
  br i1 %.not44, label %57, label %56

56:                                               ; preds = %49, %47
  br label %232

57:                                               ; preds = %49, %42
  br label %39, !llvm.loop !4

58:                                               ; preds = %39
  br label %71

59:                                               ; preds = %23
  %60 = icmp slt i32 %19, 6
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = add nsw i32 %19, 1
  %63 = shl i32 1, %11
  %64 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %14, i32 noundef %62, i32 noundef %63) #3
  %.not42 = icmp eq i32 %64, 0
  br i1 %.not42, label %65, label %69

65:                                               ; preds = %61, %59
  %66 = add nsw i32 %.023, 1
  %67 = sext i32 %.023 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %67
  store i32 %14, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  %.124 = phi i32 [ %.023, %61 ], [ %66, %65 ]
  br label %70

70:                                               ; preds = %69, %16
  %.225 = phi i32 [ %.124, %69 ], [ %.023, %16 ]
  br label %13, !llvm.loop !6

.loopexit28:                                      ; preds = %13
  br label %71

71:                                               ; preds = %.loopexit28, %58
  %.326 = phi i32 [ 1, %58 ], [ %.023, %.loopexit28 ]
  %72 = icmp eq i32 %.326, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  br label %232

74:                                               ; preds = %71
  %75 = icmp eq i32 %.326, 1
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %78 = load i32, i32* %77, align 16
  %79 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %78) #3
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_ab_140349407, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %1, i32* %_wyvern_thunk_arg_gep_, align 8
  %80 = sub nsw i32 0, %0
  %81 = call i32 @_wyvern_calleeclone_ab_0127112206(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %80)
  %82 = sub nsw i32 0, %81
  %83 = call i32 (...) @backmove() #3
  br label %232

84:                                               ; preds = %74
  %85 = call i32 (...) @transpose() #3
  %.not = icmp eq i32 %85, -128
  br i1 %.not, label %102, label %86

86:                                               ; preds = %84
  %87 = ashr i32 %85, 5
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = icmp sgt i32 %0, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  br label %232

92:                                               ; preds = %89
  br label %101

93:                                               ; preds = %86
  %94 = icmp eq i32 %87, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = icmp slt i32 %1, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %232

98:                                               ; preds = %95
  br label %100

99:                                               ; preds = %93
  br label %232

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %92
  %.02 = phi i32 [ 0, %92 ], [ %1, %100 ]
  %.01 = phi i32 [ %0, %92 ], [ 0, %100 ]
  br label %102

102:                                              ; preds = %101, %84
  %.13 = phi i32 [ %.02, %101 ], [ %1, %84 ]
  %.1 = phi i32 [ %.01, %101 ], [ %0, %84 ]
  %103 = load i64, i64* @posed, align 8
  br label %104

104:                                              ; preds = %159, %102
  %.018 = phi i32 [ -999999, %102 ], [ %.220, %159 ]
  %.013 = phi i32 [ 0, %102 ], [ %.114, %159 ]
  %.29 = phi i32 [ 0, %102 ], [ %160, %159 ]
  %.04 = phi i32 [ 0, %102 ], [ %.15, %159 ]
  %.2 = phi i32 [ %.1, %102 ], [ %.4, %159 ]
  %105 = icmp slt i32 %.29, %.326
  br i1 %105, label %106, label %.loopexit

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %125, %106
  %.016 = phi i32 [ -999999, %106 ], [ %.117, %125 ]
  %.114 = phi i32 [ %.013, %106 ], [ %.215, %125 ]
  %.011 = phi i32 [ %.29, %106 ], [ %126, %125 ]
  %108 = icmp slt i32 %.011, %.326
  br i1 %108, label %109, label %127

109:                                              ; preds = %107
  %110 = zext i32 %.011 to i64
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %12 to i64
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 3
  %118 = or i32 %117, %112
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %113, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %121, %.016
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %109
  %.117 = phi i32 [ %121, %123 ], [ %.016, %109 ]
  %.215 = phi i32 [ %.011, %123 ], [ %.114, %109 ]
  br label %125

125:                                              ; preds = %124
  %126 = add nuw nsw i32 %.011, 1
  br label %107, !llvm.loop !7

127:                                              ; preds = %107
  %128 = sext i32 %.114 to i64
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %.not38 = icmp eq i32 %.29, %.114
  br i1 %.not38, label %139, label %131

131:                                              ; preds = %127
  %132 = zext i32 %.29 to i64
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %.114 to i64
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %135
  store i32 %134, i32* %136, align 4
  %137 = zext i32 %.29 to i64
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %137
  store i32 %130, i32* %138, align 4
  br label %139

139:                                              ; preds = %131, %127
  %140 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %130) #3
  %141 = sub nsw i32 0, %.13
  %142 = sub nsw i32 0, %.2
  %143 = call i32 @ab(i32 noundef %141, i32 noundef %142)
  %144 = sub nsw i32 0, %143
  %145 = call i32 (...) @backmove() #3
  %146 = icmp slt i32 %.018, %144
  br i1 %146, label %147, label %158

147:                                              ; preds = %139
  %148 = icmp slt i32 %.2, %144
  br i1 %148, label %149, label %157

149:                                              ; preds = %147
  %.not39 = icmp sgt i32 %.13, %144
  br i1 %.not39, label %157, label %150

150:                                              ; preds = %149
  %151 = icmp eq i32 %143, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %150
  %153 = add nsw i32 %.326, -1
  %154 = icmp slt i32 %.29, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155, %152, %150
  %.119 = phi i32 [ 1, %155 ], [ %144, %152 ], [ %144, %150 ]
  br label %161

157:                                              ; preds = %149, %147
  %.3 = phi i32 [ %144, %149 ], [ %.2, %147 ]
  br label %158

158:                                              ; preds = %157, %139
  %.220 = phi i32 [ %144, %157 ], [ %.018, %139 ]
  %.15 = phi i32 [ %.29, %157 ], [ %.04, %139 ]
  %.4 = phi i32 [ %.3, %157 ], [ %.2, %139 ]
  br label %159

159:                                              ; preds = %158
  %160 = add nuw nsw i32 %.29, 1
  br label %104, !llvm.loop !8

.loopexit:                                        ; preds = %104
  br label %161

161:                                              ; preds = %.loopexit, %156
  %.321 = phi i32 [ %.119, %156 ], [ %.018, %.loopexit ]
  %.26 = phi i32 [ %.29, %156 ], [ %.04, %.loopexit ]
  %162 = icmp sgt i32 %.26, 0
  br i1 %162, label %163, label %202

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %183, %163
  %.310 = phi i32 [ 0, %163 ], [ %184, %183 ]
  %165 = icmp slt i32 %.310, %.26
  br i1 %165, label %166, label %185

166:                                              ; preds = %164
  %167 = zext i32 %12 to i64
  %168 = zext i32 %.310 to i64
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 3
  %175 = zext i32 %.310 to i64
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %174, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %167, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %166
  %184 = add nuw nsw i32 %.310, 1
  br label %164, !llvm.loop !9

185:                                              ; preds = %164
  %186 = zext i32 %12 to i64
  %187 = sext i32 %.26 to i64
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %192, 3
  %194 = sext i32 %.26 to i64
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %193, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %186, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %.26
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %185, %161
  %203 = load i64, i64* @posed, align 8
  %204 = sub nsw i64 %203, %103
  br label %205

205:                                              ; preds = %208, %202
  %.027 = phi i32 [ 1, %202 ], [ %209, %208 ]
  %.012 = phi i64 [ %204, %202 ], [ %206, %208 ]
  %206 = ashr i64 %.012, 1
  %.not36 = icmp ult i64 %.012, 2
  br i1 %.not36, label %210, label %207

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %207
  %209 = add nuw nsw i32 %.027, 1
  br label %205, !llvm.loop !10

210:                                              ; preds = %205
  %.not37 = icmp eq i32 %85, -128
  br i1 %.not37, label %218, label %211

211:                                              ; preds = %210
  %212 = ashr i32 %85, 5
  %213 = sub nsw i32 0, %212
  %214 = icmp eq i32 %.321, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %215, %211
  %.422 = phi i32 [ 0, %215 ], [ %.321, %211 ]
  %217 = call i32 (i32, i32, ...) bitcast (i32 (...)* @transrestore to i32 (i32, i32, ...)*)(i32 noundef %.422, i32 noundef %.027) #3
  br label %220

218:                                              ; preds = %210
  %219 = call i32 (i32, i32, ...) bitcast (i32 (...)* @transtore to i32 (i32, i32, ...)*)(i32 noundef %.321, i32 noundef %.027) #3
  br label %220

220:                                              ; preds = %218, %216
  %.5 = phi i32 [ %.422, %216 ], [ %.321, %218 ]
  %221 = load i32, i32* @plycnt, align 4
  %222 = icmp eq i32 %221, 8
  br i1 %222, label %223, label %231

223:                                              ; preds = %220
  %224 = call i32 (...) @printMoves() #3
  %225 = add nsw i32 %.5, 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i64 0, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %229, i32 noundef %.027) #3
  br label %231

231:                                              ; preds = %223, %220
  br label %232

232:                                              ; preds = %231, %99, %97, %91, %76, %73, %56, %36, %8
  %.0 = phi i32 [ 0, %8 ], [ -2, %36 ], [ -2, %56 ], [ -2, %73 ], [ %82, %76 ], [ %87, %91 ], [ %.5, %231 ], [ %87, %97 ], [ %87, %99 ]
  ret i32 %.0
}

declare dso_local i32 @wins(...) #1

declare dso_local i32 @makemove(...) #1

declare dso_local i32 @backmove(...) #1

declare dso_local i32 @transpose(...) #1

declare dso_local i32 @transrestore(...) #1

declare dso_local i32 @transtore(...) #1

declare dso_local i32 @printMoves(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @solve() #0 {
  store i64 0, i64* @nodes, align 8
  store i64 1, i64* @msecs, align 8
  %1 = load i32, i32* @plycnt, align 4
  %2 = and i32 %1, 1
  %3 = xor i32 %2, 1
  br label %4

4:                                                ; preds = %30, %0
  %.01 = phi i32 [ 0, %0 ], [ %5, %30 ]
  %5 = add nuw nsw i32 %.01, 1
  %6 = icmp ult i32 %.01, 7
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 7
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = zext i32 %5 to i64
  %14 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %3
  %17 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %5, i32 noundef %15, i32 noundef %16) #3
  %.not5 = icmp eq i32 %17, 0
  br i1 %.not5, label %18, label %27

18:                                               ; preds = %12
  %19 = zext i32 %5 to i64
  %20 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %3
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18, %12
  %.not6 = icmp eq i32 %3, 0
  %28 = select i1 %.not6, i32 -64, i32 64
  br label %54

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %7
  br label %4, !llvm.loop !11

31:                                               ; preds = %4
  %32 = call i32 (...) @transpose() #3
  %.not = icmp eq i32 %32, -128
  br i1 %.not, label %38, label %33

33:                                               ; preds = %31
  %34 = and i32 %32, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %54

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %31
  %39 = call i64 (...) @millisecs() #3
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* @msecs, align 8
  %41 = call i32 @ab(i32 noundef -2, i32 noundef 2)
  %42 = load i64, i64* @posed, align 8
  br label %43

43:                                               ; preds = %46, %38
  %.03 = phi i32 [ 1, %38 ], [ %47, %46 ]
  %.02 = phi i64 [ %42, %38 ], [ %44, %46 ]
  %44 = ashr i64 %.02, 1
  %.not4 = icmp ult i64 %.02, 2
  br i1 %.not4, label %48, label %45

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.03, 1
  br label %43, !llvm.loop !12

48:                                               ; preds = %43
  %49 = call i64 (...) @millisecs() #3
  %50 = load i64, i64* @msecs, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* @msecs, align 8
  %52 = shl i32 %41, 5
  %53 = or i32 %52, %.03
  br label %54

54:                                               ; preds = %48, %36, %27
  %.0 = phi i32 [ %28, %27 ], [ %32, %36 ], [ %53, %48 ]
  ret i32 %.0
}

declare dso_local i64 @millisecs(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @c4_init()
  %1 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #3
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1050011, i32 noundef 8) #3
  br label %3

3:                                                ; preds = %38, %0
  %4 = call i32 (...) @reset() #3
  br label %5

5:                                                ; preds = %34, %3
  %6 = call i32 @getchar() #3
  %.not = icmp eq i32 %6, -1
  br i1 %.not, label %.loopexit, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i32 %6, 48
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = icmp slt i32 %6, 56
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = add nsw i32 %6, -48
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %12) #3
  br label %34

14:                                               ; preds = %9, %7
  %15 = icmp sgt i32 %6, 64
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = icmp slt i32 %6, 72
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = add nsw i32 %6, -64
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %19) #3
  br label %33

21:                                               ; preds = %16, %14
  %22 = icmp sgt i32 %6, 96
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = icmp slt i32 %6, 104
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = add nsw i32 %6, -96
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %26) #3
  br label %32

28:                                               ; preds = %23, %21
  %29 = icmp eq i32 %6, 10
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %35

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32, %18
  br label %34

34:                                               ; preds = %33, %11
  br label %5, !llvm.loop !13

.loopexit:                                        ; preds = %5
  br label %35

35:                                               ; preds = %.loopexit, %30
  %36 = icmp eq i32 %6, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  br label %61

38:                                               ; preds = %35
  %39 = load i32, i32* @plycnt, align 4
  %40 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 noundef %39) #3
  %41 = call i32 (...) @printMoves() #3
  %42 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #3
  %43 = call i32 (...) @emptyTT() #3
  %44 = call i32 @solve()
  %45 = ashr i32 %44, 5
  %46 = ashr i32 %44, 5
  %47 = add nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = and i32 %44, 31
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef %45, i32 noundef %51, i32 noundef %52) #3
  %54 = load i64, i64* @nodes, align 8
  %55 = load i64, i64* @msecs, align 8
  %56 = sitofp i64 %54 to double
  %57 = sitofp i64 %55 to double
  %58 = fdiv double %56, %57
  %59 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 noundef %54, i64 noundef %55, double noundef %58) #3
  %60 = call i32 (...) @htstat() #3
  br label %3

61:                                               ; preds = %37
  ret i32 0
}

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local i32 @reset(...) #1

declare dso_local i32 @getchar() #1

declare dso_local i32 @emptyTT(...) #1

declare dso_local i32 @htstat(...) #1

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_ab_140349407(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #2 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = sub nsw i32 0, %_wyvern_arg_
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_ab_0127112206(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %0) #0 {
  %2 = alloca [8 x i32], align 16
  %3 = load i64, i64* @nodes, align 8
  %4 = add nsw i64 %3, 1
  store i64 %4, i64* @nodes, align 8
  %5 = load i32, i32* @plycnt, align 4
  %6 = icmp eq i32 %5, 41
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %232

8:                                                ; preds = %1
  %9 = load i32, i32* @plycnt, align 4
  %10 = and i32 %9, 1
  %11 = xor i32 %10, 1
  br label %12

12:                                               ; preds = %69, %8
  %.023 = phi i32 [ 0, %8 ], [ %.225, %69 ]
  %.07 = phi i32 [ 0, %8 ], [ %13, %69 ]
  %13 = add nuw nsw i32 %.07, 1
  %14 = icmp ult i32 %.07, 7
  br i1 %14, label %15, label %.loopexit28

15:                                               ; preds = %12
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 7
  br i1 %19, label %20, label %69

20:                                               ; preds = %15
  %21 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %13, i32 noundef %18, i32 noundef 3) #3
  %.not14 = icmp eq i32 %21, 0
  br i1 %.not14, label %22, label %29

22:                                               ; preds = %20
  %23 = zext i32 %13 to i64
  %24 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %.not15 = icmp eq i32 %28, 0
  br i1 %.not15, label %58, label %29

29:                                               ; preds = %22, %20
  %30 = icmp slt i32 %18, 6
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = add nsw i32 %18, 1
  %33 = shl i32 1, %10
  %34 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %13, i32 noundef %32, i32 noundef %33) #3
  %.not19 = icmp eq i32 %34, 0
  br i1 %.not19, label %36, label %35

35:                                               ; preds = %31
  br label %232

36:                                               ; preds = %31, %29
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  store i32 %13, i32* %37, align 16
  br label %38

38:                                               ; preds = %56, %36
  %.18 = phi i32 [ %13, %36 ], [ %39, %56 ]
  %39 = add nuw nsw i32 %.18, 1
  %40 = icmp ult i32 %.18, 7
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = zext i32 %39 to i64
  %43 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 7
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %39, i32 noundef %44, i32 noundef 3) #3
  %.not17 = icmp eq i32 %47, 0
  br i1 %.not17, label %48, label %55

48:                                               ; preds = %46
  %49 = zext i32 %39 to i64
  %50 = getelementptr inbounds [0 x i32], [0 x i32]* @columns, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [0 x i32], [0 x i32]* @colthr, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %.not18 = icmp eq i32 %54, 0
  br i1 %.not18, label %56, label %55

55:                                               ; preds = %48, %46
  br label %232

56:                                               ; preds = %48, %41
  br label %38, !llvm.loop !4

57:                                               ; preds = %38
  br label %70

58:                                               ; preds = %22
  %59 = icmp slt i32 %18, 6
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = add nsw i32 %18, 1
  %62 = shl i32 1, %10
  %63 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @wins to i32 (i32, i32, i32, ...)*)(i32 noundef %13, i32 noundef %61, i32 noundef %62) #3
  %.not16 = icmp eq i32 %63, 0
  br i1 %.not16, label %64, label %68

64:                                               ; preds = %60, %58
  %65 = add nsw i32 %.023, 1
  %66 = sext i32 %.023 to i64
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %66
  store i32 %13, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %60
  %.124 = phi i32 [ %.023, %60 ], [ %65, %64 ]
  br label %69

69:                                               ; preds = %68, %15
  %.225 = phi i32 [ %.124, %68 ], [ %.023, %15 ]
  br label %12, !llvm.loop !6

.loopexit28:                                      ; preds = %12
  br label %70

70:                                               ; preds = %.loopexit28, %57
  %.326 = phi i32 [ 1, %57 ], [ %.023, %.loopexit28 ]
  %71 = icmp eq i32 %.326, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  br label %232

73:                                               ; preds = %70
  %74 = icmp eq i32 %.326, 1
  br i1 %74, label %75, label %84

75:                                               ; preds = %73
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %77) #3
  %79 = sub nsw i32 0, %0
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i32 %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %80 = sub nsw i32 0, %_wyvern_thunkcall9
  %81 = call i32 @ab(i32 noundef %79, i32 noundef %80)
  %82 = sub nsw i32 0, %81
  %83 = call i32 (...) @backmove() #3
  br label %232

84:                                               ; preds = %73
  %85 = call i32 (...) @transpose() #3
  %.not = icmp eq i32 %85, -128
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  br i1 %.not, label %102, label %86

86:                                               ; preds = %84
  %87 = ashr i32 %85, 5
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i32 %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %90 = icmp sgt i32 %_wyvern_thunkcall6, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  br label %232

92:                                               ; preds = %89
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32 %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  br label %101

93:                                               ; preds = %86
  %94 = icmp eq i32 %87, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = icmp slt i32 %0, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %232

98:                                               ; preds = %95
  br label %100

99:                                               ; preds = %93
  br label %232

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %92
  %.02 = phi i32 [ 0, %92 ], [ %0, %100 ]
  %.01 = phi i32 [ %_wyvern_thunkcall3, %92 ], [ 0, %100 ]
  br label %102

102:                                              ; preds = %101, %84
  %.13 = phi i32 [ %.02, %101 ], [ %0, %84 ]
  %.1 = phi i32 [ %.01, %101 ], [ %_wyvern_thunkcall, %84 ]
  %103 = load i64, i64* @posed, align 8
  br label %104

104:                                              ; preds = %159, %102
  %.018 = phi i32 [ -999999, %102 ], [ %.220, %159 ]
  %.013 = phi i32 [ 0, %102 ], [ %.114, %159 ]
  %.29 = phi i32 [ 0, %102 ], [ %160, %159 ]
  %.04 = phi i32 [ 0, %102 ], [ %.15, %159 ]
  %.2 = phi i32 [ %.1, %102 ], [ %.4, %159 ]
  %105 = icmp slt i32 %.29, %.326
  br i1 %105, label %106, label %.loopexit

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %125, %106
  %.016 = phi i32 [ -999999, %106 ], [ %.117, %125 ]
  %.114 = phi i32 [ %.013, %106 ], [ %.215, %125 ]
  %.011 = phi i32 [ %.29, %106 ], [ %126, %125 ]
  %108 = icmp slt i32 %.011, %.326
  br i1 %108, label %109, label %127

109:                                              ; preds = %107
  %110 = zext i32 %.011 to i64
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %11 to i64
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 3
  %118 = or i32 %117, %112
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %113, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %121, %.016
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %109
  %.117 = phi i32 [ %121, %123 ], [ %.016, %109 ]
  %.215 = phi i32 [ %.011, %123 ], [ %.114, %109 ]
  br label %125

125:                                              ; preds = %124
  %126 = add nuw nsw i32 %.011, 1
  br label %107, !llvm.loop !7

127:                                              ; preds = %107
  %128 = sext i32 %.114 to i64
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %.not12 = icmp eq i32 %.29, %.114
  br i1 %.not12, label %139, label %131

131:                                              ; preds = %127
  %132 = zext i32 %.29 to i64
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %.114 to i64
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %135
  store i32 %134, i32* %136, align 4
  %137 = zext i32 %.29 to i64
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %137
  store i32 %130, i32* %138, align 4
  br label %139

139:                                              ; preds = %131, %127
  %140 = call i32 (i32, ...) bitcast (i32 (...)* @makemove to i32 (i32, ...)*)(i32 noundef %130) #3
  %141 = sub nsw i32 0, %.13
  %142 = sub nsw i32 0, %.2
  %143 = call i32 @ab(i32 noundef %141, i32 noundef %142)
  %144 = sub nsw i32 0, %143
  %145 = call i32 (...) @backmove() #3
  %146 = icmp slt i32 %.018, %144
  br i1 %146, label %147, label %158

147:                                              ; preds = %139
  %148 = icmp slt i32 %.2, %144
  br i1 %148, label %149, label %157

149:                                              ; preds = %147
  %.not13 = icmp sgt i32 %.13, %144
  br i1 %.not13, label %157, label %150

150:                                              ; preds = %149
  %151 = icmp eq i32 %143, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %150
  %153 = add nsw i32 %.326, -1
  %154 = icmp slt i32 %.29, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155, %152, %150
  %.119 = phi i32 [ 1, %155 ], [ %144, %152 ], [ %144, %150 ]
  br label %161

157:                                              ; preds = %149, %147
  %.3 = phi i32 [ %144, %149 ], [ %.2, %147 ]
  br label %158

158:                                              ; preds = %157, %139
  %.220 = phi i32 [ %144, %157 ], [ %.018, %139 ]
  %.15 = phi i32 [ %.29, %157 ], [ %.04, %139 ]
  %.4 = phi i32 [ %.3, %157 ], [ %.2, %139 ]
  br label %159

159:                                              ; preds = %158
  %160 = add nuw nsw i32 %.29, 1
  br label %104, !llvm.loop !8

.loopexit:                                        ; preds = %104
  br label %161

161:                                              ; preds = %.loopexit, %156
  %.321 = phi i32 [ %.119, %156 ], [ %.018, %.loopexit ]
  %.26 = phi i32 [ %.29, %156 ], [ %.04, %.loopexit ]
  %162 = icmp sgt i32 %.26, 0
  br i1 %162, label %163, label %202

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %183, %163
  %.310 = phi i32 [ 0, %163 ], [ %184, %183 ]
  %165 = icmp slt i32 %.310, %.26
  br i1 %165, label %166, label %185

166:                                              ; preds = %164
  %167 = zext i32 %11 to i64
  %168 = zext i32 %.310 to i64
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 3
  %175 = zext i32 %.310 to i64
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %174, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %167, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %166
  %184 = add nuw nsw i32 %.310, 1
  br label %164, !llvm.loop !9

185:                                              ; preds = %164
  %186 = zext i32 %11 to i64
  %187 = sext i32 %.26 to i64
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [0 x i32], [0 x i32]* @height, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %192, 3
  %194 = sext i32 %.26 to i64
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %193, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [2 x [56 x i32]], [2 x [56 x i32]]* @history, i64 0, i64 %186, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %.26
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %185, %161
  %203 = load i64, i64* @posed, align 8
  %204 = sub nsw i64 %203, %103
  br label %205

205:                                              ; preds = %208, %202
  %.027 = phi i32 [ 1, %202 ], [ %209, %208 ]
  %.012 = phi i64 [ %204, %202 ], [ %206, %208 ]
  %206 = ashr i64 %.012, 1
  %.not10 = icmp ult i64 %.012, 2
  br i1 %.not10, label %210, label %207

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %207
  %209 = add nuw nsw i32 %.027, 1
  br label %205, !llvm.loop !10

210:                                              ; preds = %205
  %.not11 = icmp eq i32 %85, -128
  br i1 %.not11, label %218, label %211

211:                                              ; preds = %210
  %212 = ashr i32 %85, 5
  %213 = sub nsw i32 0, %212
  %214 = icmp eq i32 %.321, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %215, %211
  %.422 = phi i32 [ 0, %215 ], [ %.321, %211 ]
  %217 = call i32 (i32, i32, ...) bitcast (i32 (...)* @transrestore to i32 (i32, i32, ...)*)(i32 noundef %.422, i32 noundef %.027) #3
  br label %220

218:                                              ; preds = %210
  %219 = call i32 (i32, i32, ...) bitcast (i32 (...)* @transtore to i32 (i32, i32, ...)*)(i32 noundef %.321, i32 noundef %.027) #3
  br label %220

220:                                              ; preds = %218, %216
  %.5 = phi i32 [ %.422, %216 ], [ %.321, %218 ]
  %221 = load i32, i32* @plycnt, align 4
  %222 = icmp eq i32 %221, 8
  br i1 %222, label %223, label %231

223:                                              ; preds = %220
  %224 = call i32 (...) @printMoves() #3
  %225 = add nsw i32 %.5, 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i64 0, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %229, i32 noundef %.027) #3
  br label %231

231:                                              ; preds = %223, %220
  br label %232

232:                                              ; preds = %231, %99, %97, %91, %75, %72, %55, %35, %7
  %.0 = phi i32 [ 0, %7 ], [ -2, %35 ], [ -2, %55 ], [ -2, %72 ], [ %82, %75 ], [ %87, %91 ], [ %.5, %231 ], [ %87, %97 ], [ %87, %99 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
