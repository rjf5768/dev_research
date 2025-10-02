; ModuleID = './divcmp-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test1(i32 noundef %0) #0 {
  %.off = add i32 %0, -20
  %2 = icmp ult i32 %.off, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test1u(i32 noundef %0) #0 {
  %.off = add i32 %0, -20
  %2 = icmp ult i32 %.off, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test2(i32 noundef %0) #0 {
  %.off = add i32 %0, 9
  %2 = icmp ult i32 %.off, 19
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test2u(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test3(i32 noundef %0) #0 {
  %2 = add i32 %0, -30
  %3 = icmp ult i32 %2, -10
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test3u(i32 noundef %0) #0 {
  %2 = add i32 %0, -30
  %3 = icmp ult i32 %2, -10
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test4(i32 noundef %0) #0 {
  %2 = add i32 %0, -10
  %3 = icmp ult i32 %2, -19
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test4u(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 9
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test5(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 20
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test5u(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 20
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test6(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, -9
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test7(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 30
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test7u(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 30
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test8(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test8u(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test9(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 29
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test9u(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 29
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test10(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 9
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test10u(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 9
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test11(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 19
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test11u(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 19
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test12(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, -10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @test1(i32 noundef 19)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i32 @test1(i32 noundef 20)
  %.not1 = icmp eq i32 %4, 1
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i32 @test1(i32 noundef 29)
  %.not2 = icmp eq i32 %7, 1
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = call i32 @test1(i32 noundef 30)
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = call i32 @test1u(i32 noundef 19)
  %.not4 = icmp eq i32 %13, 0
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %16 = call i32 @test1u(i32 noundef 20)
  %.not5 = icmp eq i32 %16, 1
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %19 = call i32 @test1u(i32 noundef 29)
  %.not6 = icmp eq i32 %19, 1
  br i1 %.not6, label %21, label %20

20:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = call i32 @test1u(i32 noundef 30)
  %.not7 = icmp eq i32 %22, 0
  br i1 %.not7, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  %25 = call i32 @test2(i32 noundef 0)
  %.not8 = icmp eq i32 %25, 1
  br i1 %.not8, label %27, label %26

26:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  %28 = call i32 @test2(i32 noundef 9)
  %.not9 = icmp eq i32 %28, 1
  br i1 %.not9, label %30, label %29

29:                                               ; preds = %27
  call void @abort() #3
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  %31 = call i32 @test2(i32 noundef 10)
  %.not10 = icmp eq i32 %31, 0
  br i1 %.not10, label %33, label %32

32:                                               ; preds = %30
  call void @abort() #3
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %30
  %34 = call i32 @test2(i32 noundef -1)
  %.not11 = icmp eq i32 %34, 1
  br i1 %.not11, label %36, label %35

35:                                               ; preds = %33
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  %37 = call i32 @test2(i32 noundef -9)
  %.not12 = icmp eq i32 %37, 1
  br i1 %.not12, label %39, label %38

38:                                               ; preds = %36
  call void @abort() #3
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %36
  %40 = call i32 @test2(i32 noundef -10)
  %.not13 = icmp eq i32 %40, 0
  br i1 %.not13, label %42, label %41

41:                                               ; preds = %39
  call void @abort() #3
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  %43 = call i32 @test2u(i32 noundef 0)
  %.not14 = icmp eq i32 %43, 1
  br i1 %.not14, label %45, label %44

44:                                               ; preds = %42
  call void @abort() #3
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %42
  %46 = call i32 @test2u(i32 noundef 9)
  %.not15 = icmp eq i32 %46, 1
  br i1 %.not15, label %48, label %47

47:                                               ; preds = %45
  call void @abort() #3
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %45
  %49 = call i32 @test2u(i32 noundef 10)
  %.not16 = icmp eq i32 %49, 0
  br i1 %.not16, label %51, label %50

50:                                               ; preds = %48
  call void @abort() #3
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %48
  %52 = call i32 @test2u(i32 noundef -1)
  %.not17 = icmp eq i32 %52, 0
  br i1 %.not17, label %54, label %53

53:                                               ; preds = %51
  call void @abort() #3
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %51
  %55 = call i32 @test2u(i32 noundef -9)
  %.not18 = icmp eq i32 %55, 0
  br i1 %.not18, label %57, label %56

56:                                               ; preds = %54
  call void @abort() #3
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %54
  %58 = call i32 @test2u(i32 noundef -10)
  %.not19 = icmp eq i32 %58, 0
  br i1 %.not19, label %60, label %59

59:                                               ; preds = %57
  call void @abort() #3
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %57
  %61 = call i32 @test3(i32 noundef 19)
  %.not20 = icmp eq i32 %61, 1
  br i1 %.not20, label %63, label %62

62:                                               ; preds = %60
  call void @abort() #3
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %60
  %64 = call i32 @test3(i32 noundef 20)
  %.not21 = icmp eq i32 %64, 0
  br i1 %.not21, label %66, label %65

65:                                               ; preds = %63
  call void @abort() #3
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %63
  %67 = call i32 @test3(i32 noundef 29)
  %.not22 = icmp eq i32 %67, 0
  br i1 %.not22, label %69, label %68

68:                                               ; preds = %66
  call void @abort() #3
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %66
  %70 = call i32 @test3(i32 noundef 30)
  %.not23 = icmp eq i32 %70, 1
  br i1 %.not23, label %72, label %71

71:                                               ; preds = %69
  call void @abort() #3
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %69
  %73 = call i32 @test3u(i32 noundef 19)
  %.not24 = icmp eq i32 %73, 1
  br i1 %.not24, label %75, label %74

74:                                               ; preds = %72
  call void @abort() #3
  br label %UnifiedUnreachableBlock

75:                                               ; preds = %72
  %76 = call i32 @test3u(i32 noundef 20)
  %.not25 = icmp eq i32 %76, 0
  br i1 %.not25, label %78, label %77

77:                                               ; preds = %75
  call void @abort() #3
  br label %UnifiedUnreachableBlock

78:                                               ; preds = %75
  %79 = call i32 @test3u(i32 noundef 29)
  %.not26 = icmp eq i32 %79, 0
  br i1 %.not26, label %81, label %80

80:                                               ; preds = %78
  call void @abort() #3
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %78
  %82 = call i32 @test3u(i32 noundef 30)
  %.not27 = icmp eq i32 %82, 1
  br i1 %.not27, label %84, label %83

83:                                               ; preds = %81
  call void @abort() #3
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %81
  %85 = call i32 @test4(i32 noundef 0)
  %.not28 = icmp eq i32 %85, 0
  br i1 %.not28, label %87, label %86

86:                                               ; preds = %84
  call void @abort() #3
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %84
  %88 = call i32 @test4(i32 noundef 9)
  %.not29 = icmp eq i32 %88, 0
  br i1 %.not29, label %90, label %89

89:                                               ; preds = %87
  call void @abort() #3
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %87
  %91 = call i32 @test4(i32 noundef 10)
  %.not30 = icmp eq i32 %91, 1
  br i1 %.not30, label %93, label %92

92:                                               ; preds = %90
  call void @abort() #3
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %90
  %94 = call i32 @test4(i32 noundef -1)
  %.not31 = icmp eq i32 %94, 0
  br i1 %.not31, label %96, label %95

95:                                               ; preds = %93
  call void @abort() #3
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %93
  %97 = call i32 @test4(i32 noundef -9)
  %.not32 = icmp eq i32 %97, 0
  br i1 %.not32, label %99, label %98

98:                                               ; preds = %96
  call void @abort() #3
  br label %UnifiedUnreachableBlock

99:                                               ; preds = %96
  %100 = call i32 @test4(i32 noundef -10)
  %.not33 = icmp eq i32 %100, 1
  br i1 %.not33, label %102, label %101

101:                                              ; preds = %99
  call void @abort() #3
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %99
  %103 = call i32 @test4u(i32 noundef 0)
  %.not34 = icmp eq i32 %103, 0
  br i1 %.not34, label %105, label %104

104:                                              ; preds = %102
  call void @abort() #3
  br label %UnifiedUnreachableBlock

105:                                              ; preds = %102
  %106 = call i32 @test4u(i32 noundef 9)
  %.not35 = icmp eq i32 %106, 0
  br i1 %.not35, label %108, label %107

107:                                              ; preds = %105
  call void @abort() #3
  br label %UnifiedUnreachableBlock

108:                                              ; preds = %105
  %109 = call i32 @test4u(i32 noundef 10)
  %.not36 = icmp eq i32 %109, 1
  br i1 %.not36, label %111, label %110

110:                                              ; preds = %108
  call void @abort() #3
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %108
  %112 = call i32 @test4u(i32 noundef -1)
  %.not37 = icmp eq i32 %112, 1
  br i1 %.not37, label %114, label %113

113:                                              ; preds = %111
  call void @abort() #3
  br label %UnifiedUnreachableBlock

114:                                              ; preds = %111
  %115 = call i32 @test4u(i32 noundef -9)
  %.not38 = icmp eq i32 %115, 1
  br i1 %.not38, label %117, label %116

116:                                              ; preds = %114
  call void @abort() #3
  br label %UnifiedUnreachableBlock

117:                                              ; preds = %114
  %118 = call i32 @test4u(i32 noundef -10)
  %.not39 = icmp eq i32 %118, 1
  br i1 %.not39, label %120, label %119

119:                                              ; preds = %117
  call void @abort() #3
  br label %UnifiedUnreachableBlock

120:                                              ; preds = %117
  %121 = call i32 @test5(i32 noundef 19)
  %.not40 = icmp eq i32 %121, 1
  br i1 %.not40, label %123, label %122

122:                                              ; preds = %120
  call void @abort() #3
  br label %UnifiedUnreachableBlock

123:                                              ; preds = %120
  %124 = call i32 @test5(i32 noundef 20)
  %.not41 = icmp eq i32 %124, 0
  br i1 %.not41, label %126, label %125

125:                                              ; preds = %123
  call void @abort() #3
  br label %UnifiedUnreachableBlock

126:                                              ; preds = %123
  %127 = call i32 @test5(i32 noundef 29)
  %.not42 = icmp eq i32 %127, 0
  br i1 %.not42, label %129, label %128

128:                                              ; preds = %126
  call void @abort() #3
  br label %UnifiedUnreachableBlock

129:                                              ; preds = %126
  %130 = call i32 @test5(i32 noundef 30)
  %.not43 = icmp eq i32 %130, 0
  br i1 %.not43, label %132, label %131

131:                                              ; preds = %129
  call void @abort() #3
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %129
  %133 = call i32 @test5u(i32 noundef 19)
  %.not44 = icmp eq i32 %133, 1
  br i1 %.not44, label %135, label %134

134:                                              ; preds = %132
  call void @abort() #3
  br label %UnifiedUnreachableBlock

135:                                              ; preds = %132
  %136 = call i32 @test5u(i32 noundef 20)
  %.not45 = icmp eq i32 %136, 0
  br i1 %.not45, label %138, label %137

137:                                              ; preds = %135
  call void @abort() #3
  br label %UnifiedUnreachableBlock

138:                                              ; preds = %135
  %139 = call i32 @test5u(i32 noundef 29)
  %.not46 = icmp eq i32 %139, 0
  br i1 %.not46, label %141, label %140

140:                                              ; preds = %138
  call void @abort() #3
  br label %UnifiedUnreachableBlock

141:                                              ; preds = %138
  %142 = call i32 @test5u(i32 noundef 30)
  %.not47 = icmp eq i32 %142, 0
  br i1 %.not47, label %144, label %143

143:                                              ; preds = %141
  call void @abort() #3
  br label %UnifiedUnreachableBlock

144:                                              ; preds = %141
  %145 = call i32 @test6(i32 noundef 0)
  %.not48 = icmp eq i32 %145, 0
  br i1 %.not48, label %147, label %146

146:                                              ; preds = %144
  call void @abort() #3
  br label %UnifiedUnreachableBlock

147:                                              ; preds = %144
  %148 = call i32 @test6(i32 noundef 9)
  %.not49 = icmp eq i32 %148, 0
  br i1 %.not49, label %150, label %149

149:                                              ; preds = %147
  call void @abort() #3
  br label %UnifiedUnreachableBlock

150:                                              ; preds = %147
  %151 = call i32 @test6(i32 noundef 10)
  %.not50 = icmp eq i32 %151, 0
  br i1 %.not50, label %153, label %152

152:                                              ; preds = %150
  call void @abort() #3
  br label %UnifiedUnreachableBlock

153:                                              ; preds = %150
  %154 = call i32 @test6(i32 noundef -1)
  %.not51 = icmp eq i32 %154, 0
  br i1 %.not51, label %156, label %155

155:                                              ; preds = %153
  call void @abort() #3
  br label %UnifiedUnreachableBlock

156:                                              ; preds = %153
  %157 = call i32 @test6(i32 noundef -9)
  %.not52 = icmp eq i32 %157, 0
  br i1 %.not52, label %159, label %158

158:                                              ; preds = %156
  call void @abort() #3
  br label %UnifiedUnreachableBlock

159:                                              ; preds = %156
  %160 = call i32 @test6(i32 noundef -10)
  %.not53 = icmp eq i32 %160, 1
  br i1 %.not53, label %162, label %161

161:                                              ; preds = %159
  call void @abort() #3
  br label %UnifiedUnreachableBlock

162:                                              ; preds = %159
  %163 = call i32 @test7(i32 noundef 19)
  %.not54 = icmp eq i32 %163, 1
  br i1 %.not54, label %165, label %164

164:                                              ; preds = %162
  call void @abort() #3
  br label %UnifiedUnreachableBlock

165:                                              ; preds = %162
  %166 = call i32 @test7(i32 noundef 20)
  %.not55 = icmp eq i32 %166, 1
  br i1 %.not55, label %168, label %167

167:                                              ; preds = %165
  call void @abort() #3
  br label %UnifiedUnreachableBlock

168:                                              ; preds = %165
  %169 = call i32 @test7(i32 noundef 29)
  %.not56 = icmp eq i32 %169, 1
  br i1 %.not56, label %171, label %170

170:                                              ; preds = %168
  call void @abort() #3
  br label %UnifiedUnreachableBlock

171:                                              ; preds = %168
  %172 = call i32 @test7(i32 noundef 30)
  %.not57 = icmp eq i32 %172, 0
  br i1 %.not57, label %174, label %173

173:                                              ; preds = %171
  call void @abort() #3
  br label %UnifiedUnreachableBlock

174:                                              ; preds = %171
  %175 = call i32 @test7u(i32 noundef 19)
  %.not58 = icmp eq i32 %175, 1
  br i1 %.not58, label %177, label %176

176:                                              ; preds = %174
  call void @abort() #3
  br label %UnifiedUnreachableBlock

177:                                              ; preds = %174
  %178 = call i32 @test7u(i32 noundef 20)
  %.not59 = icmp eq i32 %178, 1
  br i1 %.not59, label %180, label %179

179:                                              ; preds = %177
  call void @abort() #3
  br label %UnifiedUnreachableBlock

180:                                              ; preds = %177
  %181 = call i32 @test7u(i32 noundef 29)
  %.not60 = icmp eq i32 %181, 1
  br i1 %.not60, label %183, label %182

182:                                              ; preds = %180
  call void @abort() #3
  br label %UnifiedUnreachableBlock

183:                                              ; preds = %180
  %184 = call i32 @test7u(i32 noundef 30)
  %.not61 = icmp eq i32 %184, 0
  br i1 %.not61, label %186, label %185

185:                                              ; preds = %183
  call void @abort() #3
  br label %UnifiedUnreachableBlock

186:                                              ; preds = %183
  %187 = call i32 @test8(i32 noundef 0)
  %.not62 = icmp eq i32 %187, 1
  br i1 %.not62, label %189, label %188

188:                                              ; preds = %186
  call void @abort() #3
  br label %UnifiedUnreachableBlock

189:                                              ; preds = %186
  %190 = call i32 @test8(i32 noundef 9)
  %.not63 = icmp eq i32 %190, 1
  br i1 %.not63, label %192, label %191

191:                                              ; preds = %189
  call void @abort() #3
  br label %UnifiedUnreachableBlock

192:                                              ; preds = %189
  %193 = call i32 @test8(i32 noundef 10)
  %.not64 = icmp eq i32 %193, 0
  br i1 %.not64, label %195, label %194

194:                                              ; preds = %192
  call void @abort() #3
  br label %UnifiedUnreachableBlock

195:                                              ; preds = %192
  %196 = call i32 @test8(i32 noundef -1)
  %.not65 = icmp eq i32 %196, 1
  br i1 %.not65, label %198, label %197

197:                                              ; preds = %195
  call void @abort() #3
  br label %UnifiedUnreachableBlock

198:                                              ; preds = %195
  %199 = call i32 @test8(i32 noundef -9)
  %.not66 = icmp eq i32 %199, 1
  br i1 %.not66, label %201, label %200

200:                                              ; preds = %198
  call void @abort() #3
  br label %UnifiedUnreachableBlock

201:                                              ; preds = %198
  %202 = call i32 @test8(i32 noundef -10)
  %.not67 = icmp eq i32 %202, 1
  br i1 %.not67, label %204, label %203

203:                                              ; preds = %201
  call void @abort() #3
  br label %UnifiedUnreachableBlock

204:                                              ; preds = %201
  %205 = call i32 @test8u(i32 noundef 0)
  %.not68 = icmp eq i32 %205, 1
  br i1 %.not68, label %207, label %206

206:                                              ; preds = %204
  call void @abort() #3
  br label %UnifiedUnreachableBlock

207:                                              ; preds = %204
  %208 = call i32 @test8u(i32 noundef 9)
  %.not69 = icmp eq i32 %208, 1
  br i1 %.not69, label %210, label %209

209:                                              ; preds = %207
  call void @abort() #3
  br label %UnifiedUnreachableBlock

210:                                              ; preds = %207
  %211 = call i32 @test8u(i32 noundef 10)
  %.not70 = icmp eq i32 %211, 0
  br i1 %.not70, label %213, label %212

212:                                              ; preds = %210
  call void @abort() #3
  br label %UnifiedUnreachableBlock

213:                                              ; preds = %210
  %214 = call i32 @test8u(i32 noundef -1)
  %.not71 = icmp eq i32 %214, 0
  br i1 %.not71, label %216, label %215

215:                                              ; preds = %213
  call void @abort() #3
  br label %UnifiedUnreachableBlock

216:                                              ; preds = %213
  %217 = call i32 @test8u(i32 noundef -9)
  %.not72 = icmp eq i32 %217, 0
  br i1 %.not72, label %219, label %218

218:                                              ; preds = %216
  call void @abort() #3
  br label %UnifiedUnreachableBlock

219:                                              ; preds = %216
  %220 = call i32 @test8u(i32 noundef -10)
  %.not73 = icmp eq i32 %220, 0
  br i1 %.not73, label %222, label %221

221:                                              ; preds = %219
  call void @abort() #3
  br label %UnifiedUnreachableBlock

222:                                              ; preds = %219
  %223 = call i32 @test9(i32 noundef 19)
  %.not74 = icmp eq i32 %223, 0
  br i1 %.not74, label %225, label %224

224:                                              ; preds = %222
  call void @abort() #3
  br label %UnifiedUnreachableBlock

225:                                              ; preds = %222
  %226 = call i32 @test9(i32 noundef 20)
  %.not75 = icmp eq i32 %226, 0
  br i1 %.not75, label %228, label %227

227:                                              ; preds = %225
  call void @abort() #3
  br label %UnifiedUnreachableBlock

228:                                              ; preds = %225
  %229 = call i32 @test9(i32 noundef 29)
  %.not76 = icmp eq i32 %229, 0
  br i1 %.not76, label %231, label %230

230:                                              ; preds = %228
  call void @abort() #3
  br label %UnifiedUnreachableBlock

231:                                              ; preds = %228
  %232 = call i32 @test9(i32 noundef 30)
  %.not77 = icmp eq i32 %232, 1
  br i1 %.not77, label %234, label %233

233:                                              ; preds = %231
  call void @abort() #3
  br label %UnifiedUnreachableBlock

234:                                              ; preds = %231
  %235 = call i32 @test9u(i32 noundef 19)
  %.not78 = icmp eq i32 %235, 0
  br i1 %.not78, label %237, label %236

236:                                              ; preds = %234
  call void @abort() #3
  br label %UnifiedUnreachableBlock

237:                                              ; preds = %234
  %238 = call i32 @test9u(i32 noundef 20)
  %.not79 = icmp eq i32 %238, 0
  br i1 %.not79, label %240, label %239

239:                                              ; preds = %237
  call void @abort() #3
  br label %UnifiedUnreachableBlock

240:                                              ; preds = %237
  %241 = call i32 @test9u(i32 noundef 29)
  %.not80 = icmp eq i32 %241, 0
  br i1 %.not80, label %243, label %242

242:                                              ; preds = %240
  call void @abort() #3
  br label %UnifiedUnreachableBlock

243:                                              ; preds = %240
  %244 = call i32 @test9u(i32 noundef 30)
  %.not81 = icmp eq i32 %244, 1
  br i1 %.not81, label %246, label %245

245:                                              ; preds = %243
  call void @abort() #3
  br label %UnifiedUnreachableBlock

246:                                              ; preds = %243
  %247 = call i32 @test10(i32 noundef 0)
  %.not82 = icmp eq i32 %247, 0
  br i1 %.not82, label %249, label %248

248:                                              ; preds = %246
  call void @abort() #3
  br label %UnifiedUnreachableBlock

249:                                              ; preds = %246
  %250 = call i32 @test10(i32 noundef 9)
  %.not83 = icmp eq i32 %250, 0
  br i1 %.not83, label %252, label %251

251:                                              ; preds = %249
  call void @abort() #3
  br label %UnifiedUnreachableBlock

252:                                              ; preds = %249
  %253 = call i32 @test10(i32 noundef 10)
  %.not84 = icmp eq i32 %253, 1
  br i1 %.not84, label %255, label %254

254:                                              ; preds = %252
  call void @abort() #3
  br label %UnifiedUnreachableBlock

255:                                              ; preds = %252
  %256 = call i32 @test10(i32 noundef -1)
  %.not85 = icmp eq i32 %256, 0
  br i1 %.not85, label %258, label %257

257:                                              ; preds = %255
  call void @abort() #3
  br label %UnifiedUnreachableBlock

258:                                              ; preds = %255
  %259 = call i32 @test10(i32 noundef -9)
  %.not86 = icmp eq i32 %259, 0
  br i1 %.not86, label %261, label %260

260:                                              ; preds = %258
  call void @abort() #3
  br label %UnifiedUnreachableBlock

261:                                              ; preds = %258
  %262 = call i32 @test10(i32 noundef -10)
  %.not87 = icmp eq i32 %262, 0
  br i1 %.not87, label %264, label %263

263:                                              ; preds = %261
  call void @abort() #3
  br label %UnifiedUnreachableBlock

264:                                              ; preds = %261
  %265 = call i32 @test10u(i32 noundef 0)
  %.not88 = icmp eq i32 %265, 0
  br i1 %.not88, label %267, label %266

266:                                              ; preds = %264
  call void @abort() #3
  br label %UnifiedUnreachableBlock

267:                                              ; preds = %264
  %268 = call i32 @test10u(i32 noundef 9)
  %.not89 = icmp eq i32 %268, 0
  br i1 %.not89, label %270, label %269

269:                                              ; preds = %267
  call void @abort() #3
  br label %UnifiedUnreachableBlock

270:                                              ; preds = %267
  %271 = call i32 @test10u(i32 noundef 10)
  %.not90 = icmp eq i32 %271, 1
  br i1 %.not90, label %273, label %272

272:                                              ; preds = %270
  call void @abort() #3
  br label %UnifiedUnreachableBlock

273:                                              ; preds = %270
  %274 = call i32 @test10u(i32 noundef -1)
  %.not91 = icmp eq i32 %274, 1
  br i1 %.not91, label %276, label %275

275:                                              ; preds = %273
  call void @abort() #3
  br label %UnifiedUnreachableBlock

276:                                              ; preds = %273
  %277 = call i32 @test10u(i32 noundef -9)
  %.not92 = icmp eq i32 %277, 1
  br i1 %.not92, label %279, label %278

278:                                              ; preds = %276
  call void @abort() #3
  br label %UnifiedUnreachableBlock

279:                                              ; preds = %276
  %280 = call i32 @test10u(i32 noundef -10)
  %.not93 = icmp eq i32 %280, 1
  br i1 %.not93, label %282, label %281

281:                                              ; preds = %279
  call void @abort() #3
  br label %UnifiedUnreachableBlock

282:                                              ; preds = %279
  %283 = call i32 @test11(i32 noundef 19)
  %.not94 = icmp eq i32 %283, 0
  br i1 %.not94, label %285, label %284

284:                                              ; preds = %282
  call void @abort() #3
  br label %UnifiedUnreachableBlock

285:                                              ; preds = %282
  %286 = call i32 @test11(i32 noundef 20)
  %.not95 = icmp eq i32 %286, 1
  br i1 %.not95, label %288, label %287

287:                                              ; preds = %285
  call void @abort() #3
  br label %UnifiedUnreachableBlock

288:                                              ; preds = %285
  %289 = call i32 @test11(i32 noundef 29)
  %.not96 = icmp eq i32 %289, 1
  br i1 %.not96, label %291, label %290

290:                                              ; preds = %288
  call void @abort() #3
  br label %UnifiedUnreachableBlock

291:                                              ; preds = %288
  %292 = call i32 @test11(i32 noundef 30)
  %.not97 = icmp eq i32 %292, 1
  br i1 %.not97, label %294, label %293

293:                                              ; preds = %291
  call void @abort() #3
  br label %UnifiedUnreachableBlock

294:                                              ; preds = %291
  %295 = call i32 @test11u(i32 noundef 19)
  %.not98 = icmp eq i32 %295, 0
  br i1 %.not98, label %297, label %296

296:                                              ; preds = %294
  call void @abort() #3
  br label %UnifiedUnreachableBlock

297:                                              ; preds = %294
  %298 = call i32 @test11u(i32 noundef 20)
  %.not99 = icmp eq i32 %298, 1
  br i1 %.not99, label %300, label %299

299:                                              ; preds = %297
  call void @abort() #3
  br label %UnifiedUnreachableBlock

300:                                              ; preds = %297
  %301 = call i32 @test11u(i32 noundef 29)
  %.not100 = icmp eq i32 %301, 1
  br i1 %.not100, label %303, label %302

302:                                              ; preds = %300
  call void @abort() #3
  br label %UnifiedUnreachableBlock

303:                                              ; preds = %300
  %304 = call i32 @test11u(i32 noundef 30)
  %.not101 = icmp eq i32 %304, 1
  br i1 %.not101, label %306, label %305

305:                                              ; preds = %303
  call void @abort() #3
  br label %UnifiedUnreachableBlock

306:                                              ; preds = %303
  %307 = call i32 @test12(i32 noundef 0)
  %.not102 = icmp eq i32 %307, 1
  br i1 %.not102, label %309, label %308

308:                                              ; preds = %306
  call void @abort() #3
  br label %UnifiedUnreachableBlock

309:                                              ; preds = %306
  %310 = call i32 @test12(i32 noundef 9)
  %.not103 = icmp eq i32 %310, 1
  br i1 %.not103, label %312, label %311

311:                                              ; preds = %309
  call void @abort() #3
  br label %UnifiedUnreachableBlock

312:                                              ; preds = %309
  %313 = call i32 @test12(i32 noundef 10)
  %.not104 = icmp eq i32 %313, 1
  br i1 %.not104, label %315, label %314

314:                                              ; preds = %312
  call void @abort() #3
  br label %UnifiedUnreachableBlock

315:                                              ; preds = %312
  %316 = call i32 @test12(i32 noundef -1)
  %.not105 = icmp eq i32 %316, 1
  br i1 %.not105, label %318, label %317

317:                                              ; preds = %315
  call void @abort() #3
  br label %UnifiedUnreachableBlock

318:                                              ; preds = %315
  %319 = call i32 @test12(i32 noundef -9)
  %.not106 = icmp eq i32 %319, 1
  br i1 %.not106, label %321, label %320

320:                                              ; preds = %318
  call void @abort() #3
  br label %UnifiedUnreachableBlock

321:                                              ; preds = %318
  %322 = call i32 @test12(i32 noundef -10)
  %.not107 = icmp eq i32 %322, 0
  br i1 %.not107, label %324, label %323

323:                                              ; preds = %321
  call void @abort() #3
  br label %UnifiedUnreachableBlock

324:                                              ; preds = %321
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %323, %320, %317, %314, %311, %308, %305, %302, %299, %296, %293, %290, %287, %284, %281, %278, %275, %272, %269, %266, %263, %260, %257, %254, %251, %248, %245, %242, %239, %236, %233, %230, %227, %224, %221, %218, %215, %212, %209, %206, %203, %200, %197, %194, %191, %188, %185, %182, %179, %176, %173, %170, %167, %164, %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
