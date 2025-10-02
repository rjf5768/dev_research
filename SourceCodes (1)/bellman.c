; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/bellman.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/bellman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bellbox = type { i32, i32 }
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numXnodes = external dso_local global i32, align 4
@xBellArray = external dso_local global %struct.bellbox*, align 8
@numYnodes = external dso_local global i32, align 4
@yBellArray = external dso_local global %struct.bellbox*, align 8
@xNodeArray = external dso_local global %struct.wcbox**, align 8
@yNodeArray = external dso_local global %struct.wcbox**, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [52 x i8] c"Longest Hori. Path in Circuit Graph has span: <%d>\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Longest Vert. Path in Circuit Graph has span: <%d>\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bellman() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wcbox*, align 8
  %6 = load i32, i32* @numXnodes, align 4
  %7 = add nsw i32 1, %6
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = call noalias i8* @malloc(i64 noundef %9) #3
  %11 = bitcast i8* %10 to %struct.bellbox*
  store %struct.bellbox* %11, %struct.bellbox** @xBellArray, align 8
  %12 = load i32, i32* @numYnodes, align 4
  %13 = add nsw i32 1, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = call noalias i8* @malloc(i64 noundef %15) #3
  %17 = bitcast i8* %16 to %struct.bellbox*
  store %struct.bellbox* %17, %struct.bellbox** @yBellArray, align 8
  %18 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %19 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %18, i64 1
  %20 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %22 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %21, i64 1
  %23 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  store i32 2, i32* %1, align 4
  br label %24

24:                                               ; preds = %34, %0
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @numXnodes, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %29, i64 %31
  %33 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %32, i32 0, i32 0
  store i32 10000000, i32* %33, align 4
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %24, !llvm.loop !4

37:                                               ; preds = %24
  store i32 1, i32* %1, align 4
  br label %38

38:                                               ; preds = %96, %37
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @numXnodes, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %38
  %43 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %43, i64 %45
  %47 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  %49 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %49, i64 %51
  %53 = load %struct.wcbox*, %struct.wcbox** %52, align 8
  store %struct.wcbox* %53, %struct.wcbox** %5, align 8
  br label %54

54:                                               ; preds = %91, %42
  %55 = load %struct.wcbox*, %struct.wcbox** %5, align 8
  %56 = icmp ne %struct.wcbox* %55, null
  br i1 %56, label %57, label %95

57:                                               ; preds = %54
  %58 = load %struct.wcbox*, %struct.wcbox** %5, align 8
  %59 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %2, align 4
  %61 = load %struct.wcbox*, %struct.wcbox** %5, align 8
  %62 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  %65 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %65, i64 %67
  %69 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %79, i64 %81
  %83 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* %1, align 4
  %85 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %85, i64 %87
  %89 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %75, %57
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.wcbox*, %struct.wcbox** %5, align 8
  %93 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %92, i32 0, i32 4
  %94 = load %struct.wcbox*, %struct.wcbox** %93, align 8
  store %struct.wcbox* %94, %struct.wcbox** %5, align 8
  br label %54, !llvm.loop !6

95:                                               ; preds = %54
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %38, !llvm.loop !7

99:                                               ; preds = %38
  %100 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %101 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %100, i64 1
  %102 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %104 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %103, i64 1
  %105 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  store i32 2, i32* %1, align 4
  br label %106

106:                                              ; preds = %116, %99
  %107 = load i32, i32* %1, align 4
  %108 = load i32, i32* @numYnodes, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %111, i64 %113
  %115 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %114, i32 0, i32 0
  store i32 10000000, i32* %115, align 4
  br label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %1, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %1, align 4
  br label %106, !llvm.loop !8

119:                                              ; preds = %106
  store i32 1, i32* %1, align 4
  br label %120

120:                                              ; preds = %178, %119
  %121 = load i32, i32* %1, align 4
  %122 = load i32, i32* @numYnodes, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %181

124:                                              ; preds = %120
  %125 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %125, i64 %127
  %129 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %3, align 4
  %131 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %131, i64 %133
  %135 = load %struct.wcbox*, %struct.wcbox** %134, align 8
  store %struct.wcbox* %135, %struct.wcbox** %5, align 8
  br label %136

136:                                              ; preds = %173, %124
  %137 = load %struct.wcbox*, %struct.wcbox** %5, align 8
  %138 = icmp ne %struct.wcbox* %137, null
  br i1 %138, label %139, label %177

139:                                              ; preds = %136
  %140 = load %struct.wcbox*, %struct.wcbox** %5, align 8
  %141 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %2, align 4
  %143 = load %struct.wcbox*, %struct.wcbox** %5, align 8
  %144 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  %147 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %147, i64 %149
  %151 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %153, %154
  %156 = icmp sgt i32 %152, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %139
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %158, %159
  %161 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %161, i64 %163
  %165 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %164, i32 0, i32 0
  store i32 %160, i32* %165, align 4
  %166 = load i32, i32* %1, align 4
  %167 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %167, i64 %169
  %171 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %170, i32 0, i32 1
  store i32 %166, i32* %171, align 4
  br label %172

172:                                              ; preds = %157, %139
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.wcbox*, %struct.wcbox** %5, align 8
  %175 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %174, i32 0, i32 4
  %176 = load %struct.wcbox*, %struct.wcbox** %175, align 8
  store %struct.wcbox* %176, %struct.wcbox** %5, align 8
  br label %136, !llvm.loop !9

177:                                              ; preds = %136
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %1, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %1, align 4
  br label %120, !llvm.loop !10

181:                                              ; preds = %120
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %183 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %184 = load i32, i32* @numXnodes, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %183, i64 %185
  %187 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 0, %188
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %182, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 noundef %189)
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %192 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %193 = load i32, i32* @numYnodes, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %192, i64 %194
  %196 = getelementptr inbounds %struct.bellbox, %struct.bellbox* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 0, %197
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %191, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 noundef %198)
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
