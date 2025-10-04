; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ashrdi-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ashrdi-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zext = internal constant [64 x i64] [i64 8526495107234113920, i64 4263247553617056960, i64 2131623776808528480, i64 1065811888404264240, i64 532905944202132120, i64 266452972101066060, i64 133226486050533030, i64 66613243025266515, i64 33306621512633257, i64 16653310756316628, i64 8326655378158314, i64 4163327689079157, i64 2081663844539578, i64 1040831922269789, i64 520415961134894, i64 260207980567447, i64 130103990283723, i64 65051995141861, i64 32525997570930, i64 16262998785465, i64 8131499392732, i64 4065749696366, i64 2032874848183, i64 1016437424091, i64 508218712045, i64 254109356022, i64 127054678011, i64 63527339005, i64 31763669502, i64 15881834751, i64 7940917375, i64 3970458687, i64 1985229343, i64 992614671, i64 496307335, i64 248153667, i64 124076833, i64 62038416, i64 31019208, i64 15509604, i64 7754802, i64 3877401, i64 1938700, i64 969350, i64 484675, i64 242337, i64 121168, i64 60584, i64 30292, i64 15146, i64 7573, i64 3786, i64 1893, i64 946, i64 473, i64 236, i64 118, i64 59, i64 29, i64 14, i64 7, i64 3, i64 1, i64 0], align 16
@sext = internal constant [64 x i64] [i64 -8152436031399644656, i64 -4076218015699822328, i64 -2038109007849911164, i64 -1019054503924955582, i64 -509527251962477791, i64 -254763625981238896, i64 -127381812990619448, i64 -63690906495309724, i64 -31845453247654862, i64 -15922726623827431, i64 -7961363311913716, i64 -3980681655956858, i64 -1990340827978429, i64 -995170413989215, i64 -497585206994608, i64 -248792603497304, i64 -124396301748652, i64 -62198150874326, i64 -31099075437163, i64 -15549537718582, i64 -7774768859291, i64 -3887384429646, i64 -1943692214823, i64 -971846107412, i64 -485923053706, i64 -242961526853, i64 -121480763427, i64 -60740381714, i64 -30370190857, i64 -15185095429, i64 -7592547715, i64 -3796273858, i64 -1898136929, i64 -949068465, i64 -474534233, i64 -237267117, i64 -118633559, i64 -59316780, i64 -29658390, i64 -14829195, i64 -7414598, i64 -3707299, i64 -1853650, i64 -926825, i64 -463413, i64 -231707, i64 -115854, i64 -57927, i64 -28964, i64 -14482, i64 -7241, i64 -3621, i64 -1811, i64 -906, i64 -453, i64 -227, i64 -114, i64 -57, i64 -29, i64 -15, i64 -8, i64 -4, i64 -2, i64 -1], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %22, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 64
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load i64, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @zext, i64 0, i64 0), align 16
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @variable_shift(i64 noundef %11, i32 noundef %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [64 x i64], [64 x i64]* @zext, i64 0, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  call void @abort() #2
  unreachable

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %7, !llvm.loop !4

25:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 64
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i64, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @sext, i64 0, i64 0), align 16
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @variable_shift(i64 noundef %30, i32 noundef %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x i64], [64 x i64]* @sext, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  call void @abort() #2
  unreachable

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %26, !llvm.loop !6

44:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 64
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i64, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @zext, i64 0, i64 0), align 16
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @constant_shift(i64 noundef %49, i32 noundef %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x i64], [64 x i64]* @zext, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  call void @abort() #2
  unreachable

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  br label %45, !llvm.loop !7

63:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i32, i32* %2, align 4
  %66 = icmp slt i32 %65, 64
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i64, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @sext, i64 0, i64 0), align 16
  %69 = load i32, i32* %2, align 4
  %70 = call i64 @constant_shift(i64 noundef %68, i32 noundef %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [64 x i64], [64 x i64]* @sext, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  call void @abort() #2
  unreachable

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %64, !llvm.loop !8

82:                                               ; preds = %64
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
  %8 = ashr i64 %5, %7
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
  %8 = ashr i64 %7, 0
  store i64 %8, i64* %3, align 8
  br label %199

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = ashr i64 %10, 1
  store i64 %11, i64* %3, align 8
  br label %199

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = ashr i64 %13, 2
  store i64 %14, i64* %3, align 8
  br label %199

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  %17 = ashr i64 %16, 3
  store i64 %17, i64* %3, align 8
  br label %199

18:                                               ; preds = %2
  %19 = load i64, i64* %3, align 8
  %20 = ashr i64 %19, 4
  store i64 %20, i64* %3, align 8
  br label %199

21:                                               ; preds = %2
  %22 = load i64, i64* %3, align 8
  %23 = ashr i64 %22, 5
  store i64 %23, i64* %3, align 8
  br label %199

24:                                               ; preds = %2
  %25 = load i64, i64* %3, align 8
  %26 = ashr i64 %25, 6
  store i64 %26, i64* %3, align 8
  br label %199

27:                                               ; preds = %2
  %28 = load i64, i64* %3, align 8
  %29 = ashr i64 %28, 7
  store i64 %29, i64* %3, align 8
  br label %199

30:                                               ; preds = %2
  %31 = load i64, i64* %3, align 8
  %32 = ashr i64 %31, 8
  store i64 %32, i64* %3, align 8
  br label %199

33:                                               ; preds = %2
  %34 = load i64, i64* %3, align 8
  %35 = ashr i64 %34, 9
  store i64 %35, i64* %3, align 8
  br label %199

36:                                               ; preds = %2
  %37 = load i64, i64* %3, align 8
  %38 = ashr i64 %37, 10
  store i64 %38, i64* %3, align 8
  br label %199

39:                                               ; preds = %2
  %40 = load i64, i64* %3, align 8
  %41 = ashr i64 %40, 11
  store i64 %41, i64* %3, align 8
  br label %199

42:                                               ; preds = %2
  %43 = load i64, i64* %3, align 8
  %44 = ashr i64 %43, 12
  store i64 %44, i64* %3, align 8
  br label %199

45:                                               ; preds = %2
  %46 = load i64, i64* %3, align 8
  %47 = ashr i64 %46, 13
  store i64 %47, i64* %3, align 8
  br label %199

48:                                               ; preds = %2
  %49 = load i64, i64* %3, align 8
  %50 = ashr i64 %49, 14
  store i64 %50, i64* %3, align 8
  br label %199

51:                                               ; preds = %2
  %52 = load i64, i64* %3, align 8
  %53 = ashr i64 %52, 15
  store i64 %53, i64* %3, align 8
  br label %199

54:                                               ; preds = %2
  %55 = load i64, i64* %3, align 8
  %56 = ashr i64 %55, 16
  store i64 %56, i64* %3, align 8
  br label %199

57:                                               ; preds = %2
  %58 = load i64, i64* %3, align 8
  %59 = ashr i64 %58, 17
  store i64 %59, i64* %3, align 8
  br label %199

60:                                               ; preds = %2
  %61 = load i64, i64* %3, align 8
  %62 = ashr i64 %61, 18
  store i64 %62, i64* %3, align 8
  br label %199

63:                                               ; preds = %2
  %64 = load i64, i64* %3, align 8
  %65 = ashr i64 %64, 19
  store i64 %65, i64* %3, align 8
  br label %199

66:                                               ; preds = %2
  %67 = load i64, i64* %3, align 8
  %68 = ashr i64 %67, 20
  store i64 %68, i64* %3, align 8
  br label %199

69:                                               ; preds = %2
  %70 = load i64, i64* %3, align 8
  %71 = ashr i64 %70, 21
  store i64 %71, i64* %3, align 8
  br label %199

72:                                               ; preds = %2
  %73 = load i64, i64* %3, align 8
  %74 = ashr i64 %73, 22
  store i64 %74, i64* %3, align 8
  br label %199

75:                                               ; preds = %2
  %76 = load i64, i64* %3, align 8
  %77 = ashr i64 %76, 23
  store i64 %77, i64* %3, align 8
  br label %199

78:                                               ; preds = %2
  %79 = load i64, i64* %3, align 8
  %80 = ashr i64 %79, 24
  store i64 %80, i64* %3, align 8
  br label %199

81:                                               ; preds = %2
  %82 = load i64, i64* %3, align 8
  %83 = ashr i64 %82, 25
  store i64 %83, i64* %3, align 8
  br label %199

84:                                               ; preds = %2
  %85 = load i64, i64* %3, align 8
  %86 = ashr i64 %85, 26
  store i64 %86, i64* %3, align 8
  br label %199

87:                                               ; preds = %2
  %88 = load i64, i64* %3, align 8
  %89 = ashr i64 %88, 27
  store i64 %89, i64* %3, align 8
  br label %199

90:                                               ; preds = %2
  %91 = load i64, i64* %3, align 8
  %92 = ashr i64 %91, 28
  store i64 %92, i64* %3, align 8
  br label %199

93:                                               ; preds = %2
  %94 = load i64, i64* %3, align 8
  %95 = ashr i64 %94, 29
  store i64 %95, i64* %3, align 8
  br label %199

96:                                               ; preds = %2
  %97 = load i64, i64* %3, align 8
  %98 = ashr i64 %97, 30
  store i64 %98, i64* %3, align 8
  br label %199

99:                                               ; preds = %2
  %100 = load i64, i64* %3, align 8
  %101 = ashr i64 %100, 31
  store i64 %101, i64* %3, align 8
  br label %199

102:                                              ; preds = %2
  %103 = load i64, i64* %3, align 8
  %104 = ashr i64 %103, 32
  store i64 %104, i64* %3, align 8
  br label %199

105:                                              ; preds = %2
  %106 = load i64, i64* %3, align 8
  %107 = ashr i64 %106, 33
  store i64 %107, i64* %3, align 8
  br label %199

108:                                              ; preds = %2
  %109 = load i64, i64* %3, align 8
  %110 = ashr i64 %109, 34
  store i64 %110, i64* %3, align 8
  br label %199

111:                                              ; preds = %2
  %112 = load i64, i64* %3, align 8
  %113 = ashr i64 %112, 35
  store i64 %113, i64* %3, align 8
  br label %199

114:                                              ; preds = %2
  %115 = load i64, i64* %3, align 8
  %116 = ashr i64 %115, 36
  store i64 %116, i64* %3, align 8
  br label %199

117:                                              ; preds = %2
  %118 = load i64, i64* %3, align 8
  %119 = ashr i64 %118, 37
  store i64 %119, i64* %3, align 8
  br label %199

120:                                              ; preds = %2
  %121 = load i64, i64* %3, align 8
  %122 = ashr i64 %121, 38
  store i64 %122, i64* %3, align 8
  br label %199

123:                                              ; preds = %2
  %124 = load i64, i64* %3, align 8
  %125 = ashr i64 %124, 39
  store i64 %125, i64* %3, align 8
  br label %199

126:                                              ; preds = %2
  %127 = load i64, i64* %3, align 8
  %128 = ashr i64 %127, 40
  store i64 %128, i64* %3, align 8
  br label %199

129:                                              ; preds = %2
  %130 = load i64, i64* %3, align 8
  %131 = ashr i64 %130, 41
  store i64 %131, i64* %3, align 8
  br label %199

132:                                              ; preds = %2
  %133 = load i64, i64* %3, align 8
  %134 = ashr i64 %133, 42
  store i64 %134, i64* %3, align 8
  br label %199

135:                                              ; preds = %2
  %136 = load i64, i64* %3, align 8
  %137 = ashr i64 %136, 43
  store i64 %137, i64* %3, align 8
  br label %199

138:                                              ; preds = %2
  %139 = load i64, i64* %3, align 8
  %140 = ashr i64 %139, 44
  store i64 %140, i64* %3, align 8
  br label %199

141:                                              ; preds = %2
  %142 = load i64, i64* %3, align 8
  %143 = ashr i64 %142, 45
  store i64 %143, i64* %3, align 8
  br label %199

144:                                              ; preds = %2
  %145 = load i64, i64* %3, align 8
  %146 = ashr i64 %145, 46
  store i64 %146, i64* %3, align 8
  br label %199

147:                                              ; preds = %2
  %148 = load i64, i64* %3, align 8
  %149 = ashr i64 %148, 47
  store i64 %149, i64* %3, align 8
  br label %199

150:                                              ; preds = %2
  %151 = load i64, i64* %3, align 8
  %152 = ashr i64 %151, 48
  store i64 %152, i64* %3, align 8
  br label %199

153:                                              ; preds = %2
  %154 = load i64, i64* %3, align 8
  %155 = ashr i64 %154, 49
  store i64 %155, i64* %3, align 8
  br label %199

156:                                              ; preds = %2
  %157 = load i64, i64* %3, align 8
  %158 = ashr i64 %157, 50
  store i64 %158, i64* %3, align 8
  br label %199

159:                                              ; preds = %2
  %160 = load i64, i64* %3, align 8
  %161 = ashr i64 %160, 51
  store i64 %161, i64* %3, align 8
  br label %199

162:                                              ; preds = %2
  %163 = load i64, i64* %3, align 8
  %164 = ashr i64 %163, 52
  store i64 %164, i64* %3, align 8
  br label %199

165:                                              ; preds = %2
  %166 = load i64, i64* %3, align 8
  %167 = ashr i64 %166, 53
  store i64 %167, i64* %3, align 8
  br label %199

168:                                              ; preds = %2
  %169 = load i64, i64* %3, align 8
  %170 = ashr i64 %169, 54
  store i64 %170, i64* %3, align 8
  br label %199

171:                                              ; preds = %2
  %172 = load i64, i64* %3, align 8
  %173 = ashr i64 %172, 55
  store i64 %173, i64* %3, align 8
  br label %199

174:                                              ; preds = %2
  %175 = load i64, i64* %3, align 8
  %176 = ashr i64 %175, 56
  store i64 %176, i64* %3, align 8
  br label %199

177:                                              ; preds = %2
  %178 = load i64, i64* %3, align 8
  %179 = ashr i64 %178, 57
  store i64 %179, i64* %3, align 8
  br label %199

180:                                              ; preds = %2
  %181 = load i64, i64* %3, align 8
  %182 = ashr i64 %181, 58
  store i64 %182, i64* %3, align 8
  br label %199

183:                                              ; preds = %2
  %184 = load i64, i64* %3, align 8
  %185 = ashr i64 %184, 59
  store i64 %185, i64* %3, align 8
  br label %199

186:                                              ; preds = %2
  %187 = load i64, i64* %3, align 8
  %188 = ashr i64 %187, 60
  store i64 %188, i64* %3, align 8
  br label %199

189:                                              ; preds = %2
  %190 = load i64, i64* %3, align 8
  %191 = ashr i64 %190, 61
  store i64 %191, i64* %3, align 8
  br label %199

192:                                              ; preds = %2
  %193 = load i64, i64* %3, align 8
  %194 = ashr i64 %193, 62
  store i64 %194, i64* %3, align 8
  br label %199

195:                                              ; preds = %2
  %196 = load i64, i64* %3, align 8
  %197 = ashr i64 %196, 63
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
