; ModuleID = './findnext.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma = external dso_local global [19 x [19 x i8]], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@lib = external dso_local global i32, align 4
@mymove = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findnextmove(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i32* nocapture noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %10 = sext i32 %0 to i64
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %10, i64 %11
  store i8 1, i8* %12, align 1
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %47, label %13

13:                                               ; preds = %6
  %14 = add nsw i32 %0, -1
  %15 = sext i32 %14 to i64
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = add nsw i32 %0, -1
  store i32 %21, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 0, i32* @lib, align 4
  %22 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %21, i32 noundef %1, i32 noundef %22) #3
  %23 = load i32, i32* @lib, align 4
  %24 = call i32 @fval(i32 noundef %23, i32 noundef %5)
  store i32 %24, i32* %9, align 4
  br label %46

25:                                               ; preds = %13
  %26 = add nsw i32 %0, -1
  %27 = sext i32 %26 to i64
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32, i32* @mymove, align 4
  %33 = icmp eq i32 %32, %31
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = add nsw i32 %0, -1
  %36 = sext i32 %35 to i64
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %.not15 = icmp eq i8 %39, 0
  br i1 %.not15, label %40, label %45

40:                                               ; preds = %34
  %41 = add nsw i32 %0, -1
  %42 = call i32 @findnextmove(i32 noundef %41, i32 noundef %1, i32* noundef nonnull %7, i32* noundef nonnull %8, i32* noundef nonnull %9, i32 noundef %5)
  %.not16 = icmp eq i32 %42, 0
  br i1 %.not16, label %44, label %43

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %40
  %.01 = phi i32 [ 1, %43 ], [ 0, %40 ]
  br label %45

45:                                               ; preds = %44, %34, %25
  %.1 = phi i32 [ 0, %34 ], [ %.01, %44 ], [ 0, %25 ]
  br label %46

46:                                               ; preds = %45, %20
  %.2 = phi i32 [ 1, %20 ], [ %.1, %45 ]
  br label %47

47:                                               ; preds = %46, %6
  %.3 = phi i32 [ %.2, %46 ], [ 0, %6 ]
  %.not2 = icmp eq i32 %.3, 0
  br i1 %.not2, label %60, label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = icmp eq i32 %5, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  br label %209

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %47
  %.4 = phi i32 [ 0, %59 ], [ %.3, %47 ]
  %.not3 = icmp eq i32 %0, 18
  br i1 %.not3, label %95, label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %0, 1
  %63 = sext i32 %62 to i64
  %64 = sext i32 %1 to i64
  %65 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = add nsw i32 %0, 1
  store i32 %69, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 0, i32* @lib, align 4
  %70 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %69, i32 noundef %1, i32 noundef %70) #3
  %71 = load i32, i32* @lib, align 4
  %72 = call i32 @fval(i32 noundef %71, i32 noundef %5)
  store i32 %72, i32* %9, align 4
  br label %94

73:                                               ; preds = %61
  %74 = add nsw i32 %0, 1
  %75 = sext i32 %74 to i64
  %76 = sext i32 %1 to i64
  %77 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* @mymove, align 4
  %81 = icmp eq i32 %80, %79
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = add nsw i32 %0, 1
  %84 = sext i32 %83 to i64
  %85 = sext i32 %1 to i64
  %86 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %.not13 = icmp eq i8 %87, 0
  br i1 %.not13, label %88, label %93

88:                                               ; preds = %82
  %89 = add nsw i32 %0, 1
  %90 = call i32 @findnextmove(i32 noundef %89, i32 noundef %1, i32* noundef nonnull %7, i32* noundef nonnull %8, i32* noundef nonnull %9, i32 noundef %5)
  %.not14 = icmp eq i32 %90, 0
  br i1 %.not14, label %92, label %91

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91, %88
  %.5 = phi i32 [ 1, %91 ], [ %.4, %88 ]
  br label %93

93:                                               ; preds = %92, %82, %73
  %.6 = phi i32 [ %.4, %82 ], [ %.5, %92 ], [ %.4, %73 ]
  br label %94

94:                                               ; preds = %93, %68
  %.7 = phi i32 [ 1, %68 ], [ %.6, %93 ]
  br label %95

95:                                               ; preds = %94, %60
  %.8 = phi i32 [ %.7, %94 ], [ %.4, %60 ]
  %.not4 = icmp eq i32 %.8, 0
  br i1 %.not4, label %108, label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %96
  %105 = icmp eq i32 %5, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  br label %209

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %107, %95
  %.9 = phi i32 [ 0, %107 ], [ %.8, %95 ]
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %143, label %109

109:                                              ; preds = %108
  %110 = sext i32 %0 to i64
  %111 = add nsw i32 %1, -1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  store i32 %0, i32* %7, align 4
  %117 = add nsw i32 %1, -1
  store i32 %117, i32* %8, align 4
  store i32 0, i32* @lib, align 4
  %118 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %0, i32 noundef %117, i32 noundef %118) #3
  %119 = load i32, i32* @lib, align 4
  %120 = call i32 @fval(i32 noundef %119, i32 noundef %5)
  store i32 %120, i32* %9, align 4
  br label %142

121:                                              ; preds = %109
  %122 = sext i32 %0 to i64
  %123 = add nsw i32 %1, -1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i32, i32* @mymove, align 4
  %129 = icmp eq i32 %128, %127
  br i1 %129, label %130, label %141

130:                                              ; preds = %121
  %131 = sext i32 %0 to i64
  %132 = add nsw i32 %1, -1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %.not11 = icmp eq i8 %135, 0
  br i1 %.not11, label %136, label %141

136:                                              ; preds = %130
  %137 = add nsw i32 %1, -1
  %138 = call i32 @findnextmove(i32 noundef %0, i32 noundef %137, i32* noundef nonnull %7, i32* noundef nonnull %8, i32* noundef nonnull %9, i32 noundef %5)
  %.not12 = icmp eq i32 %138, 0
  br i1 %.not12, label %140, label %139

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %139, %136
  %.10 = phi i32 [ 1, %139 ], [ %.9, %136 ]
  br label %141

141:                                              ; preds = %140, %130, %121
  %.11 = phi i32 [ %.9, %130 ], [ %.10, %140 ], [ %.9, %121 ]
  br label %142

142:                                              ; preds = %141, %116
  %.12 = phi i32 [ 1, %116 ], [ %.11, %141 ]
  br label %143

143:                                              ; preds = %142, %108
  %.13 = phi i32 [ %.12, %142 ], [ %.9, %108 ]
  %.not6 = icmp eq i32 %.13, 0
  br i1 %.not6, label %156, label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %144
  %153 = icmp eq i32 %5, 1
  br i1 %153, label %154, label %155

154:                                              ; preds = %152
  br label %209

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155, %143
  %.14 = phi i32 [ 0, %155 ], [ %.13, %143 ]
  %.not7 = icmp eq i32 %1, 18
  br i1 %.not7, label %191, label %157

157:                                              ; preds = %156
  %158 = sext i32 %0 to i64
  %159 = add nsw i32 %1, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %157
  store i32 %0, i32* %7, align 4
  %165 = add nsw i32 %1, 1
  store i32 %165, i32* %8, align 4
  store i32 0, i32* @lib, align 4
  %166 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %0, i32 noundef %165, i32 noundef %166) #3
  %167 = load i32, i32* @lib, align 4
  %168 = call i32 @fval(i32 noundef %167, i32 noundef %5)
  store i32 %168, i32* %9, align 4
  br label %190

169:                                              ; preds = %157
  %170 = sext i32 %0 to i64
  %171 = add nsw i32 %1, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = load i32, i32* @mymove, align 4
  %177 = icmp eq i32 %176, %175
  br i1 %177, label %178, label %189

178:                                              ; preds = %169
  %179 = sext i32 %0 to i64
  %180 = add nsw i32 %1, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %179, i64 %181
  %183 = load i8, i8* %182, align 1
  %.not9 = icmp eq i8 %183, 0
  br i1 %.not9, label %184, label %189

184:                                              ; preds = %178
  %185 = add nsw i32 %1, 1
  %186 = call i32 @findnextmove(i32 noundef %0, i32 noundef %185, i32* noundef nonnull %7, i32* noundef nonnull %8, i32* noundef nonnull %9, i32 noundef %5)
  %.not10 = icmp eq i32 %186, 0
  br i1 %.not10, label %188, label %187

187:                                              ; preds = %184
  br label %188

188:                                              ; preds = %187, %184
  %.15 = phi i32 [ 1, %187 ], [ %.14, %184 ]
  br label %189

189:                                              ; preds = %188, %178, %169
  %.16 = phi i32 [ %.14, %178 ], [ %.15, %188 ], [ %.14, %169 ]
  br label %190

190:                                              ; preds = %189, %164
  %.17 = phi i32 [ 1, %164 ], [ %.16, %189 ]
  br label %191

191:                                              ; preds = %190, %156
  %.18 = phi i32 [ %.17, %190 ], [ %.14, %156 ]
  %.not8 = icmp eq i32 %.18, 0
  br i1 %.not8, label %204, label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %2, align 4
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %196, %192
  %201 = icmp eq i32 %5, 1
  br i1 %201, label %202, label %203

202:                                              ; preds = %200
  br label %209

203:                                              ; preds = %200
  br label %204

204:                                              ; preds = %203, %191
  %205 = load i32, i32* %4, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %209

208:                                              ; preds = %204
  br label %209

209:                                              ; preds = %208, %207, %202, %154, %106, %58
  %.0 = phi i32 [ 1, %58 ], [ 1, %106 ], [ 1, %154 ], [ 1, %202 ], [ 1, %207 ], [ 0, %208 ]
  ret i32 %.0
}

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fval(i32 noundef %0, i32 noundef %1) #2 {
  %.not = icmp sgt i32 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %12

4:                                                ; preds = %2
  %5 = xor i32 %1, -1
  %6 = add i32 %5, %0
  %7 = mul nsw i32 %6, 50
  %8 = mul nsw i32 %1, %1
  %9 = mul nsw i32 %8, %1
  %10 = sdiv i32 %7, %9
  %11 = add nsw i32 %10, 40
  br label %12

12:                                               ; preds = %4, %3
  %.0 = phi i32 [ -1, %3 ], [ %11, %4 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
