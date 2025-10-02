; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pidiv.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pidiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"pidiv\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"divisor too big for single digit\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pidiv(%struct.precisionType* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %0, %struct.precisionType** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %13 = icmp ne %struct.precisionType* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %16 = bitcast %struct.precisionType* %15 to i16*
  %17 = load i16, i16* %16, align 2
  %18 = add i16 %17, 1
  store i16 %18, i16* %16, align 2
  %19 = zext i16 %17 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i1 [ false, %2 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 0, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %9, align 2
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %9, align 2
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i16, i16* %9, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp sge i32 %36, 65536
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %40 = call %struct.precisionType* @pnew(%struct.precisionType* noundef %39)
  store %struct.precisionType* %40, %struct.precisionType** %11, align 8
  br label %150

41:                                               ; preds = %34
  %42 = load i16, i16* %9, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %47 = call %struct.precisionType* @pnew(%struct.precisionType* noundef %46)
  store %struct.precisionType* %47, %struct.precisionType** %11, align 8
  br label %150

48:                                               ; preds = %41
  %49 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %50 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %49, i32 0, i32 2
  %51 = load i16, i16* %50, align 2
  store i16 %51, i16* %10, align 2
  %52 = load i16, i16* %10, align 2
  %53 = zext i16 %52 to i32
  %54 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %53)
  store %struct.precisionType* %54, %struct.precisionType** %11, align 8
  %55 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %56 = icmp eq %struct.precisionType* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %150

58:                                               ; preds = %48
  %59 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %60 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %59, i32 0, i32 4
  %61 = getelementptr inbounds [1 x i16], [1 x i16]* %60, i64 0, i64 0
  %62 = load i16, i16* %10, align 2
  %63 = zext i16 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %61, i64 %64
  store i16* %65, i16** %6, align 8
  %66 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %67 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %66, i32 0, i32 4
  %68 = getelementptr inbounds [1 x i16], [1 x i16]* %67, i64 0, i64 0
  %69 = load i16, i16* %10, align 2
  %70 = zext i16 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %68, i64 %71
  store i16* %72, i16** %5, align 8
  store i16 0, i16* %8, align 2
  br label %73

73:                                               ; preds = %95, %58
  %74 = load i16, i16* %8, align 2
  %75 = zext i16 %74 to i32
  %76 = shl i32 %75, 16
  store i32 %76, i32* %7, align 4
  %77 = load i16*, i16** %5, align 8
  %78 = getelementptr inbounds i16, i16* %77, i32 -1
  store i16* %78, i16** %5, align 8
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i16, i16* %9, align 2
  %85 = zext i16 %84 to i32
  %86 = udiv i32 %83, %85
  %87 = trunc i32 %86 to i16
  %88 = load i16*, i16** %6, align 8
  %89 = getelementptr inbounds i16, i16* %88, i32 -1
  store i16* %89, i16** %6, align 8
  store i16 %87, i16* %89, align 2
  %90 = load i32, i32* %7, align 4
  %91 = load i16, i16* %9, align 2
  %92 = zext i16 %91 to i32
  %93 = urem i32 %90, %92
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %8, align 2
  br label %95

95:                                               ; preds = %73
  %96 = load i16*, i16** %5, align 8
  %97 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %98 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %97, i32 0, i32 4
  %99 = getelementptr inbounds [1 x i16], [1 x i16]* %98, i64 0, i64 0
  %100 = icmp ugt i16* %96, %99
  br i1 %100, label %73, label %101, !llvm.loop !4

101:                                              ; preds = %95
  %102 = load i16, i16* %10, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %107 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %106, i32 0, i32 4
  %108 = load i16, i16* %10, align 2
  %109 = zext i16 %108 to i32
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1 x i16], [1 x i16]* %107, i64 0, i64 %111
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %105
  %117 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %118 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %117, i32 0, i32 2
  %119 = load i16, i16* %118, align 2
  %120 = add i16 %119, -1
  store i16 %120, i16* %118, align 2
  br label %121

121:                                              ; preds = %116, %105, %101
  %122 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %123 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %122, i32 0, i32 3
  %124 = load i8, i8* %123, align 2
  %125 = zext i8 %124 to i32
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = icmp ne i32 %125, %128
  %130 = zext i1 %129 to i32
  %131 = trunc i32 %130 to i8
  %132 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %133 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %132, i32 0, i32 3
  store i8 %131, i8* %133, align 2
  %134 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %135 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %134, i32 0, i32 2
  %136 = load i16, i16* %135, align 2
  %137 = zext i16 %136 to i32
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %149

139:                                              ; preds = %121
  %140 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %141 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %140, i32 0, i32 4
  %142 = getelementptr inbounds [1 x i16], [1 x i16]* %141, i64 0, i64 0
  %143 = load i16, i16* %142, align 2
  %144 = zext i16 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %148 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %147, i32 0, i32 3
  store i8 0, i8* %148, align 2
  br label %149

149:                                              ; preds = %146, %139, %121
  br label %150

150:                                              ; preds = %149, %57, %45, %38
  %151 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %152 = icmp ne %struct.precisionType* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %155 = bitcast %struct.precisionType* %154 to i16*
  %156 = load i16, i16* %155, align 2
  %157 = add i16 %156, -1
  store i16 %157, i16* %155, align 2
  %158 = zext i16 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  %162 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %161)
  %163 = icmp ne i32 %162, 0
  br label %164

164:                                              ; preds = %160, %153, %150
  %165 = phi i1 [ false, %153 ], [ false, %150 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = load %struct.precisionType*, %struct.precisionType** %11, align 8
  %168 = call %struct.precisionType* @presult(%struct.precisionType* noundef %167)
  ret %struct.precisionType* %168
}

declare dso_local %struct.precisionType* @pnew(%struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @errorp(i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local %struct.precisionType* @palloc(...) #1

declare dso_local i32 @pfree(...) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

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
