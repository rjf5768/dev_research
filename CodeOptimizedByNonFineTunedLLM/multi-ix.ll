; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/multi-ix.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/multi-ix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [500 x i32], align 16
  %5 = alloca [500 x i32], align 16
  %6 = alloca [500 x i32], align 16
  %7 = alloca [500 x i32], align 16
  %8 = alloca [500 x i32], align 16
  %9 = alloca [500 x i32], align 16
  %10 = alloca [500 x i32], align 16
  %11 = alloca [500 x i32], align 16
  %12 = alloca [500 x i32], align 16
  %13 = alloca [500 x i32], align 16
  %14 = alloca [500 x i32], align 16
  %15 = alloca [500 x i32], align 16
  %16 = alloca [500 x i32], align 16
  %17 = alloca [500 x i32], align 16
  %18 = alloca [500 x i32], align 16
  %19 = alloca [500 x i32], align 16
  %20 = alloca [500 x i32], align 16
  %21 = alloca [500 x i32], align 16
  %22 = alloca [500 x i32], align 16
  %23 = alloca [500 x i32], align 16
  %24 = alloca [500 x i32], align 16
  %25 = alloca [500 x i32], align 16
  %26 = alloca [500 x i32], align 16
  %27 = alloca [500 x i32], align 16
  %28 = alloca [500 x i32], align 16
  %29 = alloca [500 x i32], align 16
  %30 = alloca [500 x i32], align 16
  %31 = alloca [500 x i32], align 16
  %32 = alloca [500 x i32], align 16
  %33 = alloca [500 x i32], align 16
  %34 = alloca [500 x i32], align 16
  %35 = alloca [500 x i32], align 16
  %36 = alloca [500 x i32], align 16
  %37 = alloca [500 x i32], align 16
  %38 = alloca [500 x i32], align 16
  %39 = alloca [500 x i32], align 16
  %40 = alloca [500 x i32], align 16
  %41 = alloca [500 x i32], align 16
  %42 = alloca [500 x i32], align 16
  %43 = alloca [500 x i32], align 16
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %449, %1
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %2, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %452

88:                                               ; preds = %84
  %89 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %90 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 0
  %91 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 0
  %92 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %93 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %94 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %95 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 0
  %96 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 0
  %97 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 0
  %98 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 0
  %99 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 0
  %100 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 0
  %101 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 0
  %102 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 0
  %103 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 0
  %104 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 0
  %105 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 0
  %106 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 0
  %107 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 0
  %108 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 0
  %109 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 0
  %110 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 0
  %111 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 0
  %112 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 0
  %113 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 0
  %114 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 0
  %115 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 0
  %116 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 0
  %117 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 0
  %118 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 0
  %119 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 0
  %120 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 0
  %121 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 0
  %122 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 0
  %123 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 0
  %124 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 0
  %125 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 0
  %126 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 0
  %127 = getelementptr inbounds [500 x i32], [500 x i32]* %42, i64 0, i64 0
  %128 = getelementptr inbounds [500 x i32], [500 x i32]* %43, i64 0, i64 0
  call void (i32, ...) @s(i32 noundef 40, i32* noundef %89, i32* noundef %90, i32* noundef %91, i32* noundef %92, i32* noundef %93, i32* noundef %94, i32* noundef %95, i32* noundef %96, i32* noundef %97, i32* noundef %98, i32* noundef %99, i32* noundef %100, i32* noundef %101, i32* noundef %102, i32* noundef %103, i32* noundef %104, i32* noundef %105, i32* noundef %106, i32* noundef %107, i32* noundef %108, i32* noundef %109, i32* noundef %110, i32* noundef %111, i32* noundef %112, i32* noundef %113, i32* noundef %114, i32* noundef %115, i32* noundef %116, i32* noundef %117, i32* noundef %118, i32* noundef %119, i32* noundef %120, i32* noundef %121, i32* noundef %122, i32* noundef %123, i32* noundef %124, i32* noundef %125, i32* noundef %126, i32* noundef %127, i32* noundef %128)
  %129 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %130 = load i32, i32* %129, align 16
  store i32 %130, i32* %44, align 4
  %131 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 0
  %132 = load i32, i32* %131, align 16
  store i32 %132, i32* %45, align 4
  %133 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 0
  %134 = load i32, i32* %133, align 16
  store i32 %134, i32* %46, align 4
  %135 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  store i32 %136, i32* %47, align 4
  %137 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %138 = load i32, i32* %137, align 16
  store i32 %138, i32* %48, align 4
  %139 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  store i32 %140, i32* %49, align 4
  %141 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 0
  %142 = load i32, i32* %141, align 16
  store i32 %142, i32* %50, align 4
  %143 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 0
  %144 = load i32, i32* %143, align 16
  store i32 %144, i32* %51, align 4
  %145 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 0
  %146 = load i32, i32* %145, align 16
  store i32 %146, i32* %52, align 4
  %147 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  store i32 %148, i32* %53, align 4
  %149 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 0
  %150 = load i32, i32* %149, align 16
  store i32 %150, i32* %54, align 4
  %151 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 0
  %152 = load i32, i32* %151, align 16
  store i32 %152, i32* %55, align 4
  %153 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  store i32 %154, i32* %56, align 4
  %155 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 0
  %156 = load i32, i32* %155, align 16
  store i32 %156, i32* %57, align 4
  %157 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 0
  %158 = load i32, i32* %157, align 16
  store i32 %158, i32* %58, align 4
  %159 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 0
  %160 = load i32, i32* %159, align 16
  store i32 %160, i32* %59, align 4
  %161 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 0
  %162 = load i32, i32* %161, align 16
  store i32 %162, i32* %60, align 4
  %163 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 0
  %164 = load i32, i32* %163, align 16
  store i32 %164, i32* %61, align 4
  %165 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 0
  %166 = load i32, i32* %165, align 16
  store i32 %166, i32* %62, align 4
  %167 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 0
  %168 = load i32, i32* %167, align 16
  store i32 %168, i32* %63, align 4
  %169 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 0
  %170 = load i32, i32* %169, align 16
  store i32 %170, i32* %64, align 4
  %171 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 0
  %172 = load i32, i32* %171, align 16
  store i32 %172, i32* %65, align 4
  %173 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 0
  %174 = load i32, i32* %173, align 16
  store i32 %174, i32* %66, align 4
  %175 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 0
  %176 = load i32, i32* %175, align 16
  store i32 %176, i32* %67, align 4
  %177 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 0
  %178 = load i32, i32* %177, align 16
  store i32 %178, i32* %68, align 4
  %179 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 0
  %180 = load i32, i32* %179, align 16
  store i32 %180, i32* %69, align 4
  %181 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 0
  %182 = load i32, i32* %181, align 16
  store i32 %182, i32* %70, align 4
  %183 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 0
  %184 = load i32, i32* %183, align 16
  store i32 %184, i32* %71, align 4
  %185 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 0
  %186 = load i32, i32* %185, align 16
  store i32 %186, i32* %72, align 4
  %187 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 0
  %188 = load i32, i32* %187, align 16
  store i32 %188, i32* %73, align 4
  %189 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 0
  %190 = load i32, i32* %189, align 16
  store i32 %190, i32* %74, align 4
  %191 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 0
  %192 = load i32, i32* %191, align 16
  store i32 %192, i32* %75, align 4
  %193 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 0
  %194 = load i32, i32* %193, align 16
  store i32 %194, i32* %76, align 4
  %195 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 0
  %196 = load i32, i32* %195, align 16
  store i32 %196, i32* %77, align 4
  %197 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 0
  %198 = load i32, i32* %197, align 16
  store i32 %198, i32* %78, align 4
  %199 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 0
  %200 = load i32, i32* %199, align 16
  store i32 %200, i32* %79, align 4
  %201 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 0
  %202 = load i32, i32* %201, align 16
  store i32 %202, i32* %80, align 4
  %203 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 0
  %204 = load i32, i32* %203, align 16
  store i32 %204, i32* %81, align 4
  %205 = getelementptr inbounds [500 x i32], [500 x i32]* %42, i64 0, i64 0
  %206 = load i32, i32* %205, align 16
  store i32 %206, i32* %82, align 4
  %207 = getelementptr inbounds [500 x i32], [500 x i32]* %43, i64 0, i64 0
  %208 = load i32, i32* %207, align 16
  store i32 %208, i32* %83, align 4
  %209 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %210 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 0
  %211 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 0
  %212 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %213 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %214 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %215 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 0
  %216 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 0
  %217 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 0
  %218 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 0
  %219 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 0
  %220 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 0
  %221 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 0
  %222 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 0
  %223 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 0
  %224 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 0
  %225 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 0
  %226 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 0
  %227 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 0
  %228 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 0
  %229 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 0
  %230 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 0
  %231 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 0
  %232 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 0
  %233 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 0
  %234 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 0
  %235 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 0
  %236 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 0
  %237 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 0
  %238 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 0
  %239 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 0
  %240 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 0
  %241 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 0
  %242 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 0
  %243 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 0
  %244 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 0
  %245 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 0
  %246 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 0
  %247 = getelementptr inbounds [500 x i32], [500 x i32]* %42, i64 0, i64 0
  %248 = getelementptr inbounds [500 x i32], [500 x i32]* %43, i64 0, i64 0
  call void (i32, ...) @z(i32 noundef 40, i32* noundef %209, i32* noundef %210, i32* noundef %211, i32* noundef %212, i32* noundef %213, i32* noundef %214, i32* noundef %215, i32* noundef %216, i32* noundef %217, i32* noundef %218, i32* noundef %219, i32* noundef %220, i32* noundef %221, i32* noundef %222, i32* noundef %223, i32* noundef %224, i32* noundef %225, i32* noundef %226, i32* noundef %227, i32* noundef %228, i32* noundef %229, i32* noundef %230, i32* noundef %231, i32* noundef %232, i32* noundef %233, i32* noundef %234, i32* noundef %235, i32* noundef %236, i32* noundef %237, i32* noundef %238, i32* noundef %239, i32* noundef %240, i32* noundef %241, i32* noundef %242, i32* noundef %243, i32* noundef %244, i32* noundef %245, i32* noundef %246, i32* noundef %247, i32* noundef %248)
  %249 = load i32, i32* %44, align 4
  %250 = load i32, i32* %44, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %251
  store i32 %249, i32* %252, align 4
  %253 = load i32, i32* %45, align 4
  %254 = load i32, i32* %45, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 %255
  store i32 %253, i32* %256, align 4
  %257 = load i32, i32* %46, align 4
  %258 = load i32, i32* %46, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 %259
  store i32 %257, i32* %260, align 4
  %261 = load i32, i32* %47, align 4
  %262 = load i32, i32* %47, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 %263
  store i32 %261, i32* %264, align 4
  %265 = load i32, i32* %48, align 4
  %266 = load i32, i32* %48, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %267
  store i32 %265, i32* %268, align 4
  %269 = load i32, i32* %49, align 4
  %270 = load i32, i32* %49, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 %271
  store i32 %269, i32* %272, align 4
  %273 = load i32, i32* %50, align 4
  %274 = load i32, i32* %50, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 %275
  store i32 %273, i32* %276, align 4
  %277 = load i32, i32* %51, align 4
  %278 = load i32, i32* %51, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 %279
  store i32 %277, i32* %280, align 4
  %281 = load i32, i32* %52, align 4
  %282 = load i32, i32* %52, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 %283
  store i32 %281, i32* %284, align 4
  %285 = load i32, i32* %53, align 4
  %286 = load i32, i32* %53, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 %287
  store i32 %285, i32* %288, align 4
  %289 = load i32, i32* %54, align 4
  %290 = load i32, i32* %54, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 %291
  store i32 %289, i32* %292, align 4
  %293 = load i32, i32* %55, align 4
  %294 = load i32, i32* %55, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 %295
  store i32 %293, i32* %296, align 4
  %297 = load i32, i32* %56, align 4
  %298 = load i32, i32* %56, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 %299
  store i32 %297, i32* %300, align 4
  %301 = load i32, i32* %57, align 4
  %302 = load i32, i32* %57, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 %303
  store i32 %301, i32* %304, align 4
  %305 = load i32, i32* %58, align 4
  %306 = load i32, i32* %58, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 %307
  store i32 %305, i32* %308, align 4
  %309 = load i32, i32* %59, align 4
  %310 = load i32, i32* %59, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 %311
  store i32 %309, i32* %312, align 4
  %313 = load i32, i32* %60, align 4
  %314 = load i32, i32* %60, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 %315
  store i32 %313, i32* %316, align 4
  %317 = load i32, i32* %61, align 4
  %318 = load i32, i32* %61, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 %319
  store i32 %317, i32* %320, align 4
  %321 = load i32, i32* %62, align 4
  %322 = load i32, i32* %62, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 %323
  store i32 %321, i32* %324, align 4
  %325 = load i32, i32* %63, align 4
  %326 = load i32, i32* %63, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 %327
  store i32 %325, i32* %328, align 4
  %329 = load i32, i32* %64, align 4
  %330 = load i32, i32* %64, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 %331
  store i32 %329, i32* %332, align 4
  %333 = load i32, i32* %65, align 4
  %334 = load i32, i32* %65, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 %335
  store i32 %333, i32* %336, align 4
  %337 = load i32, i32* %66, align 4
  %338 = load i32, i32* %66, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 %339
  store i32 %337, i32* %340, align 4
  %341 = load i32, i32* %67, align 4
  %342 = load i32, i32* %67, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 %343
  store i32 %341, i32* %344, align 4
  %345 = load i32, i32* %68, align 4
  %346 = load i32, i32* %68, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 %347
  store i32 %345, i32* %348, align 4
  %349 = load i32, i32* %69, align 4
  %350 = load i32, i32* %69, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 %351
  store i32 %349, i32* %352, align 4
  %353 = load i32, i32* %70, align 4
  %354 = load i32, i32* %70, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 %355
  store i32 %353, i32* %356, align 4
  %357 = load i32, i32* %71, align 4
  %358 = load i32, i32* %71, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 %359
  store i32 %357, i32* %360, align 4
  %361 = load i32, i32* %72, align 4
  %362 = load i32, i32* %72, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 %363
  store i32 %361, i32* %364, align 4
  %365 = load i32, i32* %73, align 4
  %366 = load i32, i32* %73, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 %367
  store i32 %365, i32* %368, align 4
  %369 = load i32, i32* %74, align 4
  %370 = load i32, i32* %74, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 %371
  store i32 %369, i32* %372, align 4
  %373 = load i32, i32* %75, align 4
  %374 = load i32, i32* %75, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 %375
  store i32 %373, i32* %376, align 4
  %377 = load i32, i32* %76, align 4
  %378 = load i32, i32* %76, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 %379
  store i32 %377, i32* %380, align 4
  %381 = load i32, i32* %77, align 4
  %382 = load i32, i32* %77, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 %383
  store i32 %381, i32* %384, align 4
  %385 = load i32, i32* %78, align 4
  %386 = load i32, i32* %78, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 %387
  store i32 %385, i32* %388, align 4
  %389 = load i32, i32* %79, align 4
  %390 = load i32, i32* %79, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 %391
  store i32 %389, i32* %392, align 4
  %393 = load i32, i32* %80, align 4
  %394 = load i32, i32* %80, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 %395
  store i32 %393, i32* %396, align 4
  %397 = load i32, i32* %81, align 4
  %398 = load i32, i32* %81, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 %399
  store i32 %397, i32* %400, align 4
  %401 = load i32, i32* %82, align 4
  %402 = load i32, i32* %82, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [500 x i32], [500 x i32]* %42, i64 0, i64 %403
  store i32 %401, i32* %404, align 4
  %405 = load i32, i32* %83, align 4
  %406 = load i32, i32* %83, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [500 x i32], [500 x i32]* %43, i64 0, i64 %407
  store i32 %405, i32* %408, align 4
  %409 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %410 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 0
  %411 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 0
  %412 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %413 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %414 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %415 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 0
  %416 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 0
  %417 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 0
  %418 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 0
  %419 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 0
  %420 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 0
  %421 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 0
  %422 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 0
  %423 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 0
  %424 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 0
  %425 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 0
  %426 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 0
  %427 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 0
  %428 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 0
  %429 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 0
  %430 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 0
  %431 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 0
  %432 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 0
  %433 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 0
  %434 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 0
  %435 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 0
  %436 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 0
  %437 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 0
  %438 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 0
  %439 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 0
  %440 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 0
  %441 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 0
  %442 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 0
  %443 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 0
  %444 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 0
  %445 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 0
  %446 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 0
  %447 = getelementptr inbounds [500 x i32], [500 x i32]* %42, i64 0, i64 0
  %448 = getelementptr inbounds [500 x i32], [500 x i32]* %43, i64 0, i64 0
  call void (i32, ...) @c(i32 noundef 40, i32* noundef %409, i32* noundef %410, i32* noundef %411, i32* noundef %412, i32* noundef %413, i32* noundef %414, i32* noundef %415, i32* noundef %416, i32* noundef %417, i32* noundef %418, i32* noundef %419, i32* noundef %420, i32* noundef %421, i32* noundef %422, i32* noundef %423, i32* noundef %424, i32* noundef %425, i32* noundef %426, i32* noundef %427, i32* noundef %428, i32* noundef %429, i32* noundef %430, i32* noundef %431, i32* noundef %432, i32* noundef %433, i32* noundef %434, i32* noundef %435, i32* noundef %436, i32* noundef %437, i32* noundef %438, i32* noundef %439, i32* noundef %440, i32* noundef %441, i32* noundef %442, i32* noundef %443, i32* noundef %444, i32* noundef %445, i32* noundef %446, i32* noundef %447, i32* noundef %448)
  br label %449

449:                                              ; preds = %88
  %450 = load i32, i32* %3, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %3, align 4
  br label %84, !llvm.loop !4

452:                                              ; preds = %84
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @s(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %2, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ule i32 %14, 40
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = getelementptr i8, i8* %18, i32 %14
  %20 = bitcast i8* %19 to i32**
  %21 = add i32 %14, 8
  store i32 %21, i32* %13, align 16
  br label %27

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32**
  %26 = getelementptr i8, i8* %24, i32 8
  store i8* %26, i8** %23, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32** [ %20, %16 ], [ %25, %22 ]
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %4, align 8
  %30 = load i32, i32* %2, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  br label %7, !llvm.loop !6

33:                                               ; preds = %7
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %35 = bitcast %struct.__va_list_tag* %34 to i8*
  call void @llvm.va_end(i8* %35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @z(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %2, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ule i32 %14, 40
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = getelementptr i8, i8* %18, i32 %14
  %20 = bitcast i8* %19 to i32**
  %21 = add i32 %14, 8
  store i32 %21, i32* %13, align 16
  br label %27

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32**
  %26 = getelementptr i8, i8* %24, i32 8
  store i8* %26, i8** %23, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32** [ %20, %16 ], [ %25, %22 ]
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = bitcast i32* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 2000, i1 false)
  br label %7, !llvm.loop !7

32:                                               ; preds = %7
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %34 = bitcast %struct.__va_list_tag* %33 to i8*
  call void @llvm.va_end(i8* %34)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %2, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ule i32 %14, 40
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = getelementptr i8, i8* %18, i32 %14
  %20 = bitcast i8* %19 to i32**
  %21 = add i32 %14, 8
  store i32 %21, i32* %13, align 16
  br label %27

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32**
  %26 = getelementptr i8, i8* %24, i32 8
  store i8* %26, i8** %23, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32** [ %20, %16 ], [ %25, %22 ]
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  call void @abort() #4
  unreachable

38:                                               ; preds = %27
  br label %7, !llvm.loop !8

39:                                               ; preds = %7
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %41 = bitcast %struct.__va_list_tag* %40 to i8*
  call void @llvm.va_end(i8* %41)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @f(i32 noundef 1)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
