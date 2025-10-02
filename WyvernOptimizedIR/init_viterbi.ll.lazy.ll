; ModuleID = './init_viterbi.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/viterbi/init_viterbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }

@.str = private unnamed_addr constant [28 x i8] c"0 && \22Unsupported coderate\22\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/viterbi/init_viterbi.c\00", align 1
@__PRETTY_FUNCTION__.init_viterbi = private unnamed_addr constant [50 x i8] c"void init_viterbi(param_viterbi_t *, coderate_tt)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_viterbi(%struct.param_viterbi_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca [7 x [128 x i8]], align 16
  %4 = bitcast %struct.param_viterbi_t* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(19632) %4, i8 0, i64 19632, i1 false)
  %5 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(896) %5, i8 0, i64 896, i1 false)
  switch i32 %1, label %52 [
    i32 1, label %6
    i32 2, label %10
    i32 3, label %16
    i32 4, label %24
    i32 5, label %36
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 0
  store i8 1, i8* %7, align 8
  %8 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 0
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 5
  store i64 1, i64* %9, align 8
  br label %53

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 0
  store i8 1, i8* %11, align 8
  %12 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 1
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 0
  store i8 1, i8* %13, align 1
  %14 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 1
  store i8 1, i8* %14, align 1
  %15 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 5
  store i64 2, i64* %15, align 8
  br label %53

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 0
  store i8 1, i8* %17, align 8
  %18 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 1
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 2
  store i8 1, i8* %19, align 2
  %20 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 0
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 1
  store i8 1, i8* %21, align 1
  %22 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 2
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 5
  store i64 3, i64* %23, align 8
  br label %53

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 0
  store i8 1, i8* %25, align 8
  %26 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 1
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 2
  store i8 1, i8* %27, align 2
  %28 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 4
  store i8 1, i8* %29, align 4
  %30 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 0
  store i8 1, i8* %30, align 1
  %31 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 1
  store i8 1, i8* %31, align 1
  %32 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 2
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 3
  store i8 1, i8* %33, align 1
  %34 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 4
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 5
  store i64 5, i64* %35, align 8
  br label %53

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 0
  store i8 1, i8* %37, align 8
  %38 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 1
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 2
  store i8 0, i8* %39, align 2
  %40 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 3
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 4
  store i8 1, i8* %41, align 4
  %42 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 5
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 3, i64 6
  store i8 1, i8* %43, align 2
  %44 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 0
  store i8 1, i8* %44, align 1
  %45 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 1
  store i8 1, i8* %45, align 1
  %46 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 2
  store i8 1, i8* %46, align 1
  %47 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 3
  store i8 1, i8* %47, align 1
  %48 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 4
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 5
  store i8 1, i8* %49, align 1
  %50 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 4, i64 6
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 5
  store i64 7, i64* %51, align 8
  br label %53

52:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.init_viterbi, i64 0, i64 0)) #3
  unreachable

53:                                               ; preds = %36, %24, %16, %10, %6
  %54 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 0
  store i64 7, i64* %54, align 8
  %55 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 1
  store i64 128, i64* %55, align 8
  %56 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 2
  store i64 150, i64* %56, align 8
  br label %57

57:                                               ; preds = %76, %53
  %.01 = phi i64 [ 0, %53 ], [ %77, %76 ]
  %58 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %.01, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %73, %61
  %.0 = phi i64 [ 0, %61 ], [ %74, %73 ]
  %63 = icmp ult i64 %.0, 7
  br i1 %63, label %64, label %75

64:                                               ; preds = %62
  %65 = trunc i64 %.0 to i32
  %66 = shl i32 1, %65
  %67 = sext i32 %66 to i64
  %68 = and i64 %.01, %67
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i8
  %71 = sub i64 6, %.0
  %72 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 %71, i64 %.01
  store i8 %70, i8* %72, align 1
  br label %73

73:                                               ; preds = %64
  %74 = add i64 %.0, 1
  br label %62, !llvm.loop !4

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = add i64 %.01, 1
  br label %57, !llvm.loop !6

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %108, %78
  %.1 = phi i64 [ 0, %78 ], [ %109, %108 ]
  %80 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %.1, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 0, i64 %.1
  %85 = load i8, i8* %84, align 1
  %86 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 1, i64 %.1
  %87 = load i8, i8* %86, align 1
  %88 = xor i8 %85, %87
  %89 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 2, i64 %.1
  %90 = load i8, i8* %89, align 1
  %91 = xor i8 %88, %90
  %92 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 5, i64 %.1
  %93 = load i8, i8* %92, align 1
  %94 = xor i8 %91, %93
  %95 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 6, i64 %.1
  store i8 %94, i8* %95, align 1
  %96 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 1, i64 %.1
  %97 = load i8, i8* %96, align 1
  %98 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 2, i64 %.1
  %99 = load i8, i8* %98, align 1
  %100 = xor i8 %97, %99
  %101 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 4, i64 %.1
  %102 = load i8, i8* %101, align 1
  %103 = xor i8 %100, %102
  %104 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %3, i64 0, i64 5, i64 %.1
  %105 = load i8, i8* %104, align 1
  %106 = xor i8 %103, %105
  %107 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 7, i64 %.1
  store i8 %106, i8* %107, align 1
  br label %108

108:                                              ; preds = %83
  %109 = add i64 %.1, 1
  br label %79, !llvm.loop !7

110:                                              ; preds = %79
  br label %111

111:                                              ; preds = %117, %110
  %.2 = phi i64 [ 0, %110 ], [ %118, %117 ]
  %112 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %.2, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 8, i64 %.2
  store double 1.000000e+06, double* %116, align 8
  br label %117

117:                                              ; preds = %115
  %118 = add i64 %.2, 1
  br label %111, !llvm.loop !8

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %0, i64 0, i32 8, i64 0
  store double 0.000000e+00, double* %120, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
