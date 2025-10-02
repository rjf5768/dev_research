; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp eq i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp ne i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test5(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp slt i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp slt i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test7(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp sle i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test8(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp sle i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test9(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp sgt i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test10(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp sgt i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test11(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp sge i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test12(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp sge i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test1(i32 noundef -30)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i32 @test1(i32 noundef -29)
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i32 @test1(i32 noundef -20)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call i32 @test1(i32 noundef -19)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i32 @test2(i32 noundef 0)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i32 @test2(i32 noundef 9)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  %26 = call i32 @test2(i32 noundef 10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  %30 = call i32 @test2(i32 noundef -1)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  %34 = call i32 @test2(i32 noundef -9)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  %38 = call i32 @test2(i32 noundef -10)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call i32 @test3(i32 noundef -30)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  %46 = call i32 @test3(i32 noundef -29)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @abort() #2
  unreachable

49:                                               ; preds = %45
  %50 = call i32 @test3(i32 noundef -20)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @abort() #2
  unreachable

53:                                               ; preds = %49
  %54 = call i32 @test3(i32 noundef -19)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @abort() #2
  unreachable

57:                                               ; preds = %53
  %58 = call i32 @test4(i32 noundef 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @abort() #2
  unreachable

61:                                               ; preds = %57
  %62 = call i32 @test4(i32 noundef 9)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @abort() #2
  unreachable

65:                                               ; preds = %61
  %66 = call i32 @test4(i32 noundef 10)
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  call void @abort() #2
  unreachable

69:                                               ; preds = %65
  %70 = call i32 @test4(i32 noundef -1)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @abort() #2
  unreachable

73:                                               ; preds = %69
  %74 = call i32 @test4(i32 noundef -9)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @abort() #2
  unreachable

77:                                               ; preds = %73
  %78 = call i32 @test4(i32 noundef -10)
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @abort() #2
  unreachable

81:                                               ; preds = %77
  %82 = call i32 @test5(i32 noundef -30)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  call void @abort() #2
  unreachable

85:                                               ; preds = %81
  %86 = call i32 @test5(i32 noundef -29)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @abort() #2
  unreachable

89:                                               ; preds = %85
  %90 = call i32 @test5(i32 noundef -20)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @abort() #2
  unreachable

93:                                               ; preds = %89
  %94 = call i32 @test5(i32 noundef -19)
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @abort() #2
  unreachable

97:                                               ; preds = %93
  %98 = call i32 @test6(i32 noundef 0)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @abort() #2
  unreachable

101:                                              ; preds = %97
  %102 = call i32 @test6(i32 noundef 9)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  call void @abort() #2
  unreachable

105:                                              ; preds = %101
  %106 = call i32 @test6(i32 noundef 10)
  %107 = icmp ne i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  call void @abort() #2
  unreachable

109:                                              ; preds = %105
  %110 = call i32 @test6(i32 noundef -1)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  call void @abort() #2
  unreachable

113:                                              ; preds = %109
  %114 = call i32 @test6(i32 noundef -9)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void @abort() #2
  unreachable

117:                                              ; preds = %113
  %118 = call i32 @test6(i32 noundef -10)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  call void @abort() #2
  unreachable

121:                                              ; preds = %117
  %122 = call i32 @test7(i32 noundef -30)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @abort() #2
  unreachable

125:                                              ; preds = %121
  %126 = call i32 @test7(i32 noundef -29)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @abort() #2
  unreachable

129:                                              ; preds = %125
  %130 = call i32 @test7(i32 noundef -20)
  %131 = icmp ne i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void @abort() #2
  unreachable

133:                                              ; preds = %129
  %134 = call i32 @test7(i32 noundef -19)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  call void @abort() #2
  unreachable

137:                                              ; preds = %133
  %138 = call i32 @test8(i32 noundef 0)
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  call void @abort() #2
  unreachable

141:                                              ; preds = %137
  %142 = call i32 @test8(i32 noundef 9)
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  call void @abort() #2
  unreachable

145:                                              ; preds = %141
  %146 = call i32 @test8(i32 noundef 10)
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  call void @abort() #2
  unreachable

149:                                              ; preds = %145
  %150 = call i32 @test8(i32 noundef -1)
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  call void @abort() #2
  unreachable

153:                                              ; preds = %149
  %154 = call i32 @test8(i32 noundef -9)
  %155 = icmp ne i32 %154, 1
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  call void @abort() #2
  unreachable

157:                                              ; preds = %153
  %158 = call i32 @test8(i32 noundef -10)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  call void @abort() #2
  unreachable

161:                                              ; preds = %157
  %162 = call i32 @test9(i32 noundef -30)
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  call void @abort() #2
  unreachable

165:                                              ; preds = %161
  %166 = call i32 @test9(i32 noundef -29)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  call void @abort() #2
  unreachable

169:                                              ; preds = %165
  %170 = call i32 @test9(i32 noundef -20)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void @abort() #2
  unreachable

173:                                              ; preds = %169
  %174 = call i32 @test9(i32 noundef -19)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void @abort() #2
  unreachable

177:                                              ; preds = %173
  %178 = call i32 @test10(i32 noundef 0)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  call void @abort() #2
  unreachable

181:                                              ; preds = %177
  %182 = call i32 @test10(i32 noundef 9)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  call void @abort() #2
  unreachable

185:                                              ; preds = %181
  %186 = call i32 @test10(i32 noundef 10)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  call void @abort() #2
  unreachable

189:                                              ; preds = %185
  %190 = call i32 @test10(i32 noundef -1)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  call void @abort() #2
  unreachable

193:                                              ; preds = %189
  %194 = call i32 @test10(i32 noundef -9)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  call void @abort() #2
  unreachable

197:                                              ; preds = %193
  %198 = call i32 @test10(i32 noundef -10)
  %199 = icmp ne i32 %198, 1
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  call void @abort() #2
  unreachable

201:                                              ; preds = %197
  %202 = call i32 @test11(i32 noundef -30)
  %203 = icmp ne i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  call void @abort() #2
  unreachable

205:                                              ; preds = %201
  %206 = call i32 @test11(i32 noundef -29)
  %207 = icmp ne i32 %206, 1
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  call void @abort() #2
  unreachable

209:                                              ; preds = %205
  %210 = call i32 @test11(i32 noundef -20)
  %211 = icmp ne i32 %210, 1
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  call void @abort() #2
  unreachable

213:                                              ; preds = %209
  %214 = call i32 @test11(i32 noundef -19)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  call void @abort() #2
  unreachable

217:                                              ; preds = %213
  %218 = call i32 @test12(i32 noundef 0)
  %219 = icmp ne i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  call void @abort() #2
  unreachable

221:                                              ; preds = %217
  %222 = call i32 @test12(i32 noundef 9)
  %223 = icmp ne i32 %222, 1
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  call void @abort() #2
  unreachable

225:                                              ; preds = %221
  %226 = call i32 @test12(i32 noundef 10)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  call void @abort() #2
  unreachable

229:                                              ; preds = %225
  %230 = call i32 @test12(i32 noundef -1)
  %231 = icmp ne i32 %230, 1
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  call void @abort() #2
  unreachable

233:                                              ; preds = %229
  %234 = call i32 @test12(i32 noundef -9)
  %235 = icmp ne i32 %234, 1
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  call void @abort() #2
  unreachable

237:                                              ; preds = %233
  %238 = call i32 @test12(i32 noundef -10)
  %239 = icmp ne i32 %238, 1
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  call void @abort() #2
  unreachable

241:                                              ; preds = %237
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
