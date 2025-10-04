; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/idct.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/idct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iclip = internal global [1024 x i16] zeroinitializer, align 16
@iclp = internal global i16* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fast_IDCT(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load i16*, i16** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = mul nsw i32 8, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i16, i16* %8, i64 %11
  call void @idctrow(i16* noundef %12)
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4, !llvm.loop !4

16:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i16*, i16** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  call void @idctcol(i16* noundef %24)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %17, !llvm.loop !6

28:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @idctrow(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  %12 = load i16*, i16** %2, align 8
  %13 = getelementptr inbounds i16, i16* %12, i64 4
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = shl i32 %15, 11
  store i32 %16, i32* %4, align 4
  %17 = load i16*, i16** %2, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 6
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = or i32 %16, %20
  %22 = load i16*, i16** %2, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 2
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = or i32 %21, %25
  %27 = load i16*, i16** %2, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 1
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = or i32 %26, %30
  %32 = load i16*, i16** %2, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 7
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = or i32 %31, %35
  %37 = load i16*, i16** %2, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 5
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = or i32 %36, %40
  %42 = load i16*, i16** %2, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 3
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = or i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %1
  %49 = load i16*, i16** %2, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 0
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = shl i32 %52, 3
  %54 = trunc i32 %53 to i16
  %55 = load i16*, i16** %2, align 8
  %56 = getelementptr inbounds i16, i16* %55, i64 7
  store i16 %54, i16* %56, align 2
  %57 = load i16*, i16** %2, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 6
  store i16 %54, i16* %58, align 2
  %59 = load i16*, i16** %2, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 5
  store i16 %54, i16* %60, align 2
  %61 = load i16*, i16** %2, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 4
  store i16 %54, i16* %62, align 2
  %63 = load i16*, i16** %2, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 3
  store i16 %54, i16* %64, align 2
  %65 = load i16*, i16** %2, align 8
  %66 = getelementptr inbounds i16, i16* %65, i64 2
  store i16 %54, i16* %66, align 2
  %67 = load i16*, i16** %2, align 8
  %68 = getelementptr inbounds i16, i16* %67, i64 1
  store i16 %54, i16* %68, align 2
  %69 = load i16*, i16** %2, align 8
  %70 = getelementptr inbounds i16, i16* %69, i64 0
  store i16 %54, i16* %70, align 2
  br label %212

71:                                               ; preds = %1
  %72 = load i16*, i16** %2, align 8
  %73 = getelementptr inbounds i16, i16* %72, i64 0
  %74 = load i16, i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = shl i32 %75, 11
  %77 = add nsw i32 %76, 128
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = mul nsw i32 565, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 2276, %83
  %85 = add nsw i32 %82, %84
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 3406, %87
  %89 = sub nsw i32 %86, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %90, %91
  %93 = mul nsw i32 2408, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 799, %95
  %97 = sub nsw i32 %94, %96
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 4017, %99
  %101 = sub nsw i32 %98, %100
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %3, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %108, %109
  %111 = mul nsw i32 1108, %110
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %5, align 4
  %114 = mul nsw i32 3784, %113
  %115 = sub nsw i32 %112, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %6, align 4
  %118 = mul nsw i32 1568, %117
  %119 = add nsw i32 %116, %118
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %120, %121
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %3, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %144, %145
  %147 = mul nsw i32 181, %146
  %148 = add nsw i32 %147, 128
  %149 = ashr i32 %148, 8
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = sub nsw i32 %150, %151
  %153 = mul nsw i32 181, %152
  %154 = add nsw i32 %153, 128
  %155 = ashr i32 %154, 8
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %156, %157
  %159 = ashr i32 %158, 8
  %160 = trunc i32 %159 to i16
  %161 = load i16*, i16** %2, align 8
  %162 = getelementptr inbounds i16, i16* %161, i64 0
  store i16 %160, i16* %162, align 2
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %163, %164
  %166 = ashr i32 %165, 8
  %167 = trunc i32 %166 to i16
  %168 = load i16*, i16** %2, align 8
  %169 = getelementptr inbounds i16, i16* %168, i64 1
  store i16 %167, i16* %169, align 2
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %170, %171
  %173 = ashr i32 %172, 8
  %174 = trunc i32 %173 to i16
  %175 = load i16*, i16** %2, align 8
  %176 = getelementptr inbounds i16, i16* %175, i64 2
  store i16 %174, i16* %176, align 2
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %177, %178
  %180 = ashr i32 %179, 8
  %181 = trunc i32 %180 to i16
  %182 = load i16*, i16** %2, align 8
  %183 = getelementptr inbounds i16, i16* %182, i64 3
  store i16 %181, i16* %183, align 2
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %9, align 4
  %186 = sub nsw i32 %184, %185
  %187 = ashr i32 %186, 8
  %188 = trunc i32 %187 to i16
  %189 = load i16*, i16** %2, align 8
  %190 = getelementptr inbounds i16, i16* %189, i64 4
  store i16 %188, i16* %190, align 2
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* %7, align 4
  %193 = sub nsw i32 %191, %192
  %194 = ashr i32 %193, 8
  %195 = trunc i32 %194 to i16
  %196 = load i16*, i16** %2, align 8
  %197 = getelementptr inbounds i16, i16* %196, i64 5
  store i16 %195, i16* %197, align 2
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %5, align 4
  %200 = sub nsw i32 %198, %199
  %201 = ashr i32 %200, 8
  %202 = trunc i32 %201 to i16
  %203 = load i16*, i16** %2, align 8
  %204 = getelementptr inbounds i16, i16* %203, i64 6
  store i16 %202, i16* %204, align 2
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %4, align 4
  %207 = sub nsw i32 %205, %206
  %208 = ashr i32 %207, 8
  %209 = trunc i32 %208 to i16
  %210 = load i16*, i16** %2, align 8
  %211 = getelementptr inbounds i16, i16* %210, i64 7
  store i16 %209, i16* %211, align 2
  br label %212

212:                                              ; preds = %71, %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @idctcol(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  %12 = load i16*, i16** %2, align 8
  %13 = getelementptr inbounds i16, i16* %12, i64 32
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = shl i32 %15, 8
  store i32 %16, i32* %4, align 4
  %17 = load i16*, i16** %2, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 48
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = or i32 %16, %20
  %22 = load i16*, i16** %2, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 16
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = or i32 %21, %25
  %27 = load i16*, i16** %2, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 8
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = or i32 %26, %30
  %32 = load i16*, i16** %2, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 56
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = or i32 %31, %35
  %37 = load i16*, i16** %2, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 40
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = or i32 %36, %40
  %42 = load i16*, i16** %2, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 24
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = or i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %75, label %48

48:                                               ; preds = %1
  %49 = load i16*, i16** @iclp, align 8
  %50 = load i16*, i16** %2, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 0
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = add nsw i32 %53, 32
  %55 = ashr i32 %54, 6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %49, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = load i16*, i16** %2, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 56
  store i16 %58, i16* %60, align 2
  %61 = load i16*, i16** %2, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 48
  store i16 %58, i16* %62, align 2
  %63 = load i16*, i16** %2, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 40
  store i16 %58, i16* %64, align 2
  %65 = load i16*, i16** %2, align 8
  %66 = getelementptr inbounds i16, i16* %65, i64 32
  store i16 %58, i16* %66, align 2
  %67 = load i16*, i16** %2, align 8
  %68 = getelementptr inbounds i16, i16* %67, i64 24
  store i16 %58, i16* %68, align 2
  %69 = load i16*, i16** %2, align 8
  %70 = getelementptr inbounds i16, i16* %69, i64 16
  store i16 %58, i16* %70, align 2
  %71 = load i16*, i16** %2, align 8
  %72 = getelementptr inbounds i16, i16* %71, i64 8
  store i16 %58, i16* %72, align 2
  %73 = load i16*, i16** %2, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 0
  store i16 %58, i16* %74, align 2
  br label %249

75:                                               ; preds = %1
  %76 = load i16*, i16** %2, align 8
  %77 = getelementptr inbounds i16, i16* %76, i64 0
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  %80 = shl i32 %79, 8
  %81 = add nsw i32 %80, 8192
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %82, %83
  %85 = mul nsw i32 565, %84
  %86 = add nsw i32 %85, 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 2276, %88
  %90 = add nsw i32 %87, %89
  %91 = ashr i32 %90, 3
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 3406, %93
  %95 = sub nsw i32 %92, %94
  %96 = ashr i32 %95, 3
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %97, %98
  %100 = mul nsw i32 2408, %99
  %101 = add nsw i32 %100, 4
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 799, %103
  %105 = sub nsw i32 %102, %104
  %106 = ashr i32 %105, 3
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 4017, %108
  %110 = sub nsw i32 %107, %109
  %111 = ashr i32 %110, 3
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %3, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %118, %119
  %121 = mul nsw i32 1108, %120
  %122 = add nsw i32 %121, 4
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %5, align 4
  %125 = mul nsw i32 3784, %124
  %126 = sub nsw i32 %123, %125
  %127 = ashr i32 %126, 3
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %6, align 4
  %130 = mul nsw i32 1568, %129
  %131 = add nsw i32 %128, %130
  %132 = ashr i32 %131, 3
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %7, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %11, align 4
  %150 = sub nsw i32 %149, %148
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %151, %152
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %3, align 4
  %156 = sub nsw i32 %155, %154
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  %160 = mul nsw i32 181, %159
  %161 = add nsw i32 %160, 128
  %162 = ashr i32 %161, 8
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %163, %164
  %166 = mul nsw i32 181, %165
  %167 = add nsw i32 %166, 128
  %168 = ashr i32 %167, 8
  store i32 %168, i32* %7, align 4
  %169 = load i16*, i16** @iclp, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %170, %171
  %173 = ashr i32 %172, 14
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i16, i16* %169, i64 %174
  %176 = load i16, i16* %175, align 2
  %177 = load i16*, i16** %2, align 8
  %178 = getelementptr inbounds i16, i16* %177, i64 0
  store i16 %176, i16* %178, align 2
  %179 = load i16*, i16** @iclp, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %180, %181
  %183 = ashr i32 %182, 14
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i16, i16* %179, i64 %184
  %186 = load i16, i16* %185, align 2
  %187 = load i16*, i16** %2, align 8
  %188 = getelementptr inbounds i16, i16* %187, i64 8
  store i16 %186, i16* %188, align 2
  %189 = load i16*, i16** @iclp, align 8
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %190, %191
  %193 = ashr i32 %192, 14
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i16, i16* %189, i64 %194
  %196 = load i16, i16* %195, align 2
  %197 = load i16*, i16** %2, align 8
  %198 = getelementptr inbounds i16, i16* %197, i64 16
  store i16 %196, i16* %198, align 2
  %199 = load i16*, i16** @iclp, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %200, %201
  %203 = ashr i32 %202, 14
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i16, i16* %199, i64 %204
  %206 = load i16, i16* %205, align 2
  %207 = load i16*, i16** %2, align 8
  %208 = getelementptr inbounds i16, i16* %207, i64 24
  store i16 %206, i16* %208, align 2
  %209 = load i16*, i16** @iclp, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %9, align 4
  %212 = sub nsw i32 %210, %211
  %213 = ashr i32 %212, 14
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i16, i16* %209, i64 %214
  %216 = load i16, i16* %215, align 2
  %217 = load i16*, i16** %2, align 8
  %218 = getelementptr inbounds i16, i16* %217, i64 32
  store i16 %216, i16* %218, align 2
  %219 = load i16*, i16** @iclp, align 8
  %220 = load i32, i32* %3, align 4
  %221 = load i32, i32* %7, align 4
  %222 = sub nsw i32 %220, %221
  %223 = ashr i32 %222, 14
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i16, i16* %219, i64 %224
  %226 = load i16, i16* %225, align 2
  %227 = load i16*, i16** %2, align 8
  %228 = getelementptr inbounds i16, i16* %227, i64 40
  store i16 %226, i16* %228, align 2
  %229 = load i16*, i16** @iclp, align 8
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %5, align 4
  %232 = sub nsw i32 %230, %231
  %233 = ashr i32 %232, 14
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i16, i16* %229, i64 %234
  %236 = load i16, i16* %235, align 2
  %237 = load i16*, i16** %2, align 8
  %238 = getelementptr inbounds i16, i16* %237, i64 48
  store i16 %236, i16* %238, align 2
  %239 = load i16*, i16** @iclp, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %4, align 4
  %242 = sub nsw i32 %240, %241
  %243 = ashr i32 %242, 14
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i16, i16* %239, i64 %244
  %246 = load i16, i16* %245, align 2
  %247 = load i16*, i16** %2, align 8
  %248 = getelementptr inbounds i16, i16* %247, i64 56
  store i16 %246, i16* %248, align 2
  br label %249

249:                                              ; preds = %75, %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize_Fast_IDCT() #0 {
  %1 = alloca i32, align 4
  store i16* getelementptr inbounds ([1024 x i16], [1024 x i16]* @iclip, i64 0, i64 512), i16** @iclp, align 8
  store i32 -512, i32* %1, align 4
  br label %2

2:                                                ; preds = %24, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 512
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, -256
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %17

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %15

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 255, %12 ], [ %14, %13 ]
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ -256, %8 ], [ %16, %15 ]
  %19 = trunc i32 %18 to i16
  %20 = load i16*, i16** @iclp, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  store i16 %19, i16* %23, align 2
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %2, !llvm.loop !7

27:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
