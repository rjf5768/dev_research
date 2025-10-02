; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/comp-goto-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/comp-goto-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.insn_t = type { %struct.anon }
%struct.anon = type { i64 }
%struct.environment_t = type { %union.insn_t*, [256 x i32], %union.insn_t*, [256 x %struct.tlb_entry_t] }
%struct.tlb_entry_t = type { i32, i64 }

@simulator_kernel.op_map = internal global [2 x i8*] [i8* blockaddress(@simulator_kernel, %109), i8* blockaddress(@simulator_kernel, %222)], align 16
@program = dso_local global [3 x %union.insn_t] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f() #0 {
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @simulator_kernel(i32 noundef %0, %struct.environment_t* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.environment_t*, align 8
  %5 = alloca %union.insn_t*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %union.insn_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tlb_entry_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.insn_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.environment_t* %1, %struct.environment_t** %4, align 8
  %18 = load %struct.environment_t*, %struct.environment_t** %4, align 8
  %19 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %18, i32 0, i32 0
  %20 = load %union.insn_t*, %union.insn_t** %19, align 8
  store %union.insn_t* %20, %union.insn_t** %5, align 8
  %21 = load %struct.environment_t*, %struct.environment_t** %4, align 8
  %22 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %21, i32 0, i32 1
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 0
  store i32* %23, i32** %6, align 8
  store i8* blockaddress(@simulator_kernel, %75), i8** %10, align 8
  %24 = load %struct.environment_t*, %struct.environment_t** %4, align 8
  %25 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %24, i32 0, i32 3
  %26 = getelementptr inbounds [256 x %struct.tlb_entry_t], [256 x %struct.tlb_entry_t]* %25, i64 0, i64 0
  store %struct.tlb_entry_t* %26, %struct.tlb_entry_t** %11, align 8
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %2
  %30 = load %struct.environment_t*, %struct.environment_t** %4, align 8
  %31 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %30, i32 0, i32 2
  %32 = load %union.insn_t*, %union.insn_t** %31, align 8
  store %union.insn_t* %32, %union.insn_t** %13, align 8
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %70, %29
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load %union.insn_t*, %union.insn_t** %13, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %union.insn_t, %union.insn_t* %38, i64 %40
  %42 = bitcast %union.insn_t* %41 to %struct.anon*
  %43 = bitcast %struct.anon* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = shl i64 %44, 46
  %46 = ashr i64 %45, 46
  %47 = trunc i64 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* @simulator_kernel.op_map, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = load %union.insn_t*, %union.insn_t** %13, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %union.insn_t, %union.insn_t* %56, i64 %58
  %60 = bitcast %union.insn_t* %59 to %struct.anon*
  %61 = bitcast %struct.anon* %60 to i64*
  %62 = zext i32 %55 to i64
  %63 = load i64, i64* %61, align 8
  %64 = and i64 %62, 262143
  %65 = and i64 %63, -262144
  %66 = or i64 %65, %64
  store i64 %66, i64* %61, align 8
  %67 = shl i64 %64, 46
  %68 = ashr i64 %67, 46
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %37
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %33, !llvm.loop !4

73:                                               ; preds = %33
  br label %74

74:                                               ; preds = %73, %2
  br label %75

75:                                               ; preds = %74, %230
  %76 = load %union.insn_t*, %union.insn_t** %5, align 8
  %77 = getelementptr inbounds %union.insn_t, %union.insn_t* %76, i32 1
  store %union.insn_t* %77, %union.insn_t** %5, align 8
  %78 = bitcast %union.insn_t* %7 to i8*
  %79 = bitcast %union.insn_t* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 8, i1 false)
  %80 = load i32*, i32** %6, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = bitcast %union.insn_t* %7 to %struct.anon*
  %83 = bitcast %struct.anon* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = lshr i64 %84, 54
  %86 = and i64 %85, 255
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %81, i64 %89
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  %93 = bitcast %union.insn_t* %7 to %struct.anon*
  %94 = bitcast %struct.anon* %93 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = lshr i64 %95, 22
  %97 = and i64 %96, 255
  %98 = trunc i64 %97 to i32
  %99 = shl i32 %98, 2
  store i32 %99, i32* %8, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = bitcast %union.insn_t* %7 to %struct.anon*
  %102 = bitcast %struct.anon* %101 to i64*
  %103 = load i64, i64* %102, align 8
  %104 = shl i64 %103, 46
  %105 = ashr i64 %104, 46
  %106 = trunc i64 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %100, i64 %107
  br label %230

109:                                              ; preds = %230
  %110 = load i32, i32* %9, align 4
  %111 = udiv i32 %110, 4096
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = urem i32 %112, 256
  store i32 %113, i32* %15, align 4
  %114 = load %union.insn_t*, %union.insn_t** %5, align 8
  %115 = getelementptr inbounds %union.insn_t, %union.insn_t* %114, i32 1
  store %union.insn_t* %115, %union.insn_t** %5, align 8
  %116 = bitcast %union.insn_t* %7 to i8*
  %117 = bitcast %union.insn_t* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 8, i1 false)
  br label %118

118:                                              ; preds = %218, %109
  %119 = load %struct.tlb_entry_t*, %struct.tlb_entry_t** %11, align 8
  %120 = load i32, i32* %15, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.tlb_entry_t, %struct.tlb_entry_t* %119, i64 %121
  %123 = getelementptr inbounds %struct.tlb_entry_t, %struct.tlb_entry_t* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %16, align 4
  %125 = load %struct.tlb_entry_t*, %struct.tlb_entry_t** %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.tlb_entry_t, %struct.tlb_entry_t* %125, i64 %127
  %129 = getelementptr inbounds %struct.tlb_entry_t, %struct.tlb_entry_t* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %17, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %176

134:                                              ; preds = %118
  %135 = load i64, i64* %17, align 8
  %136 = load i32, i32* %9, align 4
  %137 = zext i32 %136 to i64
  %138 = add i64 %135, %137
  %139 = inttoptr i64 %138 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = bitcast i8* %145 to i32*
  store i32 %140, i32* %146, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = bitcast i32* %147 to i8*
  %149 = bitcast %union.insn_t* %7 to %struct.anon*
  %150 = bitcast %struct.anon* %149 to i64*
  %151 = load i64, i64* %150, align 8
  %152 = lshr i64 %151, 54
  %153 = and i64 %152, 255
  %154 = trunc i64 %153 to i32
  %155 = shl i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %148, i64 %156
  %158 = bitcast i8* %157 to i32*
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %9, align 4
  %160 = bitcast %union.insn_t* %7 to %struct.anon*
  %161 = bitcast %struct.anon* %160 to i64*
  %162 = load i64, i64* %161, align 8
  %163 = lshr i64 %162, 22
  %164 = and i64 %163, 255
  %165 = trunc i64 %164 to i32
  %166 = shl i32 %165, 2
  store i32 %166, i32* %8, align 4
  %167 = load i8*, i8** %10, align 8
  %168 = bitcast %union.insn_t* %7 to %struct.anon*
  %169 = bitcast %struct.anon* %168 to i64*
  %170 = load i64, i64* %169, align 8
  %171 = shl i64 %170, 46
  %172 = ashr i64 %171, 46
  %173 = trunc i64 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = getelementptr i8, i8* %167, i64 %174
  br label %230

176:                                              ; preds = %118
  %177 = load i32, i32* %16, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %218

179:                                              ; preds = %176
  %180 = call i64 @f()
  %181 = inttoptr i64 %180 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = bitcast i32* %183 to i8*
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = bitcast i8* %187 to i32*
  store i32 %182, i32* %188, align 4
  %189 = load i32*, i32** %6, align 8
  %190 = bitcast i32* %189 to i8*
  %191 = bitcast %union.insn_t* %7 to %struct.anon*
  %192 = bitcast %struct.anon* %191 to i64*
  %193 = load i64, i64* %192, align 8
  %194 = lshr i64 %193, 54
  %195 = and i64 %194, 255
  %196 = trunc i64 %195 to i32
  %197 = shl i32 %196, 2
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %190, i64 %198
  %200 = bitcast i8* %199 to i32*
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %9, align 4
  %202 = bitcast %union.insn_t* %7 to %struct.anon*
  %203 = bitcast %struct.anon* %202 to i64*
  %204 = load i64, i64* %203, align 8
  %205 = lshr i64 %204, 22
  %206 = and i64 %205, 255
  %207 = trunc i64 %206 to i32
  %208 = shl i32 %207, 2
  store i32 %208, i32* %8, align 4
  %209 = load i8*, i8** %10, align 8
  %210 = bitcast %union.insn_t* %7 to %struct.anon*
  %211 = bitcast %struct.anon* %210 to i64*
  %212 = load i64, i64* %211, align 8
  %213 = shl i64 %212, 46
  %214 = ashr i64 %213, 46
  %215 = trunc i64 %214 to i32
  %216 = sext i32 %215 to i64
  %217 = getelementptr i8, i8* %209, i64 %216
  br label %230

218:                                              ; preds = %176
  %219 = load i32, i32* %15, align 4
  %220 = sub i32 %219, 1
  %221 = urem i32 %220, 256
  store i32 %221, i32* %15, align 4
  br label %118

222:                                              ; preds = %230
  %223 = load i32*, i32** %6, align 8
  %224 = bitcast i32* %223 to i8*
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = bitcast i8* %227 to i32*
  %229 = load i32, i32* %228, align 4
  ret i32 %229

230:                                              ; preds = %179, %134, %75
  %231 = phi i8* [ %108, %75 ], [ %175, %134 ], [ %217, %179 ]
  indirectbr i8* %231, [label %75, label %109, label %222]
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.environment_t, align 8
  %3 = alloca %union.insn_t, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = call noalias i8* @malloc(i64 noundef 8192) #5
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %6, align 8
  store i32 1193040, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = udiv i32 %11, 4096
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, 4096
  %15 = sub i64 %14, 1
  %16 = and i64 %15, -4096
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %2, i32 0, i32 3
  %19 = load i32, i32* %8, align 4
  %20 = urem i32 %19, 256
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [256 x %struct.tlb_entry_t], [256 x %struct.tlb_entry_t]* %18, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.tlb_entry_t, %struct.tlb_entry_t* %22, i32 0, i32 0
  store i32 %17, i32* %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = mul i32 %25, 4096
  %27 = zext i32 %26 to i64
  %28 = sub i64 %24, %27
  %29 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %2, i32 0, i32 3
  %30 = load i32, i32* %8, align 4
  %31 = urem i32 %30, 256
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [256 x %struct.tlb_entry_t], [256 x %struct.tlb_entry_t]* %29, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.tlb_entry_t, %struct.tlb_entry_t* %33, i32 0, i32 1
  store i64 %28, i64* %34, align 8
  %35 = bitcast %union.insn_t* %3 to %struct.anon*
  %36 = bitcast %struct.anon* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, -262144
  %39 = or i64 %38, 0
  store i64 %39, i64* %36, align 8
  %40 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %2, i32 0, i32 1
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %40, i64 0, i64 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %2, i32 0, i32 1
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %43, i64 0, i64 2
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = urem i32 %46, 4096
  %48 = zext i32 %47 to i64
  %49 = add i64 %45, %48
  %50 = inttoptr i64 %49 to i32*
  store i32 88, i32* %50, align 4
  %51 = bitcast %union.insn_t* %3 to %struct.anon*
  %52 = bitcast %struct.anon* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, -1069547521
  %55 = or i64 %54, 0
  store i64 %55, i64* %52, align 8
  %56 = bitcast %union.insn_t* %3 to %struct.anon*
  %57 = bitcast %struct.anon* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, -4593671619917905921
  %60 = or i64 %59, 36028797018963968
  store i64 %60, i64* %57, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %70, %0
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x %union.insn_t], [3 x %union.insn_t]* @program, i64 0, i64 %66
  %68 = bitcast %union.insn_t* %67 to i8*
  %69 = bitcast %union.insn_t* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 8, i1 false)
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %61, !llvm.loop !6

73:                                               ; preds = %61
  %74 = bitcast %union.insn_t* %3 to %struct.anon*
  %75 = bitcast %struct.anon* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = and i64 %76, -262144
  %78 = or i64 %77, 1
  store i64 %78, i64* %75, align 8
  %79 = bitcast %union.insn_t* %3 to %struct.anon*
  %80 = bitcast %struct.anon* %79 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %81, -1069547521
  %83 = or i64 %82, 0
  store i64 %83, i64* %80, align 8
  %84 = bitcast %union.insn_t* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast (%union.insn_t* getelementptr inbounds ([3 x %union.insn_t], [3 x %union.insn_t]* @program, i64 0, i64 2) to i8*), i8* align 8 %84, i64 8, i1 false)
  %85 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %2, i32 0, i32 0
  store %union.insn_t* getelementptr inbounds ([3 x %union.insn_t], [3 x %union.insn_t]* @program, i64 0, i64 0), %union.insn_t** %85, align 8
  %86 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %2, i32 0, i32 2
  store %union.insn_t* getelementptr inbounds ([3 x %union.insn_t], [3 x %union.insn_t]* @program, i64 0, i64 0), %union.insn_t** %86, align 8
  %87 = call i32 @simulator_kernel(i32 noundef 3, %struct.environment_t* noundef %2)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 88
  br i1 %89, label %90, label %91

90:                                               ; preds = %73
  call void @abort() #4
  unreachable

91:                                               ; preds = %73
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
