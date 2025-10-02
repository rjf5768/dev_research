; ModuleID = './fioe.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/fioe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @fioe(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %55

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 1, i64 0), align 1
  %8 = zext i8 %7 to i32
  %9 = load i32, i32* @mymove, align 4
  %10 = icmp eq i32 %9, %8
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0, i64 1), align 1
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* @mymove, align 4
  %15 = icmp eq i32 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %200

17:                                               ; preds = %11, %6, %4
  %18 = icmp eq i32 %1, 18
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  %20 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 1, i64 18), align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* @mymove, align 4
  %23 = icmp eq i32 %22, %21
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0, i64 17), align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* @mymove, align 4
  %28 = icmp eq i32 %27, %26
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %200

30:                                               ; preds = %24, %19, %17
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 1, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* @mymove, align 4
  %36 = icmp eq i32 %35, %34
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = add nsw i32 %1, -1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* @mymove, align 4
  %44 = icmp eq i32 %43, %42
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = add nsw i32 %1, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* @mymove, align 4
  %52 = icmp eq i32 %51, %50
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %200

54:                                               ; preds = %45, %37, %30
  br label %200

55:                                               ; preds = %2
  %56 = icmp eq i32 %0, 18
  br i1 %56, label %57, label %108

57:                                               ; preds = %55
  %58 = icmp eq i32 %1, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %57
  %60 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 17, i64 0), align 1
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* @mymove, align 4
  %63 = icmp eq i32 %62, %61
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18, i64 1), align 1
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* @mymove, align 4
  %68 = icmp eq i32 %67, %66
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %200

70:                                               ; preds = %64, %59, %57
  %71 = icmp eq i32 %1, 18
  br i1 %71, label %72, label %83

72:                                               ; preds = %70
  %73 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 17, i64 18), align 1
  %74 = zext i8 %73 to i32
  %75 = load i32, i32* @mymove, align 4
  %76 = icmp eq i32 %75, %74
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18, i64 17), align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* @mymove, align 4
  %81 = icmp eq i32 %80, %79
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %200

83:                                               ; preds = %77, %72, %70
  %84 = sext i32 %1 to i64
  %85 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 17, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i32, i32* @mymove, align 4
  %89 = icmp eq i32 %88, %87
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = add nsw i32 %1, -1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32, i32* @mymove, align 4
  %97 = icmp eq i32 %96, %95
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = add nsw i32 %1, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = load i32, i32* @mymove, align 4
  %105 = icmp eq i32 %104, %103
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %200

107:                                              ; preds = %98, %90, %83
  br label %200

108:                                              ; preds = %55
  %109 = icmp eq i32 %1, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %108
  %111 = sext i32 %0 to i64
  %112 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* @mymove, align 4
  %116 = icmp eq i32 %115, %114
  br i1 %116, label %117, label %134

117:                                              ; preds = %110
  %118 = add nsw i32 %0, -1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i32, i32* @mymove, align 4
  %124 = icmp eq i32 %123, %122
  br i1 %124, label %125, label %134

125:                                              ; preds = %117
  %126 = add nsw i32 %0, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i32, i32* @mymove, align 4
  %132 = icmp eq i32 %131, %130
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %200

134:                                              ; preds = %125, %117, %110
  br label %200

135:                                              ; preds = %108
  %136 = icmp eq i32 %1, 18
  br i1 %136, label %137, label %162

137:                                              ; preds = %135
  %138 = sext i32 %0 to i64
  %139 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %138, i64 17
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load i32, i32* @mymove, align 4
  %143 = icmp eq i32 %142, %141
  br i1 %143, label %144, label %161

144:                                              ; preds = %137
  %145 = add nsw i32 %0, -1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %146, i64 18
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i32, i32* @mymove, align 4
  %151 = icmp eq i32 %150, %149
  br i1 %151, label %152, label %161

152:                                              ; preds = %144
  %153 = add nsw i32 %0, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %154, i64 18
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i32, i32* @mymove, align 4
  %159 = icmp eq i32 %158, %157
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %200

161:                                              ; preds = %152, %144, %137
  br label %200

162:                                              ; preds = %135
  %163 = sext i32 %0 to i64
  %164 = add nsw i32 %1, -1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = load i32, i32* @mymove, align 4
  %170 = icmp eq i32 %169, %168
  br i1 %170, label %171, label %199

171:                                              ; preds = %162
  %172 = sext i32 %0 to i64
  %173 = add nsw i32 %1, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = load i32, i32* @mymove, align 4
  %179 = icmp eq i32 %178, %177
  br i1 %179, label %180, label %199

180:                                              ; preds = %171
  %181 = add nsw i32 %0, -1
  %182 = sext i32 %181 to i64
  %183 = sext i32 %1 to i64
  %184 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %182, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = load i32, i32* @mymove, align 4
  %188 = icmp eq i32 %187, %186
  br i1 %188, label %189, label %199

189:                                              ; preds = %180
  %190 = add nsw i32 %0, 1
  %191 = sext i32 %190 to i64
  %192 = sext i32 %1 to i64
  %193 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %191, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* @mymove, align 4
  %197 = icmp eq i32 %196, %195
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  br label %200

199:                                              ; preds = %189, %180, %171, %162
  br label %200

200:                                              ; preds = %199, %198, %161, %160, %134, %133, %107, %106, %82, %69, %54, %53, %29, %16
  %.0 = phi i32 [ 1, %16 ], [ 1, %29 ], [ 1, %53 ], [ 0, %54 ], [ 1, %69 ], [ 1, %82 ], [ 1, %106 ], [ 0, %107 ], [ 1, %133 ], [ 0, %134 ], [ 1, %160 ], [ 0, %161 ], [ 1, %198 ], [ 0, %199 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
