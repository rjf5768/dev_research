; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39501.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39501.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @float_min1(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp olt float %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load float, float* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi float [ %9, %8 ], [ %11, %10 ]
  ret float %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @float_min2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp ole float %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load float, float* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi float [ %9, %8 ], [ %11, %10 ]
  ret float %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @float_max1(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp ogt float %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load float, float* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi float [ %9, %8 ], [ %11, %10 ]
  ret float %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @float_max2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp oge float %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load float, float* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi float [ %9, %8 ], [ %11, %10 ]
  ret float %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @double_min1(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp olt double %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load double, double* %3, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @double_min2(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp ole double %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load double, double* %3, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @double_max1(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp ogt double %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load double, double* %3, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @double_max2(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp oge double %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load double, double* %3, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call float @float_min1(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %3 = fcmp une float %2, -1.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call float @float_min1(float noundef -1.000000e+00, float noundef 0.000000e+00)
  %7 = fcmp une float %6, -1.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call float @float_min1(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %11 = fcmp une float %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call float @float_min1(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %15 = fcmp une float %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call float @float_min1(float noundef -1.000000e+00, float noundef 1.000000e+00)
  %19 = fcmp une float %18, -1.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call float @float_min1(float noundef 1.000000e+00, float noundef -1.000000e+00)
  %23 = fcmp une float %22, -1.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  %26 = call float @float_max1(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  %30 = call float @float_max1(float noundef -1.000000e+00, float noundef 0.000000e+00)
  %31 = fcmp une float %30, 0.000000e+00
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  %34 = call float @float_max1(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %35 = fcmp une float %34, 1.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  %38 = call float @float_max1(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %39 = fcmp une float %38, 1.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call float @float_max1(float noundef -1.000000e+00, float noundef 1.000000e+00)
  %43 = fcmp une float %42, 1.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  %46 = call float @float_max1(float noundef 1.000000e+00, float noundef -1.000000e+00)
  %47 = fcmp une float %46, 1.000000e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @abort() #2
  unreachable

49:                                               ; preds = %45
  %50 = call float @float_min2(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %51 = fcmp une float %50, -1.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @abort() #2
  unreachable

53:                                               ; preds = %49
  %54 = call float @float_min2(float noundef -1.000000e+00, float noundef 0.000000e+00)
  %55 = fcmp une float %54, -1.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @abort() #2
  unreachable

57:                                               ; preds = %53
  %58 = call float @float_min2(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %59 = fcmp une float %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @abort() #2
  unreachable

61:                                               ; preds = %57
  %62 = call float @float_min2(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %63 = fcmp une float %62, 0.000000e+00
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @abort() #2
  unreachable

65:                                               ; preds = %61
  %66 = call float @float_min2(float noundef -1.000000e+00, float noundef 1.000000e+00)
  %67 = fcmp une float %66, -1.000000e+00
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  call void @abort() #2
  unreachable

69:                                               ; preds = %65
  %70 = call float @float_min2(float noundef 1.000000e+00, float noundef -1.000000e+00)
  %71 = fcmp une float %70, -1.000000e+00
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @abort() #2
  unreachable

73:                                               ; preds = %69
  %74 = call float @float_max2(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %75 = fcmp une float %74, 0.000000e+00
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @abort() #2
  unreachable

77:                                               ; preds = %73
  %78 = call float @float_max2(float noundef -1.000000e+00, float noundef 0.000000e+00)
  %79 = fcmp une float %78, 0.000000e+00
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @abort() #2
  unreachable

81:                                               ; preds = %77
  %82 = call float @float_max2(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %83 = fcmp une float %82, 1.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  call void @abort() #2
  unreachable

85:                                               ; preds = %81
  %86 = call float @float_max2(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %87 = fcmp une float %86, 1.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @abort() #2
  unreachable

89:                                               ; preds = %85
  %90 = call float @float_max2(float noundef -1.000000e+00, float noundef 1.000000e+00)
  %91 = fcmp une float %90, 1.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @abort() #2
  unreachable

93:                                               ; preds = %89
  %94 = call float @float_max2(float noundef 1.000000e+00, float noundef -1.000000e+00)
  %95 = fcmp une float %94, 1.000000e+00
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @abort() #2
  unreachable

97:                                               ; preds = %93
  %98 = call double @double_min1(double noundef 0.000000e+00, double noundef -1.000000e+00)
  %99 = fcmp une double %98, -1.000000e+00
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @abort() #2
  unreachable

101:                                              ; preds = %97
  %102 = call double @double_min1(double noundef -1.000000e+00, double noundef 0.000000e+00)
  %103 = fcmp une double %102, -1.000000e+00
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  call void @abort() #2
  unreachable

105:                                              ; preds = %101
  %106 = call double @double_min1(double noundef 0.000000e+00, double noundef 1.000000e+00)
  %107 = fcmp une double %106, 0.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  call void @abort() #2
  unreachable

109:                                              ; preds = %105
  %110 = call double @double_min1(double noundef 1.000000e+00, double noundef 0.000000e+00)
  %111 = fcmp une double %110, 0.000000e+00
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  call void @abort() #2
  unreachable

113:                                              ; preds = %109
  %114 = call double @double_min1(double noundef -1.000000e+00, double noundef 1.000000e+00)
  %115 = fcmp une double %114, -1.000000e+00
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void @abort() #2
  unreachable

117:                                              ; preds = %113
  %118 = call double @double_min1(double noundef 1.000000e+00, double noundef -1.000000e+00)
  %119 = fcmp une double %118, -1.000000e+00
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  call void @abort() #2
  unreachable

121:                                              ; preds = %117
  %122 = call double @double_max1(double noundef 0.000000e+00, double noundef -1.000000e+00)
  %123 = fcmp une double %122, 0.000000e+00
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @abort() #2
  unreachable

125:                                              ; preds = %121
  %126 = call double @double_max1(double noundef -1.000000e+00, double noundef 0.000000e+00)
  %127 = fcmp une double %126, 0.000000e+00
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @abort() #2
  unreachable

129:                                              ; preds = %125
  %130 = call double @double_max1(double noundef 0.000000e+00, double noundef 1.000000e+00)
  %131 = fcmp une double %130, 1.000000e+00
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void @abort() #2
  unreachable

133:                                              ; preds = %129
  %134 = call double @double_max1(double noundef 1.000000e+00, double noundef 0.000000e+00)
  %135 = fcmp une double %134, 1.000000e+00
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  call void @abort() #2
  unreachable

137:                                              ; preds = %133
  %138 = call double @double_max1(double noundef -1.000000e+00, double noundef 1.000000e+00)
  %139 = fcmp une double %138, 1.000000e+00
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  call void @abort() #2
  unreachable

141:                                              ; preds = %137
  %142 = call double @double_max1(double noundef 1.000000e+00, double noundef -1.000000e+00)
  %143 = fcmp une double %142, 1.000000e+00
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  call void @abort() #2
  unreachable

145:                                              ; preds = %141
  %146 = call double @double_min2(double noundef 0.000000e+00, double noundef -1.000000e+00)
  %147 = fcmp une double %146, -1.000000e+00
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  call void @abort() #2
  unreachable

149:                                              ; preds = %145
  %150 = call double @double_min2(double noundef -1.000000e+00, double noundef 0.000000e+00)
  %151 = fcmp une double %150, -1.000000e+00
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  call void @abort() #2
  unreachable

153:                                              ; preds = %149
  %154 = call double @double_min2(double noundef 0.000000e+00, double noundef 1.000000e+00)
  %155 = fcmp une double %154, 0.000000e+00
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  call void @abort() #2
  unreachable

157:                                              ; preds = %153
  %158 = call double @double_min2(double noundef 1.000000e+00, double noundef 0.000000e+00)
  %159 = fcmp une double %158, 0.000000e+00
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  call void @abort() #2
  unreachable

161:                                              ; preds = %157
  %162 = call double @double_min2(double noundef -1.000000e+00, double noundef 1.000000e+00)
  %163 = fcmp une double %162, -1.000000e+00
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  call void @abort() #2
  unreachable

165:                                              ; preds = %161
  %166 = call double @double_min2(double noundef 1.000000e+00, double noundef -1.000000e+00)
  %167 = fcmp une double %166, -1.000000e+00
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  call void @abort() #2
  unreachable

169:                                              ; preds = %165
  %170 = call double @double_max2(double noundef 0.000000e+00, double noundef -1.000000e+00)
  %171 = fcmp une double %170, 0.000000e+00
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void @abort() #2
  unreachable

173:                                              ; preds = %169
  %174 = call double @double_max2(double noundef -1.000000e+00, double noundef 0.000000e+00)
  %175 = fcmp une double %174, 0.000000e+00
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void @abort() #2
  unreachable

177:                                              ; preds = %173
  %178 = call double @double_max2(double noundef 0.000000e+00, double noundef 1.000000e+00)
  %179 = fcmp une double %178, 1.000000e+00
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  call void @abort() #2
  unreachable

181:                                              ; preds = %177
  %182 = call double @double_max2(double noundef 1.000000e+00, double noundef 0.000000e+00)
  %183 = fcmp une double %182, 1.000000e+00
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  call void @abort() #2
  unreachable

185:                                              ; preds = %181
  %186 = call double @double_max2(double noundef -1.000000e+00, double noundef 1.000000e+00)
  %187 = fcmp une double %186, 1.000000e+00
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  call void @abort() #2
  unreachable

189:                                              ; preds = %185
  %190 = call double @double_max2(double noundef 1.000000e+00, double noundef -1.000000e+00)
  %191 = fcmp une double %190, 1.000000e+00
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  call void @abort() #2
  unreachable

193:                                              ; preds = %189
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
