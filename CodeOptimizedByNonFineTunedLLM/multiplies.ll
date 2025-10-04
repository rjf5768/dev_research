; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/multiplies.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/multiplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IV = type { <4 x i32> }

@TheArray = dso_local global [100000 x double] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"%u %u %u %u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca <16 x i8>, align 16
  %9 = alloca <4 x i32>, align 16
  %10 = alloca <16 x i8>*, align 8
  %11 = alloca %union.IV, align 16
  %12 = alloca <8 x i16>, align 16
  %13 = alloca <4 x i32>, align 16
  %14 = alloca <8 x i16>*, align 8
  %15 = alloca %union.IV, align 16
  %16 = alloca <4 x i32>, align 16
  %17 = alloca <4 x i32>, align 16
  %18 = alloca <4 x i32>*, align 8
  %19 = alloca %union.IV, align 16
  %20 = alloca <4 x i32>, align 16
  %21 = alloca <4 x i32>, align 16
  %22 = alloca <4 x i32>*, align 8
  %23 = alloca %union.IV, align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %34, %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %25, 100000
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = uitofp i32 %28 to double
  %30 = fmul double %29, 1.234500e+01
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [100000 x double], [100000 x double]* @TheArray, i64 0, i64 %32
  store double %30, double* %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %24, !llvm.loop !4

37:                                               ; preds = %24
  store <4 x i32> zeroinitializer, <4 x i32>* %9, align 16
  %38 = load <4 x i32>, <4 x i32>* %9, align 16
  %39 = bitcast <4 x i32> %38 to <16 x i8>
  store <16 x i8> %39, <16 x i8>* %8, align 16
  store <16 x i8>* bitcast ([100000 x double]* @TheArray to <16 x i8>*), <16 x i8>** %10, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %60, %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp ult i32 %41, 1000
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %56, %43
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp ne i64 %46, 50000
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load <16 x i8>*, <16 x i8>** %10, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds <16 x i8>, <16 x i8>* %49, i64 %51
  %53 = load <16 x i8>, <16 x i8>* %52, align 16
  %54 = load <16 x i8>, <16 x i8>* %8, align 16
  %55 = mul <16 x i8> %54, %53
  store <16 x i8> %55, <16 x i8>* %8, align 16
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %44, !llvm.loop !6

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %40, !llvm.loop !7

63:                                               ; preds = %40
  %64 = load <16 x i8>, <16 x i8>* %8, align 16
  %65 = bitcast <16 x i8> %64 to <4 x i32>
  %66 = bitcast %union.IV* %11 to <4 x i32>*
  store <4 x i32> %65, <4 x i32>* %66, align 16
  call void @printIV(%union.IV* noundef %11)
  store <4 x i32> zeroinitializer, <4 x i32>* %13, align 16
  %67 = load <4 x i32>, <4 x i32>* %13, align 16
  %68 = bitcast <4 x i32> %67 to <8 x i16>
  store <8 x i16> %68, <8 x i16>* %12, align 16
  store <8 x i16>* bitcast ([100000 x double]* @TheArray to <8 x i16>*), <8 x i16>** %14, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %89, %63
  %70 = load i32, i32* %7, align 4
  %71 = icmp ult i32 %70, 1000
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %85, %72
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = icmp ne i64 %75, 50000
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load <8 x i16>*, <8 x i16>** %14, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds <8 x i16>, <8 x i16>* %78, i64 %80
  %82 = load <8 x i16>, <8 x i16>* %81, align 16
  %83 = load <8 x i16>, <8 x i16>* %12, align 16
  %84 = mul <8 x i16> %83, %82
  store <8 x i16> %84, <8 x i16>* %12, align 16
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %73, !llvm.loop !8

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %69, !llvm.loop !9

92:                                               ; preds = %69
  %93 = load <8 x i16>, <8 x i16>* %12, align 16
  %94 = bitcast <8 x i16> %93 to <4 x i32>
  %95 = bitcast %union.IV* %15 to <4 x i32>*
  store <4 x i32> %94, <4 x i32>* %95, align 16
  call void @printIV(%union.IV* noundef %15)
  store <4 x i32> zeroinitializer, <4 x i32>* %17, align 16
  %96 = load <4 x i32>, <4 x i32>* %17, align 16
  store <4 x i32> %96, <4 x i32>* %16, align 16
  store <4 x i32>* bitcast ([100000 x double]* @TheArray to <4 x i32>*), <4 x i32>** %18, align 8
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %117, %92
  %98 = load i32, i32* %7, align 4
  %99 = icmp ult i32 %98, 1000
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %113, %100
  %102 = load i32, i32* %6, align 4
  %103 = zext i32 %102 to i64
  %104 = icmp ne i64 %103, 50000
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load <4 x i32>*, <4 x i32>** %18, align 8
  %107 = load i32, i32* %6, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds <4 x i32>, <4 x i32>* %106, i64 %108
  %110 = load <4 x i32>, <4 x i32>* %109, align 16
  %111 = load <4 x i32>, <4 x i32>* %16, align 16
  %112 = mul <4 x i32> %111, %110
  store <4 x i32> %112, <4 x i32>* %16, align 16
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %6, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %101, !llvm.loop !10

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %97, !llvm.loop !11

120:                                              ; preds = %97
  %121 = load <4 x i32>, <4 x i32>* %16, align 16
  %122 = bitcast %union.IV* %19 to <4 x i32>*
  store <4 x i32> %121, <4 x i32>* %122, align 16
  call void @printIV(%union.IV* noundef %19)
  store <4 x i32> zeroinitializer, <4 x i32>* %21, align 16
  %123 = load <4 x i32>, <4 x i32>* %21, align 16
  store <4 x i32> %123, <4 x i32>* %20, align 16
  store <4 x i32>* bitcast ([100000 x double]* @TheArray to <4 x i32>*), <4 x i32>** %22, align 8
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %144, %120
  %125 = load i32, i32* %7, align 4
  %126 = icmp ult i32 %125, 1000
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %140, %127
  %129 = load i32, i32* %6, align 4
  %130 = zext i32 %129 to i64
  %131 = icmp ne i64 %130, 50000
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load <4 x i32>*, <4 x i32>** %22, align 8
  %134 = load i32, i32* %6, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds <4 x i32>, <4 x i32>* %133, i64 %135
  %137 = load <4 x i32>, <4 x i32>* %136, align 16
  %138 = load <4 x i32>, <4 x i32>* %20, align 16
  %139 = mul <4 x i32> %138, %137
  store <4 x i32> %139, <4 x i32>* %20, align 16
  br label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %6, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %128, !llvm.loop !12

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %7, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %124, !llvm.loop !13

147:                                              ; preds = %124
  %148 = load <4 x i32>, <4 x i32>* %20, align 16
  %149 = bitcast %union.IV* %23 to <4 x i32>*
  store <4 x i32> %148, <4 x i32>* %149, align 16
  call void @printIV(%union.IV* noundef %23)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printIV(%union.IV* noundef %0) #0 {
  %2 = alloca %union.IV*, align 8
  store %union.IV* %0, %union.IV** %2, align 8
  %3 = load %union.IV*, %union.IV** %2, align 8
  %4 = bitcast %union.IV* %3 to [4 x i32]*
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %6 = load i32, i32* %5, align 16
  %7 = load %union.IV*, %union.IV** %2, align 8
  %8 = bitcast %union.IV* %7 to [4 x i32]*
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load %union.IV*, %union.IV** %2, align 8
  %12 = bitcast %union.IV* %11 to [4 x i32]*
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %14 = load i32, i32* %13, align 8
  %15 = load %union.IV*, %union.IV** %2, align 8
  %16 = bitcast %union.IV* %15 to [4 x i32]*
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %6, i32 noundef %10, i32 noundef %14, i32 noundef %18)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
