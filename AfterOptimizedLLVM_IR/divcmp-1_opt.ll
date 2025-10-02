; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp eq i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp eq i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp ne i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp ne i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test5(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp slt i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test5u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp ult i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp slt i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test7(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp sle i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test7u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp ule i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test8(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp sle i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test8u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp ule i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test9(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp sgt i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test9u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp ugt i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test10(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp sgt i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test10u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp ugt i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test11(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp sge i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test11u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = udiv i32 %3, 10
  %5 = icmp uge i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test12(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp sge i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test1(i32 noundef 19)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i32 @test1(i32 noundef 20)
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i32 @test1(i32 noundef 29)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call i32 @test1(i32 noundef 30)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i32 @test1u(i32 noundef 19)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i32 @test1u(i32 noundef 20)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  %26 = call i32 @test1u(i32 noundef 29)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  %30 = call i32 @test1u(i32 noundef 30)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  %34 = call i32 @test2(i32 noundef 0)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  %38 = call i32 @test2(i32 noundef 9)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call i32 @test2(i32 noundef 10)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  %46 = call i32 @test2(i32 noundef -1)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @abort() #2
  unreachable

49:                                               ; preds = %45
  %50 = call i32 @test2(i32 noundef -9)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @abort() #2
  unreachable

53:                                               ; preds = %49
  %54 = call i32 @test2(i32 noundef -10)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @abort() #2
  unreachable

57:                                               ; preds = %53
  %58 = call i32 @test2u(i32 noundef 0)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @abort() #2
  unreachable

61:                                               ; preds = %57
  %62 = call i32 @test2u(i32 noundef 9)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @abort() #2
  unreachable

65:                                               ; preds = %61
  %66 = call i32 @test2u(i32 noundef 10)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  call void @abort() #2
  unreachable

69:                                               ; preds = %65
  %70 = call i32 @test2u(i32 noundef -1)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @abort() #2
  unreachable

73:                                               ; preds = %69
  %74 = call i32 @test2u(i32 noundef -9)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @abort() #2
  unreachable

77:                                               ; preds = %73
  %78 = call i32 @test2u(i32 noundef -10)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @abort() #2
  unreachable

81:                                               ; preds = %77
  %82 = call i32 @test3(i32 noundef 19)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  call void @abort() #2
  unreachable

85:                                               ; preds = %81
  %86 = call i32 @test3(i32 noundef 20)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @abort() #2
  unreachable

89:                                               ; preds = %85
  %90 = call i32 @test3(i32 noundef 29)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @abort() #2
  unreachable

93:                                               ; preds = %89
  %94 = call i32 @test3(i32 noundef 30)
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @abort() #2
  unreachable

97:                                               ; preds = %93
  %98 = call i32 @test3u(i32 noundef 19)
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @abort() #2
  unreachable

101:                                              ; preds = %97
  %102 = call i32 @test3u(i32 noundef 20)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  call void @abort() #2
  unreachable

105:                                              ; preds = %101
  %106 = call i32 @test3u(i32 noundef 29)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  call void @abort() #2
  unreachable

109:                                              ; preds = %105
  %110 = call i32 @test3u(i32 noundef 30)
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  call void @abort() #2
  unreachable

113:                                              ; preds = %109
  %114 = call i32 @test4(i32 noundef 0)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void @abort() #2
  unreachable

117:                                              ; preds = %113
  %118 = call i32 @test4(i32 noundef 9)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  call void @abort() #2
  unreachable

121:                                              ; preds = %117
  %122 = call i32 @test4(i32 noundef 10)
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @abort() #2
  unreachable

125:                                              ; preds = %121
  %126 = call i32 @test4(i32 noundef -1)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @abort() #2
  unreachable

129:                                              ; preds = %125
  %130 = call i32 @test4(i32 noundef -9)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void @abort() #2
  unreachable

133:                                              ; preds = %129
  %134 = call i32 @test4(i32 noundef -10)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  call void @abort() #2
  unreachable

137:                                              ; preds = %133
  %138 = call i32 @test4u(i32 noundef 0)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  call void @abort() #2
  unreachable

141:                                              ; preds = %137
  %142 = call i32 @test4u(i32 noundef 9)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  call void @abort() #2
  unreachable

145:                                              ; preds = %141
  %146 = call i32 @test4u(i32 noundef 10)
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  call void @abort() #2
  unreachable

149:                                              ; preds = %145
  %150 = call i32 @test4u(i32 noundef -1)
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  call void @abort() #2
  unreachable

153:                                              ; preds = %149
  %154 = call i32 @test4u(i32 noundef -9)
  %155 = icmp ne i32 %154, 1
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  call void @abort() #2
  unreachable

157:                                              ; preds = %153
  %158 = call i32 @test4u(i32 noundef -10)
  %159 = icmp ne i32 %158, 1
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  call void @abort() #2
  unreachable

161:                                              ; preds = %157
  %162 = call i32 @test5(i32 noundef 19)
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  call void @abort() #2
  unreachable

165:                                              ; preds = %161
  %166 = call i32 @test5(i32 noundef 20)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  call void @abort() #2
  unreachable

169:                                              ; preds = %165
  %170 = call i32 @test5(i32 noundef 29)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void @abort() #2
  unreachable

173:                                              ; preds = %169
  %174 = call i32 @test5(i32 noundef 30)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void @abort() #2
  unreachable

177:                                              ; preds = %173
  %178 = call i32 @test5u(i32 noundef 19)
  %179 = icmp ne i32 %178, 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  call void @abort() #2
  unreachable

181:                                              ; preds = %177
  %182 = call i32 @test5u(i32 noundef 20)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  call void @abort() #2
  unreachable

185:                                              ; preds = %181
  %186 = call i32 @test5u(i32 noundef 29)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  call void @abort() #2
  unreachable

189:                                              ; preds = %185
  %190 = call i32 @test5u(i32 noundef 30)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  call void @abort() #2
  unreachable

193:                                              ; preds = %189
  %194 = call i32 @test6(i32 noundef 0)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  call void @abort() #2
  unreachable

197:                                              ; preds = %193
  %198 = call i32 @test6(i32 noundef 9)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  call void @abort() #2
  unreachable

201:                                              ; preds = %197
  %202 = call i32 @test6(i32 noundef 10)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  call void @abort() #2
  unreachable

205:                                              ; preds = %201
  %206 = call i32 @test6(i32 noundef -1)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  call void @abort() #2
  unreachable

209:                                              ; preds = %205
  %210 = call i32 @test6(i32 noundef -9)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  call void @abort() #2
  unreachable

213:                                              ; preds = %209
  %214 = call i32 @test6(i32 noundef -10)
  %215 = icmp ne i32 %214, 1
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  call void @abort() #2
  unreachable

217:                                              ; preds = %213
  %218 = call i32 @test7(i32 noundef 19)
  %219 = icmp ne i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  call void @abort() #2
  unreachable

221:                                              ; preds = %217
  %222 = call i32 @test7(i32 noundef 20)
  %223 = icmp ne i32 %222, 1
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  call void @abort() #2
  unreachable

225:                                              ; preds = %221
  %226 = call i32 @test7(i32 noundef 29)
  %227 = icmp ne i32 %226, 1
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  call void @abort() #2
  unreachable

229:                                              ; preds = %225
  %230 = call i32 @test7(i32 noundef 30)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  call void @abort() #2
  unreachable

233:                                              ; preds = %229
  %234 = call i32 @test7u(i32 noundef 19)
  %235 = icmp ne i32 %234, 1
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  call void @abort() #2
  unreachable

237:                                              ; preds = %233
  %238 = call i32 @test7u(i32 noundef 20)
  %239 = icmp ne i32 %238, 1
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  call void @abort() #2
  unreachable

241:                                              ; preds = %237
  %242 = call i32 @test7u(i32 noundef 29)
  %243 = icmp ne i32 %242, 1
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  call void @abort() #2
  unreachable

245:                                              ; preds = %241
  %246 = call i32 @test7u(i32 noundef 30)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  call void @abort() #2
  unreachable

249:                                              ; preds = %245
  %250 = call i32 @test8(i32 noundef 0)
  %251 = icmp ne i32 %250, 1
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  call void @abort() #2
  unreachable

253:                                              ; preds = %249
  %254 = call i32 @test8(i32 noundef 9)
  %255 = icmp ne i32 %254, 1
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  call void @abort() #2
  unreachable

257:                                              ; preds = %253
  %258 = call i32 @test8(i32 noundef 10)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  call void @abort() #2
  unreachable

261:                                              ; preds = %257
  %262 = call i32 @test8(i32 noundef -1)
  %263 = icmp ne i32 %262, 1
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  call void @abort() #2
  unreachable

265:                                              ; preds = %261
  %266 = call i32 @test8(i32 noundef -9)
  %267 = icmp ne i32 %266, 1
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  call void @abort() #2
  unreachable

269:                                              ; preds = %265
  %270 = call i32 @test8(i32 noundef -10)
  %271 = icmp ne i32 %270, 1
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  call void @abort() #2
  unreachable

273:                                              ; preds = %269
  %274 = call i32 @test8u(i32 noundef 0)
  %275 = icmp ne i32 %274, 1
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  call void @abort() #2
  unreachable

277:                                              ; preds = %273
  %278 = call i32 @test8u(i32 noundef 9)
  %279 = icmp ne i32 %278, 1
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  call void @abort() #2
  unreachable

281:                                              ; preds = %277
  %282 = call i32 @test8u(i32 noundef 10)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  call void @abort() #2
  unreachable

285:                                              ; preds = %281
  %286 = call i32 @test8u(i32 noundef -1)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  call void @abort() #2
  unreachable

289:                                              ; preds = %285
  %290 = call i32 @test8u(i32 noundef -9)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  call void @abort() #2
  unreachable

293:                                              ; preds = %289
  %294 = call i32 @test8u(i32 noundef -10)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  call void @abort() #2
  unreachable

297:                                              ; preds = %293
  %298 = call i32 @test9(i32 noundef 19)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  call void @abort() #2
  unreachable

301:                                              ; preds = %297
  %302 = call i32 @test9(i32 noundef 20)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  call void @abort() #2
  unreachable

305:                                              ; preds = %301
  %306 = call i32 @test9(i32 noundef 29)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  call void @abort() #2
  unreachable

309:                                              ; preds = %305
  %310 = call i32 @test9(i32 noundef 30)
  %311 = icmp ne i32 %310, 1
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  call void @abort() #2
  unreachable

313:                                              ; preds = %309
  %314 = call i32 @test9u(i32 noundef 19)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  call void @abort() #2
  unreachable

317:                                              ; preds = %313
  %318 = call i32 @test9u(i32 noundef 20)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  call void @abort() #2
  unreachable

321:                                              ; preds = %317
  %322 = call i32 @test9u(i32 noundef 29)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %321
  call void @abort() #2
  unreachable

325:                                              ; preds = %321
  %326 = call i32 @test9u(i32 noundef 30)
  %327 = icmp ne i32 %326, 1
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  call void @abort() #2
  unreachable

329:                                              ; preds = %325
  %330 = call i32 @test10(i32 noundef 0)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  call void @abort() #2
  unreachable

333:                                              ; preds = %329
  %334 = call i32 @test10(i32 noundef 9)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  call void @abort() #2
  unreachable

337:                                              ; preds = %333
  %338 = call i32 @test10(i32 noundef 10)
  %339 = icmp ne i32 %338, 1
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  call void @abort() #2
  unreachable

341:                                              ; preds = %337
  %342 = call i32 @test10(i32 noundef -1)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  call void @abort() #2
  unreachable

345:                                              ; preds = %341
  %346 = call i32 @test10(i32 noundef -9)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %345
  call void @abort() #2
  unreachable

349:                                              ; preds = %345
  %350 = call i32 @test10(i32 noundef -10)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  call void @abort() #2
  unreachable

353:                                              ; preds = %349
  %354 = call i32 @test10u(i32 noundef 0)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  call void @abort() #2
  unreachable

357:                                              ; preds = %353
  %358 = call i32 @test10u(i32 noundef 9)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  call void @abort() #2
  unreachable

361:                                              ; preds = %357
  %362 = call i32 @test10u(i32 noundef 10)
  %363 = icmp ne i32 %362, 1
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  call void @abort() #2
  unreachable

365:                                              ; preds = %361
  %366 = call i32 @test10u(i32 noundef -1)
  %367 = icmp ne i32 %366, 1
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  call void @abort() #2
  unreachable

369:                                              ; preds = %365
  %370 = call i32 @test10u(i32 noundef -9)
  %371 = icmp ne i32 %370, 1
  br i1 %371, label %372, label %373

372:                                              ; preds = %369
  call void @abort() #2
  unreachable

373:                                              ; preds = %369
  %374 = call i32 @test10u(i32 noundef -10)
  %375 = icmp ne i32 %374, 1
  br i1 %375, label %376, label %377

376:                                              ; preds = %373
  call void @abort() #2
  unreachable

377:                                              ; preds = %373
  %378 = call i32 @test11(i32 noundef 19)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %377
  call void @abort() #2
  unreachable

381:                                              ; preds = %377
  %382 = call i32 @test11(i32 noundef 20)
  %383 = icmp ne i32 %382, 1
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  call void @abort() #2
  unreachable

385:                                              ; preds = %381
  %386 = call i32 @test11(i32 noundef 29)
  %387 = icmp ne i32 %386, 1
  br i1 %387, label %388, label %389

388:                                              ; preds = %385
  call void @abort() #2
  unreachable

389:                                              ; preds = %385
  %390 = call i32 @test11(i32 noundef 30)
  %391 = icmp ne i32 %390, 1
  br i1 %391, label %392, label %393

392:                                              ; preds = %389
  call void @abort() #2
  unreachable

393:                                              ; preds = %389
  %394 = call i32 @test11u(i32 noundef 19)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %393
  call void @abort() #2
  unreachable

397:                                              ; preds = %393
  %398 = call i32 @test11u(i32 noundef 20)
  %399 = icmp ne i32 %398, 1
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  call void @abort() #2
  unreachable

401:                                              ; preds = %397
  %402 = call i32 @test11u(i32 noundef 29)
  %403 = icmp ne i32 %402, 1
  br i1 %403, label %404, label %405

404:                                              ; preds = %401
  call void @abort() #2
  unreachable

405:                                              ; preds = %401
  %406 = call i32 @test11u(i32 noundef 30)
  %407 = icmp ne i32 %406, 1
  br i1 %407, label %408, label %409

408:                                              ; preds = %405
  call void @abort() #2
  unreachable

409:                                              ; preds = %405
  %410 = call i32 @test12(i32 noundef 0)
  %411 = icmp ne i32 %410, 1
  br i1 %411, label %412, label %413

412:                                              ; preds = %409
  call void @abort() #2
  unreachable

413:                                              ; preds = %409
  %414 = call i32 @test12(i32 noundef 9)
  %415 = icmp ne i32 %414, 1
  br i1 %415, label %416, label %417

416:                                              ; preds = %413
  call void @abort() #2
  unreachable

417:                                              ; preds = %413
  %418 = call i32 @test12(i32 noundef 10)
  %419 = icmp ne i32 %418, 1
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  call void @abort() #2
  unreachable

421:                                              ; preds = %417
  %422 = call i32 @test12(i32 noundef -1)
  %423 = icmp ne i32 %422, 1
  br i1 %423, label %424, label %425

424:                                              ; preds = %421
  call void @abort() #2
  unreachable

425:                                              ; preds = %421
  %426 = call i32 @test12(i32 noundef -9)
  %427 = icmp ne i32 %426, 1
  br i1 %427, label %428, label %429

428:                                              ; preds = %425
  call void @abort() #2
  unreachable

429:                                              ; preds = %425
  %430 = call i32 @test12(i32 noundef -10)
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %429
  call void @abort() #2
  unreachable

433:                                              ; preds = %429
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
