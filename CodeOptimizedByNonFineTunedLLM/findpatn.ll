; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findpatn.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findpatn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@findpatn.cnd = internal global i32 0, align 4
@findpatn.mtype = internal global i32 0, align 4
@opn = external dso_local global [9 x i32], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findpatn(i32* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @findpatn.mtype, align 4
  %19 = call i32 @opening(i32* noundef %16, i32* noundef %17, i32* noundef @findpatn.cnd, i32 noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %25
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i8], [19 x i8]* %26, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32*, i32** %7, align 8
  store i32 80, i32* %35, align 4
  store i32 1, i32* %4, align 4
  br label %215

36:                                               ; preds = %22
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 0), align 16
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 0), align 16
  %42 = call i32 @openregion(i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 5)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 0, i32* @findpatn.mtype, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @findpatn.mtype, align 4
  %48 = call i32 @opening(i32* noundef %45, i32* noundef %46, i32* noundef @findpatn.cnd, i32 noundef %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @findpatn.mtype, align 4
  %52 = call i32 @opening(i32* noundef %49, i32* noundef %50, i32* noundef @findpatn.cnd, i32 noundef %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32*, i32** %7, align 8
  store i32 80, i32* %56, align 4
  store i32 1, i32* %4, align 4
  br label %215

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 1), align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 1), align 4
  %62 = call i32 @openregion(i32 noundef 13, i32 noundef 0, i32 noundef 18, i32 noundef 5)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 1, i32* @findpatn.mtype, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @findpatn.mtype, align 4
  %68 = call i32 @opening(i32* noundef %65, i32* noundef %66, i32* noundef @findpatn.cnd, i32 noundef %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @findpatn.mtype, align 4
  %72 = call i32 @opening(i32* noundef %69, i32* noundef %70, i32* noundef @findpatn.cnd, i32 noundef %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32*, i32** %7, align 8
  store i32 80, i32* %76, align 4
  store i32 1, i32* %4, align 4
  br label %215

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 2), align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 2), align 8
  %82 = call i32 @openregion(i32 noundef 0, i32 noundef 13, i32 noundef 5, i32 noundef 18)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 2, i32* @findpatn.mtype, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @findpatn.mtype, align 4
  %88 = call i32 @opening(i32* noundef %85, i32* noundef %86, i32* noundef @findpatn.cnd, i32 noundef %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* @findpatn.mtype, align 4
  %92 = call i32 @opening(i32* noundef %89, i32* noundef %90, i32* noundef @findpatn.cnd, i32 noundef %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %95

95:                                               ; preds = %94, %84
  %96 = load i32*, i32** %7, align 8
  store i32 80, i32* %96, align 4
  store i32 1, i32* %4, align 4
  br label %215

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 3), align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 3), align 4
  %102 = call i32 @openregion(i32 noundef 13, i32 noundef 13, i32 noundef 18, i32 noundef 18)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 3, i32* @findpatn.mtype, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @findpatn.mtype, align 4
  %108 = call i32 @opening(i32* noundef %105, i32* noundef %106, i32* noundef @findpatn.cnd, i32 noundef %107)
  %109 = load i32*, i32** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* @findpatn.mtype, align 4
  %112 = call i32 @opening(i32* noundef %109, i32* noundef %110, i32* noundef @findpatn.cnd, i32 noundef %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 4), align 16
  br label %115

115:                                              ; preds = %114, %104
  %116 = load i32*, i32** %7, align 8
  store i32 80, i32* %116, align 4
  store i32 1, i32* %4, align 4
  br label %215

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 5), align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 5), align 4
  %122 = call i32 @openregion(i32 noundef 0, i32 noundef 6, i32 noundef 4, i32 noundef 11)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32*, i32** %5, align 8
  store i32 3, i32* %125, align 4
  %126 = load i32*, i32** %6, align 8
  store i32 9, i32* %126, align 4
  %127 = load i32*, i32** %7, align 8
  store i32 80, i32* %127, align 4
  store i32 1, i32* %4, align 4
  br label %215

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %118
  %130 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 6), align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 6), align 8
  %133 = call i32 @openregion(i32 noundef 18, i32 noundef 6, i32 noundef 14, i32 noundef 11)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32*, i32** %5, align 8
  store i32 15, i32* %136, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 9, i32* %137, align 4
  %138 = load i32*, i32** %7, align 8
  store i32 80, i32* %138, align 4
  store i32 1, i32* %4, align 4
  br label %215

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %129
  %141 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 7), align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 7), align 4
  %144 = call i32 @openregion(i32 noundef 6, i32 noundef 0, i32 noundef 11, i32 noundef 4)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32*, i32** %5, align 8
  store i32 9, i32* %147, align 4
  %148 = load i32*, i32** %6, align 8
  store i32 3, i32* %148, align 4
  %149 = load i32*, i32** %7, align 8
  store i32 80, i32* %149, align 4
  store i32 1, i32* %4, align 4
  br label %215

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %140
  %152 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 8), align 16
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i64 0, i64 8), align 16
  %155 = call i32 @openregion(i32 noundef 6, i32 noundef 18, i32 noundef 11, i32 noundef 14)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32*, i32** %5, align 8
  store i32 9, i32* %158, align 4
  %159 = load i32*, i32** %6, align 8
  store i32 15, i32* %159, align 4
  %160 = load i32*, i32** %7, align 8
  store i32 80, i32* %160, align 4
  store i32 1, i32* %4, align 4
  br label %215

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161, %151
  %163 = load i32*, i32** %5, align 8
  store i32 -1, i32* %163, align 4
  %164 = load i32*, i32** %6, align 8
  store i32 -1, i32* %164, align 4
  %165 = load i32*, i32** %7, align 8
  store i32 -1, i32* %165, align 4
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %206, %162
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 19
  br i1 %168, label %169, label %209

169:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %202, %169
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 19
  br i1 %172, label %173, label %205

173:                                              ; preds = %170
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %175
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [19 x i8], [19 x i8]* %176, i64 0, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = load i32, i32* @mymove, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %173
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @matchpat(i32 noundef %185, i32 noundef %186, i32* noundef %10, i32* noundef %11, i32* noundef %12)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  %190 = load i32, i32* %12, align 4
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %191, align 4
  %193 = icmp sgt i32 %190, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load i32, i32* %12, align 4
  %196 = load i32*, i32** %7, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32*, i32** %5, align 8
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32*, i32** %6, align 8
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %194, %189, %184, %173
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %170, !llvm.loop !4

205:                                              ; preds = %170
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %166, !llvm.loop !6

209:                                              ; preds = %166
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i32 1, i32* %4, align 4
  br label %215

214:                                              ; preds = %209
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %214, %213, %157, %146, %135, %124, %115, %95, %75, %55, %34
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @opening(i32* noundef, i32* noundef, i32* noundef, i32 noundef) #1

declare dso_local i32 @openregion(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @matchpat(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32* noundef) #1

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
