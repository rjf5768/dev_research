; ModuleID = './pr42833.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42833.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_s8 = type { i8, i8, i8, i8 }
%union.anon.1 = type { i32 }

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @helper_neon_rshl_s8(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %tmpcast = bitcast i32* %3 to %struct.neon_s8*
  %4 = alloca i32, align 4
  %tmpcast1 = bitcast i32* %4 to %struct.neon_s8*
  %5 = alloca i32, align 4
  %tmpcast2 = bitcast i32* %5 to %struct.neon_s8*
  %6 = alloca %union.anon.1, align 4
  br label %7

7:                                                ; preds = %2
  store i32 %0, i32* %3, align 4
  br label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  store i32 %1, i32* %4, align 4
  br label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  %12 = bitcast i32* %4 to i8*
  %13 = load i8, i8* %12, align 4
  %14 = icmp sgt i8 %13, 7
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = bitcast i32* %5 to i8*
  store i8 0, i8* %16, align 4
  br label %63

17:                                               ; preds = %11
  %18 = icmp slt i8 %13, -8
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = bitcast i32* %3 to i8*
  %21 = load i8, i8* %20, align 4
  %22 = ashr i8 %21, 7
  %23 = bitcast i32* %5 to i8*
  store i8 %22, i8* %23, align 4
  br label %62

24:                                               ; preds = %17
  %25 = icmp eq i8 %13, -8
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = bitcast i32* %3 to i8*
  %28 = load i8, i8* %27, align 4
  %29 = sext i8 %28 to i32
  %30 = sext i8 %13 to i32
  %31 = add nsw i32 %30, -1
  %32 = ashr i32 %29, %31
  %33 = trunc i32 %32 to i8
  %34 = add i8 %33, 1
  %35 = bitcast i32* %5 to i8*
  %36 = ashr i8 %34, 1
  store i8 %36, i8* %35, align 4
  br label %61

37:                                               ; preds = %24
  %38 = icmp slt i8 %13, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  %40 = bitcast i32* %3 to i8*
  %41 = load i8, i8* %40, align 4
  %42 = sext i8 %41 to i32
  %43 = xor i8 %13, -1
  %44 = zext i8 %43 to i32
  %45 = shl i32 1, %44
  %46 = add nsw i32 %45, %42
  %47 = sext i8 %13 to i32
  %48 = sub nsw i32 0, %47
  %49 = ashr i32 %46, %48
  %50 = trunc i32 %49 to i8
  %51 = bitcast i32* %5 to i8*
  store i8 %50, i8* %51, align 4
  br label %60

52:                                               ; preds = %37
  %53 = bitcast i32* %3 to i8*
  %54 = load i8, i8* %53, align 4
  %55 = zext i8 %54 to i32
  %56 = zext i8 %13 to i32
  %57 = shl i32 %55, %56
  %58 = trunc i32 %57 to i8
  %59 = bitcast i32* %5 to i8*
  store i8 %58, i8* %59, align 4
  br label %60

60:                                               ; preds = %52, %39
  br label %61

61:                                               ; preds = %60, %26
  br label %62

62:                                               ; preds = %61, %19
  br label %63

63:                                               ; preds = %62, %15
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast1, i64 0, i32 1
  %67 = load i8, i8* %66, align 1
  %68 = icmp sgt i8 %67, 7
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 1
  store i8 0, i8* %70, align 1
  br label %117

71:                                               ; preds = %65
  %72 = icmp slt i8 %67, -8
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 1
  %75 = load i8, i8* %74, align 1
  %76 = ashr i8 %75, 7
  %77 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 1
  store i8 %76, i8* %77, align 1
  br label %116

78:                                               ; preds = %71
  %79 = icmp eq i8 %67, -8
  br i1 %79, label %80, label %91

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = sext i8 %67 to i32
  %85 = add nsw i32 %84, -1
  %86 = ashr i32 %83, %85
  %87 = trunc i32 %86 to i8
  %88 = add i8 %87, 1
  %89 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 1
  %90 = ashr i8 %88, 1
  store i8 %90, i8* %89, align 1
  br label %115

91:                                               ; preds = %78
  %92 = icmp slt i8 %67, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = xor i8 %67, -1
  %98 = zext i8 %97 to i32
  %99 = shl i32 1, %98
  %100 = add nsw i32 %99, %96
  %101 = sext i8 %67 to i32
  %102 = sub nsw i32 0, %101
  %103 = ashr i32 %100, %102
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 1
  store i8 %104, i8* %105, align 1
  br label %114

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 1
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = zext i8 %67 to i32
  %111 = shl i32 %109, %110
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 1
  store i8 %112, i8* %113, align 1
  br label %114

114:                                              ; preds = %106, %93
  br label %115

115:                                              ; preds = %114, %80
  br label %116

116:                                              ; preds = %115, %73
  br label %117

117:                                              ; preds = %116, %69
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast1, i64 0, i32 2
  %121 = load i8, i8* %120, align 2
  %122 = icmp sgt i8 %121, 7
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 2
  store i8 0, i8* %124, align 2
  br label %171

125:                                              ; preds = %119
  %126 = icmp slt i8 %121, -8
  br i1 %126, label %127, label %132

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 2
  %129 = load i8, i8* %128, align 2
  %130 = ashr i8 %129, 7
  %131 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 2
  store i8 %130, i8* %131, align 2
  br label %170

132:                                              ; preds = %125
  %133 = icmp eq i8 %121, -8
  br i1 %133, label %134, label %145

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 2
  %136 = load i8, i8* %135, align 2
  %137 = sext i8 %136 to i32
  %138 = sext i8 %121 to i32
  %139 = add nsw i32 %138, -1
  %140 = ashr i32 %137, %139
  %141 = trunc i32 %140 to i8
  %142 = add i8 %141, 1
  %143 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 2
  %144 = ashr i8 %142, 1
  store i8 %144, i8* %143, align 2
  br label %169

145:                                              ; preds = %132
  %146 = icmp slt i8 %121, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 2
  %149 = load i8, i8* %148, align 2
  %150 = sext i8 %149 to i32
  %151 = xor i8 %121, -1
  %152 = zext i8 %151 to i32
  %153 = shl i32 1, %152
  %154 = add nsw i32 %153, %150
  %155 = sext i8 %121 to i32
  %156 = sub nsw i32 0, %155
  %157 = ashr i32 %154, %156
  %158 = trunc i32 %157 to i8
  %159 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 2
  store i8 %158, i8* %159, align 2
  br label %168

160:                                              ; preds = %145
  %161 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 2
  %162 = load i8, i8* %161, align 2
  %163 = zext i8 %162 to i32
  %164 = zext i8 %121 to i32
  %165 = shl i32 %163, %164
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 2
  store i8 %166, i8* %167, align 2
  br label %168

168:                                              ; preds = %160, %147
  br label %169

169:                                              ; preds = %168, %134
  br label %170

170:                                              ; preds = %169, %127
  br label %171

171:                                              ; preds = %170, %123
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172
  %174 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast1, i64 0, i32 3
  %175 = load i8, i8* %174, align 1
  %176 = icmp sgt i8 %175, 7
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 3
  store i8 0, i8* %178, align 1
  br label %225

179:                                              ; preds = %173
  %180 = icmp slt i8 %175, -8
  br i1 %180, label %181, label %186

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 3
  %183 = load i8, i8* %182, align 1
  %184 = ashr i8 %183, 7
  %185 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 3
  store i8 %184, i8* %185, align 1
  br label %224

186:                                              ; preds = %179
  %187 = icmp eq i8 %175, -8
  br i1 %187, label %188, label %199

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 3
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = sext i8 %175 to i32
  %193 = add nsw i32 %192, -1
  %194 = ashr i32 %191, %193
  %195 = trunc i32 %194 to i8
  %196 = add i8 %195, 1
  %197 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 3
  %198 = ashr i8 %196, 1
  store i8 %198, i8* %197, align 1
  br label %223

199:                                              ; preds = %186
  %200 = icmp slt i8 %175, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %199
  %202 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 3
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = xor i8 %175, -1
  %206 = zext i8 %205 to i32
  %207 = shl i32 1, %206
  %208 = add nsw i32 %207, %204
  %209 = sext i8 %175 to i32
  %210 = sub nsw i32 0, %209
  %211 = ashr i32 %208, %210
  %212 = trunc i32 %211 to i8
  %213 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 3
  store i8 %212, i8* %213, align 1
  br label %222

214:                                              ; preds = %199
  %215 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast, i64 0, i32 3
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = zext i8 %175 to i32
  %219 = shl i32 %217, %218
  %220 = trunc i32 %219 to i8
  %221 = getelementptr inbounds %struct.neon_s8, %struct.neon_s8* %tmpcast2, i64 0, i32 3
  store i8 %220, i8* %221, align 1
  br label %222

222:                                              ; preds = %214, %201
  br label %223

223:                                              ; preds = %222, %188
  br label %224

224:                                              ; preds = %223, %181
  br label %225

225:                                              ; preds = %224, %177
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  %228 = getelementptr inbounds %union.anon.1, %union.anon.1* %6, i64 0, i32 0
  %229 = load i32, i32* %5, align 4
  store i32 %229, i32* %228, align 4
  br label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %union.anon.1, %union.anon.1* %6, i64 0, i32 0
  %232 = load i32, i32* %231, align 4
  ret i32 %232
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 @helper_neon_rshl_s8(i32 noundef 84215045, i32 noundef 16843009)
  %.not = icmp eq i32 %1, 168430090
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
