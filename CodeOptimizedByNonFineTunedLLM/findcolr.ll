; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findcolr.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findcolr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findcolor(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %15
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x i8], [19 x i8]* %16, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br label %26

26:                                               ; preds = %23, %13
  %27 = phi i1 [ false, %13 ], [ %25, %23 ]
  br i1 %27, label %10, label %28, !llvm.loop !4

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %30
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %31, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %54, %28
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %43
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [19 x i8], [19 x i8]* %44, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 18
  br label %54

54:                                               ; preds = %51, %41
  %55 = phi i1 [ false, %41 ], [ %53, %51 ]
  br i1 %55, label %38, label %56, !llvm.loop !6

56:                                               ; preds = %54
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %58
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [19 x i8], [19 x i8]* %59, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %157

76:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %157

77:                                               ; preds = %56
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %157

82:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %100, %82
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %89
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [19 x i8], [19 x i8]* %90, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* %6, align 4
  %99 = icmp sgt i32 %98, 0
  br label %100

100:                                              ; preds = %97, %87
  %101 = phi i1 [ false, %87 ], [ %99, %97 ]
  br i1 %101, label %84, label %102, !llvm.loop !7

102:                                              ; preds = %100
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %104
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [19 x i8], [19 x i8]* %105, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  store i32 %110, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %128, %102
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %117
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [19 x i8], [19 x i8]* %118, i64 0, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 18
  br label %128

128:                                              ; preds = %125, %115
  %129 = phi i1 [ false, %115 ], [ %127, %125 ]
  br i1 %129, label %112, label %130, !llvm.loop !8

130:                                              ; preds = %128
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %132
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [19 x i8], [19 x i8]* %133, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %130
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145, %141
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %3, align 4
  br label %157

150:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %157

151:                                              ; preds = %130
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %157

156:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %154, %150, %148, %80, %76, %74
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
