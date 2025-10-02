; ModuleID = '/project/test/llvm-test-suite/cmake/modules/DetectX86CPUArchitecture.c'
source_filename = "/project/test/llvm-test-suite/cmake/modules/DetectX86CPUArchitecture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"GenuineIntel\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"knl\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"goldmont\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"silvermont\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"kaby-lake\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"skylake-avx512\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"skylake\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"broadwell\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"haswell\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ivy-bridge\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"sandy-bridge\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"westmere\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"nehalem\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"penryn\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"merom\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"atom\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"itanium\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"zen\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"16h\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"bulldozer\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"piledriver\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"14h\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"barcelona\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"k8\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"unknown!\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca [13 x i8], align 1
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  %8 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %13 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #5, !srcloc !4
  %14 = extractvalue { i32, i32, i32, i32 } %13, 0
  %15 = extractvalue { i32, i32, i32, i32 } %13, 1
  %16 = extractvalue { i32, i32, i32, i32 } %13, 2
  %17 = extractvalue { i32, i32, i32, i32 } %13, 3
  store i32 %14, i32* %9, align 16
  store i32 %15, i32* %10, align 4
  store i32 %16, i32* %11, align 8
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %20 = bitcast i32* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 4 %20, i64 4, i1 false)
  %21 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %24 = bitcast i32* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 4 %24, i64 4, i1 false)
  %25 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %26 = getelementptr inbounds i8, i8* %25, i64 8
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %28 = bitcast i32* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 8 %28, i64 4, i1 false)
  %29 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 12
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %34 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #5, !srcloc !5
  %35 = extractvalue { i32, i32, i32, i32 } %34, 0
  %36 = extractvalue { i32, i32, i32, i32 } %34, 1
  %37 = extractvalue { i32, i32, i32, i32 } %34, 2
  %38 = extractvalue { i32, i32, i32, i32 } %34, 3
  store i32 %35, i32* %30, align 16
  store i32 %36, i32* %31, align 4
  store i32 %37, i32* %32, align 8
  store i32 %38, i32* %33, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = ashr i32 %40, 4
  %42 = and i32 %41, 15
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %4, align 2
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 15
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %5, align 2
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 15
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %6, align 2
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = ashr i32 %55, 20
  %57 = and i32 %56, 255
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %7, align 2
  %59 = load i16, i16* %5, align 2
  %60 = sext i16 %59 to i32
  switch i32 %60, label %76 [
    i32 15, label %61
    i32 6, label %68
  ]

61:                                               ; preds = %0
  %62 = load i16, i16* %7, align 2
  %63 = sext i16 %62 to i32
  %64 = load i16, i16* %5, align 2
  %65 = sext i16 %64 to i32
  %66 = add nsw i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %5, align 2
  br label %68

68:                                               ; preds = %0, %61
  %69 = load i16, i16* %6, align 2
  %70 = sext i16 %69 to i32
  %71 = shl i32 %70, 4
  %72 = load i16, i16* %4, align 2
  %73 = sext i16 %72 to i32
  %74 = add nsw i32 %73, %71
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %4, align 2
  br label %76

76:                                               ; preds = %68, %0
  %77 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %78 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %126

80:                                               ; preds = %76
  %81 = load i16, i16* %5, align 2
  %82 = sext i16 %81 to i32
  switch i32 %82, label %123 [
    i32 6, label %83
    i32 7, label %121
  ]

83:                                               ; preds = %80
  %84 = load i16, i16* %4, align 2
  %85 = sext i16 %84 to i32
  switch i32 %85, label %118 [
    i32 87, label %86
    i32 92, label %88
    i32 90, label %90
    i32 76, label %90
    i32 142, label %92
    i32 158, label %92
    i32 85, label %94
    i32 78, label %96
    i32 94, label %96
    i32 61, label %98
    i32 71, label %98
    i32 79, label %98
    i32 86, label %98
    i32 60, label %100
    i32 69, label %100
    i32 70, label %100
    i32 63, label %100
    i32 58, label %102
    i32 62, label %102
    i32 42, label %104
    i32 45, label %104
    i32 37, label %106
    i32 44, label %106
    i32 47, label %106
    i32 26, label %108
    i32 30, label %108
    i32 31, label %108
    i32 46, label %108
    i32 23, label %110
    i32 29, label %110
    i32 15, label %112
    i32 28, label %114
    i32 14, label %116
  ]

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %120

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %120

90:                                               ; preds = %83, %83
  %91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %120

92:                                               ; preds = %83, %83
  %93 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %120

94:                                               ; preds = %83
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %120

96:                                               ; preds = %83, %83
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %120

98:                                               ; preds = %83, %83, %83, %83
  %99 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %120

100:                                              ; preds = %83, %83, %83, %83
  %101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %120

102:                                              ; preds = %83, %83
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %120

104:                                              ; preds = %83, %83
  %105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %120

106:                                              ; preds = %83, %83, %83
  %107 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %120

108:                                              ; preds = %83, %83, %83, %83
  %109 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %120

110:                                              ; preds = %83, %83
  %111 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %120

112:                                              ; preds = %83
  %113 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %120

114:                                              ; preds = %83
  %115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %120

116:                                              ; preds = %83
  %117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %120

118:                                              ; preds = %83
  %119 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %159

120:                                              ; preds = %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86
  br label %125

121:                                              ; preds = %80
  %122 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %125

123:                                              ; preds = %80
  %124 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %159

125:                                              ; preds = %121, %120
  br label %158

126:                                              ; preds = %76
  %127 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %128 = call i32 @strcmp(i8* noundef %127, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0)) #6
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %126
  %131 = load i16, i16* %5, align 2
  %132 = sext i16 %131 to i32
  switch i32 %132, label %152 [
    i32 23, label %133
    i32 22, label %135
    i32 21, label %137
    i32 20, label %146
    i32 16, label %148
    i32 15, label %150
  ]

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %154

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  br label %154

137:                                              ; preds = %130
  %138 = load i16, i16* %4, align 2
  %139 = sext i16 %138 to i32
  %140 = icmp slt i32 %139, 2
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %145

143:                                              ; preds = %137
  %144 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %141
  br label %154

146:                                              ; preds = %130
  %147 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  br label %154

148:                                              ; preds = %130
  %149 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  br label %154

150:                                              ; preds = %130
  %151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %154

152:                                              ; preds = %130
  %153 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %159

154:                                              ; preds = %150, %148, %146, %145, %135, %133
  br label %157

155:                                              ; preds = %126
  %156 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %159

157:                                              ; preds = %154
  br label %158

158:                                              ; preds = %157, %125
  store i32 0, i32* %1, align 4
  br label %159

159:                                              ; preds = %158, %155, %152, %123, %118
  %160 = load i32, i32* %1, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 2147808037, i64 2147808073, i64 2147808097}
!5 = !{i64 2147808246, i64 2147808282, i64 2147808306}
