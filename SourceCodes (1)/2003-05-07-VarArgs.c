; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-07-VarArgs.c'
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
define dso_local void @test(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.DWordS_struct, align 4
  %9 = alloca %struct.QuadWordS_struct, align 8
  %10 = alloca %struct.LargeS_struct, align 8
  %11 = alloca %struct.QuadWordS_struct, align 8
  store i8* %0, i8** %2, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %16 = bitcast %struct.__va_list_tag* %14 to i8*
  %17 = bitcast %struct.__va_list_tag* %15 to i8*
  call void @llvm.va_copy(i8* %16, i8* %17)
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_end(i8* %19)
  br label %20

20:                                               ; preds = %217, %1
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %218

24:                                               ; preds = %20
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %217 [
    i32 115, label %29
    i32 105, label %50
    i32 100, label %71
    i32 108, label %91
    i32 99, label %111
    i32 68, label %134
    i32 81, label %160
    i32 76, label %198
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  %33 = icmp ule i32 %32, 40
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 3
  %36 = load i8*, i8** %35, align 16
  %37 = getelementptr i8, i8* %36, i32 %32
  %38 = bitcast i8* %37 to i8**
  %39 = add i32 %32, 8
  store i32 %39, i32* %31, align 16
  br label %45

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to i8**
  %44 = getelementptr i8, i8* %42, i32 8
  store i8* %44, i8** %41, align 8
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i8** [ %38, %34 ], [ %43, %40 ]
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef %48)
  br label %217

50:                                               ; preds = %24
  %51 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 16
  %54 = icmp ule i32 %53, 40
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %51, i32 0, i32 3
  %57 = load i8*, i8** %56, align 16
  %58 = getelementptr i8, i8* %57, i32 %53
  %59 = bitcast i8* %58 to i32*
  %60 = add i32 %53, 8
  store i32 %60, i32* %52, align 16
  br label %66

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %51, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = getelementptr i8, i8* %63, i32 8
  store i8* %65, i8** %62, align 8
  br label %66

66:                                               ; preds = %61, %55
  %67 = phi i32* [ %59, %55 ], [ %64, %61 ]
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %69)
  br label %217

71:                                               ; preds = %24
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ule i32 %74, 160
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %72, i32 0, i32 3
  %78 = load i8*, i8** %77, align 16
  %79 = getelementptr i8, i8* %78, i32 %74
  %80 = bitcast i8* %79 to double*
  %81 = add i32 %74, 16
  store i32 %81, i32* %73, align 4
  br label %87

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %72, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = bitcast i8* %84 to double*
  %86 = getelementptr i8, i8* %84, i32 8
  store i8* %86, i8** %83, align 8
  br label %87

87:                                               ; preds = %82, %76
  %88 = phi double* [ %80, %76 ], [ %85, %82 ]
  %89 = load double, double* %88, align 8
  %90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double noundef %89)
  br label %217

91:                                               ; preds = %24
  %92 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 16
  %95 = icmp ule i32 %94, 40
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %92, i32 0, i32 3
  %98 = load i8*, i8** %97, align 16
  %99 = getelementptr i8, i8* %98, i32 %94
  %100 = bitcast i8* %99 to i64*
  %101 = add i32 %94, 8
  store i32 %101, i32* %93, align 16
  br label %107

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %92, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to i64*
  %106 = getelementptr i8, i8* %104, i32 8
  store i8* %106, i8** %103, align 8
  br label %107

107:                                              ; preds = %102, %96
  %108 = phi i64* [ %100, %96 ], [ %105, %102 ]
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 noundef %109)
  br label %217

111:                                              ; preds = %24
  %112 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %113 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 16
  %115 = icmp ule i32 %114, 40
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 3
  %118 = load i8*, i8** %117, align 16
  %119 = getelementptr i8, i8* %118, i32 %114
  %120 = bitcast i8* %119 to i32*
  %121 = add i32 %114, 8
  store i32 %121, i32* %113, align 16
  br label %127

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = getelementptr i8, i8* %124, i32 8
  store i8* %126, i8** %123, align 8
  br label %127

127:                                              ; preds = %122, %116
  %128 = phi i32* [ %120, %116 ], [ %125, %122 ]
  %129 = load i32, i32* %128, align 4
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %6, align 1
  %131 = load i8, i8* %6, align 1
  %132 = sext i8 %131 to i32
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %132)
  br label %217

134:                                              ; preds = %24
  %135 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 16
  %138 = icmp ule i32 %137, 40
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %135, i32 0, i32 3
  %141 = load i8*, i8** %140, align 16
  %142 = getelementptr i8, i8* %141, i32 %137
  %143 = bitcast i8* %142 to %struct.DWordS_struct*
  %144 = add i32 %137, 8
  store i32 %144, i32* %136, align 16
  br label %150

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %135, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = bitcast i8* %147 to %struct.DWordS_struct*
  %149 = getelementptr i8, i8* %147, i32 8
  store i8* %149, i8** %146, align 8
  br label %150

150:                                              ; preds = %145, %139
  %151 = phi %struct.DWordS_struct* [ %143, %139 ], [ %148, %145 ]
  %152 = bitcast %struct.DWordS_struct* %8 to i8*
  %153 = bitcast %struct.DWordS_struct* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 4 %153, i64 8, i1 false)
  %154 = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %8, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %8, i32 0, i32 1
  %157 = load i8, i8* %156, align 4
  %158 = sext i8 %157 to i32
  %159 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %155, i32 noundef %158)
  br label %217

160:                                              ; preds = %24
  %161 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %162 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 16
  %164 = icmp ule i32 %163, 40
  %165 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %161, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ule i32 %166, 160
  %168 = and i1 %164, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %161, i32 0, i32 3
  %171 = load i8*, i8** %170, align 16
  %172 = bitcast %struct.QuadWordS_struct* %11 to { i32, double }*
  %173 = getelementptr i8, i8* %171, i32 %163
  %174 = getelementptr i8, i8* %171, i32 %166
  %175 = bitcast i8* %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds { i32, double }, { i32, double }* %172, i32 0, i32 0
  store i32 %176, i32* %177, align 8
  %178 = bitcast i8* %174 to double*
  %179 = load double, double* %178, align 8
  %180 = getelementptr inbounds { i32, double }, { i32, double }* %172, i32 0, i32 1
  store double %179, double* %180, align 8
  %181 = bitcast { i32, double }* %172 to %struct.QuadWordS_struct*
  %182 = add i32 %163, 8
  store i32 %182, i32* %162, align 16
  %183 = add i32 %166, 16
  store i32 %183, i32* %165, align 4
  br label %189

184:                                              ; preds = %160
  %185 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %161, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = bitcast i8* %186 to %struct.QuadWordS_struct*
  %188 = getelementptr i8, i8* %186, i32 16
  store i8* %188, i8** %185, align 8
  br label %189

189:                                              ; preds = %184, %169
  %190 = phi %struct.QuadWordS_struct* [ %181, %169 ], [ %187, %184 ]
  %191 = bitcast %struct.QuadWordS_struct* %9 to i8*
  %192 = bitcast %struct.QuadWordS_struct* %190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 8 %192, i64 16, i1 false)
  %193 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %9, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %9, i32 0, i32 1
  %196 = load double, double* %195, align 8
  %197 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %194, double noundef %196)
  br label %217

198:                                              ; preds = %24
  %199 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %200 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = bitcast i8* %201 to %struct.LargeS_struct*
  %203 = getelementptr i8, i8* %201, i32 32
  store i8* %203, i8** %200, align 8
  %204 = bitcast %struct.LargeS_struct* %10 to i8*
  %205 = bitcast %struct.LargeS_struct* %202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 32, i1 false)
  %206 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %10, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %10, i32 0, i32 1
  %209 = load double, double* %208, align 8
  %210 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %10, i32 0, i32 2
  %211 = load %struct.DWordS_struct*, %struct.DWordS_struct** %210, align 8
  %212 = icmp ne %struct.DWordS_struct* %211, null
  %213 = zext i1 %212 to i32
  %214 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %10, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef %207, double noundef %209, i32 noundef %213, i32 noundef %215)
  br label %217

217:                                              ; preds = %24, %198, %189, %150, %127, %107, %87, %66, %45
  br label %20, !llvm.loop !4

218:                                              ; preds = %20
  %219 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %220 = bitcast %struct.__va_list_tag* %219 to i8*
  call void @llvm.va_end(i8* %220)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DWordS_struct, align 4
  %3 = alloca %struct.QuadWordS_struct, align 8
  %4 = alloca %struct.LargeS_struct, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast %struct.DWordS_struct* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.DWordS_struct* @__const.main.dw to i8*), i64 8, i1 false)
  %6 = bitcast %struct.QuadWordS_struct* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.QuadWordS_struct* @__const.main.qw to i8*), i64 16, i1 false)
  %7 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %4, i32 0, i32 0
  store i32 21, i32* %7, align 8
  %8 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %4, i32 0, i32 1
  store double 2.200000e+01, double* %8, align 8
  %9 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %4, i32 0, i32 2
  store %struct.DWordS_struct* %2, %struct.DWordS_struct** %9, align 8
  %10 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %4, i32 0, i32 3
  store i32 23, i32* %10, align 8
  call void (i8*, ...) @test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef -123, i32 noundef 97, i32 noundef 123, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  call void (i8*, ...) @test(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), double noundef 1.000000e+00, double noundef 2.000000e+00, i32 noundef 32764, i64 noundef 12345677823423)
  %11 = bitcast %struct.DWordS_struct* %2 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = bitcast %struct.QuadWordS_struct* %3 to { i32, double }*
  %14 = getelementptr inbounds { i32, double }, { i32, double }* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds { i32, double }, { i32, double }* %13, i32 0, i32 1
  %17 = load double, double* %16, align 8
  call void (i8*, ...) @test(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %12, i32 %15, double %17, %struct.LargeS_struct* noundef byval(%struct.LargeS_struct) align 8 %4)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
