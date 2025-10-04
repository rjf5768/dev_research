; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ptoa.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ptoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @ptoa(%struct.precisionType* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.precisionType*, align 8
  %10 = alloca %struct.precisionType*, align 8
  %11 = alloca %struct.precisionType*, align 8
  %12 = alloca i32, align 4
  store %struct.precisionType* %0, %struct.precisionType** %3, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %14 = icmp ne %struct.precisionType* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %17 = bitcast %struct.precisionType* %16 to i16*
  %18 = load i16, i16* %17, align 2
  %19 = add i16 %18, 1
  store i16 %19, i16* %17, align 2
  %20 = zext i16 %18 to i32
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %15, %1
  %23 = phi i1 [ false, %1 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  store %struct.precisionType* null, %struct.precisionType** %9, align 8
  store %struct.precisionType* null, %struct.precisionType** %10, align 8
  store %struct.precisionType* null, %struct.precisionType** %11, align 8
  %26 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %27 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %26, i32 0, i32 2
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %30, 4090445
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = udiv i32 %33, 109
  %35 = mul i32 %34, 525
  store i32 %35, i32* %8, align 4
  br label %40

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = mul i32 %37, 525
  %39 = udiv i32 %38, 109
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 11
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @malloc(i64 noundef %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %2, align 8
  br label %205

50:                                               ; preds = %40
  %51 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %52 = call %struct.precisionType* @pabs(%struct.precisionType* noundef %51)
  %53 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %10, %struct.precisionType* noundef %52)
  %54 = call %struct.precisionType* @utop(i32 noundef 1000000000)
  %55 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %11, %struct.precisionType* noundef %54)
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %61, i8** %5, align 8
  store i8 0, i8* %61, align 1
  %62 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %63 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %62, i32 0, i32 3
  %64 = load i8, i8* %63, align 2
  %65 = zext i8 %64 to i32
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %97, %50
  %67 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %68 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %69 = call %struct.precisionType* @pdivmod(%struct.precisionType* noundef %67, %struct.precisionType* noundef %68, %struct.precisionType** noundef %10, %struct.precisionType** noundef %9)
  %70 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  %71 = call i32 @ptou(%struct.precisionType* noundef %70)
  store i32 %71, i32* %4, align 4
  store i32 9, i32* %12, align 4
  br label %72

72:                                               ; preds = %92, %66
  %73 = load i32, i32* %4, align 4
  %74 = urem i32 %73, 10
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = urem i32 %77, 10
  %79 = add i32 %78, 48
  br label %85

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  %82 = urem i32 %81, 10
  %83 = add i32 %82, 97
  %84 = sub i32 %83, 10
  br label %85

85:                                               ; preds = %80, %76
  %86 = phi i32 [ %79, %76 ], [ %84, %80 ]
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %5, align 8
  store i8 %87, i8* %89, align 1
  %90 = load i32, i32* %4, align 4
  %91 = udiv i32 %90, 10
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %12, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %72, label %96, !llvm.loop !4

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %99 = call i32 @pcmpz(%struct.precisionType* noundef %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %66, label %101, !llvm.loop !6

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %107, %101
  %103 = load i8*, i8** %5, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 48
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  br label %102, !llvm.loop !7

110:                                              ; preds = %102
  %111 = load i8*, i8** %5, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %117, i8** %5, align 8
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 -1
  store i8* %123, i8** %5, align 8
  store i8 45, i8* %123, align 1
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = icmp ugt i8* %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load i8*, i8** %6, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = zext i32 %131 to i64
  %133 = load i8*, i8** %5, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sub nsw i64 %132, %137
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %129, i8* align 1 %130, i64 %138, i1 false)
  br label %139

139:                                              ; preds = %128, %124
  %140 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %141 = icmp ne %struct.precisionType* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %144 = bitcast %struct.precisionType* %143 to i16*
  %145 = load i16, i16* %144, align 2
  %146 = add i16 %145, -1
  store i16 %146, i16* %144, align 2
  %147 = zext i16 %146 to i32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %151 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %150)
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %149, %142, %139
  %154 = phi i1 [ false, %142 ], [ false, %139 ], [ %152, %149 ]
  %155 = zext i1 %154 to i32
  %156 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %157 = icmp ne %struct.precisionType* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %160 = bitcast %struct.precisionType* %159 to i16*
  %161 = load i16, i16* %160, align 2
  %162 = add i16 %161, -1
  store i16 %162, i16* %160, align 2
  %163 = zext i16 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %167 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %166)
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %165, %158, %153
  %170 = phi i1 [ false, %158 ], [ false, %153 ], [ %168, %165 ]
  %171 = zext i1 %170 to i32
  %172 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  %173 = icmp ne %struct.precisionType* %172, null
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  %176 = bitcast %struct.precisionType* %175 to i16*
  %177 = load i16, i16* %176, align 2
  %178 = add i16 %177, -1
  store i16 %178, i16* %176, align 2
  %179 = zext i16 %178 to i32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  %183 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %182)
  %184 = icmp ne i32 %183, 0
  br label %185

185:                                              ; preds = %181, %174, %169
  %186 = phi i1 [ false, %174 ], [ false, %169 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  %188 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %189 = icmp ne %struct.precisionType* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %192 = bitcast %struct.precisionType* %191 to i16*
  %193 = load i16, i16* %192, align 2
  %194 = add i16 %193, -1
  store i16 %194, i16* %192, align 2
  %195 = zext i16 %194 to i32
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %199 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %198)
  %200 = icmp ne i32 %199, 0
  br label %201

201:                                              ; preds = %197, %190, %185
  %202 = phi i1 [ false, %190 ], [ false, %185 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = load i8*, i8** %6, align 8
  store i8* %204, i8** %2, align 8
  br label %205

205:                                              ; preds = %201, %48
  %206 = load i8*, i8** %2, align 8
  ret i8* %206
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @pabs(%struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @utop(i32 noundef) #1

declare dso_local %struct.precisionType* @pdivmod(%struct.precisionType* noundef, %struct.precisionType* noundef, %struct.precisionType** noundef, %struct.precisionType** noundef) #1

declare dso_local i32 @ptou(%struct.precisionType* noundef) #1

declare dso_local i32 @pcmpz(%struct.precisionType* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pfree(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
