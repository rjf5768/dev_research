; ModuleID = './DetectX86CPUArchitecture.ll'
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
  %1 = alloca [4 x i32], align 16
  %2 = alloca [13 x i8], align 4
  %3 = bitcast [4 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %8 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #6, !srcloc !4
  %9 = extractvalue { i32, i32, i32, i32 } %8, 0
  %10 = extractvalue { i32, i32, i32, i32 } %8, 1
  %11 = extractvalue { i32, i32, i32, i32 } %8, 2
  %12 = extractvalue { i32, i32, i32, i32 } %8, 3
  store i32 %9, i32* %4, align 16
  store i32 %10, i32* %5, align 4
  store i32 %11, i32* %6, align 8
  store i32 %12, i32* %7, align 4
  %13 = bitcast [13 x i8]* %2 to i32*
  store i32 %10, i32* %13, align 4
  %14 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 %12, i32* %15, align 4
  %16 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %18 = bitcast i8* %16 to i32*
  %19 = load i32, i32* %17, align 8
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 12
  store i8 0, i8* %20, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %25 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 1) #6, !srcloc !5
  %26 = extractvalue { i32, i32, i32, i32 } %25, 0
  %27 = extractvalue { i32, i32, i32, i32 } %25, 1
  %28 = extractvalue { i32, i32, i32, i32 } %25, 2
  %29 = extractvalue { i32, i32, i32, i32 } %25, 3
  store i32 %26, i32* %21, align 16
  store i32 %27, i32* %22, align 4
  store i32 %28, i32* %23, align 8
  store i32 %29, i32* %24, align 4
  %30 = trunc i32 %26 to i16
  %31 = lshr i16 %30, 4
  %32 = and i16 %31, 15
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = trunc i32 %34 to i16
  %36 = lshr i16 %35, 8
  %37 = and i16 %36, 15
  %38 = zext i16 %37 to i32
  switch i32 %38, label %51 [
    i32 15, label %39
    i32 6, label %46
  ]

39:                                               ; preds = %0
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = lshr i32 %41, 20
  %43 = trunc i32 %42 to i16
  %44 = and i16 %43, 255
  %45 = add nuw nsw i16 %44, %37
  br label %46

46:                                               ; preds = %39, %0
  %.02 = phi i16 [ %37, %0 ], [ %45, %39 ]
  %47 = lshr i32 %34, 12
  %48 = trunc i32 %47 to i16
  %49 = and i16 %48, 240
  %50 = or i16 %49, %32
  br label %51

51:                                               ; preds = %46, %0
  %.1 = phi i16 [ %37, %0 ], [ %.02, %46 ]
  %.01 = phi i16 [ %32, %0 ], [ %50, %46 ]
  %52 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(13) %52, i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 13)
  %53 = icmp eq i32 %bcmp, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = sext i16 %.1 to i32
  switch i32 %55, label %95 [
    i32 6, label %56
    i32 7, label %93
  ]

56:                                               ; preds = %54
  %57 = sext i16 %.01 to i32
  switch i32 %57, label %90 [
    i32 87, label %58
    i32 92, label %60
    i32 90, label %62
    i32 76, label %62
    i32 142, label %64
    i32 158, label %64
    i32 85, label %66
    i32 78, label %68
    i32 94, label %68
    i32 61, label %70
    i32 71, label %70
    i32 79, label %70
    i32 86, label %70
    i32 60, label %72
    i32 69, label %72
    i32 70, label %72
    i32 63, label %72
    i32 58, label %74
    i32 62, label %74
    i32 42, label %76
    i32 45, label %76
    i32 37, label %78
    i32 44, label %78
    i32 47, label %78
    i32 26, label %80
    i32 30, label %80
    i32 31, label %80
    i32 46, label %80
    i32 23, label %82
    i32 29, label %82
    i32 15, label %84
    i32 28, label %86
    i32 14, label %88
  ]

58:                                               ; preds = %56
  %59 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7
  br label %92

60:                                               ; preds = %56
  %61 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #7
  br label %92

62:                                               ; preds = %56, %56
  %63 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %92

64:                                               ; preds = %56, %56
  %65 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #7
  br label %92

66:                                               ; preds = %56
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)) #7
  br label %92

68:                                               ; preds = %56, %56
  %69 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #7
  br label %92

70:                                               ; preds = %56, %56, %56, %56
  %71 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #7
  br label %92

72:                                               ; preds = %56, %56, %56, %56
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #7
  br label %92

74:                                               ; preds = %56, %56
  %75 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #7
  br label %92

76:                                               ; preds = %56, %56
  %77 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0)) #7
  br label %92

78:                                               ; preds = %56, %56, %56
  %79 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #7
  br label %92

80:                                               ; preds = %56, %56, %56, %56
  %81 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #7
  br label %92

82:                                               ; preds = %56, %56
  %83 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #7
  br label %92

84:                                               ; preds = %56
  %85 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #7
  br label %92

86:                                               ; preds = %56
  %87 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #7
  br label %92

88:                                               ; preds = %56
  %89 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #7
  br label %92

90:                                               ; preds = %56
  %91 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #7
  br label %127

92:                                               ; preds = %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58
  br label %97

93:                                               ; preds = %54
  %94 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #7
  br label %97

95:                                               ; preds = %54
  %96 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #7
  br label %127

97:                                               ; preds = %93, %92
  br label %126

98:                                               ; preds = %51
  %99 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 0
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(13) %99, i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i64 13)
  %100 = icmp eq i32 %bcmp3, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = sext i16 %.1 to i32
  switch i32 %102, label %120 [
    i32 23, label %103
    i32 22, label %105
    i32 21, label %107
    i32 20, label %114
    i32 16, label %116
    i32 15, label %118
  ]

103:                                              ; preds = %101
  %104 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #7
  br label %122

105:                                              ; preds = %101
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #7
  br label %122

107:                                              ; preds = %101
  %108 = icmp slt i16 %.01, 2
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0)) #7
  br label %113

111:                                              ; preds = %107
  %112 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0)) #7
  br label %113

113:                                              ; preds = %111, %109
  br label %122

114:                                              ; preds = %101
  %115 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)) #7
  br label %122

116:                                              ; preds = %101
  %117 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)) #7
  br label %122

118:                                              ; preds = %101
  %119 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)) #7
  br label %122

120:                                              ; preds = %101
  %121 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #7
  br label %127

122:                                              ; preds = %118, %116, %114, %113, %105, %103
  br label %125

123:                                              ; preds = %98
  %124 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)) #7
  br label %127

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125, %97
  br label %127

127:                                              ; preds = %126, %123, %120, %95, %90
  %.0 = phi i32 [ 1, %95 ], [ 0, %126 ], [ 1, %90 ], [ 1, %120 ], [ 1, %123 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 2147808037, i64 2147808073, i64 2147808097}
!5 = !{i64 2147808246, i64 2147808282, i64 2147808306}
