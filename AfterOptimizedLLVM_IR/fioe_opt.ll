; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/fioe.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/fioe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fioe(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %64

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 1, i64 0), align 1
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* @mymove, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0, i64 1), align 1
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* @mymove, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %241

22:                                               ; preds = %16, %11, %8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 18
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 1, i64 18), align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, i32* @mymove, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0, i64 17), align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* @mymove, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %241

36:                                               ; preds = %30, %25, %22
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 1), i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* @mymove, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0), i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* @mymove, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 0), i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* @mymove, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %241

63:                                               ; preds = %53, %44, %36
  store i32 0, i32* %3, align 4
  br label %241

64:                                               ; preds = %2
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 18
  br i1 %66, label %67, label %123

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 17, i64 0), align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* @mymove, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18, i64 1), align 1
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* @mymove, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %241

81:                                               ; preds = %75, %70, %67
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 18
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 17, i64 18), align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* @mymove, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18, i64 17), align 1
  %91 = zext i8 %90 to i32
  %92 = load i32, i32* @mymove, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %241

95:                                               ; preds = %89, %84, %81
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 17), i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* @mymove, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %95
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18), i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i32, i32* @mymove, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %103
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 18), i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i32, i32* @mymove, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %241

122:                                              ; preds = %112, %103, %95
  store i32 0, i32* %3, align 4
  br label %241

123:                                              ; preds = %64
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %123
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %128
  %130 = getelementptr inbounds [19 x i8], [19 x i8]* %129, i64 0, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i32, i32* @mymove, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %126
  %136 = load i32, i32* %4, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %138
  %140 = getelementptr inbounds [19 x i8], [19 x i8]* %139, i64 0, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* @mymove, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %135
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %148
  %150 = getelementptr inbounds [19 x i8], [19 x i8]* %149, i64 0, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = load i32, i32* @mymove, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  store i32 1, i32* %3, align 4
  br label %241

156:                                              ; preds = %145, %135, %126
  store i32 0, i32* %3, align 4
  br label %241

157:                                              ; preds = %123
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 18
  br i1 %159, label %160, label %191

160:                                              ; preds = %157
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %162
  %164 = getelementptr inbounds [19 x i8], [19 x i8]* %163, i64 0, i64 17
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i32, i32* @mymove, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %160
  %170 = load i32, i32* %4, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %172
  %174 = getelementptr inbounds [19 x i8], [19 x i8]* %173, i64 0, i64 18
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = load i32, i32* @mymove, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %169
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %182
  %184 = getelementptr inbounds [19 x i8], [19 x i8]* %183, i64 0, i64 18
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = load i32, i32* @mymove, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  store i32 1, i32* %3, align 4
  br label %241

190:                                              ; preds = %179, %169, %160
  store i32 0, i32* %3, align 4
  br label %241

191:                                              ; preds = %157
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %193
  %195 = load i32, i32* %5, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [19 x i8], [19 x i8]* %194, i64 0, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = load i32, i32* @mymove, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %240

203:                                              ; preds = %191
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %205
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [19 x i8], [19 x i8]* %206, i64 0, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = load i32, i32* @mymove, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %240

215:                                              ; preds = %203
  %216 = load i32, i32* %4, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %218
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [19 x i8], [19 x i8]* %219, i64 0, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = load i32, i32* @mymove, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %240

227:                                              ; preds = %215
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %230
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [19 x i8], [19 x i8]* %231, i64 0, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = load i32, i32* @mymove, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %227
  store i32 1, i32* %3, align 4
  br label %241

240:                                              ; preds = %227, %215, %203, %191
  store i32 0, i32* %3, align 4
  br label %241

241:                                              ; preds = %240, %239, %190, %189, %156, %155, %122, %121, %94, %80, %63, %62, %35, %21
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
