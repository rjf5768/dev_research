; ModuleID = './2003-08-11-VaListArg.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-08-11-VaListArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DWordS_struct = type { i32, i8 }
%struct.QuadWordS_struct = type { i32, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.LargeS_struct = type { i32, double, %struct.DWordS_struct*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"string %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"int %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"double %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"long long %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"char %c\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"DWord { %d, %c }\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"QuadWord { %d, %f }\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"LargeS { %d, %f, 0x%d, %d }\0A\00", align 1
@__const.main.dw = private unnamed_addr constant %struct.DWordS_struct { i32 18, i8 97 }, align 4
@__const.main.qw = private unnamed_addr constant %struct.QuadWordS_struct { i32 19, double 2.000000e+01 }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"ssiciiiiis\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"10 args done!\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ddil\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"DQL\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i8* nocapture noundef readonly %0, %struct.__va_list_tag* noundef %1) #0 {
  %3 = alloca i64, align 8
  %tmpcast = bitcast i64* %3 to %struct.DWordS_struct*
  %4 = alloca %struct.QuadWordS_struct, align 8
  %5 = alloca %struct.LargeS_struct, align 8
  %6 = alloca { i32, double }, align 8
  br label %7

7:                                                ; preds = %181, %2
  %.0 = phi i8* [ %0, %2 ], [ %10, %181 ]
  %8 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %182, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, i8* %.0, i64 1
  %11 = load i8, i8* %.0, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %181 [
    i32 115, label %13
    i32 105, label %31
    i32 100, label %49
    i32 108, label %67
    i32 99, label %85
    i32 68, label %104
    i32 81, label %127
    i32 76, label %165
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %15, 41
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = sext i32 %15 to i64
  %21 = getelementptr i8, i8* %19, i64 %20
  %22 = add i32 %15, 8
  store i32 %22, i32* %14, align 8
  br label %27

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr i8, i8* %25, i64 8
  store i8* %26, i8** %24, align 8
  br label %27

27:                                               ; preds = %23, %17
  %.in5 = phi i8* [ %21, %17 ], [ %25, %23 ]
  %28 = bitcast i8* %.in5 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef %29) #4
  br label %181

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %33, 41
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = sext i32 %33 to i64
  %39 = getelementptr i8, i8* %37, i64 %38
  %40 = add i32 %33, 8
  store i32 %40, i32* %32, align 8
  br label %45

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr i8, i8* %43, i64 8
  store i8* %44, i8** %42, align 8
  br label %45

45:                                               ; preds = %41, %35
  %.in4 = phi i8* [ %39, %35 ], [ %43, %41 ]
  %46 = bitcast i8* %.in4 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %47) #4
  br label %181

49:                                               ; preds = %9
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %51, 161
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = sext i32 %51 to i64
  %57 = getelementptr i8, i8* %55, i64 %56
  %58 = add i32 %51, 16
  store i32 %58, i32* %50, align 4
  br label %63

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr i8, i8* %61, i64 8
  store i8* %62, i8** %60, align 8
  br label %63

63:                                               ; preds = %59, %53
  %.in3 = phi i8* [ %57, %53 ], [ %61, %59 ]
  %64 = bitcast i8* %.in3 to double*
  %65 = load double, double* %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double noundef %65) #4
  br label %181

67:                                               ; preds = %9
  %68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %69, 41
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = sext i32 %69 to i64
  %75 = getelementptr i8, i8* %73, i64 %74
  %76 = add i32 %69, 8
  store i32 %76, i32* %68, align 8
  br label %81

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr i8, i8* %79, i64 8
  store i8* %80, i8** %78, align 8
  br label %81

81:                                               ; preds = %77, %71
  %.in2 = phi i8* [ %75, %71 ], [ %79, %77 ]
  %82 = bitcast i8* %.in2 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 noundef %83) #4
  br label %181

85:                                               ; preds = %9
  %86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %87, 41
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = sext i32 %87 to i64
  %93 = getelementptr i8, i8* %91, i64 %92
  %94 = add i32 %87, 8
  store i32 %94, i32* %86, align 8
  br label %99

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr i8, i8* %97, i64 8
  store i8* %98, i8** %96, align 8
  br label %99

99:                                               ; preds = %95, %89
  %.in1 = phi i8* [ %93, %89 ], [ %97, %95 ]
  %100 = bitcast i8* %.in1 to i32*
  %101 = load i32, i32* %100, align 4
  %sext = shl i32 %101, 24
  %102 = ashr exact i32 %sext, 24
  %103 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %102) #4
  br label %181

104:                                              ; preds = %9
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ult i32 %106, 41
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = sext i32 %106 to i64
  %112 = getelementptr i8, i8* %110, i64 %111
  %113 = add i32 %106, 8
  store i32 %113, i32* %105, align 8
  br label %118

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr i8, i8* %116, i64 8
  store i8* %117, i8** %115, align 8
  br label %118

118:                                              ; preds = %114, %108
  %.in = phi i8* [ %112, %108 ], [ %116, %114 ]
  %119 = bitcast i8* %.in to i64*
  %120 = load i64, i64* %119, align 4
  store i64 %120, i64* %3, align 8
  %121 = bitcast i64* %3 to i32*
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %tmpcast, i64 0, i32 1
  %124 = load i8, i8* %123, align 4
  %125 = sext i8 %124 to i32
  %126 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %122, i32 noundef %125) #4
  br label %181

127:                                              ; preds = %9
  %128 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ult i32 %129, 41
  %131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ult i32 %132, 161
  %134 = and i1 %130, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = sext i32 %129 to i64
  %139 = getelementptr i8, i8* %137, i64 %138
  %140 = sext i32 %132 to i64
  %141 = getelementptr i8, i8* %137, i64 %140
  %142 = bitcast i8* %139 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds { i32, double }, { i32, double }* %6, i64 0, i32 0
  store i32 %143, i32* %144, align 8
  %145 = bitcast i8* %141 to double*
  %146 = load double, double* %145, align 8
  %147 = getelementptr inbounds { i32, double }, { i32, double }* %6, i64 0, i32 1
  store double %146, double* %147, align 8
  %148 = bitcast { i32, double }* %6 to %struct.QuadWordS_struct*
  %149 = add i32 %129, 8
  store i32 %149, i32* %128, align 8
  %150 = add i32 %132, 16
  store i32 %150, i32* %131, align 4
  br label %156

151:                                              ; preds = %127
  %152 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = bitcast i8* %153 to %struct.QuadWordS_struct*
  %155 = getelementptr i8, i8* %153, i64 16
  store i8* %155, i8** %152, align 8
  br label %156

156:                                              ; preds = %151, %135
  %157 = phi %struct.QuadWordS_struct* [ %148, %135 ], [ %154, %151 ]
  %158 = bitcast %struct.QuadWordS_struct* %4 to i8*
  %159 = bitcast %struct.QuadWordS_struct* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %158, i8* noundef nonnull align 8 dereferenceable(16) %159, i64 16, i1 false)
  %160 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %4, i64 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %4, i64 0, i32 1
  %163 = load double, double* %162, align 8
  %164 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %161, double noundef %163) #4
  br label %181

165:                                              ; preds = %9
  %166 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr i8, i8* %167, i64 32
  store i8* %168, i8** %166, align 8
  %169 = bitcast %struct.LargeS_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %169, i8* noundef nonnull align 8 dereferenceable(32) %167, i64 32, i1 false)
  %170 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %5, i64 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %5, i64 0, i32 1
  %173 = load double, double* %172, align 8
  %174 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %5, i64 0, i32 2
  %175 = load %struct.DWordS_struct*, %struct.DWordS_struct** %174, align 8
  %176 = icmp ne %struct.DWordS_struct* %175, null
  %177 = zext i1 %176 to i32
  %178 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %5, i64 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef %171, double noundef %173, i32 noundef %177, i32 noundef %179) #4
  br label %181

181:                                              ; preds = %165, %156, %118, %99, %81, %63, %45, %27, %9
  br label %7, !llvm.loop !4

182:                                              ; preds = %7
  %183 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.va_end(i8* %183)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @testVaListArg(i8* nocapture noundef readonly %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @test(i8* noundef %0, %struct.__va_list_tag* noundef nonnull %4)
  %5 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %5)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @testVaCopyArg(i8* nocapture noundef readonly %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  %6 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_copy(i8* nonnull %5, i8* nonnull %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @test(i8* noundef %0, %struct.__va_list_tag* noundef nonnull %7)
  %8 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %8)
  %9 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %9)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.LargeS_struct, align 8
  store i64 416611827730, i64* %1, align 8
  %3 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %2, i64 0, i32 0
  store i32 21, i32* %3, align 8
  %4 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %2, i64 0, i32 1
  store double 2.200000e+01, double* %4, align 8
  %5 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %2, i64 0, i32 2
  %6 = bitcast %struct.DWordS_struct** %5 to i64**
  store i64* %1, i64** %6, align 8
  %7 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %2, i64 0, i32 3
  store i32 23, i32* %7, align 8
  call void (i8*, ...) @testVaListArg(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef -123, i32 noundef 97, i32 noundef 123, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  call void (i8*, ...) @testVaCopyArg(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef -123, i32 noundef 97, i32 noundef 123, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  call void (i8*, ...) @testVaListArg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), double noundef 1.000000e+00, double noundef 2.000000e+00, i32 noundef 32764, i64 noundef 12345677823423)
  call void (i8*, ...) @testVaCopyArg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), double noundef 1.000000e+00, double noundef 2.000000e+00, i32 noundef 32764, i64 noundef 12345677823423)
  %8 = load i64, i64* %1, align 8
  call void (i8*, ...) @testVaListArg(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %8, i32 19, double 2.000000e+01, %struct.LargeS_struct* noundef nonnull byval(%struct.LargeS_struct) align 8 %2)
  %9 = load i64, i64* %1, align 8
  call void (i8*, ...) @testVaCopyArg(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %9, i32 19, double 2.000000e+01, %struct.LargeS_struct* noundef nonnull byval(%struct.LargeS_struct) align 8 %2)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
