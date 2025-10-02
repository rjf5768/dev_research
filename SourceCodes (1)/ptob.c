; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ptob.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ptob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ptob(%struct.precisionType* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.precisionType*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.precisionType*, align 8
  %18 = alloca %struct.precisionType*, align 8
  %19 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store %struct.precisionType* null, %struct.precisionType** %17, align 8
  store %struct.precisionType* null, %struct.precisionType** %18, align 8
  store %struct.precisionType* null, %struct.precisionType** %19, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp ugt i32 %20, 256
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %5
  store i32 -1, i32* %6, align 4
  br label %193

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %193

30:                                               ; preds = %26
  %31 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %32 = icmp ne %struct.precisionType* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %35 = bitcast %struct.precisionType* %34 to i16*
  %36 = load i16, i16* %35, align 2
  %37 = add i16 %36, 1
  store i16 %37, i16* %35, align 2
  %38 = zext i16 %36 to i32
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %33, %30
  %41 = phi i1 [ false, %30 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  %43 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %45

45:                                               ; preds = %51, %40
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul i32 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = mul i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %45, !llvm.loop !4

57:                                               ; preds = %45
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %15, align 4
  %59 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %60 = call %struct.precisionType* @pabs(%struct.precisionType* noundef %59)
  %61 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %18, %struct.precisionType* noundef %60)
  %62 = load i32, i32* %12, align 4
  %63 = call %struct.precisionType* @utop(i32 noundef %62)
  %64 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %19, %struct.precisionType* noundef %63)
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8* %68, i8** %14, align 8
  br label %69

69:                                               ; preds = %99, %57
  %70 = load %struct.precisionType*, %struct.precisionType** %18, align 8
  %71 = load %struct.precisionType*, %struct.precisionType** %19, align 8
  %72 = call %struct.precisionType* @pdivmod(%struct.precisionType* noundef %70, %struct.precisionType* noundef %71, %struct.precisionType** noundef %18, %struct.precisionType** noundef %17)
  %73 = load %struct.precisionType*, %struct.precisionType** %17, align 8
  %74 = call i32 @ptou(%struct.precisionType* noundef %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %94, %69
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = urem i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 -1
  store i8* %85, i8** %14, align 8
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = udiv i32 %86, %87
  store i32 %88, i32* %12, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %119

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add i32 %95, -1
  store i32 %96, i32* %13, align 4
  %97 = icmp ugt i32 %96, 0
  br i1 %97, label %76, label %98, !llvm.loop !6

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.precisionType*, %struct.precisionType** %18, align 8
  %101 = call i32 @pcmpz(%struct.precisionType* noundef %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %69, label %103, !llvm.loop !7

103:                                              ; preds = %99
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ugt i8* %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %113, %107
  %109 = load i8*, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %14, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 -1
  store i8* %112, i8** %14, align 8
  store i8 %110, i8* %112, align 1
  br label %113

113:                                              ; preds = %108
  %114 = load i8*, i8** %14, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = icmp ugt i8* %114, %115
  br i1 %116, label %108, label %117, !llvm.loop !8

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117, %103
  br label %119

119:                                              ; preds = %118, %92
  %120 = load %struct.precisionType*, %struct.precisionType** %18, align 8
  %121 = call i32 @pcmpz(%struct.precisionType* noundef %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123, %119
  store i32 1, i32* %16, align 4
  br label %127

127:                                              ; preds = %126, %123
  %128 = load %struct.precisionType*, %struct.precisionType** %19, align 8
  %129 = icmp ne %struct.precisionType* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load %struct.precisionType*, %struct.precisionType** %19, align 8
  %132 = bitcast %struct.precisionType* %131 to i16*
  %133 = load i16, i16* %132, align 2
  %134 = add i16 %133, -1
  store i16 %134, i16* %132, align 2
  %135 = zext i16 %134 to i32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load %struct.precisionType*, %struct.precisionType** %19, align 8
  %139 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %138)
  %140 = icmp ne i32 %139, 0
  br label %141

141:                                              ; preds = %137, %130, %127
  %142 = phi i1 [ false, %130 ], [ false, %127 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  %144 = load %struct.precisionType*, %struct.precisionType** %18, align 8
  %145 = icmp ne %struct.precisionType* %144, null
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load %struct.precisionType*, %struct.precisionType** %18, align 8
  %148 = bitcast %struct.precisionType* %147 to i16*
  %149 = load i16, i16* %148, align 2
  %150 = add i16 %149, -1
  store i16 %150, i16* %148, align 2
  %151 = zext i16 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load %struct.precisionType*, %struct.precisionType** %18, align 8
  %155 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %154)
  %156 = icmp ne i32 %155, 0
  br label %157

157:                                              ; preds = %153, %146, %141
  %158 = phi i1 [ false, %146 ], [ false, %141 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = load %struct.precisionType*, %struct.precisionType** %17, align 8
  %161 = icmp ne %struct.precisionType* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = load %struct.precisionType*, %struct.precisionType** %17, align 8
  %164 = bitcast %struct.precisionType* %163 to i16*
  %165 = load i16, i16* %164, align 2
  %166 = add i16 %165, -1
  store i16 %166, i16* %164, align 2
  %167 = zext i16 %166 to i32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.precisionType*, %struct.precisionType** %17, align 8
  %171 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %170)
  %172 = icmp ne i32 %171, 0
  br label %173

173:                                              ; preds = %169, %162, %157
  %174 = phi i1 [ false, %162 ], [ false, %157 ], [ %172, %169 ]
  %175 = zext i1 %174 to i32
  %176 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %177 = icmp ne %struct.precisionType* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %180 = bitcast %struct.precisionType* %179 to i16*
  %181 = load i16, i16* %180, align 2
  %182 = add i16 %181, -1
  store i16 %182, i16* %180, align 2
  %183 = zext i16 %182 to i32
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load %struct.precisionType*, %struct.precisionType** %7, align 8
  %187 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %186)
  %188 = icmp ne i32 %187, 0
  br label %189

189:                                              ; preds = %185, %178, %173
  %190 = phi i1 [ false, %178 ], [ false, %173 ], [ %188, %185 ]
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %189, %29, %25
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @pabs(%struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @utop(i32 noundef) #1

declare dso_local %struct.precisionType* @pdivmod(%struct.precisionType* noundef, %struct.precisionType* noundef, %struct.precisionType** noundef, %struct.precisionType** noundef) #1

declare dso_local i32 @ptou(%struct.precisionType* noundef) #1

declare dso_local i32 @pcmpz(%struct.precisionType* noundef) #1

declare dso_local i32 @pfree(...) #1

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
