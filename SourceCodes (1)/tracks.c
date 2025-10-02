; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/tracks.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/tracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Track2D = type { float, i64, %struct.Segment*, i32 }
%struct.Segment = type { float, i64 }
%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, i8*, i64 }
%struct.Track = type { float, float, i64, i64, float*, float* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._G_fpos_t = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Reading track data from:\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Importing ray tracing data from file...\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Number of 2D tracks = %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Number of 3D tracks = %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Number of segments = %ld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Track2D* @generate_2D_tracks(%struct.Input* noundef byval(%struct.Input) align 8 %0, i64* noundef %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.Track2D*, align 8
  %5 = alloca i32, align 4
  store i64* %1, i64** %3, align 8
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %7 = load i64, i64* %6, align 8
  %8 = mul i64 %7, 32
  %9 = call noalias i8* @malloc(i64 noundef %8) #4
  %10 = bitcast i8* %9 to %struct.Track2D*
  store %struct.Track2D* %10, %struct.Track2D** %4, align 8
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %12 = load i64, i64* %11, align 8
  %13 = mul i64 %12, 32
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, %13
  store i64 %16, i64* %14, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = call float @urand()
  %25 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %25, i64 %27
  %29 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %28, i32 0, i32 0
  store float %24, float* %29, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17, !llvm.loop !4

33:                                               ; preds = %17
  %34 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %35 = load i64*, i64** %3, align 8
  call void @generate_2D_segments(%struct.Input* noundef byval(%struct.Input) align 8 %0, %struct.Track2D* noundef %34, i64* noundef %35)
  %36 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  ret %struct.Track2D* %36
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local float @urand() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_2D_segments(%struct.Input* noundef byval(%struct.Input) align 8 %0, %struct.Track2D* noundef %1, i64* noundef %2) #0 {
  %4 = alloca %struct.Track2D*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Segment*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.Track2D* %1, %struct.Track2D** %4, align 8
  store i64* %2, i64** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = call i64 @segments_per_2D_track_distribution(%struct.Input* noundef byval(%struct.Input) align 8 %0)
  %20 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %20, i64 %21
  %23 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %22, i32 0, i32 1
  store i64 %19, i64* %23, align 8
  %24 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %24, i64 %25
  %27 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %18
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %13, !llvm.loop !6

34:                                               ; preds = %13
  %35 = load i64, i64* %6, align 8
  %36 = mul i64 %35, 16
  %37 = call noalias i8* @malloc(i64 noundef %36) #4
  %38 = bitcast i8* %37 to %struct.Segment*
  store %struct.Segment* %38, %struct.Segment** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = mul i64 %39, 16
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %40
  store i64 %43, i64* %41, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %64, %34
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.Segment*, %struct.Segment** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.Segment, %struct.Segment* %50, i64 %51
  %53 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %53, i64 %54
  %56 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %55, i32 0, i32 2
  store %struct.Segment* %52, %struct.Segment** %56, align 8
  %57 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %57, i64 %58
  %60 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %49
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %44, !llvm.loop !7

67:                                               ; preds = %44
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %106, %67
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %68
  store i64 0, i64* %12, align 8
  br label %74

74:                                               ; preds = %102, %73
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %76, i64 %77
  %79 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %75, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %74
  %83 = call float @urand()
  %84 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 13
  %85 = load float, float* %84, align 8
  %86 = fmul float %83, %85
  %87 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %87, i64 %88
  %90 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to float
  %93 = fdiv float %86, %92
  %94 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %94, i64 %95
  %97 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %96, i32 0, i32 2
  %98 = load %struct.Segment*, %struct.Segment** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds %struct.Segment, %struct.Segment* %98, i64 %99
  %101 = getelementptr inbounds %struct.Segment, %struct.Segment* %100, i32 0, i32 0
  store float %93, float* %101, align 8
  br label %102

102:                                              ; preds = %82
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %74, !llvm.loop !8

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %11, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %11, align 8
  br label %68, !llvm.loop !9

109:                                              ; preds = %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @segments_per_2D_track_distribution(%struct.Input* noundef byval(%struct.Input) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to float
  %5 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %6 = load i64, i64* %5, align 8
  %7 = sitofp i64 %6 to double
  %8 = call double @sqrt(double noundef %7) #4
  %9 = fptrunc double %8 to float
  %10 = call float @nrand(float noundef %4, float noundef %9)
  %11 = fptosi float %10 to i64
  ret i64 %11
}

declare dso_local float @nrand(float noundef, float noundef) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_2D_tracks(%struct.Track2D* noundef %0) #0 {
  %2 = alloca %struct.Track2D*, align 8
  store %struct.Track2D* %0, %struct.Track2D** %2, align 8
  %3 = load %struct.Track2D*, %struct.Track2D** %2, align 8
  %4 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %3, i64 0
  %5 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %4, i32 0, i32 2
  %6 = load %struct.Segment*, %struct.Segment** %5, align 8
  %7 = bitcast %struct.Segment* %6 to i8*
  call void @free(i8* noundef %7) #4
  %8 = load %struct.Track2D*, %struct.Track2D** %2, align 8
  %9 = bitcast %struct.Track2D* %8 to i8*
  call void @free(i8* noundef %9) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Track*** @generate_tracks(%struct.Input* noundef byval(%struct.Input) align 8 %0, %struct.Track2D* noundef %1, i64* noundef %2) #0 {
  %4 = alloca %struct.Track2D*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.Track***, align 8
  %7 = alloca %struct.Track**, align 8
  %8 = alloca %struct.Track*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca float*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.Track2D* %1, %struct.Track2D** %4, align 8
  store i64* %2, i64** %5, align 8
  %20 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %21 = load i64, i64* %20, align 8
  %22 = mul i64 %21, 8
  %23 = call noalias i8* @malloc(i64 noundef %22) #4
  %24 = bitcast i8* %23 to %struct.Track***
  store %struct.Track*** %24, %struct.Track**** %6, align 8
  %25 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %26, 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %27
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %32, %35
  %37 = mul i64 %36, 8
  %38 = call noalias i8* @malloc(i64 noundef %37) #4
  %39 = bitcast i8* %38 to %struct.Track**
  store %struct.Track** %39, %struct.Track*** %7, align 8
  %40 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %41, %44
  %46 = mul i64 %45, 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %46
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %51, 40
  %53 = call noalias i8* @malloc(i64 noundef %52) #4
  %54 = bitcast i8* %53 to %struct.Track*
  store %struct.Track* %54, %struct.Track** %8, align 8
  %55 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %56, 40
  %58 = load i64*, i64** %5, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %57
  store i64 %60, i64* %58, align 8
  store i64 0, i64* %9, align 8
  br label %61

61:                                               ; preds = %77, %3
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.Track**, %struct.Track*** %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %68, %71
  %73 = getelementptr inbounds %struct.Track*, %struct.Track** %67, i64 %72
  %74 = load %struct.Track***, %struct.Track**** %6, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.Track**, %struct.Track*** %74, i64 %75
  store %struct.Track** %73, %struct.Track*** %76, align 8
  br label %77

77:                                               ; preds = %66
  %78 = load i64, i64* %9, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %61, !llvm.loop !10

80:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  br label %81

81:                                               ; preds = %118, %80
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %114, %86
  %88 = load i32, i32* %11, align 4
  %89 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %87
  %93 = load %struct.Track*, %struct.Track** %8, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %94, %97
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %101, %104
  %106 = getelementptr inbounds %struct.Track, %struct.Track* %93, i64 %105
  %107 = load %struct.Track***, %struct.Track**** %6, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.Track**, %struct.Track*** %107, i64 %108
  %110 = load %struct.Track**, %struct.Track*** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.Track*, %struct.Track** %110, i64 %112
  store %struct.Track* %106, %struct.Track** %113, align 8
  br label %114

114:                                              ; preds = %92
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %87, !llvm.loop !11

117:                                              ; preds = %87
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %10, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %81, !llvm.loop !12

121:                                              ; preds = %81
  %122 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %123 = load i64, i64* %122, align 8
  %124 = mul nsw i64 2, %123
  %125 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %124, %127
  %129 = mul i64 %128, 4
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call noalias i8* @malloc(i64 noundef %130) #4
  %132 = bitcast i8* %131 to float*
  store float* %132, float** %13, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i64*, i64** %5, align 8
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, %133
  store i64 %136, i64* %134, align 8
  store i64 0, i64* %14, align 8
  %137 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %138, %141
  store i64 %142, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %143

143:                                              ; preds = %307, %121
  %144 = load i64, i64* %16, align 8
  %145 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %144, %146
  br i1 %147, label %148, label %310

148:                                              ; preds = %143
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %303, %148
  %150 = load i32, i32* %17, align 4
  %151 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %306

154:                                              ; preds = %149
  store i32 0, i32* %18, align 4
  br label %155

155:                                              ; preds = %299, %154
  %156 = load i32, i32* %18, align 4
  %157 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %302

160:                                              ; preds = %155
  %161 = load i32, i32* %17, align 4
  %162 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = sdiv i32 %163, 2
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %168 = load float, float* %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sitofp i32 %169 to float
  %171 = fmul float %168, %170
  %172 = load %struct.Track***, %struct.Track**** %6, align 8
  %173 = load i64, i64* %16, align 8
  %174 = getelementptr inbounds %struct.Track**, %struct.Track*** %172, i64 %173
  %175 = load %struct.Track**, %struct.Track*** %174, align 8
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.Track*, %struct.Track** %175, i64 %177
  %179 = load %struct.Track*, %struct.Track** %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.Track, %struct.Track* %179, i64 %181
  %183 = getelementptr inbounds %struct.Track, %struct.Track* %182, i32 0, i32 1
  store float %171, float* %183, align 4
  br label %203

184:                                              ; preds = %160
  %185 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %186 = load float, float* %185, align 8
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 1
  %189 = sitofp i32 %188 to float
  %190 = fmul float %186, %189
  %191 = load %struct.Track***, %struct.Track**** %6, align 8
  %192 = load i64, i64* %16, align 8
  %193 = getelementptr inbounds %struct.Track**, %struct.Track*** %191, i64 %192
  %194 = load %struct.Track**, %struct.Track*** %193, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.Track*, %struct.Track** %194, i64 %196
  %198 = load %struct.Track*, %struct.Track** %197, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.Track, %struct.Track* %198, i64 %200
  %202 = getelementptr inbounds %struct.Track, %struct.Track* %201, i32 0, i32 1
  store float %190, float* %202, align 4
  br label %203

203:                                              ; preds = %184, %166
  %204 = call float @urand()
  %205 = load %struct.Track***, %struct.Track**** %6, align 8
  %206 = load i64, i64* %16, align 8
  %207 = getelementptr inbounds %struct.Track**, %struct.Track*** %205, i64 %206
  %208 = load %struct.Track**, %struct.Track*** %207, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.Track*, %struct.Track** %208, i64 %210
  %212 = load %struct.Track*, %struct.Track** %211, align 8
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.Track, %struct.Track* %212, i64 %214
  %216 = getelementptr inbounds %struct.Track, %struct.Track* %215, i32 0, i32 0
  store float %204, float* %216, align 8
  %217 = load float*, float** %13, align 8
  %218 = load i64, i64* %14, align 8
  %219 = getelementptr inbounds float, float* %217, i64 %218
  %220 = load %struct.Track***, %struct.Track**** %6, align 8
  %221 = load i64, i64* %16, align 8
  %222 = getelementptr inbounds %struct.Track**, %struct.Track*** %220, i64 %221
  %223 = load %struct.Track**, %struct.Track*** %222, align 8
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.Track*, %struct.Track** %223, i64 %225
  %227 = load %struct.Track*, %struct.Track** %226, align 8
  %228 = load i32, i32* %18, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.Track, %struct.Track* %227, i64 %229
  %231 = getelementptr inbounds %struct.Track, %struct.Track* %230, i32 0, i32 4
  store float* %219, float** %231, align 8
  %232 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %14, align 8
  %236 = add i64 %235, %234
  store i64 %236, i64* %14, align 8
  %237 = load float*, float** %13, align 8
  %238 = load i64, i64* %14, align 8
  %239 = getelementptr inbounds float, float* %237, i64 %238
  %240 = load %struct.Track***, %struct.Track**** %6, align 8
  %241 = load i64, i64* %16, align 8
  %242 = getelementptr inbounds %struct.Track**, %struct.Track*** %240, i64 %241
  %243 = load %struct.Track**, %struct.Track*** %242, align 8
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.Track*, %struct.Track** %243, i64 %245
  %247 = load %struct.Track*, %struct.Track** %246, align 8
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.Track, %struct.Track* %247, i64 %249
  %251 = getelementptr inbounds %struct.Track, %struct.Track* %250, i32 0, i32 5
  store float* %239, float** %251, align 8
  %252 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* %14, align 8
  %256 = add i64 %255, %254
  store i64 %256, i64* %14, align 8
  store i32 0, i32* %19, align 4
  br label %257

257:                                              ; preds = %295, %203
  %258 = load i32, i32* %19, align 4
  %259 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %262, label %298

262:                                              ; preds = %257
  %263 = load %struct.Track***, %struct.Track**** %6, align 8
  %264 = load i64, i64* %16, align 8
  %265 = getelementptr inbounds %struct.Track**, %struct.Track*** %263, i64 %264
  %266 = load %struct.Track**, %struct.Track*** %265, align 8
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.Track*, %struct.Track** %266, i64 %268
  %270 = load %struct.Track*, %struct.Track** %269, align 8
  %271 = load i32, i32* %18, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.Track, %struct.Track* %270, i64 %272
  %274 = getelementptr inbounds %struct.Track, %struct.Track* %273, i32 0, i32 4
  %275 = load float*, float** %274, align 8
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  store float 0.000000e+00, float* %278, align 4
  %279 = load %struct.Track***, %struct.Track**** %6, align 8
  %280 = load i64, i64* %16, align 8
  %281 = getelementptr inbounds %struct.Track**, %struct.Track*** %279, i64 %280
  %282 = load %struct.Track**, %struct.Track*** %281, align 8
  %283 = load i32, i32* %17, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.Track*, %struct.Track** %282, i64 %284
  %286 = load %struct.Track*, %struct.Track** %285, align 8
  %287 = load i32, i32* %18, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.Track, %struct.Track* %286, i64 %288
  %290 = getelementptr inbounds %struct.Track, %struct.Track* %289, i32 0, i32 5
  %291 = load float*, float** %290, align 8
  %292 = load i32, i32* %19, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %291, i64 %293
  store float 0.000000e+00, float* %294, align 4
  br label %295

295:                                              ; preds = %262
  %296 = load i32, i32* %19, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %19, align 4
  br label %257, !llvm.loop !13

298:                                              ; preds = %257
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %18, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %18, align 4
  br label %155, !llvm.loop !14

302:                                              ; preds = %155
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %17, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %17, align 4
  br label %149, !llvm.loop !15

306:                                              ; preds = %149
  br label %307

307:                                              ; preds = %306
  %308 = load i64, i64* %16, align 8
  %309 = add nsw i64 %308, 1
  store i64 %309, i64* %16, align 8
  br label %143, !llvm.loop !16

310:                                              ; preds = %143
  %311 = load %struct.Track***, %struct.Track**** %6, align 8
  ret %struct.Track*** %311
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_tracks(%struct.Track*** noundef %0) #0 {
  %2 = alloca %struct.Track***, align 8
  store %struct.Track*** %0, %struct.Track**** %2, align 8
  %3 = load %struct.Track***, %struct.Track**** %2, align 8
  %4 = bitcast %struct.Track*** %3 to i8*
  call void @free(i8* noundef %4) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float* @generate_polar_angles(%struct.Input* noundef byval(%struct.Input) align 8 %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = call noalias i8* @malloc(i64 noundef %7) #4
  %9 = bitcast i8* %8 to float*
  store float* %9, float** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = sitofp i32 %16 to double
  %18 = fadd double %17, 5.000000e-01
  %19 = fmul double 0x400921FB54442D18, %18
  %20 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %19, %22
  %24 = fptrunc double %23 to float
  %25 = load float*, float** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  store float %24, float* %28, align 4
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %10, !llvm.loop !17

32:                                               ; preds = %10
  %33 = load float*, float** %2, align 8
  ret float* %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Track2D* @load_OpenMOC_tracks(i8* noundef %0, i1 noundef zeroext %1, %struct.Input* noundef %2, i64* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.Input*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.Track2D*, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct._G_fpos_t, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.Segment*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  %45 = zext i1 %1 to i8
  store i8 %45, i8* %6, align 1
  store %struct.Input* %2, %struct.Input** %7, align 8
  store i64* %3, i64** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call noalias %struct._IO_FILE* @fopen(i8* noundef %46, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %47, %struct._IO_FILE** %10, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* noundef %48)
  %50 = bitcast i32* %11 to i8*
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %52 = call i64 @fread(i8* noundef %50, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %51)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %12, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %13, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 1, %59
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %62 = call i64 @fread(i8* noundef %57, i64 noundef %60, i64 noundef 1, %struct._IO_FILE* noundef %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.Input*, %struct.Input** %7, align 8
  %66 = getelementptr inbounds %struct.Input, %struct.Input* %65, i32 0, i32 7
  %67 = bitcast i32* %66 to i8*
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %69 = call i64 @fread(i8* noundef %67, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %68)
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = bitcast double* %14 to i8*
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %73 = call i64 @fread(i8* noundef %71, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %72)
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load double, double* %14, align 8
  %76 = fptrunc double %75 to float
  %77 = load %struct.Input*, %struct.Input** %7, align 8
  %78 = getelementptr inbounds %struct.Input, %struct.Input* %77, i32 0, i32 5
  store float %76, float* %78, align 4
  %79 = load %struct.Input*, %struct.Input** %7, align 8
  %80 = getelementptr inbounds %struct.Input, %struct.Input* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = zext i32 %81 to i64
  %83 = alloca i32, i64 %82, align 16
  store i64 %82, i64* %15, align 8
  %84 = load %struct.Input*, %struct.Input** %7, align 8
  %85 = getelementptr inbounds %struct.Input, %struct.Input* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  %88 = alloca i32, i64 %87, align 16
  store i64 %87, i64* %16, align 8
  %89 = load %struct.Input*, %struct.Input** %7, align 8
  %90 = getelementptr inbounds %struct.Input, %struct.Input* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  %93 = alloca i32, i64 %92, align 16
  store i64 %92, i64* %17, align 8
  %94 = load %struct.Input*, %struct.Input** %7, align 8
  %95 = getelementptr inbounds %struct.Input, %struct.Input* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  %98 = alloca double, i64 %97, align 16
  store i64 %97, i64* %18, align 8
  %99 = bitcast i32* %83 to i8*
  %100 = load %struct.Input*, %struct.Input** %7, align 8
  %101 = getelementptr inbounds %struct.Input, %struct.Input* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %105 = call i64 @fread(i8* noundef %99, i64 noundef 4, i64 noundef %103, %struct._IO_FILE* noundef %104)
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  %107 = bitcast i32* %88 to i8*
  %108 = load %struct.Input*, %struct.Input** %7, align 8
  %109 = getelementptr inbounds %struct.Input, %struct.Input* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %113 = call i64 @fread(i8* noundef %107, i64 noundef 4, i64 noundef %111, %struct._IO_FILE* noundef %112)
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  %115 = bitcast i32* %93 to i8*
  %116 = load %struct.Input*, %struct.Input** %7, align 8
  %117 = getelementptr inbounds %struct.Input, %struct.Input* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %121 = call i64 @fread(i8* noundef %115, i64 noundef 4, i64 noundef %119, %struct._IO_FILE* noundef %120)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %9, align 4
  %123 = bitcast double* %98 to i8*
  %124 = load %struct.Input*, %struct.Input** %7, align 8
  %125 = getelementptr inbounds %struct.Input, %struct.Input* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %129 = call i64 @fread(i8* noundef %123, i64 noundef 8, i64 noundef %127, %struct._IO_FILE* noundef %128)
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %9, align 4
  %131 = load %struct.Input*, %struct.Input** %7, align 8
  %132 = getelementptr inbounds %struct.Input, %struct.Input* %131, i32 0, i32 18
  store i64 0, i64* %132, align 8
  store i32 0, i32* %32, align 4
  br label %133

133:                                              ; preds = %149, %4
  %134 = load i32, i32* %32, align 4
  %135 = load %struct.Input*, %struct.Input** %7, align 8
  %136 = getelementptr inbounds %struct.Input, %struct.Input* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %133
  %140 = load i32, i32* %32, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %83, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.Input*, %struct.Input** %7, align 8
  %146 = getelementptr inbounds %struct.Input, %struct.Input* %145, i32 0, i32 18
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  br label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %32, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %32, align 4
  br label %133, !llvm.loop !18

152:                                              ; preds = %133
  %153 = load %struct.Input*, %struct.Input** %7, align 8
  %154 = getelementptr inbounds %struct.Input, %struct.Input* %153, i32 0, i32 18
  %155 = load i64, i64* %154, align 8
  %156 = mul i64 %155, 32
  %157 = call noalias i8* @malloc(i64 noundef %156) #4
  %158 = bitcast i8* %157 to %struct.Track2D*
  store %struct.Track2D* %158, %struct.Track2D** %33, align 8
  %159 = load %struct.Input*, %struct.Input** %7, align 8
  %160 = getelementptr inbounds %struct.Input, %struct.Input* %159, i32 0, i32 18
  %161 = load i64, i64* %160, align 8
  %162 = mul i64 %161, 32
  %163 = load i64*, i64** %8, align 8
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, %162
  store i64 %165, i64* %163, align 8
  store i64 0, i64* %34, align 8
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %167 = call i32 @fgetpos(%struct._IO_FILE* noundef %166, %struct._G_fpos_t* noundef %35)
  store i32 0, i32* %36, align 4
  br label %168

168:                                              ; preds = %214, %152
  %169 = load i32, i32* %36, align 4
  %170 = load %struct.Input*, %struct.Input** %7, align 8
  %171 = getelementptr inbounds %struct.Input, %struct.Input* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %217

174:                                              ; preds = %168
  store i32 0, i32* %37, align 4
  br label %175

175:                                              ; preds = %210, %174
  %176 = load i32, i32* %37, align 4
  %177 = load i32, i32* %36, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %83, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %175
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %184 = call i32 @fseek(%struct._IO_FILE* noundef %183, i64 noundef 44, i32 noundef 1)
  %185 = bitcast i32* %25 to i8*
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %187 = call i64 @fread(i8* noundef %185, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %186)
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %25, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %34, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %34, align 8
  store i32 0, i32* %38, align 4
  br label %193

193:                                              ; preds = %206, %182
  %194 = load i32, i32* %38, align 4
  %195 = load i32, i32* %25, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %199 = call i32 @fseek(%struct._IO_FILE* noundef %198, i64 noundef 16, i32 noundef 1)
  %200 = load i8, i8* %6, align 1
  %201 = trunc i8 %200 to i1
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %204 = call i32 @fseek(%struct._IO_FILE* noundef %203, i64 noundef 8, i32 noundef 1)
  br label %205

205:                                              ; preds = %202, %197
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %38, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %38, align 4
  br label %193, !llvm.loop !19

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %37, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %37, align 4
  br label %175, !llvm.loop !20

213:                                              ; preds = %175
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %36, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %36, align 4
  br label %168, !llvm.loop !21

217:                                              ; preds = %168
  %218 = load i64, i64* %34, align 8
  %219 = mul i64 %218, 16
  %220 = call noalias i8* @malloc(i64 noundef %219) #4
  %221 = bitcast i8* %220 to %struct.Segment*
  store %struct.Segment* %221, %struct.Segment** %39, align 8
  %222 = load i64, i64* %34, align 8
  %223 = mul i64 %222, 16
  %224 = load i64*, i64** %8, align 8
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, %223
  store i64 %226, i64* %224, align 8
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %228 = call i32 @fsetpos(%struct._IO_FILE* noundef %227, %struct._G_fpos_t* noundef %35)
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  br label %229

229:                                              ; preds = %367, %217
  %230 = load i32, i32* %42, align 4
  %231 = load %struct.Input*, %struct.Input** %7, align 8
  %232 = getelementptr inbounds %struct.Input, %struct.Input* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %370

235:                                              ; preds = %229
  store i32 0, i32* %43, align 4
  br label %236

236:                                              ; preds = %363, %235
  %237 = load i32, i32* %43, align 4
  %238 = load i32, i32* %42, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %83, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp slt i32 %237, %241
  br i1 %242, label %243, label %366

243:                                              ; preds = %236
  %244 = bitcast double* %19 to i8*
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %246 = call i64 @fread(i8* noundef %244, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %245)
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %9, align 4
  %248 = bitcast double* %20 to i8*
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %250 = call i64 @fread(i8* noundef %248, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %249)
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %9, align 4
  %252 = bitcast double* %21 to i8*
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %254 = call i64 @fread(i8* noundef %252, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %253)
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %9, align 4
  %256 = bitcast double* %22 to i8*
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %258 = call i64 @fread(i8* noundef %256, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %257)
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %9, align 4
  %260 = bitcast double* %23 to i8*
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %262 = call i64 @fread(i8* noundef %260, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %261)
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %9, align 4
  %264 = bitcast i32* %24 to i8*
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %266 = call i64 @fread(i8* noundef %264, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %265)
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %9, align 4
  %268 = bitcast i32* %25 to i8*
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %270 = call i64 @fread(i8* noundef %268, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %269)
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %9, align 4
  %272 = load i32, i32* %25, align 4
  %273 = sext i32 %272 to i64
  %274 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %275 = load i32, i32* %40, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %274, i64 %276
  %278 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %277, i32 0, i32 1
  store i64 %273, i64* %278, align 8
  %279 = load %struct.Segment*, %struct.Segment** %39, align 8
  %280 = load i32, i32* %41, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.Segment, %struct.Segment* %279, i64 %281
  %283 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %284 = load i32, i32* %40, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %283, i64 %285
  %287 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %286, i32 0, i32 2
  store %struct.Segment* %282, %struct.Segment** %287, align 8
  %288 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %289 = load i32, i32* %40, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %288, i64 %290
  %292 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* %41, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %295, %293
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %41, align 4
  %298 = call float @urand()
  %299 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %300 = load i32, i32* %40, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %299, i64 %301
  %303 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %302, i32 0, i32 0
  store float %298, float* %303, align 8
  store i32 0, i32* %44, align 4
  br label %304

304:                                              ; preds = %357, %243
  %305 = load i32, i32* %44, align 4
  %306 = load i32, i32* %25, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %360

308:                                              ; preds = %304
  %309 = bitcast double* %26 to i8*
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %311 = call i64 @fread(i8* noundef %309, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %310)
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %9, align 4
  %313 = bitcast i32* %27 to i8*
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %315 = call i64 @fread(i8* noundef %313, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %314)
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %9, align 4
  %317 = bitcast i32* %28 to i8*
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %319 = call i64 @fread(i8* noundef %317, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %318)
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %9, align 4
  %321 = load double, double* %26, align 8
  %322 = fptrunc double %321 to float
  %323 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %324 = load i32, i32* %40, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %323, i64 %325
  %327 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %326, i32 0, i32 2
  %328 = load %struct.Segment*, %struct.Segment** %327, align 8
  %329 = load i32, i32* %44, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.Segment, %struct.Segment* %328, i64 %330
  %332 = getelementptr inbounds %struct.Segment, %struct.Segment* %331, i32 0, i32 0
  store float %322, float* %332, align 8
  %333 = load i32, i32* %28, align 4
  %334 = sext i32 %333 to i64
  %335 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %336 = load i32, i32* %40, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %335, i64 %337
  %339 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %338, i32 0, i32 2
  %340 = load %struct.Segment*, %struct.Segment** %339, align 8
  %341 = load i32, i32* %44, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.Segment, %struct.Segment* %340, i64 %342
  %344 = getelementptr inbounds %struct.Segment, %struct.Segment* %343, i32 0, i32 1
  store i64 %334, i64* %344, align 8
  %345 = load i8, i8* %6, align 1
  %346 = trunc i8 %345 to i1
  br i1 %346, label %347, label %356

347:                                              ; preds = %308
  %348 = bitcast i32* %29 to i8*
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %350 = call i64 @fread(i8* noundef %348, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %349)
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %9, align 4
  %352 = bitcast i32* %30 to i8*
  %353 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %354 = call i64 @fread(i8* noundef %352, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %353)
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %9, align 4
  br label %356

356:                                              ; preds = %347, %308
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %44, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %44, align 4
  br label %304, !llvm.loop !22

360:                                              ; preds = %304
  %361 = load i32, i32* %40, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %40, align 4
  br label %363

363:                                              ; preds = %360
  %364 = load i32, i32* %43, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %43, align 4
  br label %236, !llvm.loop !23

366:                                              ; preds = %236
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %42, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %42, align 4
  br label %229, !llvm.loop !24

370:                                              ; preds = %229
  %371 = load i64, i64* %34, align 8
  %372 = load %struct.Input*, %struct.Input** %7, align 8
  %373 = getelementptr inbounds %struct.Input, %struct.Input* %372, i32 0, i32 18
  %374 = load i64, i64* %373, align 8
  %375 = sdiv i64 %371, %374
  %376 = load %struct.Input*, %struct.Input** %7, align 8
  %377 = getelementptr inbounds %struct.Input, %struct.Input* %376, i32 0, i32 12
  store i64 %375, i64* %377, align 8
  %378 = load %struct.Input*, %struct.Input** %7, align 8
  %379 = getelementptr inbounds %struct.Input, %struct.Input* %378, i32 0, i32 18
  %380 = load i64, i64* %379, align 8
  %381 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 noundef %380)
  %382 = load %struct.Input*, %struct.Input** %7, align 8
  %383 = getelementptr inbounds %struct.Input, %struct.Input* %382, i32 0, i32 18
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.Input*, %struct.Input** %7, align 8
  %386 = getelementptr inbounds %struct.Input, %struct.Input* %385, i32 0, i32 8
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = mul nsw i64 %384, %388
  %390 = load %struct.Input*, %struct.Input** %7, align 8
  %391 = getelementptr inbounds %struct.Input, %struct.Input* %390, i32 0, i32 19
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = mul nsw i64 %389, %393
  %395 = load %struct.Input*, %struct.Input** %7, align 8
  %396 = getelementptr inbounds %struct.Input, %struct.Input* %395, i32 0, i32 20
  store i64 %394, i64* %396, align 8
  %397 = load %struct.Input*, %struct.Input** %7, align 8
  %398 = getelementptr inbounds %struct.Input, %struct.Input* %397, i32 0, i32 20
  %399 = load i64, i64* %398, align 8
  %400 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 noundef %399)
  %401 = load i64, i64* %34, align 8
  %402 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 noundef %401)
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %404 = call i32 @fclose(%struct._IO_FILE* noundef %403)
  %405 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %406 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %406)
  ret %struct.Track2D* %405
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

declare dso_local i32 @fgetpos(%struct._IO_FILE* noundef, %struct._G_fpos_t* noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i32 @fsetpos(%struct._IO_FILE* noundef, %struct._G_fpos_t* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
