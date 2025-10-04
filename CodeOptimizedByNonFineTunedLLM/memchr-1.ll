; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memchr-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memchr-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v0 = dso_local global i32 0, align 4
@v1 = dso_local global i32 1, align 4
@v2 = dso_local global i32 2, align 4
@v3 = dso_local global i32 3, align 4
@v4 = dso_local global i32 3, align 4
@c = internal constant i8 49, align 1
@.str = private unnamed_addr constant [33 x i8] c"assertion failed on line %i: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"memchr (&c + i1, 0, sizeof c - i1) == 0\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"memchr (&c + v1, 0, sizeof c - v1) == 0\00", align 1
@s1 = internal constant [1 x i8] c"1", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"memchr (s1, 0, sizeof s1) == 0\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"memchr (s1 + i1, 0, sizeof s1 - i1) == 0\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"memchr (s1 + v1, 0, sizeof s1 - v1) == 0\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"memchr (&s1, 0, sizeof s1) == 0\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"memchr (&s1 + i1, 0, sizeof s1 - i1) == 0\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"memchr (&s1 + v1, 0, sizeof s1 - v1) == 0\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"memchr (&s1[0], 0, sizeof s1) == 0\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"memchr (&s1[0] + i1, 0, sizeof s1 - i1) == 0\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"memchr (&s1[0] + v1, 0, sizeof s1 - v1) == 0\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"memchr (&s1[i0], 0, sizeof s1) == 0\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"memchr (&s1[i0] + 1, 0, sizeof s1 - 1) == 0\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"memchr (&s1[i0] + i1, 0, sizeof s1 - i1) == 0\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"memchr (&s1[i0] + v1, 0, sizeof s1 - v1) == 0\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"memchr (&s1[v0], 0, sizeof s1) == 0\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"memchr (&s1[v0] + 1, 0, sizeof s1 - 1) == 0\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"memchr (&s1[v0] + i1, 0, sizeof s1 - i1) == 0\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"memchr (&s1[v0] + v1, 0, sizeof s1 - v1) == 0\00", align 1
@s4 = internal constant [4 x i8] c"1234", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"memchr (s4 + i0, 0, sizeof s4 - i0) == 0\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"memchr (s4 + i1, 0, sizeof s4 - i1) == 0\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"memchr (s4 + i2, 0, sizeof s4 - i2) == 0\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"memchr (s4 + i3, 0, sizeof s4 - i3) == 0\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"memchr (s4 + i4, 0, sizeof s4 - i4) == 0\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"memchr (s4 + v0, 0, sizeof s4 - v0) == 0\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"memchr (s4 + v1, 0, sizeof s4 - v1) == 0\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"memchr (s4 + v2, 0, sizeof s4 - v2) == 0\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"memchr (s4 + v3, 0, sizeof s4 - v3) == 0\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"memchr (s4 + v4, 0, sizeof s4 - v4) == 0\00", align 1
@s4_2 = internal constant [2 x [4 x i8]] [[4 x i8] c"1234", [4 x i8] c"5678"], align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"memchr (s4_2, 0, sizeof s4_2) == 0\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"memchr (s4_2[0], 0, sizeof s4_2[0]) == 0\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"memchr (s4_2[1], 0, sizeof s4_2[1]) == 0\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"memchr (s4_2[0] + 1, 0, sizeof s4_2[0] - 1) == 0\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"memchr (s4_2[1] + 2, 0, sizeof s4_2[1] - 2) == 0\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"memchr (s4_2[1] + 3, 0, sizeof s4_2[1] - 3) == 0\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"memchr (s4_2[v0], 0, sizeof s4_2[v0]) == 0\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"memchr (s4_2[v0] + 1, 0, sizeof s4_2[v0] - 1) == 0\00", align 1
@s5_3 = internal constant [3 x [5 x i8]] [[5 x i8] c"12345", [5 x i8] c"6789\00", [5 x i8] c"01234"], align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"memchr (s5_3, 0, sizeof s5_3) == &s5_3[1][4]\00", align 1
@.str.39 = private unnamed_addr constant [62 x i8] c"memchr (&s5_3[0][0] + i0, 0, sizeof s5_3 - i0) == &s5_3[1][4]\00", align 1
@.str.40 = private unnamed_addr constant [62 x i8] c"memchr (&s5_3[0][0] + i1, 0, sizeof s5_3 - i1) == &s5_3[1][4]\00", align 1
@.str.41 = private unnamed_addr constant [62 x i8] c"memchr (&s5_3[0][0] + i2, 0, sizeof s5_3 - i2) == &s5_3[1][4]\00", align 1
@.str.42 = private unnamed_addr constant [62 x i8] c"memchr (&s5_3[0][0] + i4, 0, sizeof s5_3 - i4) == &s5_3[1][4]\00", align 1
@.str.43 = private unnamed_addr constant [61 x i8] c"memchr (&s5_3[1][i0], 0, sizeof s5_3[1] - i0) == &s5_3[1][4]\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_narrow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* @c, i64 %15
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 1, %18
  %20 = call i8* @memchr(i8* noundef %16, i32 noundef 0, i64 noundef %19)
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %26

23:                                               ; preds = %0
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  call void @abort() #3
  unreachable

25:                                               ; No predecessors!
  br label %26

26:                                               ; preds = %25, %22
  %27 = load volatile i32, i32* @v1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* @c, i64 %28
  %30 = load volatile i32, i32* @v1, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 1, %31
  %33 = call i8* @memchr(i8* noundef %29, i32 noundef 0, i64 noundef %32)
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %39

36:                                               ; preds = %26
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  call void @abort() #3
  unreachable

38:                                               ; No predecessors!
  br label %39

39:                                               ; preds = %38, %35
  %40 = call i8* @memchr(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @s1, i64 0, i64 0), i32 noundef 0, i64 noundef 1)
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %46

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  call void @abort() #3
  unreachable

45:                                               ; No predecessors!
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s1, i64 0, i64 0), i64 %48
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 1, %51
  %53 = call i8* @memchr(i8* noundef %49, i32 noundef 0, i64 noundef %52)
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %59

56:                                               ; preds = %46
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  call void @abort() #3
  unreachable

58:                                               ; No predecessors!
  br label %59

59:                                               ; preds = %58, %55
  %60 = load volatile i32, i32* @v1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s1, i64 0, i64 0), i64 %61
  %63 = load volatile i32, i32* @v1, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 1, %64
  %66 = call i8* @memchr(i8* noundef %62, i32 noundef 0, i64 noundef %65)
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %72

69:                                               ; preds = %59
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  call void @abort() #3
  unreachable

71:                                               ; No predecessors!
  br label %72

72:                                               ; preds = %71, %68
  %73 = call i8* @memchr(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @s1, i32 0, i32 0), i32 noundef 0, i64 noundef 1)
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %79

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  call void @abort() #3
  unreachable

78:                                               ; No predecessors!
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 %81
  %83 = bitcast [1 x i8]* %82 to i8*
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 1, %85
  %87 = call i8* @memchr(i8* noundef %83, i32 noundef 0, i64 noundef %86)
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %93

90:                                               ; preds = %79
  %91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  call void @abort() #3
  unreachable

92:                                               ; No predecessors!
  br label %93

93:                                               ; preds = %92, %89
  %94 = load volatile i32, i32* @v1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 %95
  %97 = bitcast [1 x i8]* %96 to i8*
  %98 = load volatile i32, i32* @v1, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 1, %99
  %101 = call i8* @memchr(i8* noundef %97, i32 noundef 0, i64 noundef %100)
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %107

104:                                              ; preds = %93
  %105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  call void @abort() #3
  unreachable

106:                                              ; No predecessors!
  br label %107

107:                                              ; preds = %106, %103
  %108 = call i8* @memchr(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @s1, i64 0, i64 0), i32 noundef 0, i64 noundef 1)
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %114

111:                                              ; preds = %107
  %112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  call void @abort() #3
  unreachable

113:                                              ; No predecessors!
  br label %114

114:                                              ; preds = %113, %110
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s1, i64 0, i64 0), i64 %116
  %118 = load i32, i32* %2, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 1, %119
  %121 = call i8* @memchr(i8* noundef %117, i32 noundef 0, i64 noundef %120)
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %127

124:                                              ; preds = %114
  %125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  call void @abort() #3
  unreachable

126:                                              ; No predecessors!
  br label %127

127:                                              ; preds = %126, %123
  %128 = load volatile i32, i32* @v1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @s1, i64 0, i64 0), i64 %129
  %131 = load volatile i32, i32* @v1, align 4
  %132 = sext i32 %131 to i64
  %133 = sub i64 1, %132
  %134 = call i8* @memchr(i8* noundef %130, i32 noundef 0, i64 noundef %133)
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %140

137:                                              ; preds = %127
  %138 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  call void @abort() #3
  unreachable

139:                                              ; No predecessors!
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %142
  %144 = call i8* @memchr(i8* noundef %143, i32 noundef 0, i64 noundef 1)
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %150

147:                                              ; preds = %140
  %148 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  call void @abort() #3
  unreachable

149:                                              ; No predecessors!
  br label %150

150:                                              ; preds = %149, %146
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %152
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = call i8* @memchr(i8* noundef %154, i32 noundef 0, i64 noundef 0)
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %161

158:                                              ; preds = %150
  %159 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  call void @abort() #3
  unreachable

160:                                              ; No predecessors!
  br label %161

161:                                              ; preds = %160, %157
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %163
  %165 = load i32, i32* %2, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = sub i64 1, %169
  %171 = call i8* @memchr(i8* noundef %167, i32 noundef 0, i64 noundef %170)
  %172 = icmp eq i8* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %161
  br label %177

174:                                              ; preds = %161
  %175 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  call void @abort() #3
  unreachable

176:                                              ; No predecessors!
  br label %177

177:                                              ; preds = %176, %173
  %178 = load i32, i32* %1, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %179
  %181 = load volatile i32, i32* @v1, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load volatile i32, i32* @v1, align 4
  %185 = sext i32 %184 to i64
  %186 = sub i64 1, %185
  %187 = call i8* @memchr(i8* noundef %183, i32 noundef 0, i64 noundef %186)
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  br label %193

190:                                              ; preds = %177
  %191 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  call void @abort() #3
  unreachable

192:                                              ; No predecessors!
  br label %193

193:                                              ; preds = %192, %189
  %194 = load volatile i32, i32* @v0, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %195
  %197 = call i8* @memchr(i8* noundef %196, i32 noundef 0, i64 noundef 1)
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %203

200:                                              ; preds = %193
  %201 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  call void @abort() #3
  unreachable

202:                                              ; No predecessors!
  br label %203

203:                                              ; preds = %202, %199
  %204 = load volatile i32, i32* @v0, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %205
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = call i8* @memchr(i8* noundef %207, i32 noundef 0, i64 noundef 0)
  %209 = icmp eq i8* %208, null
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %214

211:                                              ; preds = %203
  %212 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0))
  call void @abort() #3
  unreachable

213:                                              ; No predecessors!
  br label %214

214:                                              ; preds = %213, %210
  %215 = load volatile i32, i32* @v0, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %216
  %218 = load i32, i32* %2, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i32, i32* %2, align 4
  %222 = sext i32 %221 to i64
  %223 = sub i64 1, %222
  %224 = call i8* @memchr(i8* noundef %220, i32 noundef 0, i64 noundef %223)
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %214
  br label %230

227:                                              ; preds = %214
  %228 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  call void @abort() #3
  unreachable

229:                                              ; No predecessors!
  br label %230

230:                                              ; preds = %229, %226
  %231 = load volatile i32, i32* @v0, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %232
  %234 = load volatile i32, i32* @v1, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load volatile i32, i32* @v1, align 4
  %238 = sext i32 %237 to i64
  %239 = sub i64 1, %238
  %240 = call i8* @memchr(i8* noundef %236, i32 noundef 0, i64 noundef %239)
  %241 = icmp eq i8* %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %230
  br label %246

243:                                              ; preds = %230
  %244 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0))
  call void @abort() #3
  unreachable

245:                                              ; No predecessors!
  br label %246

246:                                              ; preds = %245, %242
  %247 = load i32, i32* %1, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %248
  %250 = load i32, i32* %1, align 4
  %251 = sext i32 %250 to i64
  %252 = sub i64 4, %251
  %253 = call i8* @memchr(i8* noundef %249, i32 noundef 0, i64 noundef %252)
  %254 = icmp eq i8* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %246
  br label %259

256:                                              ; preds = %246
  %257 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  call void @abort() #3
  unreachable

258:                                              ; No predecessors!
  br label %259

259:                                              ; preds = %258, %255
  %260 = load i32, i32* %2, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %261
  %263 = load i32, i32* %2, align 4
  %264 = sext i32 %263 to i64
  %265 = sub i64 4, %264
  %266 = call i8* @memchr(i8* noundef %262, i32 noundef 0, i64 noundef %265)
  %267 = icmp eq i8* %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %259
  br label %272

269:                                              ; preds = %259
  %270 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0))
  call void @abort() #3
  unreachable

271:                                              ; No predecessors!
  br label %272

272:                                              ; preds = %271, %268
  %273 = load i32, i32* %3, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %274
  %276 = load i32, i32* %3, align 4
  %277 = sext i32 %276 to i64
  %278 = sub i64 4, %277
  %279 = call i8* @memchr(i8* noundef %275, i32 noundef 0, i64 noundef %278)
  %280 = icmp eq i8* %279, null
  br i1 %280, label %281, label %282

281:                                              ; preds = %272
  br label %285

282:                                              ; preds = %272
  %283 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0))
  call void @abort() #3
  unreachable

284:                                              ; No predecessors!
  br label %285

285:                                              ; preds = %284, %281
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %287
  %289 = load i32, i32* %4, align 4
  %290 = sext i32 %289 to i64
  %291 = sub i64 4, %290
  %292 = call i8* @memchr(i8* noundef %288, i32 noundef 0, i64 noundef %291)
  %293 = icmp eq i8* %292, null
  br i1 %293, label %294, label %295

294:                                              ; preds = %285
  br label %298

295:                                              ; preds = %285
  %296 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  call void @abort() #3
  unreachable

297:                                              ; No predecessors!
  br label %298

298:                                              ; preds = %297, %294
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %300
  %302 = load i32, i32* %5, align 4
  %303 = sext i32 %302 to i64
  %304 = sub i64 4, %303
  %305 = call i8* @memchr(i8* noundef %301, i32 noundef 0, i64 noundef %304)
  %306 = icmp eq i8* %305, null
  br i1 %306, label %307, label %308

307:                                              ; preds = %298
  br label %311

308:                                              ; preds = %298
  %309 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0))
  call void @abort() #3
  unreachable

310:                                              ; No predecessors!
  br label %311

311:                                              ; preds = %310, %307
  %312 = load volatile i32, i32* @v0, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %313
  %315 = load volatile i32, i32* @v0, align 4
  %316 = sext i32 %315 to i64
  %317 = sub i64 4, %316
  %318 = call i8* @memchr(i8* noundef %314, i32 noundef 0, i64 noundef %317)
  %319 = icmp eq i8* %318, null
  br i1 %319, label %320, label %321

320:                                              ; preds = %311
  br label %324

321:                                              ; preds = %311
  %322 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0))
  call void @abort() #3
  unreachable

323:                                              ; No predecessors!
  br label %324

324:                                              ; preds = %323, %320
  %325 = load volatile i32, i32* @v1, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %326
  %328 = load volatile i32, i32* @v1, align 4
  %329 = sext i32 %328 to i64
  %330 = sub i64 4, %329
  %331 = call i8* @memchr(i8* noundef %327, i32 noundef 0, i64 noundef %330)
  %332 = icmp eq i8* %331, null
  br i1 %332, label %333, label %334

333:                                              ; preds = %324
  br label %337

334:                                              ; preds = %324
  %335 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0))
  call void @abort() #3
  unreachable

336:                                              ; No predecessors!
  br label %337

337:                                              ; preds = %336, %333
  %338 = load volatile i32, i32* @v2, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %339
  %341 = load volatile i32, i32* @v2, align 4
  %342 = sext i32 %341 to i64
  %343 = sub i64 4, %342
  %344 = call i8* @memchr(i8* noundef %340, i32 noundef 0, i64 noundef %343)
  %345 = icmp eq i8* %344, null
  br i1 %345, label %346, label %347

346:                                              ; preds = %337
  br label %350

347:                                              ; preds = %337
  %348 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  call void @abort() #3
  unreachable

349:                                              ; No predecessors!
  br label %350

350:                                              ; preds = %349, %346
  %351 = load volatile i32, i32* @v3, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %352
  %354 = load volatile i32, i32* @v3, align 4
  %355 = sext i32 %354 to i64
  %356 = sub i64 4, %355
  %357 = call i8* @memchr(i8* noundef %353, i32 noundef 0, i64 noundef %356)
  %358 = icmp eq i8* %357, null
  br i1 %358, label %359, label %360

359:                                              ; preds = %350
  br label %363

360:                                              ; preds = %350
  %361 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0))
  call void @abort() #3
  unreachable

362:                                              ; No predecessors!
  br label %363

363:                                              ; preds = %362, %359
  %364 = load volatile i32, i32* @v4, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @s4, i64 0, i64 0), i64 %365
  %367 = load volatile i32, i32* @v4, align 4
  %368 = sext i32 %367 to i64
  %369 = sub i64 4, %368
  %370 = call i8* @memchr(i8* noundef %366, i32 noundef 0, i64 noundef %369)
  %371 = icmp eq i8* %370, null
  br i1 %371, label %372, label %373

372:                                              ; preds = %363
  br label %376

373:                                              ; preds = %363
  %374 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0))
  call void @abort() #3
  unreachable

375:                                              ; No predecessors!
  br label %376

376:                                              ; preds = %375, %372
  %377 = call i8* @memchr(i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i32 0, i32 0, i32 0), i32 noundef 0, i64 noundef 8)
  %378 = icmp eq i8* %377, null
  br i1 %378, label %379, label %380

379:                                              ; preds = %376
  br label %383

380:                                              ; preds = %376
  %381 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0))
  call void @abort() #3
  unreachable

382:                                              ; No predecessors!
  br label %383

383:                                              ; preds = %382, %379
  %384 = call i8* @memchr(i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 0, i64 0), i32 noundef 0, i64 noundef 4)
  %385 = icmp eq i8* %384, null
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  br label %390

387:                                              ; preds = %383
  %388 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  call void @abort() #3
  unreachable

389:                                              ; No predecessors!
  br label %390

390:                                              ; preds = %389, %386
  %391 = call i8* @memchr(i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 1, i64 0), i32 noundef 0, i64 noundef 4)
  %392 = icmp eq i8* %391, null
  br i1 %392, label %393, label %394

393:                                              ; preds = %390
  br label %397

394:                                              ; preds = %390
  %395 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0))
  call void @abort() #3
  unreachable

396:                                              ; No predecessors!
  br label %397

397:                                              ; preds = %396, %393
  %398 = call i8* @memchr(i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 0, i64 1), i32 noundef 0, i64 noundef 3)
  %399 = icmp eq i8* %398, null
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  br label %404

401:                                              ; preds = %397
  %402 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i64 0, i64 0))
  call void @abort() #3
  unreachable

403:                                              ; No predecessors!
  br label %404

404:                                              ; preds = %403, %400
  %405 = call i8* @memchr(i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 1, i64 2), i32 noundef 0, i64 noundef 2)
  %406 = icmp eq i8* %405, null
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  br label %411

408:                                              ; preds = %404
  %409 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0))
  call void @abort() #3
  unreachable

410:                                              ; No predecessors!
  br label %411

411:                                              ; preds = %410, %407
  %412 = call i8* @memchr(i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 1, i64 3), i32 noundef 0, i64 noundef 1)
  %413 = icmp eq i8* %412, null
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  br label %418

415:                                              ; preds = %411
  %416 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i64 0, i64 0))
  call void @abort() #3
  unreachable

417:                                              ; No predecessors!
  br label %418

418:                                              ; preds = %417, %414
  %419 = load volatile i32, i32* @v0, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 %420
  %422 = getelementptr inbounds [4 x i8], [4 x i8]* %421, i64 0, i64 0
  %423 = call i8* @memchr(i8* noundef %422, i32 noundef 0, i64 noundef 4)
  %424 = icmp eq i8* %423, null
  br i1 %424, label %425, label %426

425:                                              ; preds = %418
  br label %429

426:                                              ; preds = %418
  %427 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0))
  call void @abort() #3
  unreachable

428:                                              ; No predecessors!
  br label %429

429:                                              ; preds = %428, %425
  %430 = load volatile i32, i32* @v0, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 %431
  %433 = getelementptr inbounds [4 x i8], [4 x i8]* %432, i64 0, i64 0
  %434 = getelementptr inbounds i8, i8* %433, i64 1
  %435 = call i8* @memchr(i8* noundef %434, i32 noundef 0, i64 noundef 3)
  %436 = icmp eq i8* %435, null
  br i1 %436, label %437, label %438

437:                                              ; preds = %429
  br label %441

438:                                              ; preds = %429
  %439 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0))
  call void @abort() #3
  unreachable

440:                                              ; No predecessors!
  br label %441

441:                                              ; preds = %440, %437
  %442 = call i8* @memchr(i8* noundef getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i32 0, i32 0, i32 0), i32 noundef 0, i64 noundef 15)
  %443 = icmp eq i8* %442, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %443, label %444, label %445

444:                                              ; preds = %441
  br label %448

445:                                              ; preds = %441
  %446 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0))
  call void @abort() #3
  unreachable

447:                                              ; No predecessors!
  br label %448

448:                                              ; preds = %447, %444
  %449 = load i32, i32* %1, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 0, i64 0), i64 %450
  %452 = load i32, i32* %1, align 4
  %453 = sext i32 %452 to i64
  %454 = sub i64 15, %453
  %455 = call i8* @memchr(i8* noundef %451, i32 noundef 0, i64 noundef %454)
  %456 = icmp eq i8* %455, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %456, label %457, label %458

457:                                              ; preds = %448
  br label %461

458:                                              ; preds = %448
  %459 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.39, i64 0, i64 0))
  call void @abort() #3
  unreachable

460:                                              ; No predecessors!
  br label %461

461:                                              ; preds = %460, %457
  %462 = load i32, i32* %2, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8, i8* getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 0, i64 0), i64 %463
  %465 = load i32, i32* %2, align 4
  %466 = sext i32 %465 to i64
  %467 = sub i64 15, %466
  %468 = call i8* @memchr(i8* noundef %464, i32 noundef 0, i64 noundef %467)
  %469 = icmp eq i8* %468, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %469, label %470, label %471

470:                                              ; preds = %461
  br label %474

471:                                              ; preds = %461
  %472 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.40, i64 0, i64 0))
  call void @abort() #3
  unreachable

473:                                              ; No predecessors!
  br label %474

474:                                              ; preds = %473, %470
  %475 = load i32, i32* %3, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, i8* getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 0, i64 0), i64 %476
  %478 = load i32, i32* %3, align 4
  %479 = sext i32 %478 to i64
  %480 = sub i64 15, %479
  %481 = call i8* @memchr(i8* noundef %477, i32 noundef 0, i64 noundef %480)
  %482 = icmp eq i8* %481, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %482, label %483, label %484

483:                                              ; preds = %474
  br label %487

484:                                              ; preds = %474
  %485 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.41, i64 0, i64 0))
  call void @abort() #3
  unreachable

486:                                              ; No predecessors!
  br label %487

487:                                              ; preds = %486, %483
  %488 = load i32, i32* %5, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 0, i64 0), i64 %489
  %491 = load i32, i32* %5, align 4
  %492 = sext i32 %491 to i64
  %493 = sub i64 15, %492
  %494 = call i8* @memchr(i8* noundef %490, i32 noundef 0, i64 noundef %493)
  %495 = icmp eq i8* %494, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %495, label %496, label %497

496:                                              ; preds = %487
  br label %500

497:                                              ; preds = %487
  %498 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.42, i64 0, i64 0))
  call void @abort() #3
  unreachable

499:                                              ; No predecessors!
  br label %500

500:                                              ; preds = %499, %496
  %501 = load i32, i32* %1, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [5 x i8], [5 x i8]* getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1), i64 0, i64 %502
  %504 = load i32, i32* %1, align 4
  %505 = sext i32 %504 to i64
  %506 = sub i64 5, %505
  %507 = call i8* @memchr(i8* noundef %503, i32 noundef 0, i64 noundef %506)
  %508 = icmp eq i8* %507, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %508, label %509, label %510

509:                                              ; preds = %500
  br label %513

510:                                              ; preds = %500
  %511 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.43, i64 0, i64 0))
  call void @abort() #3
  unreachable

512:                                              ; No predecessors!
  br label %513

513:                                              ; preds = %512, %509
  ret void
}

declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_wide() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test_narrow()
  call void @test_wide()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
