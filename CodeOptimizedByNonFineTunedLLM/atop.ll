; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/atop.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/atop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pzero = external dso_local global %struct.precisionType*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @atop(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.precisionType* null, %struct.precisionType** %3, align 8
  store %struct.precisionType* null, %struct.precisionType** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %137

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %25, %12
  %14 = call i16** @__ctype_b_loc() #3
  %15 = load i16*, i16** %14, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %15, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 8192
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %2, align 8
  br label %13, !llvm.loop !4

28:                                               ; preds = %13
  %29 = load i8*, i8** %2, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %2, align 8
  br label %45

36:                                               ; preds = %28
  %37 = load i8*, i8** %2, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %2, align 8
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %44, %33
  %46 = call i16** @__ctype_b_loc() #3
  %47 = load i16*, i16** %46, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %47, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 2048
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %136

57:                                               ; preds = %45
  %58 = load %struct.precisionType*, %struct.precisionType** @pzero, align 8
  %59 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %3, %struct.precisionType* noundef %58)
  %60 = call %struct.precisionType* @utop(i32 noundef 1000000000)
  %61 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %4, %struct.precisionType* noundef %60)
  br label %62

62:                                               ; preds = %97, %57
  store i32 8, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 48
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %85, %62
  %66 = call i16** @__ctype_b_loc() #3
  %67 = load i16*, i16** %66, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %2, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %67, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 %75, 2048
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  br label %111

79:                                               ; preds = %65
  %80 = load i32, i32* %7, align 4
  %81 = mul i32 %80, 10
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 48
  %84 = add i32 %81, %83
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %9, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %65, label %89, !llvm.loop !6

89:                                               ; preds = %85
  %90 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %91 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %92 = call %struct.precisionType* @pmul(%struct.precisionType* noundef %90, %struct.precisionType* noundef %91)
  %93 = load i32, i32* %7, align 4
  %94 = call %struct.precisionType* @utop(i32 noundef %93)
  %95 = call %struct.precisionType* @padd(%struct.precisionType* noundef %92, %struct.precisionType* noundef %94)
  %96 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %3, %struct.precisionType* noundef %95)
  br label %97

97:                                               ; preds = %89
  %98 = call i16** @__ctype_b_loc() #3
  %99 = load i16*, i16** %98, align 8
  %100 = load i8*, i8** %2, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %2, align 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  store i32 %103, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i16, i16* %99, i64 %104
  %106 = load i16, i16* %105, align 2
  %107 = zext i16 %106 to i32
  %108 = and i32 %107, 2048
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %62, label %110, !llvm.loop !7

110:                                              ; preds = %97
  br label %128

111:                                              ; preds = %78
  store i32 10, i32* %8, align 4
  br label %112

112:                                              ; preds = %116, %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = icmp slt i32 %113, 8
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4
  %118 = mul i32 %117, 10
  store i32 %118, i32* %8, align 4
  br label %112, !llvm.loop !8

119:                                              ; preds = %112
  %120 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call %struct.precisionType* @utop(i32 noundef %121)
  %123 = call %struct.precisionType* @pmul(%struct.precisionType* noundef %120, %struct.precisionType* noundef %122)
  %124 = load i32, i32* %7, align 4
  %125 = call %struct.precisionType* @utop(i32 noundef %124)
  %126 = call %struct.precisionType* @padd(%struct.precisionType* noundef %123, %struct.precisionType* noundef %125)
  %127 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %3, %struct.precisionType* noundef %126)
  br label %128

128:                                              ; preds = %119, %110
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %133 = call %struct.precisionType* @pneg(%struct.precisionType* noundef %132)
  %134 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %3, %struct.precisionType* noundef %133)
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %45
  br label %137

137:                                              ; preds = %136, %1
  %138 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %139 = icmp ne %struct.precisionType* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %142 = bitcast %struct.precisionType* %141 to i16*
  %143 = load i16, i16* %142, align 2
  %144 = add i16 %143, -1
  store i16 %144, i16* %142, align 2
  %145 = zext i16 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %149 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %148)
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %147, %140, %137
  %152 = phi i1 [ false, %140 ], [ false, %137 ], [ %150, %147 ]
  %153 = zext i1 %152 to i32
  %154 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %155 = call %struct.precisionType* @presult(%struct.precisionType* noundef %154)
  ret %struct.precisionType* %155
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #2

declare dso_local %struct.precisionType* @utop(i32 noundef) #2

declare dso_local %struct.precisionType* @padd(%struct.precisionType* noundef, %struct.precisionType* noundef) #2

declare dso_local %struct.precisionType* @pmul(%struct.precisionType* noundef, %struct.precisionType* noundef) #2

declare dso_local %struct.precisionType* @pneg(%struct.precisionType* noundef) #2

declare dso_local i32 @pfree(...) #2

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

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
