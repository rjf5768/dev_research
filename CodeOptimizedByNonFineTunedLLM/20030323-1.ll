; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030323-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030323-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @NSReturnAddress(i32 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %205 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 4, label %13
    i32 5, label %15
    i32 6, label %17
    i32 7, label %19
    i32 8, label %21
    i32 9, label %23
    i32 10, label %25
    i32 11, label %27
    i32 12, label %29
    i32 13, label %31
    i32 14, label %33
    i32 15, label %35
    i32 16, label %37
    i32 17, label %39
    i32 18, label %41
    i32 19, label %43
    i32 20, label %45
    i32 21, label %47
    i32 22, label %49
    i32 23, label %51
    i32 24, label %53
    i32 25, label %55
    i32 26, label %57
    i32 27, label %59
    i32 28, label %61
    i32 29, label %63
    i32 30, label %65
    i32 31, label %67
    i32 32, label %69
    i32 33, label %71
    i32 34, label %73
    i32 35, label %75
    i32 36, label %77
    i32 37, label %79
    i32 38, label %81
    i32 39, label %83
    i32 40, label %85
    i32 41, label %87
    i32 42, label %89
    i32 43, label %91
    i32 44, label %93
    i32 45, label %95
    i32 46, label %97
    i32 47, label %99
    i32 48, label %101
    i32 49, label %103
    i32 50, label %105
    i32 51, label %107
    i32 52, label %109
    i32 53, label %111
    i32 54, label %113
    i32 55, label %115
    i32 56, label %117
    i32 57, label %119
    i32 58, label %121
    i32 59, label %123
    i32 60, label %125
    i32 61, label %127
    i32 62, label %129
    i32 63, label %131
    i32 64, label %133
    i32 65, label %135
    i32 66, label %137
    i32 67, label %139
    i32 68, label %141
    i32 69, label %143
    i32 70, label %145
    i32 71, label %147
    i32 72, label %149
    i32 73, label %151
    i32 74, label %153
    i32 75, label %155
    i32 76, label %157
    i32 77, label %159
    i32 78, label %161
    i32 79, label %163
    i32 80, label %165
    i32 81, label %167
    i32 82, label %169
    i32 83, label %171
    i32 84, label %173
    i32 85, label %175
    i32 86, label %177
    i32 87, label %179
    i32 88, label %181
    i32 89, label %183
    i32 90, label %185
    i32 91, label %187
    i32 92, label %189
    i32 93, label %191
    i32 94, label %193
    i32 95, label %195
    i32 96, label %197
    i32 97, label %199
    i32 98, label %201
    i32 99, label %203
  ]

5:                                                ; preds = %1
  %6 = call i8* @llvm.returnaddress(i32 1)
  store i8* %6, i8** %2, align 8
  br label %206

7:                                                ; preds = %1
  %8 = call i8* @llvm.returnaddress(i32 2)
  store i8* %8, i8** %2, align 8
  br label %206

9:                                                ; preds = %1
  %10 = call i8* @llvm.returnaddress(i32 3)
  store i8* %10, i8** %2, align 8
  br label %206

11:                                               ; preds = %1
  %12 = call i8* @llvm.returnaddress(i32 4)
  store i8* %12, i8** %2, align 8
  br label %206

13:                                               ; preds = %1
  %14 = call i8* @llvm.returnaddress(i32 5)
  store i8* %14, i8** %2, align 8
  br label %206

15:                                               ; preds = %1
  %16 = call i8* @llvm.returnaddress(i32 6)
  store i8* %16, i8** %2, align 8
  br label %206

17:                                               ; preds = %1
  %18 = call i8* @llvm.returnaddress(i32 7)
  store i8* %18, i8** %2, align 8
  br label %206

19:                                               ; preds = %1
  %20 = call i8* @llvm.returnaddress(i32 8)
  store i8* %20, i8** %2, align 8
  br label %206

21:                                               ; preds = %1
  %22 = call i8* @llvm.returnaddress(i32 9)
  store i8* %22, i8** %2, align 8
  br label %206

23:                                               ; preds = %1
  %24 = call i8* @llvm.returnaddress(i32 10)
  store i8* %24, i8** %2, align 8
  br label %206

25:                                               ; preds = %1
  %26 = call i8* @llvm.returnaddress(i32 11)
  store i8* %26, i8** %2, align 8
  br label %206

27:                                               ; preds = %1
  %28 = call i8* @llvm.returnaddress(i32 12)
  store i8* %28, i8** %2, align 8
  br label %206

29:                                               ; preds = %1
  %30 = call i8* @llvm.returnaddress(i32 13)
  store i8* %30, i8** %2, align 8
  br label %206

31:                                               ; preds = %1
  %32 = call i8* @llvm.returnaddress(i32 14)
  store i8* %32, i8** %2, align 8
  br label %206

33:                                               ; preds = %1
  %34 = call i8* @llvm.returnaddress(i32 15)
  store i8* %34, i8** %2, align 8
  br label %206

35:                                               ; preds = %1
  %36 = call i8* @llvm.returnaddress(i32 16)
  store i8* %36, i8** %2, align 8
  br label %206

37:                                               ; preds = %1
  %38 = call i8* @llvm.returnaddress(i32 17)
  store i8* %38, i8** %2, align 8
  br label %206

39:                                               ; preds = %1
  %40 = call i8* @llvm.returnaddress(i32 18)
  store i8* %40, i8** %2, align 8
  br label %206

41:                                               ; preds = %1
  %42 = call i8* @llvm.returnaddress(i32 19)
  store i8* %42, i8** %2, align 8
  br label %206

43:                                               ; preds = %1
  %44 = call i8* @llvm.returnaddress(i32 20)
  store i8* %44, i8** %2, align 8
  br label %206

45:                                               ; preds = %1
  %46 = call i8* @llvm.returnaddress(i32 21)
  store i8* %46, i8** %2, align 8
  br label %206

47:                                               ; preds = %1
  %48 = call i8* @llvm.returnaddress(i32 22)
  store i8* %48, i8** %2, align 8
  br label %206

49:                                               ; preds = %1
  %50 = call i8* @llvm.returnaddress(i32 23)
  store i8* %50, i8** %2, align 8
  br label %206

51:                                               ; preds = %1
  %52 = call i8* @llvm.returnaddress(i32 24)
  store i8* %52, i8** %2, align 8
  br label %206

53:                                               ; preds = %1
  %54 = call i8* @llvm.returnaddress(i32 25)
  store i8* %54, i8** %2, align 8
  br label %206

55:                                               ; preds = %1
  %56 = call i8* @llvm.returnaddress(i32 26)
  store i8* %56, i8** %2, align 8
  br label %206

57:                                               ; preds = %1
  %58 = call i8* @llvm.returnaddress(i32 27)
  store i8* %58, i8** %2, align 8
  br label %206

59:                                               ; preds = %1
  %60 = call i8* @llvm.returnaddress(i32 28)
  store i8* %60, i8** %2, align 8
  br label %206

61:                                               ; preds = %1
  %62 = call i8* @llvm.returnaddress(i32 29)
  store i8* %62, i8** %2, align 8
  br label %206

63:                                               ; preds = %1
  %64 = call i8* @llvm.returnaddress(i32 30)
  store i8* %64, i8** %2, align 8
  br label %206

65:                                               ; preds = %1
  %66 = call i8* @llvm.returnaddress(i32 31)
  store i8* %66, i8** %2, align 8
  br label %206

67:                                               ; preds = %1
  %68 = call i8* @llvm.returnaddress(i32 32)
  store i8* %68, i8** %2, align 8
  br label %206

69:                                               ; preds = %1
  %70 = call i8* @llvm.returnaddress(i32 33)
  store i8* %70, i8** %2, align 8
  br label %206

71:                                               ; preds = %1
  %72 = call i8* @llvm.returnaddress(i32 34)
  store i8* %72, i8** %2, align 8
  br label %206

73:                                               ; preds = %1
  %74 = call i8* @llvm.returnaddress(i32 35)
  store i8* %74, i8** %2, align 8
  br label %206

75:                                               ; preds = %1
  %76 = call i8* @llvm.returnaddress(i32 36)
  store i8* %76, i8** %2, align 8
  br label %206

77:                                               ; preds = %1
  %78 = call i8* @llvm.returnaddress(i32 37)
  store i8* %78, i8** %2, align 8
  br label %206

79:                                               ; preds = %1
  %80 = call i8* @llvm.returnaddress(i32 38)
  store i8* %80, i8** %2, align 8
  br label %206

81:                                               ; preds = %1
  %82 = call i8* @llvm.returnaddress(i32 39)
  store i8* %82, i8** %2, align 8
  br label %206

83:                                               ; preds = %1
  %84 = call i8* @llvm.returnaddress(i32 40)
  store i8* %84, i8** %2, align 8
  br label %206

85:                                               ; preds = %1
  %86 = call i8* @llvm.returnaddress(i32 41)
  store i8* %86, i8** %2, align 8
  br label %206

87:                                               ; preds = %1
  %88 = call i8* @llvm.returnaddress(i32 42)
  store i8* %88, i8** %2, align 8
  br label %206

89:                                               ; preds = %1
  %90 = call i8* @llvm.returnaddress(i32 43)
  store i8* %90, i8** %2, align 8
  br label %206

91:                                               ; preds = %1
  %92 = call i8* @llvm.returnaddress(i32 44)
  store i8* %92, i8** %2, align 8
  br label %206

93:                                               ; preds = %1
  %94 = call i8* @llvm.returnaddress(i32 45)
  store i8* %94, i8** %2, align 8
  br label %206

95:                                               ; preds = %1
  %96 = call i8* @llvm.returnaddress(i32 46)
  store i8* %96, i8** %2, align 8
  br label %206

97:                                               ; preds = %1
  %98 = call i8* @llvm.returnaddress(i32 47)
  store i8* %98, i8** %2, align 8
  br label %206

99:                                               ; preds = %1
  %100 = call i8* @llvm.returnaddress(i32 48)
  store i8* %100, i8** %2, align 8
  br label %206

101:                                              ; preds = %1
  %102 = call i8* @llvm.returnaddress(i32 49)
  store i8* %102, i8** %2, align 8
  br label %206

103:                                              ; preds = %1
  %104 = call i8* @llvm.returnaddress(i32 50)
  store i8* %104, i8** %2, align 8
  br label %206

105:                                              ; preds = %1
  %106 = call i8* @llvm.returnaddress(i32 51)
  store i8* %106, i8** %2, align 8
  br label %206

107:                                              ; preds = %1
  %108 = call i8* @llvm.returnaddress(i32 52)
  store i8* %108, i8** %2, align 8
  br label %206

109:                                              ; preds = %1
  %110 = call i8* @llvm.returnaddress(i32 53)
  store i8* %110, i8** %2, align 8
  br label %206

111:                                              ; preds = %1
  %112 = call i8* @llvm.returnaddress(i32 54)
  store i8* %112, i8** %2, align 8
  br label %206

113:                                              ; preds = %1
  %114 = call i8* @llvm.returnaddress(i32 55)
  store i8* %114, i8** %2, align 8
  br label %206

115:                                              ; preds = %1
  %116 = call i8* @llvm.returnaddress(i32 56)
  store i8* %116, i8** %2, align 8
  br label %206

117:                                              ; preds = %1
  %118 = call i8* @llvm.returnaddress(i32 57)
  store i8* %118, i8** %2, align 8
  br label %206

119:                                              ; preds = %1
  %120 = call i8* @llvm.returnaddress(i32 58)
  store i8* %120, i8** %2, align 8
  br label %206

121:                                              ; preds = %1
  %122 = call i8* @llvm.returnaddress(i32 59)
  store i8* %122, i8** %2, align 8
  br label %206

123:                                              ; preds = %1
  %124 = call i8* @llvm.returnaddress(i32 60)
  store i8* %124, i8** %2, align 8
  br label %206

125:                                              ; preds = %1
  %126 = call i8* @llvm.returnaddress(i32 61)
  store i8* %126, i8** %2, align 8
  br label %206

127:                                              ; preds = %1
  %128 = call i8* @llvm.returnaddress(i32 62)
  store i8* %128, i8** %2, align 8
  br label %206

129:                                              ; preds = %1
  %130 = call i8* @llvm.returnaddress(i32 63)
  store i8* %130, i8** %2, align 8
  br label %206

131:                                              ; preds = %1
  %132 = call i8* @llvm.returnaddress(i32 64)
  store i8* %132, i8** %2, align 8
  br label %206

133:                                              ; preds = %1
  %134 = call i8* @llvm.returnaddress(i32 65)
  store i8* %134, i8** %2, align 8
  br label %206

135:                                              ; preds = %1
  %136 = call i8* @llvm.returnaddress(i32 66)
  store i8* %136, i8** %2, align 8
  br label %206

137:                                              ; preds = %1
  %138 = call i8* @llvm.returnaddress(i32 67)
  store i8* %138, i8** %2, align 8
  br label %206

139:                                              ; preds = %1
  %140 = call i8* @llvm.returnaddress(i32 68)
  store i8* %140, i8** %2, align 8
  br label %206

141:                                              ; preds = %1
  %142 = call i8* @llvm.returnaddress(i32 69)
  store i8* %142, i8** %2, align 8
  br label %206

143:                                              ; preds = %1
  %144 = call i8* @llvm.returnaddress(i32 70)
  store i8* %144, i8** %2, align 8
  br label %206

145:                                              ; preds = %1
  %146 = call i8* @llvm.returnaddress(i32 71)
  store i8* %146, i8** %2, align 8
  br label %206

147:                                              ; preds = %1
  %148 = call i8* @llvm.returnaddress(i32 72)
  store i8* %148, i8** %2, align 8
  br label %206

149:                                              ; preds = %1
  %150 = call i8* @llvm.returnaddress(i32 73)
  store i8* %150, i8** %2, align 8
  br label %206

151:                                              ; preds = %1
  %152 = call i8* @llvm.returnaddress(i32 74)
  store i8* %152, i8** %2, align 8
  br label %206

153:                                              ; preds = %1
  %154 = call i8* @llvm.returnaddress(i32 75)
  store i8* %154, i8** %2, align 8
  br label %206

155:                                              ; preds = %1
  %156 = call i8* @llvm.returnaddress(i32 76)
  store i8* %156, i8** %2, align 8
  br label %206

157:                                              ; preds = %1
  %158 = call i8* @llvm.returnaddress(i32 77)
  store i8* %158, i8** %2, align 8
  br label %206

159:                                              ; preds = %1
  %160 = call i8* @llvm.returnaddress(i32 78)
  store i8* %160, i8** %2, align 8
  br label %206

161:                                              ; preds = %1
  %162 = call i8* @llvm.returnaddress(i32 79)
  store i8* %162, i8** %2, align 8
  br label %206

163:                                              ; preds = %1
  %164 = call i8* @llvm.returnaddress(i32 80)
  store i8* %164, i8** %2, align 8
  br label %206

165:                                              ; preds = %1
  %166 = call i8* @llvm.returnaddress(i32 81)
  store i8* %166, i8** %2, align 8
  br label %206

167:                                              ; preds = %1
  %168 = call i8* @llvm.returnaddress(i32 82)
  store i8* %168, i8** %2, align 8
  br label %206

169:                                              ; preds = %1
  %170 = call i8* @llvm.returnaddress(i32 83)
  store i8* %170, i8** %2, align 8
  br label %206

171:                                              ; preds = %1
  %172 = call i8* @llvm.returnaddress(i32 84)
  store i8* %172, i8** %2, align 8
  br label %206

173:                                              ; preds = %1
  %174 = call i8* @llvm.returnaddress(i32 85)
  store i8* %174, i8** %2, align 8
  br label %206

175:                                              ; preds = %1
  %176 = call i8* @llvm.returnaddress(i32 86)
  store i8* %176, i8** %2, align 8
  br label %206

177:                                              ; preds = %1
  %178 = call i8* @llvm.returnaddress(i32 87)
  store i8* %178, i8** %2, align 8
  br label %206

179:                                              ; preds = %1
  %180 = call i8* @llvm.returnaddress(i32 88)
  store i8* %180, i8** %2, align 8
  br label %206

181:                                              ; preds = %1
  %182 = call i8* @llvm.returnaddress(i32 89)
  store i8* %182, i8** %2, align 8
  br label %206

183:                                              ; preds = %1
  %184 = call i8* @llvm.returnaddress(i32 90)
  store i8* %184, i8** %2, align 8
  br label %206

185:                                              ; preds = %1
  %186 = call i8* @llvm.returnaddress(i32 91)
  store i8* %186, i8** %2, align 8
  br label %206

187:                                              ; preds = %1
  %188 = call i8* @llvm.returnaddress(i32 92)
  store i8* %188, i8** %2, align 8
  br label %206

189:                                              ; preds = %1
  %190 = call i8* @llvm.returnaddress(i32 93)
  store i8* %190, i8** %2, align 8
  br label %206

191:                                              ; preds = %1
  %192 = call i8* @llvm.returnaddress(i32 94)
  store i8* %192, i8** %2, align 8
  br label %206

193:                                              ; preds = %1
  %194 = call i8* @llvm.returnaddress(i32 95)
  store i8* %194, i8** %2, align 8
  br label %206

195:                                              ; preds = %1
  %196 = call i8* @llvm.returnaddress(i32 96)
  store i8* %196, i8** %2, align 8
  br label %206

197:                                              ; preds = %1
  %198 = call i8* @llvm.returnaddress(i32 97)
  store i8* %198, i8** %2, align 8
  br label %206

199:                                              ; preds = %1
  %200 = call i8* @llvm.returnaddress(i32 98)
  store i8* %200, i8** %2, align 8
  br label %206

201:                                              ; preds = %1
  %202 = call i8* @llvm.returnaddress(i32 99)
  store i8* %202, i8** %2, align 8
  br label %206

203:                                              ; preds = %1
  %204 = call i8* @llvm.returnaddress(i32 100)
  store i8* %204, i8** %2, align 8
  br label %206

205:                                              ; preds = %1
  store i8* null, i8** %2, align 8
  br label %206

206:                                              ; preds = %205, %203, %201, %199, %197, %195, %193, %191, %189, %187, %185, %183, %181, %179, %177, %175, %173, %171, %169, %167, %165, %163, %161, %159, %157, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %207 = load i8*, i8** %2, align 8
  ret i8* %207
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
