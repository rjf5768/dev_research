; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/kbo.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/kbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }

@kbo_MINWEIGHT = dso_local constant i32 1, align 4
@ord_VARCOUNT = external dso_local global [2000 x [2 x i32]], align 16
@stack_POINTER = external dso_local global i32, align 4
@symbol_SIGNATURE = external dso_local global %struct.signature**, align 8
@symbol_TYPESTATBITS = external dso_local constant i32, align 4
@stack_STACK = external dso_local global [10000 x i8*], align 16
@ord_PRECEDENCE = external dso_local global i32*, align 8
@cont_INSTANCECONTEXT = external dso_local global %struct.binding*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kbo_Compare(%struct.term* noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.term*, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.term* %0, %struct.term** %4, align 8
  store %struct.term* %1, %struct.term** %5, align 8
  %10 = load %struct.term*, %struct.term** %4, align 8
  %11 = load %struct.term*, %struct.term** %5, align 8
  %12 = call i32 @kbo_CompVarCondAndWeight(%struct.term* noundef %10, i32* noundef %7, %struct.term* noundef %11, i32* noundef %8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct.term*, %struct.term** %4, align 8
  %20 = load %struct.term*, %struct.term** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @kbo_CompareStruc(%struct.term* noundef %19, %struct.term* noundef %20, i32 noundef %21)
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %15, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.term*, %struct.term** %5, align 8
  %31 = load %struct.term*, %struct.term** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @kbo_CompareStruc(%struct.term* noundef %30, %struct.term* noundef %31, i32 noundef %33)
  %35 = call i32 @ord_Not(i32 noundef %34)
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load %struct.term*, %struct.term** %4, align 8
  %44 = load %struct.term*, %struct.term** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @kbo_CompareStruc(%struct.term* noundef %43, %struct.term* noundef %44, i32 noundef %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.term*, %struct.term** %5, align 8
  %51 = load %struct.term*, %struct.term** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @kbo_CompareStruc(%struct.term* noundef %50, %struct.term* noundef %51, i32 noundef %53)
  %55 = call i32 @ord_Not(i32 noundef %54)
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %42
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %39, %36
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %56, %49, %29, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_CompVarCondAndWeight(%struct.term* noundef %0, i32* noundef %1, %struct.term* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.term*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.term*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.term*, align 8
  %13 = alloca %struct.LIST_HELP*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.term* %0, %struct.term** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.term* %2, %struct.term** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  store i32 1, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.term*, %struct.term** %6, align 8
  %20 = call i32 @term_MaxVar(%struct.term* noundef %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.term*, %struct.term** %8, align 8
  %22 = call i32 @term_MaxVar(%struct.term* noundef %21)
  store i32 %22, i32* %11, align 4
  %23 = call i32 @stack_Bottom()
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %27, %4
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %40
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %14, align 4
  br label %30, !llvm.loop !4

46:                                               ; preds = %30
  %47 = load %struct.term*, %struct.term** %6, align 8
  store %struct.term* %47, %struct.term** %12, align 8
  %48 = load %struct.term*, %struct.term** %12, align 8
  %49 = call i32 @term_IsStandardVariable(%struct.term* noundef %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.term*, %struct.term** %12, align 8
  %53 = call i32 @term_TopSymbol(%struct.term* noundef %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %54
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 0, i64 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %16, align 4
  br label %75

61:                                               ; preds = %46
  %62 = load %struct.term*, %struct.term** %12, align 8
  %63 = call i32 @term_TopSymbol(%struct.term* noundef %62)
  %64 = call i32 @symbol_Weight(i32 noundef %63)
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %16, align 4
  %67 = load %struct.term*, %struct.term** %12, align 8
  %68 = call i32 @term_IsComplex(%struct.term* noundef %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.term*, %struct.term** %12, align 8
  %72 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %71)
  %73 = bitcast %struct.LIST_HELP* %72 to i8*
  call void @stack_Push(i8* noundef %73)
  br label %74

74:                                               ; preds = %70, %61
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %131, %75
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @stack_Empty(i32 noundef %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %81, label %132

81:                                               ; preds = %76
  %82 = call i8* @stack_Top()
  %83 = bitcast i8* %82 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %83, %struct.LIST_HELP** %13, align 8
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %85 = call i8* @list_Car(%struct.LIST_HELP* noundef %84)
  %86 = bitcast i8* %85 to %struct.term*
  store %struct.term* %86, %struct.term** %12, align 8
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %88 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %87)
  %89 = bitcast %struct.LIST_HELP* %88 to i8*
  call void @stack_RplacTop(i8* noundef %89)
  %90 = load %struct.term*, %struct.term** %12, align 8
  %91 = call i32 @term_IsStandardVariable(%struct.term* noundef %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %81
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  %96 = load %struct.term*, %struct.term** %12, align 8
  %97 = call i32 @term_TopSymbol(%struct.term* noundef %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %98
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 0
  %101 = load i32, i32* %100, align 8
  %102 = add i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %117

103:                                              ; preds = %81
  %104 = load %struct.term*, %struct.term** %12, align 8
  %105 = call i32 @term_TopSymbol(%struct.term* noundef %104)
  %106 = call i32 @symbol_Weight(i32 noundef %105)
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %16, align 4
  %109 = load %struct.term*, %struct.term** %12, align 8
  %110 = call i32 @term_IsComplex(%struct.term* noundef %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load %struct.term*, %struct.term** %12, align 8
  %114 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %113)
  %115 = bitcast %struct.LIST_HELP* %114 to i8*
  call void @stack_Push(i8* noundef %115)
  br label %116

116:                                              ; preds = %112, %103
  br label %117

117:                                              ; preds = %116, %93
  br label %118

118:                                              ; preds = %129, %117
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @stack_Empty(i32 noundef %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = call i8* @stack_Top()
  %124 = bitcast i8* %123 to %struct.LIST_HELP*
  %125 = call i32 @list_Empty(%struct.LIST_HELP* noundef %124)
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %122, %118
  %128 = phi i1 [ false, %118 ], [ %126, %122 ]
  br i1 %128, label %129, label %131

129:                                              ; preds = %127
  %130 = call i32 @stack_Pop()
  br label %118, !llvm.loop !6

131:                                              ; preds = %127
  br label %76, !llvm.loop !7

132:                                              ; preds = %76
  %133 = load %struct.term*, %struct.term** %8, align 8
  store %struct.term* %133, %struct.term** %12, align 8
  %134 = load %struct.term*, %struct.term** %12, align 8
  %135 = call i32 @term_IsStandardVariable(%struct.term* noundef %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  %140 = load %struct.term*, %struct.term** %12, align 8
  %141 = call i32 @term_TopSymbol(%struct.term* noundef %140)
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %142
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %143, i64 0, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %161

147:                                              ; preds = %132
  %148 = load %struct.term*, %struct.term** %12, align 8
  %149 = call i32 @term_TopSymbol(%struct.term* noundef %148)
  %150 = call i32 @symbol_Weight(i32 noundef %149)
  %151 = load i32, i32* %16, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %16, align 4
  %153 = load %struct.term*, %struct.term** %12, align 8
  %154 = call i32 @term_IsComplex(%struct.term* noundef %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load %struct.term*, %struct.term** %12, align 8
  %158 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %157)
  %159 = bitcast %struct.LIST_HELP* %158 to i8*
  call void @stack_Push(i8* noundef %159)
  br label %160

160:                                              ; preds = %156, %147
  br label %161

161:                                              ; preds = %160, %137
  br label %162

162:                                              ; preds = %217, %161
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @stack_Empty(i32 noundef %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br i1 %166, label %167, label %218

167:                                              ; preds = %162
  %168 = call i8* @stack_Top()
  %169 = bitcast i8* %168 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %169, %struct.LIST_HELP** %13, align 8
  %170 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %171 = call i8* @list_Car(%struct.LIST_HELP* noundef %170)
  %172 = bitcast i8* %171 to %struct.term*
  store %struct.term* %172, %struct.term** %12, align 8
  %173 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %174 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %173)
  %175 = bitcast %struct.LIST_HELP* %174 to i8*
  call void @stack_RplacTop(i8* noundef %175)
  %176 = load %struct.term*, %struct.term** %12, align 8
  %177 = call i32 @term_IsStandardVariable(%struct.term* noundef %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %167
  %180 = load i32, i32* %16, align 4
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  %182 = load %struct.term*, %struct.term** %12, align 8
  %183 = call i32 @term_TopSymbol(%struct.term* noundef %182)
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %184
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %185, i64 0, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %203

189:                                              ; preds = %167
  %190 = load %struct.term*, %struct.term** %12, align 8
  %191 = call i32 @term_TopSymbol(%struct.term* noundef %190)
  %192 = call i32 @symbol_Weight(i32 noundef %191)
  %193 = load i32, i32* %16, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %16, align 4
  %195 = load %struct.term*, %struct.term** %12, align 8
  %196 = call i32 @term_IsComplex(%struct.term* noundef %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %189
  %199 = load %struct.term*, %struct.term** %12, align 8
  %200 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %199)
  %201 = bitcast %struct.LIST_HELP* %200 to i8*
  call void @stack_Push(i8* noundef %201)
  br label %202

202:                                              ; preds = %198, %189
  br label %203

203:                                              ; preds = %202, %179
  br label %204

204:                                              ; preds = %215, %203
  %205 = load i32, i32* %15, align 4
  %206 = call i32 @stack_Empty(i32 noundef %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %204
  %209 = call i8* @stack_Top()
  %210 = bitcast i8* %209 to %struct.LIST_HELP*
  %211 = call i32 @list_Empty(%struct.LIST_HELP* noundef %210)
  %212 = icmp ne i32 %211, 0
  br label %213

213:                                              ; preds = %208, %204
  %214 = phi i1 [ false, %204 ], [ %212, %208 ]
  br i1 %214, label %215, label %217

215:                                              ; preds = %213
  %216 = call i32 @stack_Pop()
  br label %204, !llvm.loop !8

217:                                              ; preds = %213
  br label %162, !llvm.loop !9

218:                                              ; preds = %162
  store i32 0, i32* %14, align 4
  br label %219

219:                                              ; preds = %264, %218
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %10, align 4
  %222 = icmp sle i32 %220, %221
  br i1 %222, label %223, label %267

223:                                              ; preds = %219
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %225
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %226, i64 0, i64 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %230
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %231, i64 0, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ult i32 %228, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %223
  %236 = load i32*, i32** %7, align 8
  store i32 0, i32* %236, align 4
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %235
  %241 = load i32, i32* %16, align 4
  store i32 %241, i32* %5, align 4
  br label %269

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242, %223
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %245
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %246, i64 0, i64 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %250
  %252 = getelementptr inbounds [2 x i32], [2 x i32]* %251, i64 0, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp ugt i32 %248, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %243
  %256 = load i32*, i32** %9, align 8
  store i32 0, i32* %256, align 4
  %257 = load i32*, i32** %7, align 8
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %255
  %261 = load i32, i32* %16, align 4
  store i32 %261, i32* %5, align 4
  br label %269

262:                                              ; preds = %255
  br label %263

263:                                              ; preds = %262, %243
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %14, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %14, align 4
  br label %219, !llvm.loop !10

267:                                              ; preds = %219
  %268 = load i32, i32* %16, align 4
  store i32 %268, i32* %5, align 4
  br label %269

269:                                              ; preds = %267, %260, %240
  %270 = load i32, i32* %5, align 4
  ret i32 %270
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_CompareStruc(%struct.term* noundef %0, %struct.term* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.term*, align 8
  %6 = alloca %struct.term*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.LIST_HELP*, align 8
  %9 = alloca %struct.LIST_HELP*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.term*, align 8
  %16 = alloca %struct.term*, align 8
  %17 = alloca i32, align 4
  store %struct.term* %0, %struct.term** %5, align 8
  store %struct.term* %1, %struct.term** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.term*, %struct.term** %5, align 8
  %19 = call i32 @term_TopSymbol(%struct.term* noundef %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.term*, %struct.term** %6, align 8
  %21 = call i32 @term_TopSymbol(%struct.term* noundef %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 3, i32* %4, align 4
  br label %149

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %148

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @symbol_IsStandardVariable(i32 noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @symbol_IsStandardVariable(i32 noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 2, i32* %4, align 4
  br label %149

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %149

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @symbol_IsStandardVariable(i32 noundef %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** @ord_PRECEDENCE, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @symbol_PrecedenceGreater(i32* noundef %43, i32 noundef %44, i32 noundef %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %38
  store i32 3, i32* %4, align 4
  br label %149

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %147

53:                                               ; preds = %49
  %54 = load %struct.term*, %struct.term** %5, align 8
  %55 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %54)
  store %struct.LIST_HELP* %55, %struct.LIST_HELP** %8, align 8
  %56 = load %struct.term*, %struct.term** %6, align 8
  %57 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %56)
  store %struct.LIST_HELP* %57, %struct.LIST_HELP** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @symbol_HasProperty(i32 noundef %58, i32 noundef 8)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @symbol_Arity(i32 noundef %62)
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %81, %61
  %65 = load i32, i32* %17, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %68, i32 noundef %69)
  %71 = bitcast i8* %70 to %struct.term*
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %72, i32 noundef %73)
  %75 = bitcast i8* %74 to %struct.term*
  %76 = call i32 @term_Equal(%struct.term* noundef %71, %struct.term* noundef %75)
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %67, %64
  %79 = phi i1 [ false, %64 ], [ %77, %67 ]
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %17, align 4
  br label %64, !llvm.loop !11

84:                                               ; preds = %78
  %85 = load i32, i32* %17, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %88, i32 noundef %89)
  %91 = bitcast i8* %90 to %struct.term*
  store %struct.term* %91, %struct.term** %15, align 8
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %92, i32 noundef %93)
  %95 = bitcast i8* %94 to %struct.term*
  store %struct.term* %95, %struct.term** %16, align 8
  br label %97

96:                                               ; preds = %84
  store i32 2, i32* %4, align 4
  br label %149

97:                                               ; preds = %87
  br label %132

98:                                               ; preds = %53
  br label %99

99:                                               ; preds = %114, %98
  %100 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %101 = call i32 @list_Empty(%struct.LIST_HELP* noundef %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %99
  %104 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %105 = call i8* @list_Car(%struct.LIST_HELP* noundef %104)
  %106 = bitcast i8* %105 to %struct.term*
  %107 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %108 = call i8* @list_Car(%struct.LIST_HELP* noundef %107)
  %109 = bitcast i8* %108 to %struct.term*
  %110 = call i32 @term_Equal(%struct.term* noundef %106, %struct.term* noundef %109)
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %103, %99
  %113 = phi i1 [ false, %99 ], [ %111, %103 ]
  br i1 %113, label %114, label %119

114:                                              ; preds = %112
  %115 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %116 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %115)
  store %struct.LIST_HELP* %116, %struct.LIST_HELP** %8, align 8
  %117 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %118 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %117)
  store %struct.LIST_HELP* %118, %struct.LIST_HELP** %9, align 8
  br label %99, !llvm.loop !12

119:                                              ; preds = %112
  %120 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %121 = call i32 @list_Empty(%struct.LIST_HELP* noundef %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 2, i32* %4, align 4
  br label %149

124:                                              ; preds = %119
  %125 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %126 = call i8* @list_Car(%struct.LIST_HELP* noundef %125)
  %127 = bitcast i8* %126 to %struct.term*
  store %struct.term* %127, %struct.term** %15, align 8
  %128 = load %struct.LIST_HELP*, %struct.LIST_HELP** %9, align 8
  %129 = call i8* @list_Car(%struct.LIST_HELP* noundef %128)
  %130 = bitcast i8* %129 to %struct.term*
  store %struct.term* %130, %struct.term** %16, align 8
  br label %131

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %97
  %133 = load %struct.term*, %struct.term** %15, align 8
  %134 = load %struct.term*, %struct.term** %16, align 8
  %135 = call i32 @kbo_CompVarCondAndWeight(%struct.term* noundef %133, i32* noundef %13, %struct.term* noundef %134, i32* noundef %14)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.term*, %struct.term** %15, align 8
  %143 = load %struct.term*, %struct.term** %16, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @kbo_CompareStruc(%struct.term* noundef %142, %struct.term* noundef %143, i32 noundef %144)
  store i32 %145, i32* %4, align 4
  br label %149

146:                                              ; preds = %138, %132
  store i32 0, i32* %4, align 4
  br label %149

147:                                              ; preds = %49
  store i32 0, i32* %4, align 4
  br label %149

148:                                              ; preds = %25
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %147, %146, %141, %123, %96, %48, %37, %36, %24
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @ord_Not(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kbo_ContCompare(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.binding*, align 8
  %7 = alloca %struct.term*, align 8
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %6, align 8
  store %struct.term* %1, %struct.term** %7, align 8
  store %struct.binding* %2, %struct.binding** %8, align 8
  store %struct.term* %3, %struct.term** %9, align 8
  %14 = load %struct.binding*, %struct.binding** %6, align 8
  %15 = load %struct.term*, %struct.term** %7, align 8
  %16 = load %struct.binding*, %struct.binding** %8, align 8
  %17 = load %struct.term*, %struct.term** %9, align 8
  %18 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %14, %struct.term* noundef %15, i32* noundef %11, %struct.binding* noundef %16, %struct.term* noundef %17, i32* noundef %12)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.binding*, %struct.binding** %6, align 8
  %26 = load %struct.term*, %struct.term** %7, align 8
  %27 = load %struct.binding*, %struct.binding** %8, align 8
  %28 = load %struct.term*, %struct.term** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %25, %struct.term* noundef %26, %struct.binding* noundef %27, %struct.term* noundef %28, i32 noundef %29)
  store i32 %30, i32* %5, align 4
  br label %73

31:                                               ; preds = %21, %4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.binding*, %struct.binding** %8, align 8
  %39 = load %struct.term*, %struct.term** %9, align 8
  %40 = load %struct.binding*, %struct.binding** %6, align 8
  %41 = load %struct.term*, %struct.term** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %38, %struct.term* noundef %39, %struct.binding* noundef %40, %struct.term* noundef %41, i32 noundef %43)
  %45 = call i32 @ord_Not(i32 noundef %44)
  store i32 %45, i32* %5, align 4
  br label %73

46:                                               ; preds = %34, %31
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load %struct.binding*, %struct.binding** %6, align 8
  %54 = load %struct.term*, %struct.term** %7, align 8
  %55 = load %struct.binding*, %struct.binding** %8, align 8
  %56 = load %struct.term*, %struct.term** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %53, %struct.term* noundef %54, %struct.binding* noundef %55, %struct.term* noundef %56, i32 noundef %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load %struct.binding*, %struct.binding** %8, align 8
  %63 = load %struct.term*, %struct.term** %9, align 8
  %64 = load %struct.binding*, %struct.binding** %6, align 8
  %65 = load %struct.term*, %struct.term** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %62, %struct.term* noundef %63, %struct.binding* noundef %64, %struct.term* noundef %65, i32 noundef %67)
  %69 = call i32 @ord_Not(i32 noundef %68)
  store i32 %69, i32* %5, align 4
  br label %73

70:                                               ; preds = %52
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %49, %46
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %70, %61, %37, %24
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %0, %struct.term* noundef %1, i32* noundef %2, %struct.binding* noundef %3, %struct.term* noundef %4, i32* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.binding*, align 8
  %12 = alloca %struct.term*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %8, align 8
  store %struct.term* %1, %struct.term** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.binding* %3, %struct.binding** %11, align 8
  store %struct.term* %4, %struct.term** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  store i32 1, i32* %18, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 1, i32* %19, align 4
  %20 = load %struct.binding*, %struct.binding** %8, align 8
  %21 = load %struct.term*, %struct.term** %9, align 8
  %22 = call i32 @cont_TermMaxVar(%struct.binding* noundef %20, %struct.term* noundef %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.binding*, %struct.binding** %11, align 8
  %24 = load %struct.term*, %struct.term** %12, align 8
  %25 = call i32 @cont_TermMaxVar(%struct.binding* noundef %23, %struct.term* noundef %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %29, %6
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %38
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %39, i64 0, i64 0
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %42
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %43, i64 0, i64 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  br label %32, !llvm.loop !13

48:                                               ; preds = %32
  %49 = load %struct.binding*, %struct.binding** %8, align 8
  %50 = load %struct.term*, %struct.term** %9, align 8
  %51 = call i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* noundef %49, %struct.term* noundef %50, i32 noundef 0)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.binding*, %struct.binding** %11, align 8
  %54 = load %struct.term*, %struct.term** %12, align 8
  %55 = call i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* noundef %53, %struct.term* noundef %54, i32 noundef 1)
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %103, %48
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %106

61:                                               ; preds = %57
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %68
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ult i32 %66, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %61
  %74 = load i32*, i32** %10, align 8
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %7, align 4
  br label %108

80:                                               ; preds = %73
  br label %102

81:                                               ; preds = %61
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %83
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %84, i64 0, i64 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %88
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %89, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ugt i32 %86, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %81
  %94 = load i32*, i32** %13, align 8
  store i32 0, i32* %94, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %7, align 4
  br label %108

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %81
  br label %102

102:                                              ; preds = %101, %80
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %57, !llvm.loop !14

106:                                              ; preds = %57
  %107 = load i32, i32* %17, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %98, %78
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_ContCompareStruc(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.binding*, align 8
  %8 = alloca %struct.term*, align 8
  %9 = alloca %struct.binding*, align 8
  %10 = alloca %struct.term*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.LIST_HELP*, align 8
  %13 = alloca %struct.LIST_HELP*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.term*, align 8
  %20 = alloca %struct.term*, align 8
  %21 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %7, align 8
  store %struct.term* %1, %struct.term** %8, align 8
  store %struct.binding* %2, %struct.binding** %9, align 8
  store %struct.term* %3, %struct.term** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.term*, %struct.term** %8, align 8
  %23 = call %struct.term* @cont_Deref(%struct.binding** noundef %7, %struct.term* noundef %22)
  store %struct.term* %23, %struct.term** %8, align 8
  %24 = load %struct.term*, %struct.term** %10, align 8
  %25 = call %struct.term* @cont_Deref(%struct.binding** noundef %9, %struct.term* noundef %24)
  store %struct.term* %25, %struct.term** %10, align 8
  %26 = load %struct.term*, %struct.term** %8, align 8
  %27 = call i32 @term_TopSymbol(%struct.term* noundef %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.term*, %struct.term** %10, align 8
  %29 = call i32 @term_TopSymbol(%struct.term* noundef %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 3, i32* %6, align 4
  br label %169

33:                                               ; preds = %5
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %168

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @symbol_IsStandardVariable(i32 noundef %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @symbol_IsStandardVariable(i32 noundef %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 2, i32* %6, align 4
  br label %169

45:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %169

46:                                               ; preds = %36
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @symbol_IsStandardVariable(i32 noundef %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i32*, i32** @ord_PRECEDENCE, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @symbol_PrecedenceGreater(i32* noundef %51, i32 noundef %52, i32 noundef %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %46
  store i32 3, i32* %6, align 4
  br label %169

57:                                               ; preds = %50
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %167

61:                                               ; preds = %57
  %62 = load %struct.term*, %struct.term** %8, align 8
  %63 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %62)
  store %struct.LIST_HELP* %63, %struct.LIST_HELP** %12, align 8
  %64 = load %struct.term*, %struct.term** %10, align 8
  %65 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %64)
  store %struct.LIST_HELP* %65, %struct.LIST_HELP** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @symbol_HasProperty(i32 noundef %66, i32 noundef 8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %61
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @symbol_Arity(i32 noundef %70)
  store i32 %71, i32* %21, align 4
  br label %72

72:                                               ; preds = %91, %69
  %73 = load i32, i32* %21, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.binding*, %struct.binding** %7, align 8
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %78 = load i32, i32* %21, align 4
  %79 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %77, i32 noundef %78)
  %80 = bitcast i8* %79 to %struct.term*
  %81 = load %struct.binding*, %struct.binding** %9, align 8
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %83 = load i32, i32* %21, align 4
  %84 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %82, i32 noundef %83)
  %85 = bitcast i8* %84 to %struct.term*
  %86 = call i32 @cont_TermEqual(%struct.binding* noundef %76, %struct.term* noundef %80, %struct.binding* noundef %81, %struct.term* noundef %85)
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %75, %72
  %89 = phi i1 [ false, %72 ], [ %87, %75 ]
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %21, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %21, align 4
  br label %72, !llvm.loop !15

94:                                               ; preds = %88
  %95 = load i32, i32* %21, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %99 = load i32, i32* %21, align 4
  %100 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %98, i32 noundef %99)
  %101 = bitcast i8* %100 to %struct.term*
  %102 = call %struct.term* @cont_Deref(%struct.binding** noundef %7, %struct.term* noundef %101)
  store %struct.term* %102, %struct.term** %19, align 8
  %103 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %104 = load i32, i32* %21, align 4
  %105 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %103, i32 noundef %104)
  %106 = bitcast i8* %105 to %struct.term*
  %107 = call %struct.term* @cont_Deref(%struct.binding** noundef %9, %struct.term* noundef %106)
  store %struct.term* %107, %struct.term** %20, align 8
  br label %109

108:                                              ; preds = %94
  store i32 2, i32* %6, align 4
  br label %169

109:                                              ; preds = %97
  br label %148

110:                                              ; preds = %61
  br label %111

111:                                              ; preds = %128, %110
  %112 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %113 = call i32 @list_Empty(%struct.LIST_HELP* noundef %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  %116 = load %struct.binding*, %struct.binding** %7, align 8
  %117 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %118 = call i8* @list_Car(%struct.LIST_HELP* noundef %117)
  %119 = bitcast i8* %118 to %struct.term*
  %120 = load %struct.binding*, %struct.binding** %9, align 8
  %121 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %122 = call i8* @list_Car(%struct.LIST_HELP* noundef %121)
  %123 = bitcast i8* %122 to %struct.term*
  %124 = call i32 @cont_TermEqual(%struct.binding* noundef %116, %struct.term* noundef %119, %struct.binding* noundef %120, %struct.term* noundef %123)
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %115, %111
  %127 = phi i1 [ false, %111 ], [ %125, %115 ]
  br i1 %127, label %128, label %133

128:                                              ; preds = %126
  %129 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %130 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %129)
  store %struct.LIST_HELP* %130, %struct.LIST_HELP** %12, align 8
  %131 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %132 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %131)
  store %struct.LIST_HELP* %132, %struct.LIST_HELP** %13, align 8
  br label %111, !llvm.loop !16

133:                                              ; preds = %126
  %134 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %135 = call i32 @list_Empty(%struct.LIST_HELP* noundef %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 2, i32* %6, align 4
  br label %169

138:                                              ; preds = %133
  %139 = load %struct.LIST_HELP*, %struct.LIST_HELP** %12, align 8
  %140 = call i8* @list_Car(%struct.LIST_HELP* noundef %139)
  %141 = bitcast i8* %140 to %struct.term*
  %142 = call %struct.term* @cont_Deref(%struct.binding** noundef %7, %struct.term* noundef %141)
  store %struct.term* %142, %struct.term** %19, align 8
  %143 = load %struct.LIST_HELP*, %struct.LIST_HELP** %13, align 8
  %144 = call i8* @list_Car(%struct.LIST_HELP* noundef %143)
  %145 = bitcast i8* %144 to %struct.term*
  %146 = call %struct.term* @cont_Deref(%struct.binding** noundef %9, %struct.term* noundef %145)
  store %struct.term* %146, %struct.term** %20, align 8
  br label %147

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147, %109
  %149 = load %struct.binding*, %struct.binding** %7, align 8
  %150 = load %struct.term*, %struct.term** %19, align 8
  %151 = load %struct.binding*, %struct.binding** %9, align 8
  %152 = load %struct.term*, %struct.term** %20, align 8
  %153 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %149, %struct.term* noundef %150, i32* noundef %17, %struct.binding* noundef %151, %struct.term* noundef %152, i32* noundef %18)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %148
  %157 = load i32, i32* %17, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load %struct.binding*, %struct.binding** %7, align 8
  %161 = load %struct.term*, %struct.term** %19, align 8
  %162 = load %struct.binding*, %struct.binding** %9, align 8
  %163 = load %struct.term*, %struct.term** %20, align 8
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @kbo_ContCompareStruc(%struct.binding* noundef %160, %struct.term* noundef %161, %struct.binding* noundef %162, %struct.term* noundef %163, i32 noundef %164)
  store i32 %165, i32* %6, align 4
  br label %169

166:                                              ; preds = %156, %148
  store i32 0, i32* %6, align 4
  br label %169

167:                                              ; preds = %57
  store i32 0, i32* %6, align 4
  br label %169

168:                                              ; preds = %33
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %168, %167, %166, %159, %137, %108, %56, %45, %44, %32
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kbo_ContGreater(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.binding*, align 8
  %7 = alloca %struct.term*, align 8
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %6, align 8
  store %struct.term* %1, %struct.term** %7, align 8
  store %struct.binding* %2, %struct.binding** %8, align 8
  store %struct.term* %3, %struct.term** %9, align 8
  %13 = load %struct.binding*, %struct.binding** %6, align 8
  %14 = load %struct.term*, %struct.term** %7, align 8
  %15 = load %struct.binding*, %struct.binding** %8, align 8
  %16 = load %struct.term*, %struct.term** %9, align 8
  %17 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %13, %struct.term* noundef %14, i32* noundef %11, %struct.binding* noundef %15, %struct.term* noundef %16, i32* noundef %12)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %36

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.binding*, %struct.binding** %6, align 8
  %29 = load %struct.term*, %struct.term** %7, align 8
  %30 = load %struct.binding*, %struct.binding** %8, align 8
  %31 = load %struct.term*, %struct.term** %9, align 8
  %32 = call i32 @kbo_ContGreaterCompareStruc(%struct.binding* noundef %28, %struct.term* noundef %29, %struct.binding* noundef %30, %struct.term* noundef %31)
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %27, %23
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_ContGreaterCompareStruc(%struct.binding* noundef %0, %struct.term* noundef %1, %struct.binding* noundef %2, %struct.term* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.binding*, align 8
  %7 = alloca %struct.term*, align 8
  %8 = alloca %struct.binding*, align 8
  %9 = alloca %struct.term*, align 8
  %10 = alloca %struct.LIST_HELP*, align 8
  %11 = alloca %struct.LIST_HELP*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.term*, align 8
  %18 = alloca %struct.term*, align 8
  %19 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %6, align 8
  store %struct.term* %1, %struct.term** %7, align 8
  store %struct.binding* %2, %struct.binding** %8, align 8
  store %struct.term* %3, %struct.term** %9, align 8
  %20 = load %struct.term*, %struct.term** %7, align 8
  %21 = call %struct.term* @cont_Deref(%struct.binding** noundef %6, %struct.term* noundef %20)
  store %struct.term* %21, %struct.term** %7, align 8
  %22 = load %struct.term*, %struct.term** %9, align 8
  %23 = call %struct.term* @cont_Deref(%struct.binding** noundef %8, %struct.term* noundef %22)
  store %struct.term* %23, %struct.term** %9, align 8
  %24 = load %struct.term*, %struct.term** %7, align 8
  %25 = call i32 @term_TopSymbol(%struct.term* noundef %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.term*, %struct.term** %9, align 8
  %27 = call i32 @term_TopSymbol(%struct.term* noundef %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @symbol_IsStandardVariable(i32 noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @symbol_IsStandardVariable(i32 noundef %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %166

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %166

37:                                               ; preds = %4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @symbol_IsStandardVariable(i32 noundef %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** @ord_PRECEDENCE, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @symbol_PrecedenceGreater(i32* noundef %42, i32 noundef %43, i32 noundef %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %37
  store i32 1, i32* %5, align 4
  br label %166

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %163

52:                                               ; preds = %48
  %53 = load %struct.term*, %struct.term** %7, align 8
  %54 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %53)
  store %struct.LIST_HELP* %54, %struct.LIST_HELP** %10, align 8
  %55 = load %struct.term*, %struct.term** %9, align 8
  %56 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %55)
  store %struct.LIST_HELP* %56, %struct.LIST_HELP** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @symbol_HasProperty(i32 noundef %57, i32 noundef 8)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @symbol_Arity(i32 noundef %61)
  store i32 %62, i32* %19, align 4
  br label %63

63:                                               ; preds = %82, %60
  %64 = load i32, i32* %19, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.binding*, %struct.binding** %6, align 8
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %69 = load i32, i32* %19, align 4
  %70 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %68, i32 noundef %69)
  %71 = bitcast i8* %70 to %struct.term*
  %72 = load %struct.binding*, %struct.binding** %8, align 8
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %74 = load i32, i32* %19, align 4
  %75 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %73, i32 noundef %74)
  %76 = bitcast i8* %75 to %struct.term*
  %77 = call i32 @cont_TermEqual(%struct.binding* noundef %67, %struct.term* noundef %71, %struct.binding* noundef %72, %struct.term* noundef %76)
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %66, %63
  %80 = phi i1 [ false, %63 ], [ %78, %66 ]
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %19, align 4
  br label %63, !llvm.loop !17

85:                                               ; preds = %79
  %86 = load i32, i32* %19, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %90 = load i32, i32* %19, align 4
  %91 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %89, i32 noundef %90)
  %92 = bitcast i8* %91 to %struct.term*
  %93 = call %struct.term* @cont_Deref(%struct.binding** noundef %6, %struct.term* noundef %92)
  store %struct.term* %93, %struct.term** %17, align 8
  %94 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %95 = load i32, i32* %19, align 4
  %96 = call i8* @list_NthElement(%struct.LIST_HELP* noundef %94, i32 noundef %95)
  %97 = bitcast i8* %96 to %struct.term*
  %98 = call %struct.term* @cont_Deref(%struct.binding** noundef %8, %struct.term* noundef %97)
  store %struct.term* %98, %struct.term** %18, align 8
  br label %100

99:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %166

100:                                              ; preds = %88
  br label %139

101:                                              ; preds = %52
  br label %102

102:                                              ; preds = %119, %101
  %103 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %104 = call i32 @list_Empty(%struct.LIST_HELP* noundef %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %102
  %107 = load %struct.binding*, %struct.binding** %6, align 8
  %108 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %109 = call i8* @list_Car(%struct.LIST_HELP* noundef %108)
  %110 = bitcast i8* %109 to %struct.term*
  %111 = load %struct.binding*, %struct.binding** %8, align 8
  %112 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %113 = call i8* @list_Car(%struct.LIST_HELP* noundef %112)
  %114 = bitcast i8* %113 to %struct.term*
  %115 = call i32 @cont_TermEqual(%struct.binding* noundef %107, %struct.term* noundef %110, %struct.binding* noundef %111, %struct.term* noundef %114)
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %106, %102
  %118 = phi i1 [ false, %102 ], [ %116, %106 ]
  br i1 %118, label %119, label %124

119:                                              ; preds = %117
  %120 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %121 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %120)
  store %struct.LIST_HELP* %121, %struct.LIST_HELP** %10, align 8
  %122 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %123 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %122)
  store %struct.LIST_HELP* %123, %struct.LIST_HELP** %11, align 8
  br label %102, !llvm.loop !18

124:                                              ; preds = %117
  %125 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %126 = call i32 @list_Empty(%struct.LIST_HELP* noundef %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %166

129:                                              ; preds = %124
  %130 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %131 = call i8* @list_Car(%struct.LIST_HELP* noundef %130)
  %132 = bitcast i8* %131 to %struct.term*
  %133 = call %struct.term* @cont_Deref(%struct.binding** noundef %6, %struct.term* noundef %132)
  store %struct.term* %133, %struct.term** %17, align 8
  %134 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %135 = call i8* @list_Car(%struct.LIST_HELP* noundef %134)
  %136 = bitcast i8* %135 to %struct.term*
  %137 = call %struct.term* @cont_Deref(%struct.binding** noundef %8, %struct.term* noundef %136)
  store %struct.term* %137, %struct.term** %18, align 8
  br label %138

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %100
  %140 = load %struct.binding*, %struct.binding** %6, align 8
  %141 = load %struct.term*, %struct.term** %17, align 8
  %142 = load %struct.binding*, %struct.binding** %8, align 8
  %143 = load %struct.term*, %struct.term** %18, align 8
  %144 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* noundef %140, %struct.term* noundef %141, i32* noundef %15, %struct.binding* noundef %142, %struct.term* noundef %143, i32* noundef %16)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %139
  %148 = load i32, i32* %14, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 1, i32* %5, align 4
  br label %166

151:                                              ; preds = %147
  %152 = load i32, i32* %14, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.binding*, %struct.binding** %6, align 8
  %156 = load %struct.term*, %struct.term** %17, align 8
  %157 = load %struct.binding*, %struct.binding** %8, align 8
  %158 = load %struct.term*, %struct.term** %18, align 8
  %159 = call i32 @kbo_ContGreaterCompareStruc(%struct.binding* noundef %155, %struct.term* noundef %156, %struct.binding* noundef %157, %struct.term* noundef %158)
  store i32 %159, i32* %5, align 4
  br label %166

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161, %139
  br label %163

163:                                              ; preds = %162, %48
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %154, %150, %128, %99, %47, %36, %35
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @term_MaxVar(%struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @stack_Bottom() #0 {
  %1 = load i32, i32* @stack_POINTER, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_IsStandardVariable(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = call i32 @term_TopSymbol(%struct.term* noundef %3)
  %5 = call i32 @symbol_IsStandardVariable(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = getelementptr inbounds %struct.term, %struct.term* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Weight(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @symbol_Index(i32 noundef %3)
  %5 = call %struct.signature* @symbol_Signature(i32 noundef %4)
  %6 = getelementptr inbounds %struct.signature, %struct.signature* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_IsComplex(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %3)
  %5 = icmp ne %struct.LIST_HELP* %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal void @stack_Push(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i32, i32* @stack_POINTER, align 4
  %5 = add i32 %4, 1
  store i32 %5, i32* @stack_POINTER, align 4
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i64 0, i64 %6
  store i8* %3, i8** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = getelementptr inbounds %struct.term, %struct.term* %3, i32 0, i32 2
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @stack_Empty(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @stack_POINTER, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @stack_Top() #0 {
  %1 = load i32, i32* @stack_POINTER, align 4
  %2 = sub i32 %1, 1
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i64 0, i64 %3
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @stack_RplacTop(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i32, i32* @stack_POINTER, align 4
  %5 = sub i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i64 0, i64 %6
  store i8* %3, i8** %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %3, i32 0, i32 0
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %4, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* noundef %0) #0 {
  %2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %4 = icmp eq %struct.LIST_HELP* %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @stack_Pop() #0 {
  %1 = load i32, i32* @stack_POINTER, align 4
  %2 = add i32 %1, -1
  store i32 %2, i32* @stack_POINTER, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_IsStandardVariable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @symbol_IsVariable(i32 noundef %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 2000
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i1 [ false, %1 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_IsVariable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.signature* @symbol_Signature(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @symbol_CheckIndexInRange(i32 noundef %3)
  %4 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.signature*, %struct.signature** %4, i64 %6
  %8 = load %struct.signature*, %struct.signature** %7, align 8
  ret %struct.signature* %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Index(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @symbol_CheckNoVariable(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 0, %4
  %6 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %7 = ashr i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_PrecedenceGreater(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @symbol_Ordering(i32* noundef %7, i32 noundef %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @symbol_Ordering(i32* noundef %10, i32 noundef %11)
  %13 = icmp slt i32 %9, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_HasProperty(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @symbol_Index(i32 noundef %5)
  %7 = call %struct.signature* @symbol_Signature(i32 noundef %6)
  %8 = getelementptr inbounds %struct.signature, %struct.signature* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %9, %10
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Arity(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @symbol_Index(i32 noundef %3)
  %5 = call %struct.signature* @symbol_Signature(i32 noundef %4)
  %6 = getelementptr inbounds %struct.signature, %struct.signature* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  ret i32 %7
}

declare dso_local i32 @term_Equal(%struct.term* noundef, %struct.term* noundef) #1

declare dso_local i8* @list_NthElement(%struct.LIST_HELP* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @symbol_Ordering(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @symbol_Index(i32 noundef %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

declare dso_local i32 @cont_TermMaxVar(%struct.binding* noundef, %struct.term* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* noundef %0, %struct.term* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.binding*, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %0, %struct.binding** %4, align 8
  store %struct.term* %1, %struct.term** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.term*, %struct.term** %5, align 8
  %10 = call %struct.term* @cont_Deref(%struct.binding** noundef %4, %struct.term* noundef %9)
  store %struct.term* %10, %struct.term** %5, align 8
  %11 = load %struct.term*, %struct.term** %5, align 8
  %12 = call i32 @term_IsStandardVariable(%struct.term* noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.term*, %struct.term** %5, align 8
  %16 = call i32 @term_TopSymbol(%struct.term* noundef %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i64 0, i64 %17
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load %struct.term*, %struct.term** %5, align 8
  %28 = call i32 @term_TopSymbol(%struct.term* noundef %27)
  %29 = call i32 @symbol_Weight(i32 noundef %28)
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.term*, %struct.term** %5, align 8
  %33 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* noundef %32)
  store %struct.LIST_HELP* %33, %struct.LIST_HELP** %8, align 8
  br label %34

34:                                               ; preds = %48, %26
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %36 = call i32 @list_Empty(%struct.LIST_HELP* noundef %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.binding*, %struct.binding** %4, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %42 = call i8* @list_Car(%struct.LIST_HELP* noundef %41)
  %43 = bitcast i8* %42 to %struct.term*
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* noundef %40, %struct.term* noundef %43, i32 noundef %44)
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %39
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* noundef %49)
  store %struct.LIST_HELP* %50, %struct.LIST_HELP** %8, align 8
  br label %34, !llvm.loop !19

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %14
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @cont_Deref(%struct.binding** noundef %0, %struct.term* noundef %1) #0 {
  %3 = alloca %struct.term*, align 8
  %4 = alloca %struct.binding**, align 8
  %5 = alloca %struct.term*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.binding*, align 8
  store %struct.binding** %0, %struct.binding*** %4, align 8
  store %struct.term* %1, %struct.term** %5, align 8
  br label %8

8:                                                ; preds = %40, %2
  %9 = load %struct.term*, %struct.term** %5, align 8
  %10 = call i32 @term_IsVariable(%struct.term* noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load %struct.binding**, %struct.binding*** %4, align 8
  %14 = load %struct.binding*, %struct.binding** %13, align 8
  %15 = call %struct.binding* @cont_InstanceContext()
  %16 = icmp ne %struct.binding* %14, %15
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i1 [ false, %8 ], [ %16, %12 ]
  br i1 %18, label %19, label %41

19:                                               ; preds = %17
  %20 = load %struct.term*, %struct.term** %5, align 8
  %21 = call i32 @term_TopSymbol(%struct.term* noundef %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.binding**, %struct.binding*** %4, align 8
  %23 = load %struct.binding*, %struct.binding** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cont_VarIsBound(%struct.binding* noundef %23, i32 noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.binding**, %struct.binding*** %4, align 8
  %29 = load %struct.binding*, %struct.binding** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %29, i32 noundef %30)
  store %struct.binding* %31, %struct.binding** %7, align 8
  %32 = load %struct.binding**, %struct.binding*** %4, align 8
  %33 = load %struct.binding*, %struct.binding** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %33, i32 noundef %34)
  store %struct.term* %35, %struct.term** %5, align 8
  %36 = load %struct.binding*, %struct.binding** %7, align 8
  %37 = load %struct.binding**, %struct.binding*** %4, align 8
  store %struct.binding* %36, %struct.binding** %37, align 8
  br label %40

38:                                               ; preds = %19
  %39 = load %struct.term*, %struct.term** %5, align 8
  store %struct.term* %39, %struct.term** %3, align 8
  br label %43

40:                                               ; preds = %27
  br label %8, !llvm.loop !20

41:                                               ; preds = %17
  %42 = load %struct.term*, %struct.term** %5, align 8
  store %struct.term* %42, %struct.term** %3, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.term*, %struct.term** %3, align 8
  ret %struct.term* %44
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @term_IsVariable(%struct.term* noundef %0) #0 {
  %2 = alloca %struct.term*, align 8
  store %struct.term* %0, %struct.term** %2, align 8
  %3 = load %struct.term*, %struct.term** %2, align 8
  %4 = call i32 @term_TopSymbol(%struct.term* noundef %3)
  %5 = call i32 @symbol_IsVariable(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_InstanceContext() #0 {
  %1 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cont_VarIsBound(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %5, i32 noundef %6)
  %8 = icmp ne %struct.term* %7, null
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.binding* @cont_ContextBindingContext(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.binding, %struct.binding* %5, i64 %7
  %9 = getelementptr inbounds %struct.binding, %struct.binding* %8, i32 0, i32 3
  %10 = load %struct.binding*, %struct.binding** %9, align 8
  ret %struct.binding* %10
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binding*, align 8
  %4 = alloca i32, align 4
  store %struct.binding* %0, %struct.binding** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.binding*, %struct.binding** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.binding, %struct.binding* %5, i64 %7
  %9 = getelementptr inbounds %struct.binding, %struct.binding* %8, i32 0, i32 2
  %10 = load %struct.term*, %struct.term** %9, align 8
  ret %struct.term* %10
}

declare dso_local i32 @cont_TermEqual(%struct.binding* noundef, %struct.term* noundef, %struct.binding* noundef, %struct.term* noundef) #1

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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
