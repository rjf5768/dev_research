; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strnlen.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strnlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"assertion on line %i failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"strnlen (\22\22, 0) == 0\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"strnlen (\22\22, 1) == 0\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"strnlen (\22\22, 9) == 0\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"strnlen (\22\22, PTRDIFF_MAX) == 0\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"strnlen (\22\22, SIZE_MAX) == 0\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"strnlen (\22\22, -1) == 0\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"strnlen (\221\22, 0) == 0\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"strnlen (\221\22, 1) == 1\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"strnlen (\221\22, 9) == 1\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"strnlen (\221\22, PTRDIFF_MAX) == 1\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"strnlen (\221\22, SIZE_MAX) == 1\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"strnlen (\221\22, -2) == 1\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"strnlen (\22123\22, 0) == 0\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"strnlen (\22123\22, 1) == 1\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"strnlen (\22123\22, 2) == 2\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"strnlen (\22123\22, 3) == 3\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"strnlen (\22123\22, 9) == 3\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"strnlen (\22123\22, PTRDIFF_MAX) == 3\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"strnlen (\22123\22, SIZE_MAX) == 3\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"strnlen (\22123\22, -2) == 3\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"strnlen (\22\22, r_0_3) == 0\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"strnlen (\221\22, r_0_3) <= 1\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"strnlen (\2212\22, r_0_3) <= 2\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"strnlen (\22123\22, r_0_3) <= 3\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"strnlen (\221234\22, r_0_3) <= 3\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"strnlen (\22\22, r_1_3) == 0\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"strnlen (\221\22, r_1_3) == 1\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"strnlen (\2212\22, r_1_3) <= 2\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"strnlen (\22123\22, r_1_3) <= 3\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"strnlen (\221234\22, r_1_3) <= 3\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"strnlen (\22\22, r_2_3) == 0\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"strnlen (\221\22, r_2_3) == 1\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"strnlen (\2212\22, r_2_3) == 2\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"strnlen (\22123\22, r_2_3) <= 3\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"strnlen (\221234\22, r_2_3) <= 3\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"strnlen (\221234\22 + i++, n) <= 3\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"i == 1\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"strnlen (\221234\22, n++) <= 3\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"n == r_2_3 + 1\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_strnlen_str_cst() #0 {
  %1 = call i64 @strnlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %7

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  call void @abort() #3
  unreachable

6:                                                ; No predecessors!
  br label %7

7:                                                ; preds = %6, %3
  %8 = call i64 @strnlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 1)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %14

11:                                               ; preds = %7
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  call void @abort() #3
  unreachable

13:                                               ; No predecessors!
  br label %14

14:                                               ; preds = %13, %10
  %15 = call i64 @strnlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 9)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %21

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  call void @abort() #3
  unreachable

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %20, %17
  %22 = call i64 @strnlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 9223372036854775807)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %28

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  call void @abort() #3
  unreachable

27:                                               ; No predecessors!
  br label %28

28:                                               ; preds = %27, %24
  %29 = call i64 @strnlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef -1)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %35

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  call void @abort() #3
  unreachable

34:                                               ; No predecessors!
  br label %35

35:                                               ; preds = %34, %31
  %36 = call i64 @strnlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef -1)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %42

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  call void @abort() #3
  unreachable

41:                                               ; No predecessors!
  br label %42

42:                                               ; preds = %41, %38
  %43 = call i64 @strnlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef 0)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %49

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @abort() #3
  unreachable

48:                                               ; No predecessors!
  br label %49

49:                                               ; preds = %48, %45
  %50 = call i64 @strnlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef 1)
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %56

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  call void @abort() #3
  unreachable

55:                                               ; No predecessors!
  br label %56

56:                                               ; preds = %55, %52
  %57 = call i64 @strnlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef 9)
  %58 = icmp eq i64 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %63

60:                                               ; preds = %56
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  call void @abort() #3
  unreachable

62:                                               ; No predecessors!
  br label %63

63:                                               ; preds = %62, %59
  %64 = call i64 @strnlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef 9223372036854775807)
  %65 = icmp eq i64 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %70

67:                                               ; preds = %63
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  call void @abort() #3
  unreachable

69:                                               ; No predecessors!
  br label %70

70:                                               ; preds = %69, %66
  %71 = call i64 @strnlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef -1)
  %72 = icmp eq i64 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %77

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  call void @abort() #3
  unreachable

76:                                               ; No predecessors!
  br label %77

77:                                               ; preds = %76, %73
  %78 = call i64 @strnlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef -2)
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %84

81:                                               ; preds = %77
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  call void @abort() #3
  unreachable

83:                                               ; No predecessors!
  br label %84

84:                                               ; preds = %83, %80
  %85 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef 0)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %91

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  call void @abort() #3
  unreachable

90:                                               ; No predecessors!
  br label %91

91:                                               ; preds = %90, %87
  %92 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef 1)
  %93 = icmp eq i64 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %98

95:                                               ; preds = %91
  %96 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  call void @abort() #3
  unreachable

97:                                               ; No predecessors!
  br label %98

98:                                               ; preds = %97, %94
  %99 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2)
  %100 = icmp eq i64 %99, 2
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %105

102:                                              ; preds = %98
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  call void @abort() #3
  unreachable

104:                                              ; No predecessors!
  br label %105

105:                                              ; preds = %104, %101
  %106 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef 3)
  %107 = icmp eq i64 %106, 3
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %112

109:                                              ; preds = %105
  %110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  call void @abort() #3
  unreachable

111:                                              ; No predecessors!
  br label %112

112:                                              ; preds = %111, %108
  %113 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef 9)
  %114 = icmp eq i64 %113, 3
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %119

116:                                              ; preds = %112
  %117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  call void @abort() #3
  unreachable

118:                                              ; No predecessors!
  br label %119

119:                                              ; preds = %118, %115
  %120 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef 9223372036854775807)
  %121 = icmp eq i64 %120, 3
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %126

123:                                              ; preds = %119
  %124 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0))
  call void @abort() #3
  unreachable

125:                                              ; No predecessors!
  br label %126

126:                                              ; preds = %125, %122
  %127 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef -1)
  %128 = icmp eq i64 %127, 3
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %133

130:                                              ; preds = %126
  %131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  call void @abort() #3
  unreachable

132:                                              ; No predecessors!
  br label %133

133:                                              ; preds = %132, %129
  %134 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef -2)
  %135 = icmp eq i64 %134, 3
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %140

137:                                              ; preds = %133
  %138 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  call void @abort() #3
  unreachable

139:                                              ; No predecessors!
  br label %140

140:                                              ; preds = %139, %136
  ret void
}

declare dso_local i64 @strnlen(i8* noundef, i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_strnlen_str_range(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = and i64 %6, 3
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = or i64 %8, 1
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = or i64 %10, 2
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @strnlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %19

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  call void @abort() #3
  unreachable

18:                                               ; No predecessors!
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @strnlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef %20)
  %22 = icmp ule i64 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %27

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0))
  call void @abort() #3
  unreachable

26:                                               ; No predecessors!
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @strnlen(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i64 noundef %28)
  %30 = icmp ule i64 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %35

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  call void @abort() #3
  unreachable

34:                                               ; No predecessors!
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef %36)
  %38 = icmp ule i64 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  call void @abort() #3
  unreachable

42:                                               ; No predecessors!
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @strnlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 noundef %44)
  %46 = icmp ule i64 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %51

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0))
  call void @abort() #3
  unreachable

50:                                               ; No predecessors!
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @strnlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %59

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  call void @abort() #3
  unreachable

58:                                               ; No predecessors!
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @strnlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef %60)
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %67

64:                                               ; preds = %59
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0))
  call void @abort() #3
  unreachable

66:                                               ; No predecessors!
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @strnlen(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i64 noundef %68)
  %70 = icmp ule i64 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %75

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0))
  call void @abort() #3
  unreachable

74:                                               ; No predecessors!
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef %76)
  %78 = icmp ule i64 %77, 3
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %83

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0))
  call void @abort() #3
  unreachable

82:                                               ; No predecessors!
  br label %83

83:                                               ; preds = %82, %79
  %84 = load i64, i64* %4, align 8
  %85 = call i64 @strnlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 noundef %84)
  %86 = icmp ule i64 %85, 3
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %91

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0))
  call void @abort() #3
  unreachable

90:                                               ; No predecessors!
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i64, i64* %5, align 8
  %93 = call i64 @strnlen(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %99

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i64 0, i64 0))
  call void @abort() #3
  unreachable

98:                                               ; No predecessors!
  br label %99

99:                                               ; preds = %98, %95
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @strnlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 noundef %100)
  %102 = icmp eq i64 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %107

104:                                              ; preds = %99
  %105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0))
  call void @abort() #3
  unreachable

106:                                              ; No predecessors!
  br label %107

107:                                              ; preds = %106, %103
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @strnlen(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i64 noundef %108)
  %110 = icmp eq i64 %109, 2
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %115

112:                                              ; preds = %107
  %113 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0))
  call void @abort() #3
  unreachable

114:                                              ; No predecessors!
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @strnlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 noundef %116)
  %118 = icmp ule i64 %117, 3
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %123

120:                                              ; preds = %115
  %121 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0))
  call void @abort() #3
  unreachable

122:                                              ; No predecessors!
  br label %123

123:                                              ; preds = %122, %119
  %124 = load i64, i64* %5, align 8
  %125 = call i64 @strnlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 noundef %124)
  %126 = icmp ule i64 %125, 3
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %131

128:                                              ; preds = %123
  %129 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0))
  call void @abort() #3
  unreachable

130:                                              ; No predecessors!
  br label %131

131:                                              ; preds = %130, %127
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_strnlen_str_range_side_effect(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 3
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = or i64 %10, 1
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = or i64 %12, 2
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 %17
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @strnlen(i8* noundef %18, i64 noundef %19)
  %21 = icmp ule i64 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %26

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0))
  call void @abort() #3
  unreachable

25:                                               ; No predecessors!
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %33

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  call void @abort() #3
  unreachable

32:                                               ; No predecessors!
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  %36 = call i64 @strnlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 noundef %34)
  %37 = icmp ule i64 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %42

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0))
  call void @abort() #3
  unreachable

41:                                               ; No predecessors!
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %51

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0))
  call void @abort() #3
  unreachable

50:                                               ; No predecessors!
  br label %51

51:                                               ; preds = %50, %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  call void @test_strnlen_str_cst()
  call void @test_strnlen_str_range(i64 noundef ptrtoint ([1 x i8]* @.str to i64))
  call void @test_strnlen_str_range_side_effect(i64 noundef ptrtoint ([1 x i8]* @.str to i64))
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
