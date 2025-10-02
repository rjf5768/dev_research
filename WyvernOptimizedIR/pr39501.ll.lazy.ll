; ModuleID = './pr39501.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39501.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @float_min1(float noundef %0, float noundef %1) #0 {
  %3 = fcmp olt float %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi float [ %0, %4 ], [ %1, %5 ]
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @float_min2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp ugt float %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi float [ %0, %4 ], [ %1, %5 ]
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @float_max1(float noundef %0, float noundef %1) #0 {
  %3 = fcmp ogt float %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi float [ %0, %4 ], [ %1, %5 ]
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @float_max2(float noundef %0, float noundef %1) #0 {
  %3 = fcmp ult float %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi float [ %0, %4 ], [ %1, %5 ]
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @double_min1(double noundef %0, double noundef %1) #0 {
  %3 = fcmp olt double %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi double [ %0, %4 ], [ %1, %5 ]
  ret double %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @double_min2(double noundef %0, double noundef %1) #0 {
  %3 = fcmp ugt double %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi double [ %0, %4 ], [ %1, %5 ]
  ret double %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @double_max1(double noundef %0, double noundef %1) #0 {
  %3 = fcmp ogt double %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi double [ %0, %4 ], [ %1, %5 ]
  ret double %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @double_max2(double noundef %0, double noundef %1) #0 {
  %3 = fcmp ult double %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi double [ %0, %4 ], [ %1, %5 ]
  ret double %7
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call float @float_min1(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %2 = fcmp une float %1, -1.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call float @float_min1(float noundef -1.000000e+00, float noundef 0.000000e+00)
  %6 = fcmp une float %5, -1.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = call float @float_min1(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %10 = fcmp une float %9, 0.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  %13 = call float @float_min1(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = call float @float_min1(float noundef -1.000000e+00, float noundef 1.000000e+00)
  %18 = fcmp une float %17, -1.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = call float @float_min1(float noundef 1.000000e+00, float noundef -1.000000e+00)
  %22 = fcmp une float %21, -1.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = call float @float_max1(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %26 = fcmp une float %25, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = call float @float_max1(float noundef -1.000000e+00, float noundef 0.000000e+00)
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  %33 = call float @float_max1(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %34 = fcmp une float %33, 1.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %32
  %37 = call float @float_max1(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %38 = fcmp une float %37, 1.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @abort() #3
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %36
  %41 = call float @float_max1(float noundef -1.000000e+00, float noundef 1.000000e+00)
  %42 = fcmp une float %41, 1.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @abort() #3
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %40
  %45 = call float @float_max1(float noundef 1.000000e+00, float noundef -1.000000e+00)
  %46 = fcmp une float %45, 1.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #3
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %44
  %49 = call float @float_min2(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %50 = fcmp une float %49, -1.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @abort() #3
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %48
  %53 = call float @float_min2(float noundef -1.000000e+00, float noundef 0.000000e+00)
  %54 = fcmp une float %53, -1.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @abort() #3
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %52
  %57 = call float @float_min2(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %58 = fcmp une float %57, 0.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void @abort() #3
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %56
  %61 = call float @float_min2(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %62 = fcmp une float %61, 0.000000e+00
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @abort() #3
  br label %UnifiedUnreachableBlock

64:                                               ; preds = %60
  %65 = call float @float_min2(float noundef -1.000000e+00, float noundef 1.000000e+00)
  %66 = fcmp une float %65, -1.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @abort() #3
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %64
  %69 = call float @float_min2(float noundef 1.000000e+00, float noundef -1.000000e+00)
  %70 = fcmp une float %69, -1.000000e+00
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void @abort() #3
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %68
  %73 = call float @float_max2(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %74 = fcmp une float %73, 0.000000e+00
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @abort() #3
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %72
  %77 = call float @float_max2(float noundef -1.000000e+00, float noundef 0.000000e+00)
  %78 = fcmp une float %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call void @abort() #3
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %76
  %81 = call float @float_max2(float noundef 0.000000e+00, float noundef 1.000000e+00)
  %82 = fcmp une float %81, 1.000000e+00
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void @abort() #3
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %80
  %85 = call float @float_max2(float noundef 1.000000e+00, float noundef 0.000000e+00)
  %86 = fcmp une float %85, 1.000000e+00
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  call void @abort() #3
  br label %UnifiedUnreachableBlock

88:                                               ; preds = %84
  %89 = call float @float_max2(float noundef -1.000000e+00, float noundef 1.000000e+00)
  %90 = fcmp une float %89, 1.000000e+00
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  call void @abort() #3
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %88
  %93 = call float @float_max2(float noundef 1.000000e+00, float noundef -1.000000e+00)
  %94 = fcmp une float %93, 1.000000e+00
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  call void @abort() #3
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %92
  %97 = call double @double_min1(double noundef 0.000000e+00, double noundef -1.000000e+00)
  %98 = fcmp une double %97, -1.000000e+00
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  call void @abort() #3
  br label %UnifiedUnreachableBlock

100:                                              ; preds = %96
  %101 = call double @double_min1(double noundef -1.000000e+00, double noundef 0.000000e+00)
  %102 = fcmp une double %101, -1.000000e+00
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  call void @abort() #3
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %100
  %105 = call double @double_min1(double noundef 0.000000e+00, double noundef 1.000000e+00)
  %106 = fcmp une double %105, 0.000000e+00
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  call void @abort() #3
  br label %UnifiedUnreachableBlock

108:                                              ; preds = %104
  %109 = call double @double_min1(double noundef 1.000000e+00, double noundef 0.000000e+00)
  %110 = fcmp une double %109, 0.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  call void @abort() #3
  br label %UnifiedUnreachableBlock

112:                                              ; preds = %108
  %113 = call double @double_min1(double noundef -1.000000e+00, double noundef 1.000000e+00)
  %114 = fcmp une double %113, -1.000000e+00
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  call void @abort() #3
  br label %UnifiedUnreachableBlock

116:                                              ; preds = %112
  %117 = call double @double_min1(double noundef 1.000000e+00, double noundef -1.000000e+00)
  %118 = fcmp une double %117, -1.000000e+00
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  call void @abort() #3
  br label %UnifiedUnreachableBlock

120:                                              ; preds = %116
  %121 = call double @double_max1(double noundef 0.000000e+00, double noundef -1.000000e+00)
  %122 = fcmp une double %121, 0.000000e+00
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  call void @abort() #3
  br label %UnifiedUnreachableBlock

124:                                              ; preds = %120
  %125 = call double @double_max1(double noundef -1.000000e+00, double noundef 0.000000e+00)
  %126 = fcmp une double %125, 0.000000e+00
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @abort() #3
  br label %UnifiedUnreachableBlock

128:                                              ; preds = %124
  %129 = call double @double_max1(double noundef 0.000000e+00, double noundef 1.000000e+00)
  %130 = fcmp une double %129, 1.000000e+00
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void @abort() #3
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %128
  %133 = call double @double_max1(double noundef 1.000000e+00, double noundef 0.000000e+00)
  %134 = fcmp une double %133, 1.000000e+00
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  call void @abort() #3
  br label %UnifiedUnreachableBlock

136:                                              ; preds = %132
  %137 = call double @double_max1(double noundef -1.000000e+00, double noundef 1.000000e+00)
  %138 = fcmp une double %137, 1.000000e+00
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void @abort() #3
  br label %UnifiedUnreachableBlock

140:                                              ; preds = %136
  %141 = call double @double_max1(double noundef 1.000000e+00, double noundef -1.000000e+00)
  %142 = fcmp une double %141, 1.000000e+00
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  call void @abort() #3
  br label %UnifiedUnreachableBlock

144:                                              ; preds = %140
  %145 = call double @double_min2(double noundef 0.000000e+00, double noundef -1.000000e+00)
  %146 = fcmp une double %145, -1.000000e+00
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  call void @abort() #3
  br label %UnifiedUnreachableBlock

148:                                              ; preds = %144
  %149 = call double @double_min2(double noundef -1.000000e+00, double noundef 0.000000e+00)
  %150 = fcmp une double %149, -1.000000e+00
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  call void @abort() #3
  br label %UnifiedUnreachableBlock

152:                                              ; preds = %148
  %153 = call double @double_min2(double noundef 0.000000e+00, double noundef 1.000000e+00)
  %154 = fcmp une double %153, 0.000000e+00
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  call void @abort() #3
  br label %UnifiedUnreachableBlock

156:                                              ; preds = %152
  %157 = call double @double_min2(double noundef 1.000000e+00, double noundef 0.000000e+00)
  %158 = fcmp une double %157, 0.000000e+00
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  call void @abort() #3
  br label %UnifiedUnreachableBlock

160:                                              ; preds = %156
  %161 = call double @double_min2(double noundef -1.000000e+00, double noundef 1.000000e+00)
  %162 = fcmp une double %161, -1.000000e+00
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  call void @abort() #3
  br label %UnifiedUnreachableBlock

164:                                              ; preds = %160
  %165 = call double @double_min2(double noundef 1.000000e+00, double noundef -1.000000e+00)
  %166 = fcmp une double %165, -1.000000e+00
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  call void @abort() #3
  br label %UnifiedUnreachableBlock

168:                                              ; preds = %164
  %169 = call double @double_max2(double noundef 0.000000e+00, double noundef -1.000000e+00)
  %170 = fcmp une double %169, 0.000000e+00
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  call void @abort() #3
  br label %UnifiedUnreachableBlock

172:                                              ; preds = %168
  %173 = call double @double_max2(double noundef -1.000000e+00, double noundef 0.000000e+00)
  %174 = fcmp une double %173, 0.000000e+00
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  call void @abort() #3
  br label %UnifiedUnreachableBlock

176:                                              ; preds = %172
  %177 = call double @double_max2(double noundef 0.000000e+00, double noundef 1.000000e+00)
  %178 = fcmp une double %177, 1.000000e+00
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void @abort() #3
  br label %UnifiedUnreachableBlock

180:                                              ; preds = %176
  %181 = call double @double_max2(double noundef 1.000000e+00, double noundef 0.000000e+00)
  %182 = fcmp une double %181, 1.000000e+00
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  call void @abort() #3
  br label %UnifiedUnreachableBlock

184:                                              ; preds = %180
  %185 = call double @double_max2(double noundef -1.000000e+00, double noundef 1.000000e+00)
  %186 = fcmp une double %185, 1.000000e+00
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void @abort() #3
  br label %UnifiedUnreachableBlock

188:                                              ; preds = %184
  %189 = call double @double_max2(double noundef 1.000000e+00, double noundef -1.000000e+00)
  %190 = fcmp une double %189, 1.000000e+00
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @abort() #3
  br label %UnifiedUnreachableBlock

192:                                              ; preds = %188
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %192, %191, %187, %183, %179, %175, %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
