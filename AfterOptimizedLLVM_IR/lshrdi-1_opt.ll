; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/lshrdi-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/lshrdi-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zext = internal constant [64 x i64] [i64 -8690466092652643696, i64 4878138990528453960, i64 2439069495264226980, i64 1219534747632113490, i64 609767373816056745, i64 304883686908028372, i64 152441843454014186, i64 76220921727007093, i64 38110460863503546, i64 19055230431751773, i64 9527615215875886, i64 4763807607937943, i64 2381903803968971, i64 1190951901984485, i64 595475950992242, i64 297737975496121, i64 148868987748060, i64 74434493874030, i64 37217246937015, i64 18608623468507, i64 9304311734253, i64 4652155867126, i64 2326077933563, i64 1163038966781, i64 581519483390, i64 290759741695, i64 145379870847, i64 72689935423, i64 36344967711, i64 18172483855, i64 9086241927, i64 4543120963, i64 2271560481, i64 1135780240, i64 567890120, i64 283945060, i64 141972530, i64 70986265, i64 35493132, i64 17746566, i64 8873283, i64 4436641, i64 2218320, i64 1109160, i64 554580, i64 277290, i64 138645, i64 69322, i64 34661, i64 17330, i64 8665, i64 4332, i64 2166, i64 1083, i64 541, i64 270, i64 135, i64 67, i64 33, i64 16, i64 8, i64 4, i64 2, i64 1], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %20, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 64
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load i64, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @zext, i64 0, i64 0), align 16
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @variable_shift(i64 noundef %9, i32 noundef %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [64 x i64], [64 x i64]* @zext, i64 0, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  call void @abort() #2
  unreachable

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %5, !llvm.loop !4

23:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i64, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @zext, i64 0, i64 0), align 16
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @constant_shift(i64 noundef %28, i32 noundef %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [64 x i64], [64 x i64]* @zext, i64 0, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  call void @abort() #2
  unreachable

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %24, !llvm.loop !6

42:                                               ; preds = %24
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @variable_shift(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = lshr i64 %5, %7
  ret i64 %8
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @constant_shift(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %198 [
    i32 0, label %6
    i32 1, label %9
    i32 2, label %12
    i32 3, label %15
    i32 4, label %18
    i32 5, label %21
    i32 6, label %24
    i32 7, label %27
    i32 8, label %30
    i32 9, label %33
    i32 10, label %36
    i32 11, label %39
    i32 12, label %42
    i32 13, label %45
    i32 14, label %48
    i32 15, label %51
    i32 16, label %54
    i32 17, label %57
    i32 18, label %60
    i32 19, label %63
    i32 20, label %66
    i32 21, label %69
    i32 22, label %72
    i32 23, label %75
    i32 24, label %78
    i32 25, label %81
    i32 26, label %84
    i32 27, label %87
    i32 28, label %90
    i32 29, label %93
    i32 30, label %96
    i32 31, label %99
    i32 32, label %102
    i32 33, label %105
    i32 34, label %108
    i32 35, label %111
    i32 36, label %114
    i32 37, label %117
    i32 38, label %120
    i32 39, label %123
    i32 40, label %126
    i32 41, label %129
    i32 42, label %132
    i32 43, label %135
    i32 44, label %138
    i32 45, label %141
    i32 46, label %144
    i32 47, label %147
    i32 48, label %150
    i32 49, label %153
    i32 50, label %156
    i32 51, label %159
    i32 52, label %162
    i32 53, label %165
    i32 54, label %168
    i32 55, label %171
    i32 56, label %174
    i32 57, label %177
    i32 58, label %180
    i32 59, label %183
    i32 60, label %186
    i32 61, label %189
    i32 62, label %192
    i32 63, label %195
  ]

6:                                                ; preds = %2
  %7 = load i64, i64* %3, align 8
  %8 = lshr i64 %7, 0
  store i64 %8, i64* %3, align 8
  br label %199

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = lshr i64 %10, 1
  store i64 %11, i64* %3, align 8
  br label %199

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = lshr i64 %13, 2
  store i64 %14, i64* %3, align 8
  br label %199

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  %17 = lshr i64 %16, 3
  store i64 %17, i64* %3, align 8
  br label %199

18:                                               ; preds = %2
  %19 = load i64, i64* %3, align 8
  %20 = lshr i64 %19, 4
  store i64 %20, i64* %3, align 8
  br label %199

21:                                               ; preds = %2
  %22 = load i64, i64* %3, align 8
  %23 = lshr i64 %22, 5
  store i64 %23, i64* %3, align 8
  br label %199

24:                                               ; preds = %2
  %25 = load i64, i64* %3, align 8
  %26 = lshr i64 %25, 6
  store i64 %26, i64* %3, align 8
  br label %199

27:                                               ; preds = %2
  %28 = load i64, i64* %3, align 8
  %29 = lshr i64 %28, 7
  store i64 %29, i64* %3, align 8
  br label %199

30:                                               ; preds = %2
  %31 = load i64, i64* %3, align 8
  %32 = lshr i64 %31, 8
  store i64 %32, i64* %3, align 8
  br label %199

33:                                               ; preds = %2
  %34 = load i64, i64* %3, align 8
  %35 = lshr i64 %34, 9
  store i64 %35, i64* %3, align 8
  br label %199

36:                                               ; preds = %2
  %37 = load i64, i64* %3, align 8
  %38 = lshr i64 %37, 10
  store i64 %38, i64* %3, align 8
  br label %199

39:                                               ; preds = %2
  %40 = load i64, i64* %3, align 8
  %41 = lshr i64 %40, 11
  store i64 %41, i64* %3, align 8
  br label %199

42:                                               ; preds = %2
  %43 = load i64, i64* %3, align 8
  %44 = lshr i64 %43, 12
  store i64 %44, i64* %3, align 8
  br label %199

45:                                               ; preds = %2
  %46 = load i64, i64* %3, align 8
  %47 = lshr i64 %46, 13
  store i64 %47, i64* %3, align 8
  br label %199

48:                                               ; preds = %2
  %49 = load i64, i64* %3, align 8
  %50 = lshr i64 %49, 14
  store i64 %50, i64* %3, align 8
  br label %199

51:                                               ; preds = %2
  %52 = load i64, i64* %3, align 8
  %53 = lshr i64 %52, 15
  store i64 %53, i64* %3, align 8
  br label %199

54:                                               ; preds = %2
  %55 = load i64, i64* %3, align 8
  %56 = lshr i64 %55, 16
  store i64 %56, i64* %3, align 8
  br label %199

57:                                               ; preds = %2
  %58 = load i64, i64* %3, align 8
  %59 = lshr i64 %58, 17
  store i64 %59, i64* %3, align 8
  br label %199

60:                                               ; preds = %2
  %61 = load i64, i64* %3, align 8
  %62 = lshr i64 %61, 18
  store i64 %62, i64* %3, align 8
  br label %199

63:                                               ; preds = %2
  %64 = load i64, i64* %3, align 8
  %65 = lshr i64 %64, 19
  store i64 %65, i64* %3, align 8
  br label %199

66:                                               ; preds = %2
  %67 = load i64, i64* %3, align 8
  %68 = lshr i64 %67, 20
  store i64 %68, i64* %3, align 8
  br label %199

69:                                               ; preds = %2
  %70 = load i64, i64* %3, align 8
  %71 = lshr i64 %70, 21
  store i64 %71, i64* %3, align 8
  br label %199

72:                                               ; preds = %2
  %73 = load i64, i64* %3, align 8
  %74 = lshr i64 %73, 22
  store i64 %74, i64* %3, align 8
  br label %199

75:                                               ; preds = %2
  %76 = load i64, i64* %3, align 8
  %77 = lshr i64 %76, 23
  store i64 %77, i64* %3, align 8
  br label %199

78:                                               ; preds = %2
  %79 = load i64, i64* %3, align 8
  %80 = lshr i64 %79, 24
  store i64 %80, i64* %3, align 8
  br label %199

81:                                               ; preds = %2
  %82 = load i64, i64* %3, align 8
  %83 = lshr i64 %82, 25
  store i64 %83, i64* %3, align 8
  br label %199

84:                                               ; preds = %2
  %85 = load i64, i64* %3, align 8
  %86 = lshr i64 %85, 26
  store i64 %86, i64* %3, align 8
  br label %199

87:                                               ; preds = %2
  %88 = load i64, i64* %3, align 8
  %89 = lshr i64 %88, 27
  store i64 %89, i64* %3, align 8
  br label %199

90:                                               ; preds = %2
  %91 = load i64, i64* %3, align 8
  %92 = lshr i64 %91, 28
  store i64 %92, i64* %3, align 8
  br label %199

93:                                               ; preds = %2
  %94 = load i64, i64* %3, align 8
  %95 = lshr i64 %94, 29
  store i64 %95, i64* %3, align 8
  br label %199

96:                                               ; preds = %2
  %97 = load i64, i64* %3, align 8
  %98 = lshr i64 %97, 30
  store i64 %98, i64* %3, align 8
  br label %199

99:                                               ; preds = %2
  %100 = load i64, i64* %3, align 8
  %101 = lshr i64 %100, 31
  store i64 %101, i64* %3, align 8
  br label %199

102:                                              ; preds = %2
  %103 = load i64, i64* %3, align 8
  %104 = lshr i64 %103, 32
  store i64 %104, i64* %3, align 8
  br label %199

105:                                              ; preds = %2
  %106 = load i64, i64* %3, align 8
  %107 = lshr i64 %106, 33
  store i64 %107, i64* %3, align 8
  br label %199

108:                                              ; preds = %2
  %109 = load i64, i64* %3, align 8
  %110 = lshr i64 %109, 34
  store i64 %110, i64* %3, align 8
  br label %199

111:                                              ; preds = %2
  %112 = load i64, i64* %3, align 8
  %113 = lshr i64 %112, 35
  store i64 %113, i64* %3, align 8
  br label %199

114:                                              ; preds = %2
  %115 = load i64, i64* %3, align 8
  %116 = lshr i64 %115, 36
  store i64 %116, i64* %3, align 8
  br label %199

117:                                              ; preds = %2
  %118 = load i64, i64* %3, align 8
  %119 = lshr i64 %118, 37
  store i64 %119, i64* %3, align 8
  br label %199

120:                                              ; preds = %2
  %121 = load i64, i64* %3, align 8
  %122 = lshr i64 %121, 38
  store i64 %122, i64* %3, align 8
  br label %199

123:                                              ; preds = %2
  %124 = load i64, i64* %3, align 8
  %125 = lshr i64 %124, 39
  store i64 %125, i64* %3, align 8
  br label %199

126:                                              ; preds = %2
  %127 = load i64, i64* %3, align 8
  %128 = lshr i64 %127, 40
  store i64 %128, i64* %3, align 8
  br label %199

129:                                              ; preds = %2
  %130 = load i64, i64* %3, align 8
  %131 = lshr i64 %130, 41
  store i64 %131, i64* %3, align 8
  br label %199

132:                                              ; preds = %2
  %133 = load i64, i64* %3, align 8
  %134 = lshr i64 %133, 42
  store i64 %134, i64* %3, align 8
  br label %199

135:                                              ; preds = %2
  %136 = load i64, i64* %3, align 8
  %137 = lshr i64 %136, 43
  store i64 %137, i64* %3, align 8
  br label %199

138:                                              ; preds = %2
  %139 = load i64, i64* %3, align 8
  %140 = lshr i64 %139, 44
  store i64 %140, i64* %3, align 8
  br label %199

141:                                              ; preds = %2
  %142 = load i64, i64* %3, align 8
  %143 = lshr i64 %142, 45
  store i64 %143, i64* %3, align 8
  br label %199

144:                                              ; preds = %2
  %145 = load i64, i64* %3, align 8
  %146 = lshr i64 %145, 46
  store i64 %146, i64* %3, align 8
  br label %199

147:                                              ; preds = %2
  %148 = load i64, i64* %3, align 8
  %149 = lshr i64 %148, 47
  store i64 %149, i64* %3, align 8
  br label %199

150:                                              ; preds = %2
  %151 = load i64, i64* %3, align 8
  %152 = lshr i64 %151, 48
  store i64 %152, i64* %3, align 8
  br label %199

153:                                              ; preds = %2
  %154 = load i64, i64* %3, align 8
  %155 = lshr i64 %154, 49
  store i64 %155, i64* %3, align 8
  br label %199

156:                                              ; preds = %2
  %157 = load i64, i64* %3, align 8
  %158 = lshr i64 %157, 50
  store i64 %158, i64* %3, align 8
  br label %199

159:                                              ; preds = %2
  %160 = load i64, i64* %3, align 8
  %161 = lshr i64 %160, 51
  store i64 %161, i64* %3, align 8
  br label %199

162:                                              ; preds = %2
  %163 = load i64, i64* %3, align 8
  %164 = lshr i64 %163, 52
  store i64 %164, i64* %3, align 8
  br label %199

165:                                              ; preds = %2
  %166 = load i64, i64* %3, align 8
  %167 = lshr i64 %166, 53
  store i64 %167, i64* %3, align 8
  br label %199

168:                                              ; preds = %2
  %169 = load i64, i64* %3, align 8
  %170 = lshr i64 %169, 54
  store i64 %170, i64* %3, align 8
  br label %199

171:                                              ; preds = %2
  %172 = load i64, i64* %3, align 8
  %173 = lshr i64 %172, 55
  store i64 %173, i64* %3, align 8
  br label %199

174:                                              ; preds = %2
  %175 = load i64, i64* %3, align 8
  %176 = lshr i64 %175, 56
  store i64 %176, i64* %3, align 8
  br label %199

177:                                              ; preds = %2
  %178 = load i64, i64* %3, align 8
  %179 = lshr i64 %178, 57
  store i64 %179, i64* %3, align 8
  br label %199

180:                                              ; preds = %2
  %181 = load i64, i64* %3, align 8
  %182 = lshr i64 %181, 58
  store i64 %182, i64* %3, align 8
  br label %199

183:                                              ; preds = %2
  %184 = load i64, i64* %3, align 8
  %185 = lshr i64 %184, 59
  store i64 %185, i64* %3, align 8
  br label %199

186:                                              ; preds = %2
  %187 = load i64, i64* %3, align 8
  %188 = lshr i64 %187, 60
  store i64 %188, i64* %3, align 8
  br label %199

189:                                              ; preds = %2
  %190 = load i64, i64* %3, align 8
  %191 = lshr i64 %190, 61
  store i64 %191, i64* %3, align 8
  br label %199

192:                                              ; preds = %2
  %193 = load i64, i64* %3, align 8
  %194 = lshr i64 %193, 62
  store i64 %194, i64* %3, align 8
  br label %199

195:                                              ; preds = %2
  %196 = load i64, i64* %3, align 8
  %197 = lshr i64 %196, 63
  store i64 %197, i64* %3, align 8
  br label %199

198:                                              ; preds = %2
  call void @abort() #2
  unreachable

199:                                              ; preds = %195, %192, %189, %186, %183, %180, %177, %174, %171, %168, %165, %162, %159, %156, %153, %150, %147, %144, %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6
  %200 = load i64, i64* %3, align 8
  ret i64 %200
}

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
