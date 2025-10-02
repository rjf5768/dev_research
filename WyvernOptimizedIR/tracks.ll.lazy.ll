; ModuleID = './tracks.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/tracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Track2D = type { float, i64, %struct.Segment*, i32 }
%struct.Segment = type { float, i64 }
%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, i8*, i64 }
%struct.Track = type { float, float, i64, i64, float*, float* }
%struct._G_fpos_t = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Reading track data from:\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Importing ray tracing data from file...\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Number of 2D tracks = %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Number of 3D tracks = %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Number of segments = %ld\0A\00", align 1
@str = private unnamed_addr constant [40 x i8] c"Importing ray tracing data from file...\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Track2D* @generate_2D_tracks(%struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %0, i64* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %4 = load i64, i64* %3, align 8
  %5 = shl i64 %4, 5
  %6 = call noalias i8* @malloc(i64 noundef %5) #5
  %7 = bitcast i8* %6 to %struct.Track2D*
  %8 = shl i64 %4, 5
  %9 = load i64, i64* %1, align 8
  %10 = add i64 %9, %8
  store i64 %10, i64* %1, align 8
  br label %11

11:                                               ; preds = %20, %2
  %.0 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, %12
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = call float @urand() #5
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %7, i64 %18, i32 0
  store float %17, float* %19, align 8
  br label %20

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

22:                                               ; preds = %11
  call void @generate_2D_segments(%struct.Input* noundef nonnull byval(%struct.Input) align 8 %0, %struct.Track2D* noundef %7, i64* noundef nonnull %1)
  ret %struct.Track2D* %7
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local float @urand() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_2D_segments(%struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %0, %struct.Track2D* nocapture noundef %1, i64* nocapture noundef %2) #0 {
  br label %4

4:                                                ; preds = %11, %3
  %.03 = phi i64 [ 0, %3 ], [ %13, %11 ]
  %.02 = phi i64 [ 0, %3 ], [ %12, %11 ]
  %5 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %.03, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = call i64 @segments_per_2D_track_distribution(%struct.Input* noundef nonnull byval(%struct.Input) align 8 %0)
  %10 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %1, i64 %.03, i32 1
  store i64 %9, i64* %10, align 8
  br label %11

11:                                               ; preds = %8
  %12 = add nsw i64 %.02, %9
  %13 = add nuw nsw i64 %.03, 1
  br label %4, !llvm.loop !6

14:                                               ; preds = %4
  %15 = shl i64 %.02, 4
  %16 = call noalias i8* @malloc(i64 noundef %15) #5
  %17 = bitcast i8* %16 to %struct.Segment*
  %18 = shl i64 %.02, 4
  %19 = load i64, i64* %2, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %28, %14
  %.05 = phi i64 [ 0, %14 ], [ %31, %28 ]
  %.04 = phi i64 [ 0, %14 ], [ %32, %28 ]
  %22 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %.04, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Segment, %struct.Segment* %17, i64 %.05
  %27 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %1, i64 %.04, i32 2
  store %struct.Segment* %26, %struct.Segment** %27, align 8
  br label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %1, i64 %.04, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %.05, %30
  %32 = add nuw nsw i64 %.04, 1
  br label %21, !llvm.loop !7

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %58, %33
  %.01 = phi i64 [ 0, %33 ], [ %59, %58 ]
  %35 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %.01, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %55, %38
  %.0 = phi i64 [ 0, %38 ], [ %56, %55 ]
  %40 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %1, i64 %.01, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %.0, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = call float @urand() #5
  %45 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 13
  %46 = load float, float* %45, align 8
  %47 = fmul float %44, %46
  %48 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %1, i64 %.01, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sitofp i64 %49 to float
  %51 = fdiv float %47, %50
  %52 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %1, i64 %.01, i32 2
  %53 = load %struct.Segment*, %struct.Segment** %52, align 8
  %54 = getelementptr inbounds %struct.Segment, %struct.Segment* %53, i64 %.0, i32 0
  store float %51, float* %54, align 8
  br label %55

55:                                               ; preds = %43
  %56 = add nuw nsw i64 %.0, 1
  br label %39, !llvm.loop !8

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57
  %59 = add nuw nsw i64 %.01, 1
  br label %34, !llvm.loop !9

60:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @segments_per_2D_track_distribution(%struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 12
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to float
  %5 = sitofp i64 %3 to double
  %6 = call double @sqrt(double noundef %5) #5
  %7 = fptrunc double %6 to float
  %8 = call float @nrand(float noundef %4, float noundef %7) #5
  %9 = fptosi float %8 to i64
  ret i64 %9
}

declare dso_local float @nrand(float noundef, float noundef) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_2D_tracks(%struct.Track2D* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %0, i64 0, i32 2
  %3 = bitcast %struct.Segment** %2 to i8**
  %4 = load i8*, i8** %3, align 8
  call void @free(i8* noundef %4) #5
  %5 = bitcast %struct.Track2D* %0 to i8*
  call void @free(i8* noundef %5) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Track*** @generate_tracks(%struct.Input* noundef readonly byval(%struct.Input) align 8 %0, %struct.Track2D* nocapture noundef readnone %1, i64* nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %5 = load i64, i64* %4, align 8
  %6 = shl i64 %5, 3
  %7 = call noalias i8* @malloc(i64 noundef %6) #5
  %8 = bitcast i8* %7 to %struct.Track***
  %9 = shl i64 %5, 3
  %10 = load i64, i64* %2, align 8
  %11 = add i64 %10, %9
  store i64 %11, i64* %2, align 8
  %12 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %13, %16
  %18 = shl i64 %17, 3
  %19 = call noalias i8* @malloc(i64 noundef %18) #5
  %20 = bitcast i8* %19 to %struct.Track**
  %21 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %22, %25
  %27 = shl i64 %26, 3
  %28 = load i64, i64* %2, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %2, align 8
  %30 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 20
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %31, 40
  %33 = call noalias i8* @malloc(i64 noundef %32) #5
  %34 = bitcast i8* %33 to %struct.Track*
  %35 = mul i64 %31, 40
  %36 = load i64, i64* %2, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %49, %3
  %.05 = phi i64 [ 0, %3 ], [ %50, %49 ]
  %39 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %.05, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %.05, %45
  %47 = getelementptr inbounds %struct.Track*, %struct.Track** %20, i64 %46
  %48 = getelementptr inbounds %struct.Track**, %struct.Track*** %8, i64 %.05
  store %struct.Track** %47, %struct.Track*** %48, align 8
  br label %49

49:                                               ; preds = %42
  %50 = add nuw nsw i64 %.05, 1
  br label %38, !llvm.loop !10

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %80, %51
  %.06 = phi i64 [ 0, %51 ], [ %81, %80 ]
  %53 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %.06, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %77, %56
  %.07 = phi i32 [ 0, %56 ], [ %78, %77 ]
  %58 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %.07, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %.06, %64
  %66 = zext i32 %.07 to i64
  %67 = add nsw i64 %65, %66
  %68 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 19
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %67, %70
  %72 = getelementptr inbounds %struct.Track, %struct.Track* %34, i64 %71
  %73 = getelementptr inbounds %struct.Track**, %struct.Track*** %8, i64 %.06
  %74 = load %struct.Track**, %struct.Track*** %73, align 8
  %75 = zext i32 %.07 to i64
  %76 = getelementptr inbounds %struct.Track*, %struct.Track** %74, i64 %75
  store %struct.Track* %72, %struct.Track** %76, align 8
  br label %77

77:                                               ; preds = %61
  %78 = add nuw nsw i32 %.07, 1
  br label %57, !llvm.loop !11

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79
  %81 = add nuw nsw i64 %.06, 1
  br label %52, !llvm.loop !12

82:                                               ; preds = %52
  %83 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 20
  %84 = load i64, i64* %83, align 8
  %85 = shl nsw i64 %84, 1
  %86 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %85, %88
  %90 = shl i64 %89, 2
  %91 = call noalias i8* @malloc(i64 noundef %90) #5
  %92 = bitcast i8* %91 to float*
  %93 = load i64, i64* %2, align 8
  %94 = add i64 %93, %90
  store i64 %94, i64* %2, align 8
  br label %95

95:                                               ; preds = %206, %82
  %.04 = phi i64 [ 0, %82 ], [ %.1, %206 ]
  %.03 = phi i64 [ 0, %82 ], [ %207, %206 ]
  %96 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %.03, %97
  br i1 %98, label %99, label %208

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %203, %99
  %.1 = phi i64 [ %.04, %99 ], [ %.2, %203 ]
  %.02 = phi i32 [ 0, %99 ], [ %204, %203 ]
  %101 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %.02, %102
  br i1 %103, label %104, label %205

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %200, %104
  %.2 = phi i64 [ %.1, %104 ], [ %171, %200 ]
  %.01 = phi i32 [ 0, %104 ], [ %201, %200 ]
  %106 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 19
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %.01, %107
  br i1 %108, label %109, label %202

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %111, 2
  %113 = icmp slt i32 %.02, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 6
  %116 = load float, float* %115, align 8
  %117 = sitofp i32 %.01 to float
  %118 = fmul float %116, %117
  %119 = getelementptr inbounds %struct.Track**, %struct.Track*** %8, i64 %.03
  %120 = load %struct.Track**, %struct.Track*** %119, align 8
  %121 = zext i32 %.02 to i64
  %122 = getelementptr inbounds %struct.Track*, %struct.Track** %120, i64 %121
  %123 = load %struct.Track*, %struct.Track** %122, align 8
  %124 = zext i32 %.01 to i64
  %125 = getelementptr inbounds %struct.Track, %struct.Track* %123, i64 %124, i32 1
  store float %118, float* %125, align 4
  br label %139

126:                                              ; preds = %109
  %127 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 6
  %128 = load float, float* %127, align 8
  %129 = add nuw nsw i32 %.01, 1
  %130 = sitofp i32 %129 to float
  %131 = fmul float %128, %130
  %132 = getelementptr inbounds %struct.Track**, %struct.Track*** %8, i64 %.03
  %133 = load %struct.Track**, %struct.Track*** %132, align 8
  %134 = zext i32 %.02 to i64
  %135 = getelementptr inbounds %struct.Track*, %struct.Track** %133, i64 %134
  %136 = load %struct.Track*, %struct.Track** %135, align 8
  %137 = zext i32 %.01 to i64
  %138 = getelementptr inbounds %struct.Track, %struct.Track* %136, i64 %137, i32 1
  store float %131, float* %138, align 4
  br label %139

139:                                              ; preds = %126, %114
  %140 = call float @urand() #5
  %141 = getelementptr inbounds %struct.Track**, %struct.Track*** %8, i64 %.03
  %142 = load %struct.Track**, %struct.Track*** %141, align 8
  %143 = zext i32 %.02 to i64
  %144 = getelementptr inbounds %struct.Track*, %struct.Track** %142, i64 %143
  %145 = load %struct.Track*, %struct.Track** %144, align 8
  %146 = zext i32 %.01 to i64
  %147 = getelementptr inbounds %struct.Track, %struct.Track* %145, i64 %146, i32 0
  store float %140, float* %147, align 8
  %148 = getelementptr inbounds float, float* %92, i64 %.2
  %149 = getelementptr inbounds %struct.Track**, %struct.Track*** %8, i64 %.03
  %150 = load %struct.Track**, %struct.Track*** %149, align 8
  %151 = zext i32 %.02 to i64
  %152 = getelementptr inbounds %struct.Track*, %struct.Track** %150, i64 %151
  %153 = load %struct.Track*, %struct.Track** %152, align 8
  %154 = zext i32 %.01 to i64
  %155 = getelementptr inbounds %struct.Track, %struct.Track* %153, i64 %154, i32 4
  store float* %148, float** %155, align 8
  %156 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %.2, %158
  %160 = getelementptr inbounds float, float* %92, i64 %159
  %161 = getelementptr inbounds %struct.Track**, %struct.Track*** %8, i64 %.03
  %162 = load %struct.Track**, %struct.Track*** %161, align 8
  %163 = zext i32 %.02 to i64
  %164 = getelementptr inbounds %struct.Track*, %struct.Track** %162, i64 %163
  %165 = load %struct.Track*, %struct.Track** %164, align 8
  %166 = zext i32 %.01 to i64
  %167 = getelementptr inbounds %struct.Track, %struct.Track* %165, i64 %166, i32 5
  store float* %160, float** %167, align 8
  %168 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = add i64 %159, %170
  br label %172

172:                                              ; preds = %197, %139
  %.0 = phi i32 [ 0, %139 ], [ %198, %197 ]
  %173 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %.0, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.Track**, %struct.Track*** %8, i64 %.03
  %178 = load %struct.Track**, %struct.Track*** %177, align 8
  %179 = zext i32 %.02 to i64
  %180 = getelementptr inbounds %struct.Track*, %struct.Track** %178, i64 %179
  %181 = load %struct.Track*, %struct.Track** %180, align 8
  %182 = zext i32 %.01 to i64
  %183 = getelementptr inbounds %struct.Track, %struct.Track* %181, i64 %182, i32 4
  %184 = load float*, float** %183, align 8
  %185 = zext i32 %.0 to i64
  %186 = getelementptr inbounds float, float* %184, i64 %185
  store float 0.000000e+00, float* %186, align 4
  %187 = getelementptr inbounds %struct.Track**, %struct.Track*** %8, i64 %.03
  %188 = load %struct.Track**, %struct.Track*** %187, align 8
  %189 = zext i32 %.02 to i64
  %190 = getelementptr inbounds %struct.Track*, %struct.Track** %188, i64 %189
  %191 = load %struct.Track*, %struct.Track** %190, align 8
  %192 = zext i32 %.01 to i64
  %193 = getelementptr inbounds %struct.Track, %struct.Track* %191, i64 %192, i32 5
  %194 = load float*, float** %193, align 8
  %195 = zext i32 %.0 to i64
  %196 = getelementptr inbounds float, float* %194, i64 %195
  store float 0.000000e+00, float* %196, align 4
  br label %197

197:                                              ; preds = %176
  %198 = add nuw nsw i32 %.0, 1
  br label %172, !llvm.loop !13

199:                                              ; preds = %172
  br label %200

200:                                              ; preds = %199
  %201 = add nuw nsw i32 %.01, 1
  br label %105, !llvm.loop !14

202:                                              ; preds = %105
  br label %203

203:                                              ; preds = %202
  %204 = add nuw nsw i32 %.02, 1
  br label %100, !llvm.loop !15

205:                                              ; preds = %100
  br label %206

206:                                              ; preds = %205
  %207 = add nuw nsw i64 %.03, 1
  br label %95, !llvm.loop !16

208:                                              ; preds = %95
  ret %struct.Track*** %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_tracks(%struct.Track*** noundef %0) #0 {
  %2 = bitcast %struct.Track*** %0 to i8*
  call void @free(i8* noundef %2) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias float* @generate_polar_angles(%struct.Input* nocapture noundef readonly byval(%struct.Input) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %3 = load i32, i32* %2, align 8
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = call noalias i8* @malloc(i64 noundef %5) #5
  %7 = bitcast i8* %6 to float*
  br label %8

8:                                                ; preds = %23, %1
  %.0 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %9 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %.0, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = sitofp i32 %.0 to double
  %14 = fadd double %13, 5.000000e-01
  %15 = fmul double %14, 0x400921FB54442D18
  %16 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %15, %18
  %20 = fptrunc double %19 to float
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds float, float* %7, i64 %21
  store float %20, float* %22, align 4
  br label %23

23:                                               ; preds = %12
  %24 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !17

25:                                               ; preds = %8
  ret float* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Track2D* @load_OpenMOC_tracks(i8* noundef %0, i1 noundef zeroext %1, %struct.Input* noundef %2, i64* nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct._G_fpos_t, align 8
  %20 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #5
  %22 = bitcast i32* %5 to i8*
  %23 = call i64 @fread(i8* noundef nonnull %22, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  %27 = sext i32 %24 to i64
  %28 = call i64 @fread(i8* noundef nonnull %26, i64 noundef %27, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @str, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 7
  %30 = bitcast i32* %29 to i8*
  %31 = call i64 @fread(i8* noundef nonnull %30, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %32 = bitcast double* %6 to i8*
  %33 = call i64 @fread(i8* noundef nonnull %32, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %34 = load double, double* %6, align 8
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 5
  store float %35, float* %36, align 4
  %37 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  %41 = zext i32 %38 to i64
  %42 = alloca i32, i64 %41, align 16
  %43 = zext i32 %38 to i64
  %44 = alloca i32, i64 %43, align 16
  %45 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca double, i64 %47, align 16
  %49 = bitcast i32* %40 to i8*
  %50 = sext i32 %46 to i64
  %51 = call i64 @fread(i8* noundef nonnull %49, i64 noundef 4, i64 noundef %50, %struct._IO_FILE* noundef %20) #5
  %52 = bitcast i32* %42 to i8*
  %53 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = call i64 @fread(i8* noundef nonnull %52, i64 noundef 4, i64 noundef %55, %struct._IO_FILE* noundef %20) #5
  %57 = bitcast i32* %44 to i8*
  %58 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = call i64 @fread(i8* noundef nonnull %57, i64 noundef 4, i64 noundef %60, %struct._IO_FILE* noundef %20) #5
  %62 = bitcast double* %48 to i8*
  %63 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = call i64 @fread(i8* noundef nonnull %62, i64 noundef 8, i64 noundef %65, %struct._IO_FILE* noundef %20) #5
  %67 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 18
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %80, %4
  %.011 = phi i32 [ 0, %4 ], [ %81, %80 ]
  %69 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %.011, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = zext i32 %.011 to i64
  %74 = getelementptr inbounds i32, i32* %40, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 18
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %76
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %72
  %81 = add nuw nsw i32 %.011, 1
  br label %68, !llvm.loop !18

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 18
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 %84, 5
  %86 = call noalias i8* @malloc(i64 noundef %85) #5
  %87 = bitcast i8* %86 to %struct.Track2D*
  %88 = shl i64 %84, 5
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %3, align 8
  %91 = call i32 @fgetpos(%struct._IO_FILE* noundef %20, %struct._G_fpos_t* noundef nonnull %19) #5
  br label %92

92:                                               ; preds = %123, %82
  %.09 = phi i64 [ 0, %82 ], [ %.110, %123 ]
  %.08 = phi i32 [ 0, %82 ], [ %124, %123 ]
  %93 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %.08, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %120, %96
  %.110 = phi i64 [ %.09, %96 ], [ %108, %120 ]
  %.07 = phi i32 [ 0, %96 ], [ %121, %120 ]
  %98 = zext i32 %.08 to i64
  %99 = getelementptr inbounds i32, i32* %40, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %.07, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = call i32 @fseek(%struct._IO_FILE* noundef %20, i64 noundef 44, i32 noundef 1) #5
  %104 = bitcast i32* %13 to i8*
  %105 = call i64 @fread(i8* noundef nonnull %104, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %.110, %107
  br label %109

109:                                              ; preds = %117, %102
  %.06 = phi i32 [ 0, %102 ], [ %118, %117 ]
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %.06, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = call i32 @fseek(%struct._IO_FILE* noundef %20, i64 noundef 16, i32 noundef 1) #5
  br i1 %1, label %114, label %116

114:                                              ; preds = %112
  %115 = call i32 @fseek(%struct._IO_FILE* noundef %20, i64 noundef 8, i32 noundef 1) #5
  br label %116

116:                                              ; preds = %114, %112
  br label %117

117:                                              ; preds = %116
  %118 = add nuw nsw i32 %.06, 1
  br label %109, !llvm.loop !19

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119
  %121 = add nuw nsw i32 %.07, 1
  br label %97, !llvm.loop !20

122:                                              ; preds = %97
  br label %123

123:                                              ; preds = %122
  %124 = add nuw nsw i32 %.08, 1
  br label %92, !llvm.loop !21

125:                                              ; preds = %92
  %126 = shl i64 %.09, 4
  %127 = call noalias i8* @malloc(i64 noundef %126) #5
  %128 = bitcast i8* %127 to %struct.Segment*
  %129 = shl i64 %.09, 4
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %3, align 8
  %132 = call i32 @fsetpos(%struct._IO_FILE* noundef %20, %struct._G_fpos_t* noundef nonnull %19) #5
  br label %133

133:                                              ; preds = %211, %125
  %.04 = phi i32 [ 0, %125 ], [ %.15, %211 ]
  %.03 = phi i32 [ 0, %125 ], [ %.1, %211 ]
  %.02 = phi i32 [ 0, %125 ], [ %212, %211 ]
  %134 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %.02, %135
  br i1 %136, label %137, label %213

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %207, %137
  %.15 = phi i32 [ %.04, %137 ], [ %208, %207 ]
  %.1 = phi i32 [ %.03, %137 ], [ %170, %207 ]
  %.01 = phi i32 [ 0, %137 ], [ %209, %207 ]
  %139 = zext i32 %.02 to i64
  %140 = getelementptr inbounds i32, i32* %40, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %.01, %141
  br i1 %142, label %143, label %210

143:                                              ; preds = %138
  %144 = bitcast double* %7 to i8*
  %145 = call i64 @fread(i8* noundef nonnull %144, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %146 = bitcast double* %8 to i8*
  %147 = call i64 @fread(i8* noundef nonnull %146, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %148 = bitcast double* %9 to i8*
  %149 = call i64 @fread(i8* noundef nonnull %148, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %150 = bitcast double* %10 to i8*
  %151 = call i64 @fread(i8* noundef nonnull %150, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %152 = bitcast double* %11 to i8*
  %153 = call i64 @fread(i8* noundef nonnull %152, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %154 = bitcast i32* %12 to i8*
  %155 = call i64 @fread(i8* noundef nonnull %154, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %156 = bitcast i32* %13 to i8*
  %157 = call i64 @fread(i8* noundef nonnull %156, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = sext i32 %.15 to i64
  %161 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %87, i64 %160, i32 1
  store i64 %159, i64* %161, align 8
  %162 = sext i32 %.1 to i64
  %163 = getelementptr inbounds %struct.Segment, %struct.Segment* %128, i64 %162
  %164 = sext i32 %.15 to i64
  %165 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %87, i64 %164, i32 2
  store %struct.Segment* %163, %struct.Segment** %165, align 8
  %166 = sext i32 %.15 to i64
  %167 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %87, i64 %166, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = add i32 %.1, %169
  %171 = call float @urand() #5
  %172 = sext i32 %.15 to i64
  %173 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %87, i64 %172, i32 0
  store float %171, float* %173, align 8
  br label %174

174:                                              ; preds = %204, %143
  %.0 = phi i32 [ 0, %143 ], [ %205, %204 ]
  %175 = load i32, i32* %13, align 4
  %176 = icmp slt i32 %.0, %175
  br i1 %176, label %177, label %206

177:                                              ; preds = %174
  %178 = bitcast double* %14 to i8*
  %179 = call i64 @fread(i8* noundef nonnull %178, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %180 = bitcast i32* %15 to i8*
  %181 = call i64 @fread(i8* noundef nonnull %180, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %182 = bitcast i32* %16 to i8*
  %183 = call i64 @fread(i8* noundef nonnull %182, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %184 = load double, double* %14, align 8
  %185 = fptrunc double %184 to float
  %186 = sext i32 %.15 to i64
  %187 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %87, i64 %186, i32 2
  %188 = load %struct.Segment*, %struct.Segment** %187, align 8
  %189 = zext i32 %.0 to i64
  %190 = getelementptr inbounds %struct.Segment, %struct.Segment* %188, i64 %189, i32 0
  store float %185, float* %190, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = sext i32 %.15 to i64
  %194 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %87, i64 %193, i32 2
  %195 = load %struct.Segment*, %struct.Segment** %194, align 8
  %196 = zext i32 %.0 to i64
  %197 = getelementptr inbounds %struct.Segment, %struct.Segment* %195, i64 %196, i32 1
  store i64 %192, i64* %197, align 8
  br i1 %1, label %198, label %203

198:                                              ; preds = %177
  %199 = bitcast i32* %17 to i8*
  %200 = call i64 @fread(i8* noundef nonnull %199, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  %201 = bitcast i32* %18 to i8*
  %202 = call i64 @fread(i8* noundef nonnull %201, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20) #5
  br label %203

203:                                              ; preds = %198, %177
  br label %204

204:                                              ; preds = %203
  %205 = add nuw nsw i32 %.0, 1
  br label %174, !llvm.loop !22

206:                                              ; preds = %174
  br label %207

207:                                              ; preds = %206
  %208 = add nsw i32 %.15, 1
  %209 = add nuw nsw i32 %.01, 1
  br label %138, !llvm.loop !23

210:                                              ; preds = %138
  br label %211

211:                                              ; preds = %210
  %212 = add nuw nsw i32 %.02, 1
  br label %133, !llvm.loop !24

213:                                              ; preds = %133
  %214 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 18
  %215 = load i64, i64* %214, align 8
  %216 = sdiv i64 %.09, %215
  %217 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 12
  store i64 %216, i64* %217, align 8
  %218 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 noundef %215) #5
  %219 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 18
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 8
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = mul nsw i64 %220, %223
  %225 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 19
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = mul nsw i64 %224, %227
  %229 = getelementptr inbounds %struct.Input, %struct.Input* %2, i64 0, i32 20
  store i64 %228, i64* %229, align 8
  %230 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 noundef %228) #5
  %231 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 noundef %.09) #5
  %232 = call i32 @fclose(%struct._IO_FILE* noundef %20) #5
  ret %struct.Track2D* %87
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

declare dso_local i32 @fgetpos(%struct._IO_FILE* noundef, %struct._G_fpos_t* noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i32 @fsetpos(%struct._IO_FILE* noundef, %struct._G_fpos_t* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
