; ModuleID = './multi-ix.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/multi-ix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %0) #0 {
  %2 = alloca [500 x i32], align 16
  %3 = alloca [500 x i32], align 16
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
  br label %42

42:                                               ; preds = %325, %1
  %.0 = phi i32 [ 0, %1 ], [ %326, %325 ]
  %43 = icmp slt i32 %.0, %0
  br i1 %43, label %44, label %327

44:                                               ; preds = %42
  %45 = getelementptr inbounds [500 x i32], [500 x i32]* %2, i64 0, i64 0
  %46 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 0
  %47 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %48 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 0
  %49 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 0
  %50 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %51 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %53 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 0
  %54 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 0
  %55 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 0
  %56 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 0
  %57 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 0
  %58 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 0
  %59 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 0
  %60 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 0
  %61 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 0
  %62 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 0
  %63 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 0
  %64 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 0
  %65 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 0
  %66 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 0
  %67 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 0
  %68 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 0
  %69 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 0
  %70 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 0
  %71 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 0
  %72 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 0
  %73 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 0
  %74 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 0
  %75 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 0
  %76 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 0
  %77 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 0
  %78 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 0
  %79 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 0
  %80 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 0
  %81 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 0
  %82 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 0
  %83 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 0
  %84 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 0
  call void (i32, ...) @s(i32 noundef 40, i32* noundef nonnull %45, i32* noundef nonnull %46, i32* noundef nonnull %47, i32* noundef nonnull %48, i32* noundef nonnull %49, i32* noundef nonnull %50, i32* noundef nonnull %51, i32* noundef nonnull %52, i32* noundef nonnull %53, i32* noundef nonnull %54, i32* noundef nonnull %55, i32* noundef nonnull %56, i32* noundef nonnull %57, i32* noundef nonnull %58, i32* noundef nonnull %59, i32* noundef nonnull %60, i32* noundef nonnull %61, i32* noundef nonnull %62, i32* noundef nonnull %63, i32* noundef nonnull %64, i32* noundef nonnull %65, i32* noundef nonnull %66, i32* noundef nonnull %67, i32* noundef nonnull %68, i32* noundef nonnull %69, i32* noundef nonnull %70, i32* noundef nonnull %71, i32* noundef nonnull %72, i32* noundef nonnull %73, i32* noundef nonnull %74, i32* noundef nonnull %75, i32* noundef nonnull %76, i32* noundef nonnull %77, i32* noundef nonnull %78, i32* noundef nonnull %79, i32* noundef nonnull %80, i32* noundef nonnull %81, i32* noundef nonnull %82, i32* noundef nonnull %83, i32* noundef nonnull %84)
  %85 = getelementptr inbounds [500 x i32], [500 x i32]* %2, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 0
  %106 = load i32, i32* %105, align 16
  %107 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 0
  %110 = load i32, i32* %109, align 16
  %111 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 0
  %118 = load i32, i32* %117, align 16
  %119 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 0
  %122 = load i32, i32* %121, align 16
  %123 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 0
  %124 = load i32, i32* %123, align 16
  %125 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 0
  %126 = load i32, i32* %125, align 16
  %127 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 0
  %128 = load i32, i32* %127, align 16
  %129 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 0
  %134 = load i32, i32* %133, align 16
  %135 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 0
  %138 = load i32, i32* %137, align 16
  %139 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 0
  %144 = load i32, i32* %143, align 16
  %145 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 0
  %146 = load i32, i32* %145, align 16
  %147 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 0
  %150 = load i32, i32* %149, align 16
  %151 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 0
  %156 = load i32, i32* %155, align 16
  %157 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 0
  %158 = load i32, i32* %157, align 16
  %159 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 0
  %160 = load i32, i32* %159, align 16
  %161 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 0
  %162 = load i32, i32* %161, align 16
  %163 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 0
  %164 = load i32, i32* %163, align 16
  %165 = getelementptr inbounds [500 x i32], [500 x i32]* %2, i64 0, i64 0
  %166 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 0
  %167 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %168 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 0
  %169 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 0
  %170 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %171 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %172 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %173 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 0
  %174 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 0
  %175 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 0
  %176 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 0
  %177 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 0
  %178 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 0
  %179 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 0
  %180 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 0
  %181 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 0
  %182 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 0
  %183 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 0
  %184 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 0
  %185 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 0
  %186 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 0
  %187 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 0
  %188 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 0
  %189 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 0
  %190 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 0
  %191 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 0
  %192 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 0
  %193 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 0
  %194 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 0
  %195 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 0
  %196 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 0
  %197 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 0
  %198 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 0
  %199 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 0
  %200 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 0
  %201 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 0
  %202 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 0
  %203 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 0
  %204 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 0
  call void (i32, ...) @z(i32 noundef 40, i32* noundef nonnull %165, i32* noundef nonnull %166, i32* noundef nonnull %167, i32* noundef nonnull %168, i32* noundef nonnull %169, i32* noundef nonnull %170, i32* noundef nonnull %171, i32* noundef nonnull %172, i32* noundef nonnull %173, i32* noundef nonnull %174, i32* noundef nonnull %175, i32* noundef nonnull %176, i32* noundef nonnull %177, i32* noundef nonnull %178, i32* noundef nonnull %179, i32* noundef nonnull %180, i32* noundef nonnull %181, i32* noundef nonnull %182, i32* noundef nonnull %183, i32* noundef nonnull %184, i32* noundef nonnull %185, i32* noundef nonnull %186, i32* noundef nonnull %187, i32* noundef nonnull %188, i32* noundef nonnull %189, i32* noundef nonnull %190, i32* noundef nonnull %191, i32* noundef nonnull %192, i32* noundef nonnull %193, i32* noundef nonnull %194, i32* noundef nonnull %195, i32* noundef nonnull %196, i32* noundef nonnull %197, i32* noundef nonnull %198, i32* noundef nonnull %199, i32* noundef nonnull %200, i32* noundef nonnull %201, i32* noundef nonnull %202, i32* noundef nonnull %203, i32* noundef nonnull %204)
  %205 = sext i32 %86 to i64
  %206 = getelementptr inbounds [500 x i32], [500 x i32]* %2, i64 0, i64 %205
  store i32 %86, i32* %206, align 4
  %207 = sext i32 %88 to i64
  %208 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 %207
  store i32 %88, i32* %208, align 4
  %209 = sext i32 %90 to i64
  %210 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %209
  store i32 %90, i32* %210, align 4
  %211 = sext i32 %92 to i64
  %212 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 %211
  store i32 %92, i32* %212, align 4
  %213 = sext i32 %94 to i64
  %214 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 %213
  store i32 %94, i32* %214, align 4
  %215 = sext i32 %96 to i64
  %216 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 %215
  store i32 %96, i32* %216, align 4
  %217 = sext i32 %98 to i64
  %218 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %217
  store i32 %98, i32* %218, align 4
  %219 = sext i32 %100 to i64
  %220 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 %219
  store i32 %100, i32* %220, align 4
  %221 = sext i32 %102 to i64
  %222 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 %221
  store i32 %102, i32* %222, align 4
  %223 = sext i32 %104 to i64
  %224 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 %223
  store i32 %104, i32* %224, align 4
  %225 = sext i32 %106 to i64
  %226 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 %225
  store i32 %106, i32* %226, align 4
  %227 = sext i32 %108 to i64
  %228 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 %227
  store i32 %108, i32* %228, align 4
  %229 = sext i32 %110 to i64
  %230 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 %229
  store i32 %110, i32* %230, align 4
  %231 = sext i32 %112 to i64
  %232 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 %231
  store i32 %112, i32* %232, align 4
  %233 = sext i32 %114 to i64
  %234 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 %233
  store i32 %114, i32* %234, align 4
  %235 = sext i32 %116 to i64
  %236 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 %235
  store i32 %116, i32* %236, align 4
  %237 = sext i32 %118 to i64
  %238 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 %237
  store i32 %118, i32* %238, align 4
  %239 = sext i32 %120 to i64
  %240 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 %239
  store i32 %120, i32* %240, align 4
  %241 = sext i32 %122 to i64
  %242 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 %241
  store i32 %122, i32* %242, align 4
  %243 = sext i32 %124 to i64
  %244 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 %243
  store i32 %124, i32* %244, align 4
  %245 = sext i32 %126 to i64
  %246 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 %245
  store i32 %126, i32* %246, align 4
  %247 = sext i32 %128 to i64
  %248 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 %247
  store i32 %128, i32* %248, align 4
  %249 = sext i32 %130 to i64
  %250 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 %249
  store i32 %130, i32* %250, align 4
  %251 = sext i32 %132 to i64
  %252 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 %251
  store i32 %132, i32* %252, align 4
  %253 = sext i32 %134 to i64
  %254 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 %253
  store i32 %134, i32* %254, align 4
  %255 = sext i32 %136 to i64
  %256 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 %255
  store i32 %136, i32* %256, align 4
  %257 = sext i32 %138 to i64
  %258 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 %257
  store i32 %138, i32* %258, align 4
  %259 = sext i32 %140 to i64
  %260 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 %259
  store i32 %140, i32* %260, align 4
  %261 = sext i32 %142 to i64
  %262 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 %261
  store i32 %142, i32* %262, align 4
  %263 = sext i32 %144 to i64
  %264 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 %263
  store i32 %144, i32* %264, align 4
  %265 = sext i32 %146 to i64
  %266 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 %265
  store i32 %146, i32* %266, align 4
  %267 = sext i32 %148 to i64
  %268 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 %267
  store i32 %148, i32* %268, align 4
  %269 = sext i32 %150 to i64
  %270 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 %269
  store i32 %150, i32* %270, align 4
  %271 = sext i32 %152 to i64
  %272 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 %271
  store i32 %152, i32* %272, align 4
  %273 = sext i32 %154 to i64
  %274 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 %273
  store i32 %154, i32* %274, align 4
  %275 = sext i32 %156 to i64
  %276 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 %275
  store i32 %156, i32* %276, align 4
  %277 = sext i32 %158 to i64
  %278 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 %277
  store i32 %158, i32* %278, align 4
  %279 = sext i32 %160 to i64
  %280 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 %279
  store i32 %160, i32* %280, align 4
  %281 = sext i32 %162 to i64
  %282 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 %281
  store i32 %162, i32* %282, align 4
  %283 = sext i32 %164 to i64
  %284 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 %283
  store i32 %164, i32* %284, align 4
  %285 = getelementptr inbounds [500 x i32], [500 x i32]* %2, i64 0, i64 0
  %286 = getelementptr inbounds [500 x i32], [500 x i32]* %3, i64 0, i64 0
  %287 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 0
  %288 = getelementptr inbounds [500 x i32], [500 x i32]* %5, i64 0, i64 0
  %289 = getelementptr inbounds [500 x i32], [500 x i32]* %6, i64 0, i64 0
  %290 = getelementptr inbounds [500 x i32], [500 x i32]* %7, i64 0, i64 0
  %291 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %292 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %293 = getelementptr inbounds [500 x i32], [500 x i32]* %10, i64 0, i64 0
  %294 = getelementptr inbounds [500 x i32], [500 x i32]* %11, i64 0, i64 0
  %295 = getelementptr inbounds [500 x i32], [500 x i32]* %12, i64 0, i64 0
  %296 = getelementptr inbounds [500 x i32], [500 x i32]* %13, i64 0, i64 0
  %297 = getelementptr inbounds [500 x i32], [500 x i32]* %14, i64 0, i64 0
  %298 = getelementptr inbounds [500 x i32], [500 x i32]* %15, i64 0, i64 0
  %299 = getelementptr inbounds [500 x i32], [500 x i32]* %16, i64 0, i64 0
  %300 = getelementptr inbounds [500 x i32], [500 x i32]* %17, i64 0, i64 0
  %301 = getelementptr inbounds [500 x i32], [500 x i32]* %18, i64 0, i64 0
  %302 = getelementptr inbounds [500 x i32], [500 x i32]* %19, i64 0, i64 0
  %303 = getelementptr inbounds [500 x i32], [500 x i32]* %20, i64 0, i64 0
  %304 = getelementptr inbounds [500 x i32], [500 x i32]* %21, i64 0, i64 0
  %305 = getelementptr inbounds [500 x i32], [500 x i32]* %22, i64 0, i64 0
  %306 = getelementptr inbounds [500 x i32], [500 x i32]* %23, i64 0, i64 0
  %307 = getelementptr inbounds [500 x i32], [500 x i32]* %24, i64 0, i64 0
  %308 = getelementptr inbounds [500 x i32], [500 x i32]* %25, i64 0, i64 0
  %309 = getelementptr inbounds [500 x i32], [500 x i32]* %26, i64 0, i64 0
  %310 = getelementptr inbounds [500 x i32], [500 x i32]* %27, i64 0, i64 0
  %311 = getelementptr inbounds [500 x i32], [500 x i32]* %28, i64 0, i64 0
  %312 = getelementptr inbounds [500 x i32], [500 x i32]* %29, i64 0, i64 0
  %313 = getelementptr inbounds [500 x i32], [500 x i32]* %30, i64 0, i64 0
  %314 = getelementptr inbounds [500 x i32], [500 x i32]* %31, i64 0, i64 0
  %315 = getelementptr inbounds [500 x i32], [500 x i32]* %32, i64 0, i64 0
  %316 = getelementptr inbounds [500 x i32], [500 x i32]* %33, i64 0, i64 0
  %317 = getelementptr inbounds [500 x i32], [500 x i32]* %34, i64 0, i64 0
  %318 = getelementptr inbounds [500 x i32], [500 x i32]* %35, i64 0, i64 0
  %319 = getelementptr inbounds [500 x i32], [500 x i32]* %36, i64 0, i64 0
  %320 = getelementptr inbounds [500 x i32], [500 x i32]* %37, i64 0, i64 0
  %321 = getelementptr inbounds [500 x i32], [500 x i32]* %38, i64 0, i64 0
  %322 = getelementptr inbounds [500 x i32], [500 x i32]* %39, i64 0, i64 0
  %323 = getelementptr inbounds [500 x i32], [500 x i32]* %40, i64 0, i64 0
  %324 = getelementptr inbounds [500 x i32], [500 x i32]* %41, i64 0, i64 0
  call void (i32, ...) @c(i32 noundef 40, i32* noundef nonnull %285, i32* noundef nonnull %286, i32* noundef nonnull %287, i32* noundef nonnull %288, i32* noundef nonnull %289, i32* noundef nonnull %290, i32* noundef nonnull %291, i32* noundef nonnull %292, i32* noundef nonnull %293, i32* noundef nonnull %294, i32* noundef nonnull %295, i32* noundef nonnull %296, i32* noundef nonnull %297, i32* noundef nonnull %298, i32* noundef nonnull %299, i32* noundef nonnull %300, i32* noundef nonnull %301, i32* noundef nonnull %302, i32* noundef nonnull %303, i32* noundef nonnull %304, i32* noundef nonnull %305, i32* noundef nonnull %306, i32* noundef nonnull %307, i32* noundef nonnull %308, i32* noundef nonnull %309, i32* noundef nonnull %310, i32* noundef nonnull %311, i32* noundef nonnull %312, i32* noundef nonnull %313, i32* noundef nonnull %314, i32* noundef nonnull %315, i32* noundef nonnull %316, i32* noundef nonnull %317, i32* noundef nonnull %318, i32* noundef nonnull %319, i32* noundef nonnull %320, i32* noundef nonnull %321, i32* noundef nonnull %322, i32* noundef nonnull %323, i32* noundef nonnull %324)
  br label %325

325:                                              ; preds = %44
  %326 = add nuw nsw i32 %.0, 1
  br label %42, !llvm.loop !4

327:                                              ; preds = %42
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @s(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %20, %1
  %.0 = phi i32 [ %0, %1 ], [ %5, %20 ]
  %5 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %23, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 16
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %.in = phi i8* [ %14, %10 ], [ %18, %16 ]
  %21 = bitcast i8* %.in to i32**
  %22 = load i32*, i32** %21, align 8
  store i32 %5, i32* %22, align 4
  br label %4, !llvm.loop !6

23:                                               ; preds = %4
  %24 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %24)
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @z(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %20, %1
  %.0 = phi i32 [ %0, %1 ], [ %5, %20 ]
  %5 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %23, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 16
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %.in = phi i8* [ %14, %10 ], [ %18, %16 ]
  %21 = bitcast i8* %.in to i8**
  %22 = load i8*, i8** %21, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(2000) %22, i8 0, i64 2000, i1 false)
  br label %4, !llvm.loop !7

23:                                               ; preds = %4
  %24 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %24)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %27, %1
  %.0 = phi i32 [ %0, %1 ], [ %5, %27 ]
  %5 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %28, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 16
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %.in = phi i8* [ %14, %10 ], [ %18, %16 ]
  %21 = bitcast i8* %.in to i32**
  %22 = load i32*, i32** %21, align 8
  %23 = sext i32 %5 to i64
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %.not1 = icmp eq i32 %25, %5
  br i1 %.not1, label %27, label %26

26:                                               ; preds = %20
  call void @abort() #6
  unreachable

27:                                               ; preds = %20
  br label %4, !llvm.loop !8

28:                                               ; preds = %4
  %29 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %29)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @f(i32 noundef 1)
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { noreturn nounwind }

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
