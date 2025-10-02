; ModuleID = './findwinr.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findwinr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16
@umove = external dso_local global i32, align 4
@l = external dso_local global [19 x [19 x i8]], align 16
@lib = external dso_local global i32, align 4
@mymove = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findwinner(i32* nocapture noundef writeonly %0, i32* nocapture noundef writeonly %1, i32* nocapture noundef %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  store i32 -1, i32* %0, align 4
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  br label %7

7:                                                ; preds = %140, %3
  %.04 = phi i32 [ 0, %3 ], [ %141, %140 ]
  %8 = icmp ult i32 %.04, 19
  br i1 %8, label %9, label %142

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %137, %9
  %.05 = phi i32 [ 0, %9 ], [ %138, %137 ]
  %11 = icmp ult i32 %.05, 19
  br i1 %11, label %12, label %139

12:                                               ; preds = %10
  %13 = zext i32 %.04 to i64
  %14 = zext i32 %.05 to i64
  %15 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* @umove, align 4
  %19 = icmp eq i32 %18, %17
  br i1 %19, label %20, label %136

20:                                               ; preds = %12
  %21 = zext i32 %.04 to i64
  %22 = zext i32 %.05 to i64
  %23 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = icmp ult i8 %24, 4
  br i1 %25, label %26, label %136

26:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  call void @initmark() #2
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %29 = load i32, i32* @umove, align 4
  %30 = zext i32 %.04 to i64
  %31 = zext i32 %.05 to i64
  %32 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 @findopen(i32 noundef %.04, i32 noundef %.05, i32* noundef nonnull %27, i32* noundef nonnull %28, i32 noundef %29, i32 noundef %34, i32* noundef nonnull %6) #2
  %.not = icmp eq i32 %35, 0
  br i1 %.not, label %135, label %36

36:                                               ; preds = %26
  %37 = zext i32 %.04 to i64
  %38 = zext i32 %.05 to i64
  %39 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %43, 120
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  store i32 120, i32* %2, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %0, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %45, %42
  br label %134

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %131, %51
  %.02 = phi i32 [ 0, %51 ], [ %132, %131 ]
  %53 = zext i32 %.04 to i64
  %54 = zext i32 %.05 to i64
  %55 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ult i32 %.02, %57
  br i1 %58, label %59, label %133

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %128, %59
  %.01 = phi i32 [ 0, %59 ], [ %129, %128 ]
  %61 = zext i32 %.04 to i64
  %62 = zext i32 %.05 to i64
  %63 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ult i32 %.01, %65
  br i1 %66, label %67, label %130

67:                                               ; preds = %60
  %.not6 = icmp eq i32 %.02, %.01
  br i1 %.not6, label %127, label %68

68:                                               ; preds = %67
  store i32 0, i32* @lib, align 4
  %69 = zext i32 %.02 to i64
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %.02 to i64
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %71, i32 noundef %74, i32 noundef %75) #2
  %76 = load i32, i32* @lib, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %126

78:                                               ; preds = %68
  %79 = load i32, i32* @lib, align 4
  %80 = load i32, i32* @mymove, align 4
  %81 = trunc i32 %80 to i8
  %82 = zext i32 %.02 to i64
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = zext i32 %.02 to i64
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %85, i64 %89
  store i8 %81, i8* %90, align 1
  store i32 0, i32* @lib, align 4
  %91 = zext i32 %.01 to i64
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %.01 to i64
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @umove, align 4
  call void @countlib(i32 noundef %93, i32 noundef %96, i32 noundef %97) #2
  %98 = icmp eq i32 %79, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %78
  %100 = load i32, i32* @lib, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %106

103:                                              ; preds = %99, %78
  %104 = load i32, i32* @lib, align 4
  %.neg = mul i32 %104, -20
  %105 = add i32 %.neg, 120
  br label %106

106:                                              ; preds = %103, %102
  %.03 = phi i32 [ 0, %102 ], [ %105, %103 ]
  %107 = load i32, i32* %2, align 4
  %108 = icmp slt i32 %107, %.03
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  store i32 %.03, i32* %2, align 4
  %110 = zext i32 %.02 to i64
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %0, align 4
  %113 = zext i32 %.02 to i64
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %1, align 4
  br label %116

116:                                              ; preds = %109, %106
  %117 = zext i32 %.02 to i64
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = zext i32 %.02 to i64
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %120, i64 %124
  store i8 0, i8* %125, align 1
  br label %126

126:                                              ; preds = %116, %68
  br label %127

127:                                              ; preds = %126, %67
  br label %128

128:                                              ; preds = %127
  %129 = add nuw nsw i32 %.01, 1
  br label %60, !llvm.loop !4

130:                                              ; preds = %60
  br label %131

131:                                              ; preds = %130
  %132 = add nuw nsw i32 %.02, 1
  br label %52, !llvm.loop !6

133:                                              ; preds = %52
  br label %134

134:                                              ; preds = %133, %50
  br label %135

135:                                              ; preds = %134, %26
  br label %136

136:                                              ; preds = %135, %20, %12
  br label %137

137:                                              ; preds = %136
  %138 = add nuw nsw i32 %.05, 1
  br label %10, !llvm.loop !7

139:                                              ; preds = %10
  br label %140

140:                                              ; preds = %139
  %141 = add nuw nsw i32 %.04, 1
  br label %7, !llvm.loop !8

142:                                              ; preds = %7
  %143 = load i32, i32* %2, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %147

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %145
  %.0 = phi i32 [ 1, %145 ], [ 0, %146 ]
  ret i32 %.0
}

declare dso_local void @initmark() #1

declare dso_local i32 @findopen(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32 noundef, i32 noundef, i32* noundef) #1

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
