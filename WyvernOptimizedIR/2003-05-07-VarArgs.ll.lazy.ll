; ModuleID = './2003-05-07-VarArgs.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-07-VarArgs.c"
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
define dso_local void @test(i8* nocapture noundef readonly %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i64, align 8
  %tmpcast = bitcast i64* %4 to %struct.DWordS_struct*
  %5 = alloca %struct.QuadWordS_struct, align 8
  %6 = alloca %struct.LargeS_struct, align 8
  %7 = alloca { i32, double }, align 8
  %8 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %8)
  %9 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  %10 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_copy(i8* nonnull %9, i8* nonnull %10)
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %11)
  br label %12

12:                                               ; preds = %186, %1
  %.0 = phi i8* [ %0, %1 ], [ %15, %186 ]
  %13 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %13, 0
  br i1 %.not, label %187, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, i8* %.0, i64 1
  %16 = load i8, i8* %.0, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %186 [
    i32 115, label %18
    i32 105, label %36
    i32 100, label %54
    i32 108, label %72
    i32 99, label %90
    i32 68, label %109
    i32 81, label %132
    i32 76, label %170
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %20 = load i32, i32* %19, align 16
  %21 = icmp ult i32 %20, 41
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %24 = load i8*, i8** %23, align 16
  %25 = sext i32 %20 to i64
  %26 = getelementptr i8, i8* %24, i64 %25
  %27 = add i32 %20, 8
  store i32 %27, i32* %19, align 16
  br label %32

28:                                               ; preds = %18
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr i8, i8* %30, i64 8
  store i8* %31, i8** %29, align 8
  br label %32

32:                                               ; preds = %28, %22
  %.in5 = phi i8* [ %26, %22 ], [ %30, %28 ]
  %33 = bitcast i8* %.in5 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef %34) #4
  br label %186

36:                                               ; preds = %14
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %38 = load i32, i32* %37, align 16
  %39 = icmp ult i32 %38, 41
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %42 = load i8*, i8** %41, align 16
  %43 = sext i32 %38 to i64
  %44 = getelementptr i8, i8* %42, i64 %43
  %45 = add i32 %38, 8
  store i32 %45, i32* %37, align 16
  br label %50

46:                                               ; preds = %36
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr i8, i8* %48, i64 8
  store i8* %49, i8** %47, align 8
  br label %50

50:                                               ; preds = %46, %40
  %.in4 = phi i8* [ %44, %40 ], [ %48, %46 ]
  %51 = bitcast i8* %.in4 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %52) #4
  br label %186

54:                                               ; preds = %14
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %56, 161
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %60 = load i8*, i8** %59, align 16
  %61 = sext i32 %56 to i64
  %62 = getelementptr i8, i8* %60, i64 %61
  %63 = add i32 %56, 16
  store i32 %63, i32* %55, align 4
  br label %68

64:                                               ; preds = %54
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr i8, i8* %66, i64 8
  store i8* %67, i8** %65, align 8
  br label %68

68:                                               ; preds = %64, %58
  %.in3 = phi i8* [ %62, %58 ], [ %66, %64 ]
  %69 = bitcast i8* %.in3 to double*
  %70 = load double, double* %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double noundef %70) #4
  br label %186

72:                                               ; preds = %14
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %74 = load i32, i32* %73, align 16
  %75 = icmp ult i32 %74, 41
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %78 = load i8*, i8** %77, align 16
  %79 = sext i32 %74 to i64
  %80 = getelementptr i8, i8* %78, i64 %79
  %81 = add i32 %74, 8
  store i32 %81, i32* %73, align 16
  br label %86

82:                                               ; preds = %72
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr i8, i8* %84, i64 8
  store i8* %85, i8** %83, align 8
  br label %86

86:                                               ; preds = %82, %76
  %.in2 = phi i8* [ %80, %76 ], [ %84, %82 ]
  %87 = bitcast i8* %.in2 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 noundef %88) #4
  br label %186

90:                                               ; preds = %14
  %91 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %92 = load i32, i32* %91, align 16
  %93 = icmp ult i32 %92, 41
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %96 = load i8*, i8** %95, align 16
  %97 = sext i32 %92 to i64
  %98 = getelementptr i8, i8* %96, i64 %97
  %99 = add i32 %92, 8
  store i32 %99, i32* %91, align 16
  br label %104

100:                                              ; preds = %90
  %101 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr i8, i8* %102, i64 8
  store i8* %103, i8** %101, align 8
  br label %104

104:                                              ; preds = %100, %94
  %.in1 = phi i8* [ %98, %94 ], [ %102, %100 ]
  %105 = bitcast i8* %.in1 to i32*
  %106 = load i32, i32* %105, align 4
  %sext = shl i32 %106, 24
  %107 = ashr exact i32 %sext, 24
  %108 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %107) #4
  br label %186

109:                                              ; preds = %14
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %111 = load i32, i32* %110, align 16
  %112 = icmp ult i32 %111, 41
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %115 = load i8*, i8** %114, align 16
  %116 = sext i32 %111 to i64
  %117 = getelementptr i8, i8* %115, i64 %116
  %118 = add i32 %111, 8
  store i32 %118, i32* %110, align 16
  br label %123

119:                                              ; preds = %109
  %120 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr i8, i8* %121, i64 8
  store i8* %122, i8** %120, align 8
  br label %123

123:                                              ; preds = %119, %113
  %.in = phi i8* [ %117, %113 ], [ %121, %119 ]
  %124 = bitcast i8* %.in to i64*
  %125 = load i64, i64* %124, align 4
  store i64 %125, i64* %4, align 8
  %126 = bitcast i64* %4 to i32*
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %tmpcast, i64 0, i32 1
  %129 = load i8, i8* %128, align 4
  %130 = sext i8 %129 to i32
  %131 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %127, i32 noundef %130) #4
  br label %186

132:                                              ; preds = %14
  %133 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %134 = load i32, i32* %133, align 16
  %135 = icmp ult i32 %134, 41
  %136 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ult i32 %137, 161
  %139 = and i1 %135, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %132
  %141 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %142 = load i8*, i8** %141, align 16
  %143 = sext i32 %134 to i64
  %144 = getelementptr i8, i8* %142, i64 %143
  %145 = sext i32 %137 to i64
  %146 = getelementptr i8, i8* %142, i64 %145
  %147 = bitcast i8* %144 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds { i32, double }, { i32, double }* %7, i64 0, i32 0
  store i32 %148, i32* %149, align 8
  %150 = bitcast i8* %146 to double*
  %151 = load double, double* %150, align 8
  %152 = getelementptr inbounds { i32, double }, { i32, double }* %7, i64 0, i32 1
  store double %151, double* %152, align 8
  %153 = bitcast { i32, double }* %7 to %struct.QuadWordS_struct*
  %154 = add i32 %134, 8
  store i32 %154, i32* %133, align 16
  %155 = add i32 %137, 16
  store i32 %155, i32* %136, align 4
  br label %161

156:                                              ; preds = %132
  %157 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = bitcast i8* %158 to %struct.QuadWordS_struct*
  %160 = getelementptr i8, i8* %158, i64 16
  store i8* %160, i8** %157, align 8
  br label %161

161:                                              ; preds = %156, %140
  %162 = phi %struct.QuadWordS_struct* [ %153, %140 ], [ %159, %156 ]
  %163 = bitcast %struct.QuadWordS_struct* %5 to i8*
  %164 = bitcast %struct.QuadWordS_struct* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %163, i8* noundef nonnull align 8 dereferenceable(16) %164, i64 16, i1 false)
  %165 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %5, i64 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %5, i64 0, i32 1
  %168 = load double, double* %167, align 8
  %169 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %166, double noundef %168) #4
  br label %186

170:                                              ; preds = %14
  %171 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr i8, i8* %172, i64 32
  store i8* %173, i8** %171, align 8
  %174 = bitcast %struct.LargeS_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %174, i8* noundef nonnull align 8 dereferenceable(32) %172, i64 32, i1 false)
  %175 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %6, i64 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %6, i64 0, i32 1
  %178 = load double, double* %177, align 8
  %179 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %6, i64 0, i32 2
  %180 = load %struct.DWordS_struct*, %struct.DWordS_struct** %179, align 8
  %181 = icmp ne %struct.DWordS_struct* %180, null
  %182 = zext i1 %181 to i32
  %183 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %6, i64 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef %176, double noundef %178, i32 noundef %182, i32 noundef %184) #4
  br label %186

186:                                              ; preds = %170, %161, %123, %104, %86, %68, %50, %32, %14
  br label %12, !llvm.loop !4

187:                                              ; preds = %12
  %188 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %188)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

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
  call void (i8*, ...) @test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef -123, i32 noundef 97, i32 noundef 123, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  call void (i8*, ...) @test(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), double noundef 1.000000e+00, double noundef 2.000000e+00, i32 noundef 32764, i64 noundef 12345677823423)
  %8 = load i64, i64* %1, align 8
  call void (i8*, ...) @test(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %8, i32 19, double 2.000000e+01, %struct.LargeS_struct* noundef nonnull byval(%struct.LargeS_struct) align 8 %2)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
