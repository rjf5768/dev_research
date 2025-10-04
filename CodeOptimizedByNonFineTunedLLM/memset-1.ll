; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [80 x i8] }

@A = dso_local global i8 65, align 1
@u = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %225, %0
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 8
  br i1 %10, label %11, label %228

11:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %221, %11
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 80
  br i1 %15, label %16, label %224

16:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 96
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 %23
  store i8 97, i8* %24, align 1
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %17, !llvm.loop !4

28:                                               ; preds = %17
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 0), i64 %30
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %31, i8 0, i64 %33, i1 false)
  store i8* %31, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 0), i64 %36
  %38 = icmp ne i8* %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  call void @abort() #3
  unreachable

40:                                               ; preds = %28
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 97
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  call void @abort() #3
  unreachable

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  br label %41, !llvm.loop !6

57:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  call void @abort() #3
  unreachable

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %58, !llvm.loop !7

74:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %86, %74
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 8
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 97
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  call void @abort() #3
  unreachable

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  br label %75, !llvm.loop !8

91:                                               ; preds = %75
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 0), i64 %93
  %95 = load i8, i8* @A, align 1
  %96 = sext i8 %95 to i32
  %97 = trunc i32 %96 to i8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %94, i8 %97, i64 %99, i1 false)
  store i8* %94, i8** %5, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 0), i64 %102
  %104 = icmp ne i8* %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  call void @abort() #3
  unreachable

106:                                              ; preds = %91
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %118, %106
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %2, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 97
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  call void @abort() #3
  unreachable

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %6, align 8
  br label %107, !llvm.loop !9

123:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %135, %123
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %3, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load i8*, i8** %6, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 65
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  call void @abort() #3
  unreachable

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %6, align 8
  br label %124, !llvm.loop !10

140:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %152, %140
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %143, 8
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = load i8*, i8** %6, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 97
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  call void @abort() #3
  unreachable

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %6, align 8
  br label %141, !llvm.loop !11

157:                                              ; preds = %141
  %158 = load i32, i32* %2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 0), i64 %159
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %160, i8 66, i64 %162, i1 false)
  store i8* %160, i8** %5, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = load i32, i32* %2, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 0), i64 %165
  %167 = icmp ne i8* %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  call void @abort() #3
  unreachable

169:                                              ; preds = %157
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %181, %169
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %2, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load i8*, i8** %6, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 97
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  call void @abort() #3
  unreachable

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %6, align 8
  br label %170, !llvm.loop !12

186:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %198, %186
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* %3, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = load i8*, i8** %6, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 66
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  call void @abort() #3
  unreachable

197:                                              ; preds = %191
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  %201 = load i8*, i8** %6, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %6, align 8
  br label %187, !llvm.loop !13

203:                                              ; preds = %187
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %215, %203
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = icmp ult i64 %206, 8
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load i8*, i8** %6, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 97
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  call void @abort() #3
  unreachable

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %4, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %4, align 4
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %6, align 8
  br label %204, !llvm.loop !14

220:                                              ; preds = %204
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %3, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %3, align 4
  br label %12, !llvm.loop !15

224:                                              ; preds = %12
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %2, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %2, align 4
  br label %7, !llvm.loop !16

228:                                              ; preds = %7
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
