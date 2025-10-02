; ModuleID = './strncmp-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncmp-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ello\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"zllo\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"allo\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  br i1 false, label %2, label %1

1:                                                ; preds = %0
  br i1 false, label %2, label %3

2:                                                ; preds = %1, %0
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %1
  br i1 false, label %5, label %4

4:                                                ; preds = %3
  br i1 false, label %5, label %6

5:                                                ; preds = %4, %3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br i1 false, label %8, label %7

7:                                                ; preds = %6
  br i1 false, label %8, label %9

8:                                                ; preds = %7, %6
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br i1 false, label %11, label %10

10:                                               ; preds = %9
  br i1 false, label %11, label %12

11:                                               ; preds = %10, %9
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  br i1 false, label %14, label %13

13:                                               ; preds = %12
  br i1 false, label %14, label %15

14:                                               ; preds = %13, %12
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  br i1 false, label %17, label %16

16:                                               ; preds = %15
  br i1 false, label %17, label %18

17:                                               ; preds = %16, %15
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  br i1 false, label %20, label %19

19:                                               ; preds = %18
  br i1 false, label %20, label %21

20:                                               ; preds = %19, %18
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  br i1 false, label %23, label %22

22:                                               ; preds = %21
  br i1 false, label %23, label %24

23:                                               ; preds = %22, %21
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br i1 false, label %26, label %25

25:                                               ; preds = %24
  br i1 false, label %26, label %27

26:                                               ; preds = %25, %24
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %25
  br i1 false, label %29, label %28

28:                                               ; preds = %27
  br i1 false, label %29, label %30

29:                                               ; preds = %28, %27
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %28
  br i1 false, label %32, label %31

31:                                               ; preds = %30
  br i1 false, label %32, label %33

32:                                               ; preds = %31, %30
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %31
  br i1 false, label %35, label %34

34:                                               ; preds = %33
  br i1 false, label %35, label %36

35:                                               ; preds = %34, %33
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %34
  br i1 false, label %38, label %37

37:                                               ; preds = %36
  br i1 false, label %38, label %39

38:                                               ; preds = %37, %36
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %37
  br i1 false, label %41, label %40

40:                                               ; preds = %39
  br i1 false, label %41, label %42

41:                                               ; preds = %40, %39
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %40
  br i1 false, label %44, label %43

43:                                               ; preds = %42
  br i1 false, label %44, label %45

44:                                               ; preds = %43, %42
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %43
  br i1 false, label %47, label %46

46:                                               ; preds = %45
  br i1 false, label %47, label %48

47:                                               ; preds = %46, %45
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %46
  br i1 false, label %50, label %49

49:                                               ; preds = %48
  br i1 false, label %50, label %51

50:                                               ; preds = %49, %48
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %49
  br i1 false, label %53, label %52

52:                                               ; preds = %51
  br i1 false, label %53, label %54

53:                                               ; preds = %52, %51
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %52
  br i1 false, label %56, label %55

55:                                               ; preds = %54
  br i1 false, label %56, label %57

56:                                               ; preds = %55, %54
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %55
  br i1 false, label %59, label %58

58:                                               ; preds = %57
  br i1 false, label %59, label %60

59:                                               ; preds = %58, %57
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %58
  br i1 false, label %62, label %61

61:                                               ; preds = %60
  br i1 false, label %62, label %63

62:                                               ; preds = %61, %60
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %61
  br i1 false, label %65, label %64

64:                                               ; preds = %63
  br i1 false, label %65, label %66

65:                                               ; preds = %64, %63
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %64
  br i1 false, label %68, label %67

67:                                               ; preds = %66
  br i1 false, label %68, label %69

68:                                               ; preds = %67, %66
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %67
  br i1 false, label %71, label %70

70:                                               ; preds = %69
  br i1 false, label %71, label %72

71:                                               ; preds = %70, %69
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %70
  br i1 false, label %75, label %73

73:                                               ; preds = %72
  br i1 false, label %75, label %74

74:                                               ; preds = %73
  br i1 false, label %75, label %76

75:                                               ; preds = %74, %73, %72
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %74
  br i1 false, label %79, label %77

77:                                               ; preds = %76
  br i1 false, label %79, label %78

78:                                               ; preds = %77
  br i1 false, label %79, label %80

79:                                               ; preds = %78, %77, %76
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %78
  br i1 false, label %83, label %81

81:                                               ; preds = %80
  br i1 false, label %83, label %82

82:                                               ; preds = %81
  br i1 false, label %83, label %84

83:                                               ; preds = %82, %81, %80
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %82
  br i1 false, label %87, label %85

85:                                               ; preds = %84
  br i1 false, label %87, label %86

86:                                               ; preds = %85
  br i1 false, label %87, label %88

87:                                               ; preds = %86, %85, %84
  br label %UnifiedUnreachableBlock

88:                                               ; preds = %86
  br i1 false, label %91, label %89

89:                                               ; preds = %88
  br i1 false, label %91, label %90

90:                                               ; preds = %89
  br i1 false, label %91, label %92

91:                                               ; preds = %90, %89, %88
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %90
  br i1 false, label %95, label %93

93:                                               ; preds = %92
  br i1 false, label %95, label %94

94:                                               ; preds = %93
  br i1 false, label %95, label %96

95:                                               ; preds = %94, %93, %92
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %94
  br i1 false, label %99, label %97

97:                                               ; preds = %96
  br i1 false, label %99, label %98

98:                                               ; preds = %97
  br i1 false, label %99, label %100

99:                                               ; preds = %98, %97, %96
  br label %UnifiedUnreachableBlock

100:                                              ; preds = %98
  br i1 false, label %103, label %101

101:                                              ; preds = %100
  br i1 false, label %103, label %102

102:                                              ; preds = %101
  br i1 false, label %103, label %104

103:                                              ; preds = %102, %101, %100
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %102
  br i1 false, label %107, label %105

105:                                              ; preds = %104
  br i1 false, label %107, label %106

106:                                              ; preds = %105
  br i1 false, label %107, label %108

107:                                              ; preds = %106, %105, %104
  br label %UnifiedUnreachableBlock

108:                                              ; preds = %106
  br i1 false, label %111, label %109

109:                                              ; preds = %108
  br i1 false, label %111, label %110

110:                                              ; preds = %109
  br i1 false, label %111, label %112

111:                                              ; preds = %110, %109, %108
  br label %UnifiedUnreachableBlock

112:                                              ; preds = %110
  br i1 false, label %115, label %113

113:                                              ; preds = %112
  br i1 false, label %115, label %114

114:                                              ; preds = %113
  br i1 false, label %115, label %116

115:                                              ; preds = %114, %113, %112
  br label %UnifiedUnreachableBlock

116:                                              ; preds = %114
  br i1 false, label %119, label %117

117:                                              ; preds = %116
  br i1 false, label %119, label %118

118:                                              ; preds = %117
  br i1 false, label %119, label %120

119:                                              ; preds = %118, %117, %116
  br label %UnifiedUnreachableBlock

120:                                              ; preds = %118
  br i1 false, label %123, label %121

121:                                              ; preds = %120
  br i1 false, label %123, label %122

122:                                              ; preds = %121
  br i1 false, label %123, label %124

123:                                              ; preds = %122, %121, %120
  br label %UnifiedUnreachableBlock

124:                                              ; preds = %122
  br i1 false, label %127, label %125

125:                                              ; preds = %124
  br i1 false, label %127, label %126

126:                                              ; preds = %125
  br i1 false, label %127, label %128

127:                                              ; preds = %126, %125, %124
  br label %UnifiedUnreachableBlock

128:                                              ; preds = %126
  br i1 false, label %131, label %129

129:                                              ; preds = %128
  br i1 false, label %131, label %130

130:                                              ; preds = %129
  br i1 false, label %131, label %132

131:                                              ; preds = %130, %129, %128
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %130
  br i1 false, label %135, label %133

133:                                              ; preds = %132
  br i1 false, label %135, label %134

134:                                              ; preds = %133
  br i1 false, label %135, label %136

135:                                              ; preds = %134, %133, %132
  br label %UnifiedUnreachableBlock

136:                                              ; preds = %134
  br i1 false, label %139, label %137

137:                                              ; preds = %136
  br i1 false, label %139, label %138

138:                                              ; preds = %137
  br i1 false, label %139, label %140

139:                                              ; preds = %138, %137, %136
  br label %UnifiedUnreachableBlock

140:                                              ; preds = %138
  br i1 false, label %143, label %141

141:                                              ; preds = %140
  br i1 false, label %143, label %142

142:                                              ; preds = %141
  br i1 false, label %143, label %144

143:                                              ; preds = %142, %141, %140
  br label %UnifiedUnreachableBlock

144:                                              ; preds = %142
  br i1 false, label %147, label %145

145:                                              ; preds = %144
  br i1 false, label %147, label %146

146:                                              ; preds = %145
  br i1 false, label %147, label %148

147:                                              ; preds = %146, %145, %144
  br label %UnifiedUnreachableBlock

148:                                              ; preds = %146
  br i1 false, label %151, label %149

149:                                              ; preds = %148
  br i1 false, label %151, label %150

150:                                              ; preds = %149
  br i1 false, label %151, label %152

151:                                              ; preds = %150, %149, %148
  br label %UnifiedUnreachableBlock

152:                                              ; preds = %150
  br i1 false, label %155, label %153

153:                                              ; preds = %152
  br i1 false, label %155, label %154

154:                                              ; preds = %153
  br i1 false, label %155, label %156

155:                                              ; preds = %154, %153, %152
  br label %UnifiedUnreachableBlock

156:                                              ; preds = %154
  br i1 false, label %159, label %157

157:                                              ; preds = %156
  br i1 false, label %159, label %158

158:                                              ; preds = %157
  br i1 false, label %159, label %160

159:                                              ; preds = %158, %157, %156
  br label %UnifiedUnreachableBlock

160:                                              ; preds = %158
  br i1 false, label %163, label %161

161:                                              ; preds = %160
  br i1 false, label %163, label %162

162:                                              ; preds = %161
  br i1 false, label %163, label %164

163:                                              ; preds = %162, %161, %160
  br label %UnifiedUnreachableBlock

164:                                              ; preds = %162
  br i1 false, label %167, label %165

165:                                              ; preds = %164
  br i1 false, label %167, label %166

166:                                              ; preds = %165
  br i1 false, label %167, label %168

167:                                              ; preds = %166, %165, %164
  br label %UnifiedUnreachableBlock

168:                                              ; preds = %166
  ret void

UnifiedUnreachableBlock:                          ; preds = %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
  unreachable
}

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
