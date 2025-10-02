; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/gasp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/gasp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@cube = external dso_local global %struct.cube_struct, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0AEXPAND1_GASP:    \09%s\0A\00", align 1
@trace = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"NEWPRIMES\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"empty reduction in reduce_gasp, shouldn't happen\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"REDUCE_GASP: %s reduced to %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @expand_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.set_family* noundef %3) #0 {
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.set_family*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %5, align 8
  store %struct.set_family* %1, %struct.set_family** %6, align 8
  store %struct.set_family* %2, %struct.set_family** %7, align 8
  store %struct.set_family* %3, %struct.set_family** %8, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %12 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 10, i32 noundef %11)
  store %struct.set_family* %12, %struct.set_family** %10, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %25, %4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.set_family*, %struct.set_family** %5, align 8
  %16 = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.set_family*, %struct.set_family** %5, align 8
  %21 = load %struct.set_family*, %struct.set_family** %6, align 8
  %22 = load %struct.set_family*, %struct.set_family** %7, align 8
  %23 = load %struct.set_family*, %struct.set_family** %8, align 8
  %24 = load i32, i32* %9, align 4
  call void @expand1_gasp(%struct.set_family* noundef %20, %struct.set_family* noundef %21, %struct.set_family* noundef %22, %struct.set_family* noundef %23, i32 noundef %24, %struct.set_family** noundef %10)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %13, !llvm.loop !4

28:                                               ; preds = %13
  %29 = load %struct.set_family*, %struct.set_family** %10, align 8
  %30 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_dupl to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %29)
  store %struct.set_family* %30, %struct.set_family** %10, align 8
  %31 = load %struct.set_family*, %struct.set_family** %10, align 8
  %32 = load %struct.set_family*, %struct.set_family** %7, align 8
  %33 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* noundef %31, %struct.set_family* noundef %32, i32 noundef 0)
  store %struct.set_family* %33, %struct.set_family** %10, align 8
  %34 = load %struct.set_family*, %struct.set_family** %10, align 8
  ret %struct.set_family* %34
}

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local %struct.set_family* @sf_dupl(...) #1

declare dso_local %struct.set_family* @expand(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @expand1_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.set_family* noundef %3, i32 noundef %4, %struct.set_family** noundef %5) #0 {
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.set_family*, align 8
  %9 = alloca %struct.set_family*, align 8
  %10 = alloca %struct.set_family*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.set_family**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %7, align 8
  store %struct.set_family* %1, %struct.set_family** %8, align 8
  store %struct.set_family* %2, %struct.set_family** %9, align 8
  store %struct.set_family* %3, %struct.set_family** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.set_family** %5, %struct.set_family*** %12, align 8
  %23 = load i32, i32* @debug, align 4
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %6
  %27 = load %struct.set_family*, %struct.set_family** %7, align 8
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.set_family*, %struct.set_family** %7, align 8
  %31 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  %37 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %36)
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* noundef %37)
  br label %39

39:                                               ; preds = %26, %6
  %40 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %41 = icmp sle i32 %40, 32
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %49

43:                                               ; preds = %39
  %44 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %45 = sub nsw i32 %44, 1
  %46 = ashr i32 %45, 5
  %47 = add nsw i32 %46, 1
  %48 = add nsw i32 %47, 1
  br label %49

49:                                               ; preds = %43, %42
  %50 = phi i32 [ 2, %42 ], [ %48, %43 ]
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = call i8* @malloc(i64 noundef %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %56 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %54, i32 noundef %55)
  store i32* %56, i32** %17, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %58 = icmp sle i32 %57, 32
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %66

60:                                               ; preds = %49
  %61 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %62 = sub nsw i32 %61, 1
  %63 = ashr i32 %62, 5
  %64 = add nsw i32 %63, 1
  %65 = add nsw i32 %64, 1
  br label %66

66:                                               ; preds = %60, %59
  %67 = phi i32 [ 2, %59 ], [ %65, %60 ]
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = call i8* @malloc(i64 noundef %69)
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %73 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %71, i32 noundef %72)
  store i32* %73, i32** %18, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %75 = icmp sle i32 %74, 32
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %83

77:                                               ; preds = %66
  %78 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %79 = sub nsw i32 %78, 1
  %80 = ashr i32 %79, 5
  %81 = add nsw i32 %80, 1
  %82 = add nsw i32 %81, 1
  br label %83

83:                                               ; preds = %77, %76
  %84 = phi i32 [ 2, %76 ], [ %82, %77 ]
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = call i8* @malloc(i64 noundef %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %90 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %88, i32 noundef %89)
  store i32* %90, i32** %19, align 8
  %91 = load %struct.set_family*, %struct.set_family** %9, align 8
  %92 = getelementptr inbounds %struct.set_family, %struct.set_family* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.set_family*, %struct.set_family** %9, align 8
  %95 = getelementptr inbounds %struct.set_family, %struct.set_family* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.set_family*, %struct.set_family** %9, align 8
  %97 = getelementptr inbounds %struct.set_family, %struct.set_family* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %14, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = load %struct.set_family*, %struct.set_family** %9, align 8
  %101 = getelementptr inbounds %struct.set_family, %struct.set_family* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.set_family*, %struct.set_family** %9, align 8
  %104 = getelementptr inbounds %struct.set_family, %struct.set_family* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %99, i64 %107
  store i32* %108, i32** %15, align 8
  br label %109

109:                                              ; preds = %118, %83
  %110 = load i32*, i32** %14, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = icmp ult i32* %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load i32*, i32** %14, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, 8192
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113
  %119 = load %struct.set_family*, %struct.set_family** %9, align 8
  %120 = getelementptr inbounds %struct.set_family, %struct.set_family* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %14, align 8
  br label %109, !llvm.loop !6

125:                                              ; preds = %109
  %126 = load %struct.set_family*, %struct.set_family** %7, align 8
  %127 = getelementptr inbounds %struct.set_family, %struct.set_family* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.set_family*, %struct.set_family** %7, align 8
  %130 = getelementptr inbounds %struct.set_family, %struct.set_family* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.set_family*, %struct.set_family** %7, align 8
  %132 = getelementptr inbounds %struct.set_family, %struct.set_family* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %16, align 8
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %165, %125
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.set_family*, %struct.set_family** %7, align 8
  %137 = getelementptr inbounds %struct.set_family, %struct.set_family* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %174

140:                                              ; preds = %134
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = load i32*, i32** %16, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 32768
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %144, %140
  %151 = load %struct.set_family*, %struct.set_family** %7, align 8
  %152 = getelementptr inbounds %struct.set_family, %struct.set_family* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 8
  %155 = load i32*, i32** %16, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, -8193
  store i32 %158, i32* %156, align 4
  br label %164

159:                                              ; preds = %144
  %160 = load i32*, i32** %16, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, 8192
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %159, %150
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.set_family*, %struct.set_family** %7, align 8
  %167 = getelementptr inbounds %struct.set_family, %struct.set_family* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %16, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %16, align 8
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %134, !llvm.loop !7

174:                                              ; preds = %134
  %175 = load i32*, i32** %17, align 8
  %176 = load %struct.set_family*, %struct.set_family** %7, align 8
  %177 = getelementptr inbounds %struct.set_family, %struct.set_family* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.set_family*, %struct.set_family** %7, align 8
  %180 = getelementptr inbounds %struct.set_family, %struct.set_family* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = mul nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %178, i64 %184
  %186 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %175, i32* noundef %185)
  %187 = load i32*, i32** %18, align 8
  %188 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %189 = load i32*, i32** %17, align 8
  %190 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %187, i32* noundef %188, i32* noundef %189)
  %191 = load %struct.set_family*, %struct.set_family** %9, align 8
  %192 = load %struct.set_family*, %struct.set_family** %7, align 8
  %193 = load i32*, i32** %17, align 8
  %194 = load i32*, i32** %18, align 8
  call void (%struct.set_family*, %struct.set_family*, i32*, i32*, ...) bitcast (void (...)* @essen_parts to void (%struct.set_family*, %struct.set_family*, i32*, i32*, ...)*)(%struct.set_family* noundef %191, %struct.set_family* noundef %192, i32* noundef %193, i32* noundef %194)
  %195 = load %struct.set_family*, %struct.set_family** %9, align 8
  %196 = load i32*, i32** %17, align 8
  %197 = load i32*, i32** %18, align 8
  call void (%struct.set_family*, i32*, i32*, ...) bitcast (void (...)* @essen_raising to void (%struct.set_family*, i32*, i32*, ...)*)(%struct.set_family* noundef %195, i32* noundef %196, i32* noundef %197)
  %198 = load %struct.set_family*, %struct.set_family** %7, align 8
  %199 = getelementptr inbounds %struct.set_family, %struct.set_family* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  store i32* %200, i32** %16, align 8
  store i32 0, i32* %13, align 4
  br label %201

201:                                              ; preds = %312, %174
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.set_family*, %struct.set_family** %7, align 8
  %204 = getelementptr inbounds %struct.set_family, %struct.set_family* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %321

207:                                              ; preds = %201
  %208 = load i32*, i32** %16, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 8192
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %311

213:                                              ; preds = %207
  %214 = load i32*, i32** %16, align 8
  %215 = load i32*, i32** %17, align 8
  %216 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* noundef %214, i32* noundef %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %213
  %219 = load %struct.set_family*, %struct.set_family** %9, align 8
  %220 = load i32*, i32** %16, align 8
  %221 = load i32*, i32** %17, align 8
  %222 = load i32*, i32** %19, align 8
  %223 = call i32 (%struct.set_family*, i32*, i32*, i32*, ...) bitcast (i32 (...)* @feasibly_covered to i32 (%struct.set_family*, i32*, i32*, i32*, ...)*)(%struct.set_family* noundef %219, i32* noundef %220, i32* noundef %221, i32* noundef %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %310

225:                                              ; preds = %218, %213
  %226 = load %struct.set_family*, %struct.set_family** %10, align 8
  %227 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %226)
  store %struct.set_family* %227, %struct.set_family** %22, align 8
  %228 = load %struct.set_family*, %struct.set_family** %22, align 8
  %229 = getelementptr inbounds %struct.set_family, %struct.set_family* %228, i32 0, i32 5
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.set_family*, %struct.set_family** %22, align 8
  %232 = getelementptr inbounds %struct.set_family, %struct.set_family* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = mul nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %230, i64 %236
  %238 = load %struct.set_family*, %struct.set_family** %7, align 8
  %239 = getelementptr inbounds %struct.set_family, %struct.set_family* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.set_family*, %struct.set_family** %7, align 8
  %242 = getelementptr inbounds %struct.set_family, %struct.set_family* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = mul nsw i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %240, i64 %246
  %248 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %237, i32* noundef %247)
  %249 = load %struct.set_family*, %struct.set_family** %22, align 8
  %250 = load %struct.set_family*, %struct.set_family** %8, align 8
  %251 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %249, %struct.set_family* noundef %250)
  store i32** %251, i32*** %20, align 8
  %252 = load i32**, i32*** %20, align 8
  %253 = load %struct.set_family*, %struct.set_family** %22, align 8
  %254 = getelementptr inbounds %struct.set_family, %struct.set_family* %253, i32 0, i32 5
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.set_family*, %struct.set_family** %22, align 8
  %257 = getelementptr inbounds %struct.set_family, %struct.set_family* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = mul nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %255, i64 %261
  %263 = call i32* (i32**, i32*, ...) bitcast (i32* (...)* @reduce_cube to i32* (i32**, i32*, ...)*)(i32** noundef %252, i32* noundef %262)
  store i32* %263, i32** %21, align 8
  %264 = load i32**, i32*** %20, align 8
  %265 = getelementptr inbounds i32*, i32** %264, i64 0
  %266 = load i32*, i32** %265, align 8
  %267 = icmp ne i32* %266, null
  br i1 %267, label %268, label %275

268:                                              ; preds = %225
  %269 = load i32**, i32*** %20, align 8
  %270 = getelementptr inbounds i32*, i32** %269, i64 0
  %271 = load i32*, i32** %270, align 8
  %272 = bitcast i32* %271 to i8*
  call void @free(i8* noundef %272)
  %273 = load i32**, i32*** %20, align 8
  %274 = getelementptr inbounds i32*, i32** %273, i64 0
  store i32* null, i32** %274, align 8
  br label %275

275:                                              ; preds = %268, %225
  %276 = load i32**, i32*** %20, align 8
  %277 = icmp ne i32** %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32**, i32*** %20, align 8
  %280 = bitcast i32** %279 to i8*
  call void @free(i8* noundef %280)
  store i32** null, i32*** %20, align 8
  br label %281

281:                                              ; preds = %278, %275
  %282 = load %struct.set_family*, %struct.set_family** %22, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %282)
  %283 = load %struct.set_family*, %struct.set_family** %9, align 8
  %284 = load i32*, i32** %21, align 8
  %285 = load i32*, i32** %17, align 8
  %286 = load i32*, i32** %19, align 8
  %287 = call i32 (%struct.set_family*, i32*, i32*, i32*, ...) bitcast (i32 (...)* @feasibly_covered to i32 (%struct.set_family*, i32*, i32*, i32*, ...)*)(%struct.set_family* noundef %283, i32* noundef %284, i32* noundef %285, i32* noundef %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %303

289:                                              ; preds = %281
  %290 = load i32*, i32** %19, align 8
  %291 = load i32*, i32** %17, align 8
  %292 = load i32*, i32** %21, align 8
  %293 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %290, i32* noundef %291, i32* noundef %292)
  %294 = load i32*, i32** %19, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, -32769
  store i32 %297, i32* %295, align 4
  %298 = load %struct.set_family**, %struct.set_family*** %12, align 8
  %299 = load %struct.set_family*, %struct.set_family** %298, align 8
  %300 = load i32*, i32** %19, align 8
  %301 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %299, i32* noundef %300)
  %302 = load %struct.set_family**, %struct.set_family*** %12, align 8
  store %struct.set_family* %301, %struct.set_family** %302, align 8
  br label %303

303:                                              ; preds = %289, %281
  %304 = load i32*, i32** %21, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i32*, i32** %21, align 8
  %308 = bitcast i32* %307 to i8*
  call void @free(i8* noundef %308)
  store i32* null, i32** %21, align 8
  br label %309

309:                                              ; preds = %306, %303
  br label %310

310:                                              ; preds = %309, %218
  br label %311

311:                                              ; preds = %310, %207
  br label %312

312:                                              ; preds = %311
  %313 = load %struct.set_family*, %struct.set_family** %7, align 8
  %314 = getelementptr inbounds %struct.set_family, %struct.set_family* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32*, i32** %16, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32* %318, i32** %16, align 8
  %319 = load i32, i32* %13, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %13, align 4
  br label %201, !llvm.loop !8

321:                                              ; preds = %201
  %322 = load i32*, i32** %17, align 8
  %323 = icmp ne i32* %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i32*, i32** %17, align 8
  %326 = bitcast i32* %325 to i8*
  call void @free(i8* noundef %326)
  store i32* null, i32** %17, align 8
  br label %327

327:                                              ; preds = %324, %321
  %328 = load i32*, i32** %18, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i32*, i32** %18, align 8
  %332 = bitcast i32* %331 to i8*
  call void @free(i8* noundef %332)
  store i32* null, i32** %18, align 8
  br label %333

333:                                              ; preds = %330, %327
  %334 = load i32*, i32** %19, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load i32*, i32** %19, align 8
  %338 = bitcast i32* %337 to i8*
  call void @free(i8* noundef %338)
  store i32* null, i32** %19, align 8
  br label %339

339:                                              ; preds = %336, %333
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @pc1(...) #1

declare dso_local i32* @set_clear(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32* @set_copy(...) #1

declare dso_local i32* @set_diff(...) #1

declare dso_local void @essen_parts(...) #1

declare dso_local void @essen_raising(...) #1

declare dso_local i32 @setp_implies(...) #1

declare dso_local i32 @feasibly_covered(...) #1

declare dso_local %struct.set_family* @sf_save(...) #1

declare dso_local i32** @cube2list(...) #1

declare dso_local i32* @reduce_cube(...) #1

declare dso_local void @free(i8* noundef) #1

declare dso_local void @sf_free(...) #1

declare dso_local i32* @set_or(...) #1

declare dso_local %struct.set_family* @sf_addset(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @irred_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2) #0 {
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %4, align 8
  store %struct.set_family* %1, %struct.set_family** %5, align 8
  store %struct.set_family* %2, %struct.set_family** %6, align 8
  %7 = load %struct.set_family*, %struct.set_family** %6, align 8
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.set_family*, %struct.set_family** %4, align 8
  %13 = load %struct.set_family*, %struct.set_family** %6, align 8
  %14 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %12, %struct.set_family* noundef %13)
  %15 = load %struct.set_family*, %struct.set_family** %5, align 8
  %16 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %14, %struct.set_family* noundef %15)
  store %struct.set_family* %16, %struct.set_family** %4, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load %struct.set_family*, %struct.set_family** %6, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %18)
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.set_family*, %struct.set_family** %4, align 8
  ret %struct.set_family* %20
}

declare dso_local %struct.set_family* @irredundant(...) #1

declare dso_local %struct.set_family* @sf_append(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @last_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.cost_struct* noundef %3) #0 {
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.cost_struct*, align 8
  %9 = alloca %struct.set_family*, align 8
  %10 = alloca %struct.set_family*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.set_family* %0, %struct.set_family** %5, align 8
  store %struct.set_family* %1, %struct.set_family** %6, align 8
  store %struct.set_family* %2, %struct.set_family** %7, align 8
  store %struct.cost_struct* %3, %struct.cost_struct** %8, align 8
  %14 = call i64 (...) @util_cpu_time()
  store i64 %14, i64* %11, align 8
  %15 = load %struct.set_family*, %struct.set_family** %5, align 8
  %16 = load %struct.set_family*, %struct.set_family** %6, align 8
  %17 = call %struct.set_family* @reduce_gasp(%struct.set_family* noundef %15, %struct.set_family* noundef %16)
  store %struct.set_family* %17, %struct.set_family** %9, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.set_family*, %struct.set_family** %9, align 8
  %20 = load %struct.cost_struct*, %struct.cost_struct** %8, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %18, i32 noundef 9, %struct.set_family* noundef %19, %struct.cost_struct* noundef %20)
  %21 = call i64 (...) @util_cpu_time()
  store i64 %21, i64* %12, align 8
  %22 = load %struct.set_family*, %struct.set_family** %9, align 8
  %23 = load %struct.set_family*, %struct.set_family** %6, align 8
  %24 = load %struct.set_family*, %struct.set_family** %7, align 8
  %25 = load %struct.set_family*, %struct.set_family** %5, align 8
  %26 = call %struct.set_family* @expand_gasp(%struct.set_family* noundef %22, %struct.set_family* noundef %23, %struct.set_family* noundef %24, %struct.set_family* noundef %25)
  store %struct.set_family* %26, %struct.set_family** %10, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.set_family*, %struct.set_family** %10, align 8
  %29 = load %struct.cost_struct*, %struct.cost_struct** %8, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %27, i32 noundef 7, %struct.set_family* noundef %28, %struct.cost_struct* noundef %29)
  %30 = load %struct.set_family*, %struct.set_family** %9, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %30)
  %31 = call i64 (...) @util_cpu_time()
  store i64 %31, i64* %13, align 8
  %32 = load %struct.set_family*, %struct.set_family** %5, align 8
  %33 = load %struct.set_family*, %struct.set_family** %6, align 8
  %34 = load %struct.set_family*, %struct.set_family** %10, align 8
  %35 = call %struct.set_family* @irred_gasp(%struct.set_family* noundef %32, %struct.set_family* noundef %33, %struct.set_family* noundef %34)
  store %struct.set_family* %35, %struct.set_family** %5, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.set_family*, %struct.set_family** %5, align 8
  %38 = load %struct.cost_struct*, %struct.cost_struct** %8, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %36, i32 noundef 8, %struct.set_family* noundef %37, %struct.cost_struct* noundef %38)
  %39 = load %struct.set_family*, %struct.set_family** %5, align 8
  ret %struct.set_family* %39
}

declare dso_local i64 @util_cpu_time(...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.set_family* @reduce_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store %struct.set_family* %1, %struct.set_family** %4, align 8
  %10 = load %struct.set_family*, %struct.set_family** %3, align 8
  %11 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %14 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %12, i32 noundef %13)
  store %struct.set_family* %14, %struct.set_family** %9, align 8
  %15 = load %struct.set_family*, %struct.set_family** %3, align 8
  %16 = load %struct.set_family*, %struct.set_family** %4, align 8
  %17 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %15, %struct.set_family* noundef %16)
  store i32** %17, i32*** %8, align 8
  %18 = load %struct.set_family*, %struct.set_family** %3, align 8
  %19 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.set_family*, %struct.set_family** %3, align 8
  %23 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.set_family*, %struct.set_family** %3, align 8
  %26 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %21, i64 %29
  store i32* %30, i32** %6, align 8
  br label %31

31:                                               ; preds = %82, %2
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %31
  %36 = load i32**, i32*** %8, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* (i32**, i32*, ...) bitcast (i32* (...)* @reduce_cube to i32* (i32**, i32*, ...)*)(i32** noundef %36, i32* noundef %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 (i32*, ...) bitcast (i32 (...)* @setp_empty to i32 (i32*, ...)*)(i32* noundef %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %65

43:                                               ; preds = %35
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* noundef %44, i32* noundef %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, 32768
  store i32 %52, i32* %50, align 4
  %53 = load %struct.set_family*, %struct.set_family** %9, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %53, i32* noundef %54)
  store %struct.set_family* %55, %struct.set_family** %9, align 8
  br label %64

56:                                               ; preds = %43
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, -32769
  store i32 %60, i32* %58, align 4
  %61 = load %struct.set_family*, %struct.set_family** %9, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %61, i32* noundef %62)
  store %struct.set_family* %63, %struct.set_family** %9, align 8
  br label %64

64:                                               ; preds = %56, %48
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32, i32* @debug, align 4
  %67 = and i32 %66, 16
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32*, i32** %5, align 8
  %71 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* (i32*, ...) bitcast (i8* (...)* @pc2 to i8* (i32*, ...)*)(i32* noundef %72)
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %71, i8* noundef %73)
  br label %75

75:                                               ; preds = %69, %65
  %76 = load i32*, i32** %7, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = bitcast i32* %79 to i8*
  call void @free(i8* noundef %80)
  store i32* null, i32** %7, align 8
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.set_family*, %struct.set_family** %3, align 8
  %84 = getelementptr inbounds %struct.set_family, %struct.set_family* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %5, align 8
  br label %31, !llvm.loop !9

89:                                               ; preds = %31
  %90 = load i32**, i32*** %8, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32**, i32*** %8, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 0
  %97 = load i32*, i32** %96, align 8
  %98 = bitcast i32* %97 to i8*
  call void @free(i8* noundef %98)
  %99 = load i32**, i32*** %8, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32**, i32*** %8, align 8
  %103 = icmp ne i32** %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32**, i32*** %8, align 8
  %106 = bitcast i32** %105 to i8*
  call void @free(i8* noundef %106)
  store i32** null, i32*** %8, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.set_family*, %struct.set_family** %9, align 8
  ret %struct.set_family* %108
}

declare dso_local void @totals(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @super_gasp(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.cost_struct* noundef %3) #0 {
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.cost_struct*, align 8
  %9 = alloca %struct.set_family*, align 8
  %10 = alloca %struct.set_family*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.set_family* %0, %struct.set_family** %5, align 8
  store %struct.set_family* %1, %struct.set_family** %6, align 8
  store %struct.set_family* %2, %struct.set_family** %7, align 8
  store %struct.cost_struct* %3, %struct.cost_struct** %8, align 8
  %15 = call i64 (...) @util_cpu_time()
  store i64 %15, i64* %11, align 8
  %16 = load %struct.set_family*, %struct.set_family** %5, align 8
  %17 = load %struct.set_family*, %struct.set_family** %6, align 8
  %18 = call %struct.set_family* @reduce_gasp(%struct.set_family* noundef %16, %struct.set_family* noundef %17)
  store %struct.set_family* %18, %struct.set_family** %9, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load %struct.set_family*, %struct.set_family** %9, align 8
  %21 = load %struct.cost_struct*, %struct.cost_struct** %8, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %19, i32 noundef 9, %struct.set_family* noundef %20, %struct.cost_struct* noundef %21)
  %22 = call i64 (...) @util_cpu_time()
  store i64 %22, i64* %12, align 8
  %23 = load %struct.set_family*, %struct.set_family** %9, align 8
  %24 = load %struct.set_family*, %struct.set_family** %7, align 8
  %25 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @all_primes to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %23, %struct.set_family* noundef %24)
  store %struct.set_family* %25, %struct.set_family** %10, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.set_family*, %struct.set_family** %10, align 8
  %28 = load %struct.cost_struct*, %struct.cost_struct** %8, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %26, i32 noundef 7, %struct.set_family* noundef %27, %struct.cost_struct* noundef %28)
  %29 = load %struct.set_family*, %struct.set_family** %9, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %29)
  %30 = call i64 (...) @util_cpu_time()
  store i64 %30, i64* %13, align 8
  %31 = load %struct.set_family*, %struct.set_family** %5, align 8
  %32 = load %struct.set_family*, %struct.set_family** %10, align 8
  %33 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %31, %struct.set_family* noundef %32)
  %34 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_dupl to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %33)
  store %struct.set_family* %34, %struct.set_family** %9, align 8
  %35 = load i32, i32* @trace, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load %struct.set_family*, %struct.set_family** %9, align 8
  %39 = call i64 (...) @util_cpu_time()
  %40 = load i64, i64* %13, align 8
  %41 = sub nsw i64 %39, %40
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %38, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 noundef %41)
  br label %42

42:                                               ; preds = %37, %4
  %43 = call i64 (...) @util_cpu_time()
  store i64 %43, i64* %14, align 8
  %44 = load %struct.set_family*, %struct.set_family** %9, align 8
  %45 = load %struct.set_family*, %struct.set_family** %6, align 8
  %46 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %44, %struct.set_family* noundef %45)
  store %struct.set_family* %46, %struct.set_family** %5, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.set_family*, %struct.set_family** %5, align 8
  %49 = load %struct.cost_struct*, %struct.cost_struct** %8, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %47, i32 noundef 5, %struct.set_family* noundef %48, %struct.cost_struct* noundef %49)
  %50 = load %struct.set_family*, %struct.set_family** %5, align 8
  ret %struct.set_family* %50
}

declare dso_local %struct.set_family* @all_primes(...) #1

declare dso_local void @print_trace(...) #1

declare dso_local i32 @setp_empty(...) #1

declare dso_local void @fatal(...) #1

declare dso_local i32 @setp_equal(...) #1

declare dso_local i8* @pc2(...) #1

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
