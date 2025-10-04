; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-08-11-VaListArg.c'
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
define dso_local void @test(i8* noundef %0, %struct.__va_list_tag* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.__va_list_tag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.DWordS_struct, align 4
  %9 = alloca %struct.QuadWordS_struct, align 8
  %10 = alloca %struct.LargeS_struct, align 8
  %11 = alloca %struct.QuadWordS_struct, align 8
  store i8* %0, i8** %3, align 8
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  br label %12

12:                                               ; preds = %209, %2
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %210

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %209 [
    i32 115, label %21
    i32 105, label %42
    i32 100, label %63
    i32 108, label %83
    i32 99, label %103
    i32 68, label %126
    i32 81, label %152
    i32 76, label %190
  ]

21:                                               ; preds = %16
  %22 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ule i32 %24, 40
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr i8, i8* %28, i32 %24
  %30 = bitcast i8* %29 to i8**
  %31 = add i32 %24, 8
  store i32 %31, i32* %23, align 8
  br label %37

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to i8**
  %36 = getelementptr i8, i8* %34, i32 8
  store i8* %36, i8** %33, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i8** [ %30, %26 ], [ %35, %32 ]
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef %40)
  br label %209

42:                                               ; preds = %16
  %43 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ule i32 %45, 40
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr i8, i8* %49, i32 %45
  %51 = bitcast i8* %50 to i32*
  %52 = add i32 %45, 8
  store i32 %52, i32* %44, align 8
  br label %58

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = getelementptr i8, i8* %55, i32 8
  store i8* %57, i8** %54, align 8
  br label %58

58:                                               ; preds = %53, %47
  %59 = phi i32* [ %51, %47 ], [ %56, %53 ]
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %61)
  br label %209

63:                                               ; preds = %16
  %64 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ule i32 %66, 160
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr i8, i8* %70, i32 %66
  %72 = bitcast i8* %71 to double*
  %73 = add i32 %66, 16
  store i32 %73, i32* %65, align 4
  br label %79

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = bitcast i8* %76 to double*
  %78 = getelementptr i8, i8* %76, i32 8
  store i8* %78, i8** %75, align 8
  br label %79

79:                                               ; preds = %74, %68
  %80 = phi double* [ %72, %68 ], [ %77, %74 ]
  %81 = load double, double* %80, align 8
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double noundef %81)
  br label %209

83:                                               ; preds = %16
  %84 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ule i32 %86, 40
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %84, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr i8, i8* %90, i32 %86
  %92 = bitcast i8* %91 to i64*
  %93 = add i32 %86, 8
  store i32 %93, i32* %85, align 8
  br label %99

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %84, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = bitcast i8* %96 to i64*
  %98 = getelementptr i8, i8* %96, i32 8
  store i8* %98, i8** %95, align 8
  br label %99

99:                                               ; preds = %94, %88
  %100 = phi i64* [ %92, %88 ], [ %97, %94 ]
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 noundef %101)
  br label %209

103:                                              ; preds = %16
  %104 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ule i32 %106, 40
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr i8, i8* %110, i32 %106
  %112 = bitcast i8* %111 to i32*
  %113 = add i32 %106, 8
  store i32 %113, i32* %105, align 8
  br label %119

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = getelementptr i8, i8* %116, i32 8
  store i8* %118, i8** %115, align 8
  br label %119

119:                                              ; preds = %114, %108
  %120 = phi i32* [ %112, %108 ], [ %117, %114 ]
  %121 = load i32, i32* %120, align 4
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %6, align 1
  %123 = load i8, i8* %6, align 1
  %124 = sext i8 %123 to i32
  %125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %124)
  br label %209

126:                                              ; preds = %16
  %127 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %128 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ule i32 %129, 40
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %127, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr i8, i8* %133, i32 %129
  %135 = bitcast i8* %134 to %struct.DWordS_struct*
  %136 = add i32 %129, 8
  store i32 %136, i32* %128, align 8
  br label %142

137:                                              ; preds = %126
  %138 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %127, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = bitcast i8* %139 to %struct.DWordS_struct*
  %141 = getelementptr i8, i8* %139, i32 8
  store i8* %141, i8** %138, align 8
  br label %142

142:                                              ; preds = %137, %131
  %143 = phi %struct.DWordS_struct* [ %135, %131 ], [ %140, %137 ]
  %144 = bitcast %struct.DWordS_struct* %8 to i8*
  %145 = bitcast %struct.DWordS_struct* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 4 %145, i64 8, i1 false)
  %146 = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %8, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.DWordS_struct, %struct.DWordS_struct* %8, i32 0, i32 1
  %149 = load i8, i8* %148, align 4
  %150 = sext i8 %149 to i32
  %151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 noundef %147, i32 noundef %150)
  br label %209

152:                                              ; preds = %16
  %153 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %154 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ule i32 %155, 40
  %157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ule i32 %158, 160
  %160 = and i1 %156, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = bitcast %struct.QuadWordS_struct* %11 to { i32, double }*
  %165 = getelementptr i8, i8* %163, i32 %155
  %166 = getelementptr i8, i8* %163, i32 %158
  %167 = bitcast i8* %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds { i32, double }, { i32, double }* %164, i32 0, i32 0
  store i32 %168, i32* %169, align 8
  %170 = bitcast i8* %166 to double*
  %171 = load double, double* %170, align 8
  %172 = getelementptr inbounds { i32, double }, { i32, double }* %164, i32 0, i32 1
  store double %171, double* %172, align 8
  %173 = bitcast { i32, double }* %164 to %struct.QuadWordS_struct*
  %174 = add i32 %155, 8
  store i32 %174, i32* %154, align 8
  %175 = add i32 %158, 16
  store i32 %175, i32* %157, align 4
  br label %181

176:                                              ; preds = %152
  %177 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %153, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = bitcast i8* %178 to %struct.QuadWordS_struct*
  %180 = getelementptr i8, i8* %178, i32 16
  store i8* %180, i8** %177, align 8
  br label %181

181:                                              ; preds = %176, %161
  %182 = phi %struct.QuadWordS_struct* [ %173, %161 ], [ %179, %176 ]
  %183 = bitcast %struct.QuadWordS_struct* %9 to i8*
  %184 = bitcast %struct.QuadWordS_struct* %182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %183, i8* align 8 %184, i64 16, i1 false)
  %185 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %9, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.QuadWordS_struct, %struct.QuadWordS_struct* %9, i32 0, i32 1
  %188 = load double, double* %187, align 8
  %189 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %186, double noundef %188)
  br label %209

190:                                              ; preds = %16
  %191 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %192 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = bitcast i8* %193 to %struct.LargeS_struct*
  %195 = getelementptr i8, i8* %193, i32 32
  store i8* %195, i8** %192, align 8
  %196 = bitcast %struct.LargeS_struct* %10 to i8*
  %197 = bitcast %struct.LargeS_struct* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 32, i1 false)
  %198 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %10, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %10, i32 0, i32 1
  %201 = load double, double* %200, align 8
  %202 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %10, i32 0, i32 2
  %203 = load %struct.DWordS_struct*, %struct.DWordS_struct** %202, align 8
  %204 = icmp ne %struct.DWordS_struct* %203, null
  %205 = zext i1 %204 to i32
  %206 = getelementptr inbounds %struct.LargeS_struct, %struct.LargeS_struct* %10, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef %199, double noundef %201, i32 noundef %205, i32 noundef %207)
  br label %209

209:                                              ; preds = %16, %190, %181, %142, %119, %99, %79, %58, %37
  br label %12, !llvm.loop !4

210:                                              ; preds = %12
  %211 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %212 = bitcast %struct.__va_list_tag* %211 to i8*
  call void @llvm.va_end(i8* %212)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @testVaListArg(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @test(i8* noundef %6, %struct.__va_list_tag* noundef %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_end(i8* %9)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @testVaCopyArg(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %7 to i8*
  %10 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_copy(i8* %9, i8* %10)
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  call void @test(i8* noundef %11, %struct.__va_list_tag* noundef %12)
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %16 = bitcast %struct.__va_list_tag* %15 to i8*
  call void @llvm.va_end(i8* %16)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #3

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
  call void (i8*, ...) @testVaListArg(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef -123, i32 noundef 97, i32 noundef 123, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  call void (i8*, ...) @testVaCopyArg(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef -123, i32 noundef 97, i32 noundef 123, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  call void (i8*, ...) @testVaListArg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), double noundef 1.000000e+00, double noundef 2.000000e+00, i32 noundef 32764, i64 noundef 12345677823423)
  call void (i8*, ...) @testVaCopyArg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), double noundef 1.000000e+00, double noundef 2.000000e+00, i32 noundef 32764, i64 noundef 12345677823423)
  %11 = bitcast %struct.DWordS_struct* %2 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = bitcast %struct.QuadWordS_struct* %3 to { i32, double }*
  %14 = getelementptr inbounds { i32, double }, { i32, double }* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds { i32, double }, { i32, double }* %13, i32 0, i32 1
  %17 = load double, double* %16, align 8
  call void (i8*, ...) @testVaListArg(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %12, i32 %15, double %17, %struct.LargeS_struct* noundef byval(%struct.LargeS_struct) align 8 %4)
  %18 = bitcast %struct.DWordS_struct* %2 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = bitcast %struct.QuadWordS_struct* %3 to { i32, double }*
  %21 = getelementptr inbounds { i32, double }, { i32, double }* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds { i32, double }, { i32, double }* %20, i32 0, i32 1
  %24 = load double, double* %23, align 8
  call void (i8*, ...) @testVaCopyArg(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %19, i32 %22, double %24, %struct.LargeS_struct* noundef byval(%struct.LargeS_struct) align 8 %4)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
