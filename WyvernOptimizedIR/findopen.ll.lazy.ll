; ModuleID = './findopen.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma = external dso_local global [19 x [19 x i8]], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@mik = external dso_local global i32, align 4
@mjk = external dso_local global i32, align 4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @findopen(i32 noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6) #0 {
  %8 = sext i32 %0 to i64
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %8, i64 %9
  store i8 1, i8* %10, align 1
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %60, label %11

11:                                               ; preds = %7
  %12 = add nsw i32 %0, -1
  %13 = sext i32 %12 to i64
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = add nsw i32 %0, -1
  %20 = load i32, i32* @mik, align 4
  %.not18 = icmp eq i32 %19, %20
  br i1 %.not18, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @mjk, align 4
  %.not19 = icmp eq i32 %22, %1
  br i1 %.not19, label %36, label %23

23:                                               ; preds = %21, %18
  %24 = add nsw i32 %0, -1
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %2, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %3, i64 %29
  store i32 %1, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = icmp eq i32 %32, %5
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %211

35:                                               ; preds = %23
  br label %59

36:                                               ; preds = %21, %11
  %37 = add nsw i32 %0, -1
  %38 = sext i32 %37 to i64
  %39 = sext i32 %1 to i64
  %40 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, %4
  br i1 %43, label %44, label %58

44:                                               ; preds = %36
  %45 = add nsw i32 %0, -1
  %46 = sext i32 %45 to i64
  %47 = sext i32 %1 to i64
  %48 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %.not16 = icmp eq i8 %49, 0
  br i1 %.not16, label %50, label %58

50:                                               ; preds = %44
  %51 = add nsw i32 %0, -1
  %52 = call i32 @findopen(i32 noundef %51, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6)
  %.not17 = icmp eq i32 %52, 0
  br i1 %.not17, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, %5
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %211

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %44, %36
  br label %59

59:                                               ; preds = %58, %35
  br label %60

60:                                               ; preds = %59, %7
  %.not1 = icmp eq i32 %0, 18
  br i1 %.not1, label %110, label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %0, 1
  %63 = sext i32 %62 to i64
  %64 = sext i32 %1 to i64
  %65 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = add nsw i32 %0, 1
  %70 = load i32, i32* @mik, align 4
  %.not14 = icmp eq i32 %69, %70
  br i1 %.not14, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @mjk, align 4
  %.not15 = icmp eq i32 %72, %1
  br i1 %.not15, label %86, label %73

73:                                               ; preds = %71, %68
  %74 = add nsw i32 %0, 1
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %2, i64 %76
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %3, i64 %79
  store i32 %1, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  %83 = icmp eq i32 %82, %5
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %211

85:                                               ; preds = %73
  br label %109

86:                                               ; preds = %71, %61
  %87 = add nsw i32 %0, 1
  %88 = sext i32 %87 to i64
  %89 = sext i32 %1 to i64
  %90 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, %4
  br i1 %93, label %94, label %108

94:                                               ; preds = %86
  %95 = add nsw i32 %0, 1
  %96 = sext i32 %95 to i64
  %97 = sext i32 %1 to i64
  %98 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %96, i64 %97
  %99 = load i8, i8* %98, align 1
  %.not12 = icmp eq i8 %99, 0
  br i1 %.not12, label %100, label %108

100:                                              ; preds = %94
  %101 = add nsw i32 %0, 1
  %102 = call i32 @findopen(i32 noundef %101, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6)
  %.not13 = icmp eq i32 %102, 0
  br i1 %.not13, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, %5
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %211

107:                                              ; preds = %103, %100
  br label %108

108:                                              ; preds = %107, %94, %86
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109, %60
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %160, label %111

111:                                              ; preds = %110
  %112 = sext i32 %0 to i64
  %113 = add nsw i32 %1, -1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %111
  %119 = load i32, i32* @mik, align 4
  %.not10 = icmp eq i32 %119, %0
  br i1 %.not10, label %120, label %123

120:                                              ; preds = %118
  %121 = add nsw i32 %1, -1
  %122 = load i32, i32* @mjk, align 4
  %.not11 = icmp eq i32 %121, %122
  br i1 %.not11, label %136, label %123

123:                                              ; preds = %120, %118
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %2, i64 %125
  store i32 %0, i32* %126, align 4
  %127 = add nsw i32 %1, -1
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %3, i64 %129
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  %133 = icmp eq i32 %132, %5
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %211

135:                                              ; preds = %123
  br label %159

136:                                              ; preds = %120, %111
  %137 = sext i32 %0 to i64
  %138 = add nsw i32 %1, -1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, %4
  br i1 %143, label %144, label %158

144:                                              ; preds = %136
  %145 = sext i32 %0 to i64
  %146 = add nsw i32 %1, -1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %.not8 = icmp eq i8 %149, 0
  br i1 %.not8, label %150, label %158

150:                                              ; preds = %144
  %151 = add nsw i32 %1, -1
  %152 = call i32 @findopen(i32 noundef %0, i32 noundef %151, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6)
  %.not9 = icmp eq i32 %152, 0
  br i1 %.not9, label %157, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, %5
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %211

157:                                              ; preds = %153, %150
  br label %158

158:                                              ; preds = %157, %144, %136
  br label %159

159:                                              ; preds = %158, %135
  br label %160

160:                                              ; preds = %159, %110
  %.not3 = icmp eq i32 %1, 18
  br i1 %.not3, label %210, label %161

161:                                              ; preds = %160
  %162 = sext i32 %0 to i64
  %163 = add nsw i32 %1, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %161
  %169 = load i32, i32* @mik, align 4
  %.not6 = icmp eq i32 %169, %0
  br i1 %.not6, label %170, label %173

170:                                              ; preds = %168
  %171 = add nsw i32 %1, 1
  %172 = load i32, i32* @mjk, align 4
  %.not7 = icmp eq i32 %171, %172
  br i1 %.not7, label %186, label %173

173:                                              ; preds = %170, %168
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %2, i64 %175
  store i32 %0, i32* %176, align 4
  %177 = add nsw i32 %1, 1
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %3, i64 %179
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  %183 = icmp eq i32 %182, %5
  br i1 %183, label %184, label %185

184:                                              ; preds = %173
  br label %211

185:                                              ; preds = %173
  br label %209

186:                                              ; preds = %170, %161
  %187 = sext i32 %0 to i64
  %188 = add nsw i32 %1, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %192, %4
  br i1 %193, label %194, label %208

194:                                              ; preds = %186
  %195 = sext i32 %0 to i64
  %196 = add nsw i32 %1, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %.not4 = icmp eq i8 %199, 0
  br i1 %.not4, label %200, label %208

200:                                              ; preds = %194
  %201 = add nsw i32 %1, 1
  %202 = call i32 @findopen(i32 noundef %0, i32 noundef %201, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6)
  %.not5 = icmp eq i32 %202, 0
  br i1 %.not5, label %207, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %6, align 4
  %205 = icmp eq i32 %204, %5
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  br label %211

207:                                              ; preds = %203, %200
  br label %208

208:                                              ; preds = %207, %194, %186
  br label %209

209:                                              ; preds = %208, %185
  br label %210

210:                                              ; preds = %209, %160
  br label %211

211:                                              ; preds = %210, %206, %184, %156, %134, %106, %84, %56, %34
  %.0 = phi i32 [ 1, %34 ], [ 1, %84 ], [ 1, %134 ], [ 1, %184 ], [ 0, %210 ], [ 1, %206 ], [ 1, %156 ], [ 1, %106 ], [ 1, %56 ]
  ret i32 %.0
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
