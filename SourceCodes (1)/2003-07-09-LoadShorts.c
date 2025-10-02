; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-09-LoadShorts.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-09-LoadShorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ShortsSet_struct = type { i32, i32, i16, i16, i8, i8 }

@.str = private unnamed_addr constant [42 x i8] c"   ui = %u (0x%x)\09\09UL-ui = %lld (0x%llx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"ui*ui = %u (0x%x)\09  UL/ui = %lld (0x%llx)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"    i = %d (0x%x)\09L-i = %lld (0x%llx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c" i* i = %d (0x%x)\09L/ i = %lld (0x%llx)\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"us    = %u (0x%x)\09\09UL-us = %lld (0x%llx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"us*us = %u (0x%x)\09  UL/us = %lld (0x%llx)\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c" s    = %d (0x%x)\09L-s = %lld (0x%llx)\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c" s* s = %d (0x%x)\09L/ s = %lld (0x%llx)\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"ub    = %u (0x%x)\09\09UL-ub = %lld (0x%llx)\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"ub*ub = %u (0x%x)\09\09UL/ub = %lld (0x%llx)\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c" b    = %d (0x%x)\09\09L-b = %lld (0x%llx)\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c" b* b = %d (0x%x)\09\09\09L/b = %lld (0x%llx)\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getL() #0 {
  ret i64 -5787213826675591005
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ShortsSet_struct*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i64 @getL()
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  store i64 %10, i64* %7, align 8
  %11 = call noalias i8* @malloc(i64 noundef 16) #3
  %12 = bitcast i8* %11 to %struct.ShortsSet_struct*
  store %struct.ShortsSet_struct* %12, %struct.ShortsSet_struct** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %16 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %20 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i16
  %23 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %24 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %23, i32 0, i32 2
  store i16 %22, i16* %24, align 4
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i16
  %27 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %28 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %27, i32 0, i32 3
  store i16 %26, i16* %28, align 2
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i8
  %31 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %32 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %31, i32 0, i32 4
  store i8 %30, i8* %32, align 4
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i8
  %35 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %36 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %35, i32 0, i32 5
  store i8 %34, i8* %36, align 1
  %37 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %38 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %41 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %45 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = sub i64 %43, %47
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %51 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = sub i64 %49, %53
  %55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 noundef %39, i32 noundef %42, i64 noundef %48, i64 noundef %54)
  %56 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %57 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %60 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul i32 %58, %61
  %63 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %64 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %67 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul i32 %65, %68
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %72 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  %75 = udiv i64 %70, %74
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %78 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  %81 = udiv i64 %76, %80
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 noundef %62, i32 noundef %69, i64 noundef %75, i64 noundef %81)
  %83 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %84 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %87 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %91 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %89, %93
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %97 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %95, %99
  %101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %85, i32 noundef %88, i64 noundef %94, i64 noundef %100)
  %102 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %103 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %106 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %104, %107
  %109 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %110 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %113 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %118 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = sdiv i64 %116, %120
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %124 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = sdiv i64 %122, %126
  %128 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 noundef %108, i32 noundef %115, i64 noundef %121, i64 noundef %127)
  %129 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %130 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %129, i32 0, i32 2
  %131 = load i16, i16* %130, align 4
  %132 = zext i16 %131 to i32
  %133 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %134 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %133, i32 0, i32 2
  %135 = load i16, i16* %134, align 4
  %136 = zext i16 %135 to i32
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %139 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %138, i32 0, i32 2
  %140 = load i16, i16* %139, align 4
  %141 = zext i16 %140 to i64
  %142 = sub i64 %137, %141
  %143 = load i64, i64* %6, align 8
  %144 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %145 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %144, i32 0, i32 2
  %146 = load i16, i16* %145, align 4
  %147 = zext i16 %146 to i64
  %148 = sub i64 %143, %147
  %149 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %132, i32 noundef %136, i64 noundef %142, i64 noundef %148)
  %150 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %151 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %150, i32 0, i32 2
  %152 = load i16, i16* %151, align 4
  %153 = zext i16 %152 to i32
  %154 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %155 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %154, i32 0, i32 2
  %156 = load i16, i16* %155, align 4
  %157 = zext i16 %156 to i32
  %158 = mul nsw i32 %153, %157
  %159 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %160 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %159, i32 0, i32 2
  %161 = load i16, i16* %160, align 4
  %162 = zext i16 %161 to i32
  %163 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %164 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %163, i32 0, i32 2
  %165 = load i16, i16* %164, align 4
  %166 = zext i16 %165 to i32
  %167 = mul nsw i32 %162, %166
  %168 = load i64, i64* %6, align 8
  %169 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %170 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %169, i32 0, i32 2
  %171 = load i16, i16* %170, align 4
  %172 = zext i16 %171 to i64
  %173 = udiv i64 %168, %172
  %174 = load i64, i64* %6, align 8
  %175 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %176 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %175, i32 0, i32 2
  %177 = load i16, i16* %176, align 4
  %178 = zext i16 %177 to i64
  %179 = udiv i64 %174, %178
  %180 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 noundef %158, i32 noundef %167, i64 noundef %173, i64 noundef %179)
  %181 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %182 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %181, i32 0, i32 3
  %183 = load i16, i16* %182, align 2
  %184 = sext i16 %183 to i32
  %185 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %186 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %185, i32 0, i32 3
  %187 = load i16, i16* %186, align 2
  %188 = sext i16 %187 to i32
  %189 = load i64, i64* %7, align 8
  %190 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %191 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %190, i32 0, i32 3
  %192 = load i16, i16* %191, align 2
  %193 = sext i16 %192 to i64
  %194 = sub nsw i64 %189, %193
  %195 = load i64, i64* %7, align 8
  %196 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %197 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %196, i32 0, i32 3
  %198 = load i16, i16* %197, align 2
  %199 = sext i16 %198 to i64
  %200 = sub nsw i64 %195, %199
  %201 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 noundef %184, i32 noundef %188, i64 noundef %194, i64 noundef %200)
  %202 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %203 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %202, i32 0, i32 3
  %204 = load i16, i16* %203, align 2
  %205 = sext i16 %204 to i32
  %206 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %207 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %206, i32 0, i32 3
  %208 = load i16, i16* %207, align 2
  %209 = sext i16 %208 to i32
  %210 = mul nsw i32 %205, %209
  %211 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %212 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %211, i32 0, i32 3
  %213 = load i16, i16* %212, align 2
  %214 = sext i16 %213 to i32
  %215 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %216 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %215, i32 0, i32 3
  %217 = load i16, i16* %216, align 2
  %218 = sext i16 %217 to i32
  %219 = mul nsw i32 %214, %218
  %220 = load i64, i64* %7, align 8
  %221 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %222 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %221, i32 0, i32 3
  %223 = load i16, i16* %222, align 2
  %224 = sext i16 %223 to i64
  %225 = sdiv i64 %220, %224
  %226 = load i64, i64* %7, align 8
  %227 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %228 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %227, i32 0, i32 3
  %229 = load i16, i16* %228, align 2
  %230 = sext i16 %229 to i64
  %231 = sdiv i64 %226, %230
  %232 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 noundef %210, i32 noundef %219, i64 noundef %225, i64 noundef %231)
  %233 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %234 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %233, i32 0, i32 4
  %235 = load i8, i8* %234, align 4
  %236 = zext i8 %235 to i32
  %237 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %238 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %237, i32 0, i32 4
  %239 = load i8, i8* %238, align 4
  %240 = zext i8 %239 to i32
  %241 = load i64, i64* %6, align 8
  %242 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %243 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %242, i32 0, i32 4
  %244 = load i8, i8* %243, align 4
  %245 = zext i8 %244 to i64
  %246 = sub i64 %241, %245
  %247 = load i64, i64* %6, align 8
  %248 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %249 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %248, i32 0, i32 4
  %250 = load i8, i8* %249, align 4
  %251 = zext i8 %250 to i64
  %252 = sub i64 %247, %251
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 noundef %236, i32 noundef %240, i64 noundef %246, i64 noundef %252)
  %254 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %255 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %254, i32 0, i32 4
  %256 = load i8, i8* %255, align 4
  %257 = zext i8 %256 to i32
  %258 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %259 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %258, i32 0, i32 4
  %260 = load i8, i8* %259, align 4
  %261 = zext i8 %260 to i32
  %262 = mul nsw i32 %257, %261
  %263 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %264 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %263, i32 0, i32 4
  %265 = load i8, i8* %264, align 4
  %266 = zext i8 %265 to i32
  %267 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %268 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %267, i32 0, i32 4
  %269 = load i8, i8* %268, align 4
  %270 = zext i8 %269 to i32
  %271 = mul nsw i32 %266, %270
  %272 = load i64, i64* %6, align 8
  %273 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %274 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %273, i32 0, i32 4
  %275 = load i8, i8* %274, align 4
  %276 = zext i8 %275 to i64
  %277 = udiv i64 %272, %276
  %278 = load i64, i64* %6, align 8
  %279 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %280 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %279, i32 0, i32 4
  %281 = load i8, i8* %280, align 4
  %282 = zext i8 %281 to i64
  %283 = udiv i64 %278, %282
  %284 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 noundef %262, i32 noundef %271, i64 noundef %277, i64 noundef %283)
  %285 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %286 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %285, i32 0, i32 5
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %290 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %289, i32 0, i32 5
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = load i64, i64* %7, align 8
  %294 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %295 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %294, i32 0, i32 5
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i64
  %298 = sub nsw i64 %293, %297
  %299 = load i64, i64* %7, align 8
  %300 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %301 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %300, i32 0, i32 5
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i64
  %304 = sub nsw i64 %299, %303
  %305 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 noundef %288, i32 noundef %292, i64 noundef %298, i64 noundef %304)
  %306 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %307 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %306, i32 0, i32 5
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %311 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %310, i32 0, i32 5
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = mul nsw i32 %309, %313
  %315 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %316 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %315, i32 0, i32 5
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %320 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %319, i32 0, i32 5
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = mul nsw i32 %318, %322
  %324 = load i64, i64* %7, align 8
  %325 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %326 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %325, i32 0, i32 5
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i64
  %329 = sdiv i64 %324, %328
  %330 = load i64, i64* %7, align 8
  %331 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %8, align 8
  %332 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %331, i32 0, i32 5
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i64
  %335 = sdiv i64 %330, %334
  %336 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 noundef %314, i32 noundef %323, i64 noundef %329, i64 noundef %335)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
