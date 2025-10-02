; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Sort.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @HeapSort(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ule i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %206

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 -1
  store i32* %18, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = udiv i32 %19, 2
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %81, %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %64, %21
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %75

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ugt i32 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %39, %35
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp uge i32 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %75

64:                                               ; preds = %55
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %7, align 4
  br label %28

75:                                               ; preds = %63, %34
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %21, label %85, !llvm.loop !4

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %166, %85
  %87 = load i32, i32* %4, align 4
  %88 = icmp ugt i32 %87, 3
  br i1 %88, label %89, label %172

89:                                               ; preds = %86
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ugt i32 %97, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 3, i32 2
  store i32 %103, i32* %10, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = add i32 %108, -1
  store i32 %109, i32* %4, align 4
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %106, i32* %111, align 4
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %155, %89
  %120 = load i32, i32* %10, align 4
  %121 = shl i32 %120, 1
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ugt i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %166

126:                                              ; preds = %119
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %126
  %131 = load i32*, i32** %3, align 8
  %132 = load i32, i32* %11, align 4
  %133 = add i32 %132, 1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* %11, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ugt i32 %136, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %130
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %143, %130, %126
  %147 = load i32, i32* %9, align 4
  %148 = load i32*, i32** %3, align 8
  %149 = load i32, i32* %11, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp uge i32 %147, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %166

155:                                              ; preds = %146
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* %11, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* %10, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %10, align 4
  br label %119

166:                                              ; preds = %154, %125
  %167 = load i32, i32* %9, align 4
  %168 = load i32*, i32** %3, align 8
  %169 = load i32, i32* %10, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %167, i32* %171, align 4
  br label %86, !llvm.loop !6

172:                                              ; preds = %86
  %173 = load i32*, i32** %3, align 8
  %174 = load i32, i32* %4, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %12, align 4
  %178 = load i32*, i32** %3, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %3, align 8
  %182 = load i32, i32* %4, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %180, i32* %184, align 4
  %185 = load i32, i32* %4, align 4
  %186 = icmp ugt i32 %185, 2
  br i1 %186, label %187, label %202

187:                                              ; preds = %172
  %188 = load i32*, i32** %3, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = load i32*, i32** %3, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %3, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32*, i32** %3, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32 %199, i32* %201, align 4
  br label %206

202:                                              ; preds = %187, %172
  %203 = load i32, i32* %12, align 4
  %204 = load i32*, i32** %3, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %15, %202, %193
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
