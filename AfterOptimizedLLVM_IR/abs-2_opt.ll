; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/abs-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/abs-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store volatile i32 0, i32* %1, align 4
  store volatile i32 1, i32* %2, align 4
  store volatile i32 -1, i32* %3, align 4
  store volatile i32 -2147483647, i32* %4, align 4
  store volatile i32 2147483647, i32* %5, align 4
  store volatile i64 0, i64* %6, align 8
  store volatile i64 1, i64* %7, align 8
  store volatile i64 -1, i64* %8, align 8
  store volatile i64 -9223372036854775807, i64* %9, align 8
  store volatile i64 9223372036854775807, i64* %10, align 8
  store volatile i64 0, i64* %11, align 8
  store volatile i64 1, i64* %12, align 8
  store volatile i64 -1, i64* %13, align 8
  store volatile i64 -9223372036854775807, i64* %14, align 8
  store volatile i64 9223372036854775807, i64* %15, align 8
  store volatile i64 0, i64* %16, align 8
  store volatile i64 1, i64* %17, align 8
  store volatile i64 -1, i64* %18, align 8
  store volatile i64 -9223372036854775807, i64* %19, align 8
  store volatile i64 9223372036854775807, i64* %20, align 8
  %21 = load volatile i32, i32* %1, align 4
  %22 = call i32 @abs(i32 noundef %21) #4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  call void @abort() #5
  unreachable

25:                                               ; preds = %0
  %26 = call i32 @abs(i32 noundef 0) #4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @link_error()
  br label %29

29:                                               ; preds = %28, %25
  %30 = load volatile i32, i32* %2, align 4
  %31 = call i32 @abs(i32 noundef %30) #4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @abort() #5
  unreachable

34:                                               ; preds = %29
  %35 = call i32 @abs(i32 noundef 1) #4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @link_error()
  br label %38

38:                                               ; preds = %37, %34
  %39 = load volatile i32, i32* %3, align 4
  %40 = call i32 @abs(i32 noundef %39) #4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @abort() #5
  unreachable

43:                                               ; preds = %38
  %44 = call i32 @abs(i32 noundef -1) #4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @link_error()
  br label %47

47:                                               ; preds = %46, %43
  %48 = load volatile i32, i32* %4, align 4
  %49 = call i32 @abs(i32 noundef %48) #4
  %50 = icmp ne i32 %49, 2147483647
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @abort() #5
  unreachable

52:                                               ; preds = %47
  %53 = call i32 @abs(i32 noundef -2147483647) #4
  %54 = icmp ne i32 %53, 2147483647
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @link_error()
  br label %56

56:                                               ; preds = %55, %52
  %57 = load volatile i32, i32* %5, align 4
  %58 = call i32 @abs(i32 noundef %57) #4
  %59 = icmp ne i32 %58, 2147483647
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void @abort() #5
  unreachable

61:                                               ; preds = %56
  %62 = call i32 @abs(i32 noundef 2147483647) #4
  %63 = icmp ne i32 %62, 2147483647
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @link_error()
  br label %65

65:                                               ; preds = %64, %61
  %66 = load volatile i64, i64* %6, align 8
  %67 = call i64 @labs(i64 noundef %66) #4
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  call void @abort() #5
  unreachable

70:                                               ; preds = %65
  %71 = call i64 @labs(i64 noundef 0) #4
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void @link_error()
  br label %74

74:                                               ; preds = %73, %70
  %75 = load volatile i64, i64* %7, align 8
  %76 = call i64 @labs(i64 noundef %75) #4
  %77 = icmp ne i64 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call void @abort() #5
  unreachable

79:                                               ; preds = %74
  %80 = call i64 @labs(i64 noundef 1) #4
  %81 = icmp ne i64 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void @link_error()
  br label %83

83:                                               ; preds = %82, %79
  %84 = load volatile i64, i64* %8, align 8
  %85 = call i64 @labs(i64 noundef %84) #4
  %86 = icmp ne i64 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  call void @abort() #5
  unreachable

88:                                               ; preds = %83
  %89 = call i64 @labs(i64 noundef -1) #4
  %90 = icmp ne i64 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  call void @link_error()
  br label %92

92:                                               ; preds = %91, %88
  %93 = load volatile i64, i64* %9, align 8
  %94 = call i64 @labs(i64 noundef %93) #4
  %95 = icmp ne i64 %94, 9223372036854775807
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  call void @abort() #5
  unreachable

97:                                               ; preds = %92
  %98 = call i64 @labs(i64 noundef -9223372036854775807) #4
  %99 = icmp ne i64 %98, 9223372036854775807
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @link_error()
  br label %101

101:                                              ; preds = %100, %97
  %102 = load volatile i64, i64* %10, align 8
  %103 = call i64 @labs(i64 noundef %102) #4
  %104 = icmp ne i64 %103, 9223372036854775807
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  call void @abort() #5
  unreachable

106:                                              ; preds = %101
  %107 = call i64 @labs(i64 noundef 9223372036854775807) #4
  %108 = icmp ne i64 %107, 9223372036854775807
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  call void @link_error()
  br label %110

110:                                              ; preds = %109, %106
  %111 = load volatile i64, i64* %11, align 8
  %112 = call i64 @llabs(i64 noundef %111) #4
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  call void @abort() #5
  unreachable

115:                                              ; preds = %110
  %116 = call i64 @llabs(i64 noundef 0) #4
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  call void @link_error()
  br label %119

119:                                              ; preds = %118, %115
  %120 = load volatile i64, i64* %12, align 8
  %121 = call i64 @llabs(i64 noundef %120) #4
  %122 = icmp ne i64 %121, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  call void @abort() #5
  unreachable

124:                                              ; preds = %119
  %125 = call i64 @llabs(i64 noundef 1) #4
  %126 = icmp ne i64 %125, 1
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @link_error()
  br label %128

128:                                              ; preds = %127, %124
  %129 = load volatile i64, i64* %13, align 8
  %130 = call i64 @llabs(i64 noundef %129) #4
  %131 = icmp ne i64 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  call void @abort() #5
  unreachable

133:                                              ; preds = %128
  %134 = call i64 @llabs(i64 noundef -1) #4
  %135 = icmp ne i64 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  call void @link_error()
  br label %137

137:                                              ; preds = %136, %133
  %138 = load volatile i64, i64* %14, align 8
  %139 = call i64 @llabs(i64 noundef %138) #4
  %140 = icmp ne i64 %139, 9223372036854775807
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  call void @abort() #5
  unreachable

142:                                              ; preds = %137
  %143 = call i64 @llabs(i64 noundef -9223372036854775807) #4
  %144 = icmp ne i64 %143, 9223372036854775807
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  call void @link_error()
  br label %146

146:                                              ; preds = %145, %142
  %147 = load volatile i64, i64* %15, align 8
  %148 = call i64 @llabs(i64 noundef %147) #4
  %149 = icmp ne i64 %148, 9223372036854775807
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  call void @abort() #5
  unreachable

151:                                              ; preds = %146
  %152 = call i64 @llabs(i64 noundef 9223372036854775807) #4
  %153 = icmp ne i64 %152, 9223372036854775807
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  call void @link_error()
  br label %155

155:                                              ; preds = %154, %151
  %156 = load volatile i64, i64* %16, align 8
  %157 = call i64 @imaxabs(i64 noundef %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  call void @abort() #5
  unreachable

160:                                              ; preds = %155
  %161 = call i64 @imaxabs(i64 noundef 0)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  call void @link_error()
  br label %164

164:                                              ; preds = %163, %160
  %165 = load volatile i64, i64* %17, align 8
  %166 = call i64 @imaxabs(i64 noundef %165)
  %167 = icmp ne i64 %166, 1
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  call void @abort() #5
  unreachable

169:                                              ; preds = %164
  %170 = call i64 @imaxabs(i64 noundef 1)
  %171 = icmp ne i64 %170, 1
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void @link_error()
  br label %173

173:                                              ; preds = %172, %169
  %174 = load volatile i64, i64* %18, align 8
  %175 = call i64 @imaxabs(i64 noundef %174)
  %176 = icmp ne i64 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  call void @abort() #5
  unreachable

178:                                              ; preds = %173
  %179 = call i64 @imaxabs(i64 noundef -1)
  %180 = icmp ne i64 %179, 1
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  call void @link_error()
  br label %182

182:                                              ; preds = %181, %178
  %183 = load volatile i64, i64* %19, align 8
  %184 = call i64 @imaxabs(i64 noundef %183)
  %185 = icmp ne i64 %184, 9223372036854775807
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  call void @abort() #5
  unreachable

187:                                              ; preds = %182
  %188 = call i64 @imaxabs(i64 noundef -9223372036854775807)
  %189 = icmp ne i64 %188, 9223372036854775807
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  call void @link_error()
  br label %191

191:                                              ; preds = %190, %187
  %192 = load volatile i64, i64* %20, align 8
  %193 = call i64 @imaxabs(i64 noundef %192)
  %194 = icmp ne i64 %193, 9223372036854775807
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  call void @abort() #5
  unreachable

196:                                              ; preds = %191
  %197 = call i64 @imaxabs(i64 noundef 9223372036854775807)
  %198 = icmp ne i64 %197, 9223372036854775807
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  call void @link_error()
  br label %200

200:                                              ; preds = %199, %196
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local void @link_error() #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @labs(i64 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @llabs(i64 noundef) #1

declare dso_local i64 @imaxabs(i64 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
