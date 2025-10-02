; ModuleID = './memchr-1.ll'
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
  br i1 true, label %1, label %2

1:                                                ; preds = %0
  br label %4

2:                                                ; preds = %0
  br label %UnifiedUnreachableBlock

3:                                                ; No predecessors!
  br label %4

4:                                                ; preds = %3, %1
  %5 = load volatile i32, i32* @v1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* @c, i64 %6
  %8 = load volatile i32, i32* @v1, align 4
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 1, %9
  %11 = call i8* @memchr(i8* noundef nonnull %7, i32 noundef 0, i64 noundef %10) #4
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %17

14:                                               ; preds = %4
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

16:                                               ; No predecessors!
  br label %17

17:                                               ; preds = %16, %13
  br i1 true, label %18, label %19

18:                                               ; preds = %17
  br label %21

19:                                               ; preds = %17
  br label %UnifiedUnreachableBlock

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %20, %18
  br i1 true, label %22, label %23

22:                                               ; preds = %21
  br label %25

23:                                               ; preds = %21
  br label %UnifiedUnreachableBlock

24:                                               ; No predecessors!
  br label %25

25:                                               ; preds = %24, %22
  %26 = load volatile i32, i32* @v1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %27
  %29 = load volatile i32, i32* @v1, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 1, %30
  %32 = call i8* @memchr(i8* noundef nonnull %28, i32 noundef 0, i64 noundef %31) #4
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %38

35:                                               ; preds = %25
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

37:                                               ; No predecessors!
  br label %38

38:                                               ; preds = %37, %34
  br i1 true, label %39, label %40

39:                                               ; preds = %38
  br label %42

40:                                               ; preds = %38
  br label %UnifiedUnreachableBlock

41:                                               ; No predecessors!
  br label %42

42:                                               ; preds = %41, %39
  br i1 true, label %43, label %44

43:                                               ; preds = %42
  br label %46

44:                                               ; preds = %42
  br label %UnifiedUnreachableBlock

45:                                               ; No predecessors!
  br label %46

46:                                               ; preds = %45, %43
  %47 = load volatile i32, i32* @v1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 %48, i64 0
  %50 = load volatile i32, i32* @v1, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 1, %51
  %53 = call i8* @memchr(i8* noundef nonnull %49, i32 noundef 0, i64 noundef %52) #4
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %59

56:                                               ; preds = %46
  %57 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

58:                                               ; No predecessors!
  br label %59

59:                                               ; preds = %58, %55
  br i1 true, label %60, label %61

60:                                               ; preds = %59
  br label %63

61:                                               ; preds = %59
  br label %UnifiedUnreachableBlock

62:                                               ; No predecessors!
  br label %63

63:                                               ; preds = %62, %60
  br i1 true, label %64, label %65

64:                                               ; preds = %63
  br label %67

65:                                               ; preds = %63
  br label %UnifiedUnreachableBlock

66:                                               ; No predecessors!
  br label %67

67:                                               ; preds = %66, %64
  %68 = load volatile i32, i32* @v1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %69
  %71 = load volatile i32, i32* @v1, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 1, %72
  %74 = call i8* @memchr(i8* noundef nonnull %70, i32 noundef 0, i64 noundef %73) #4
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %80

77:                                               ; preds = %67
  %78 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

79:                                               ; No predecessors!
  br label %80

80:                                               ; preds = %79, %76
  br i1 true, label %81, label %82

81:                                               ; preds = %80
  br label %84

82:                                               ; preds = %80
  br label %UnifiedUnreachableBlock

83:                                               ; No predecessors!
  br label %84

84:                                               ; preds = %83, %81
  br i1 true, label %85, label %86

85:                                               ; preds = %84
  br label %88

86:                                               ; preds = %84
  br label %UnifiedUnreachableBlock

87:                                               ; No predecessors!
  br label %88

88:                                               ; preds = %87, %85
  br i1 true, label %89, label %90

89:                                               ; preds = %88
  br label %92

90:                                               ; preds = %88
  br label %UnifiedUnreachableBlock

91:                                               ; No predecessors!
  br label %92

92:                                               ; preds = %91, %89
  %93 = load volatile i32, i32* @v1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %94
  %96 = load volatile i32, i32* @v1, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 1, %97
  %99 = call i8* @memchr(i8* noundef nonnull %95, i32 noundef 0, i64 noundef %98) #4
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %105

102:                                              ; preds = %92
  %103 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

104:                                              ; No predecessors!
  br label %105

105:                                              ; preds = %104, %101
  %106 = load volatile i32, i32* @v0, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %107
  %109 = call i8* @memchr(i8* noundef nonnull dereferenceable(1) %108, i32 noundef 0, i64 noundef 1) #4
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %115

112:                                              ; preds = %105
  %113 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

114:                                              ; No predecessors!
  br label %115

115:                                              ; preds = %114, %111
  %116 = load volatile i32, i32* @v0, align 4
  br i1 true, label %117, label %118

117:                                              ; preds = %115
  br label %120

118:                                              ; preds = %115
  br label %UnifiedUnreachableBlock

119:                                              ; No predecessors!
  br label %120

120:                                              ; preds = %119, %117
  %121 = load volatile i32, i32* @v0, align 4
  br i1 true, label %122, label %123

122:                                              ; preds = %120
  br label %125

123:                                              ; preds = %120
  br label %UnifiedUnreachableBlock

124:                                              ; No predecessors!
  br label %125

125:                                              ; preds = %124, %122
  %126 = load volatile i32, i32* @v0, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [1 x i8], [1 x i8]* @s1, i64 0, i64 %127
  %129 = load volatile i32, i32* @v1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load volatile i32, i32* @v1, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 1, %133
  %135 = call i8* @memchr(i8* noundef nonnull %131, i32 noundef 0, i64 noundef %134) #4
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %141

138:                                              ; preds = %125
  %139 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

140:                                              ; No predecessors!
  br label %141

141:                                              ; preds = %140, %137
  br i1 true, label %142, label %143

142:                                              ; preds = %141
  br label %145

143:                                              ; preds = %141
  br label %UnifiedUnreachableBlock

144:                                              ; No predecessors!
  br label %145

145:                                              ; preds = %144, %142
  br i1 true, label %146, label %147

146:                                              ; preds = %145
  br label %149

147:                                              ; preds = %145
  br label %UnifiedUnreachableBlock

148:                                              ; No predecessors!
  br label %149

149:                                              ; preds = %148, %146
  br i1 true, label %150, label %151

150:                                              ; preds = %149
  br label %153

151:                                              ; preds = %149
  br label %UnifiedUnreachableBlock

152:                                              ; No predecessors!
  br label %153

153:                                              ; preds = %152, %150
  br i1 true, label %154, label %155

154:                                              ; preds = %153
  br label %157

155:                                              ; preds = %153
  br label %UnifiedUnreachableBlock

156:                                              ; No predecessors!
  br label %157

157:                                              ; preds = %156, %154
  br i1 true, label %158, label %159

158:                                              ; preds = %157
  br label %161

159:                                              ; preds = %157
  br label %UnifiedUnreachableBlock

160:                                              ; No predecessors!
  br label %161

161:                                              ; preds = %160, %158
  %162 = load volatile i32, i32* @v0, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4 x i8], [4 x i8]* @s4, i64 0, i64 %163
  %165 = load volatile i32, i32* @v0, align 4
  %166 = sext i32 %165 to i64
  %167 = sub nsw i64 4, %166
  %168 = call i8* @memchr(i8* noundef nonnull %164, i32 noundef 0, i64 noundef %167) #4
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %174

171:                                              ; preds = %161
  %172 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

173:                                              ; No predecessors!
  br label %174

174:                                              ; preds = %173, %170
  %175 = load volatile i32, i32* @v1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i8], [4 x i8]* @s4, i64 0, i64 %176
  %178 = load volatile i32, i32* @v1, align 4
  %179 = sext i32 %178 to i64
  %180 = sub nsw i64 4, %179
  %181 = call i8* @memchr(i8* noundef nonnull %177, i32 noundef 0, i64 noundef %180) #4
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  br label %187

184:                                              ; preds = %174
  %185 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

186:                                              ; No predecessors!
  br label %187

187:                                              ; preds = %186, %183
  %188 = load volatile i32, i32* @v2, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [4 x i8], [4 x i8]* @s4, i64 0, i64 %189
  %191 = load volatile i32, i32* @v2, align 4
  %192 = sext i32 %191 to i64
  %193 = sub nsw i64 4, %192
  %194 = call i8* @memchr(i8* noundef nonnull %190, i32 noundef 0, i64 noundef %193) #4
  %195 = icmp eq i8* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %200

197:                                              ; preds = %187
  %198 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

199:                                              ; No predecessors!
  br label %200

200:                                              ; preds = %199, %196
  %201 = load volatile i32, i32* @v3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [4 x i8], [4 x i8]* @s4, i64 0, i64 %202
  %204 = load volatile i32, i32* @v3, align 4
  %205 = sext i32 %204 to i64
  %206 = sub nsw i64 4, %205
  %207 = call i8* @memchr(i8* noundef nonnull %203, i32 noundef 0, i64 noundef %206) #4
  %208 = icmp eq i8* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  br label %213

210:                                              ; preds = %200
  %211 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

212:                                              ; No predecessors!
  br label %213

213:                                              ; preds = %212, %209
  %214 = load volatile i32, i32* @v4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [4 x i8], [4 x i8]* @s4, i64 0, i64 %215
  %217 = load volatile i32, i32* @v4, align 4
  %218 = sext i32 %217 to i64
  %219 = sub nsw i64 4, %218
  %220 = call i8* @memchr(i8* noundef nonnull %216, i32 noundef 0, i64 noundef %219) #4
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %226

223:                                              ; preds = %213
  %224 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

225:                                              ; No predecessors!
  br label %226

226:                                              ; preds = %225, %222
  %227 = call i8* @memchr(i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 0, i64 0), i32 noundef 0, i64 noundef 8) #4
  %228 = icmp eq i8* %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  br label %233

230:                                              ; preds = %226
  %231 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

232:                                              ; No predecessors!
  br label %233

233:                                              ; preds = %232, %229
  %234 = call i8* @memchr(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 0, i64 0), i32 noundef 0, i64 noundef 4) #4
  %235 = icmp eq i8* %234, null
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %240

237:                                              ; preds = %233
  %238 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

239:                                              ; No predecessors!
  br label %240

240:                                              ; preds = %239, %236
  %241 = call i8* @memchr(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 1, i64 0), i32 noundef 0, i64 noundef 4) #4
  %242 = icmp eq i8* %241, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %247

244:                                              ; preds = %240
  %245 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

246:                                              ; No predecessors!
  br label %247

247:                                              ; preds = %246, %243
  %248 = call i8* @memchr(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 0, i64 1), i32 noundef 0, i64 noundef 3) #4
  %249 = icmp eq i8* %248, null
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %254

251:                                              ; preds = %247
  %252 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

253:                                              ; No predecessors!
  br label %254

254:                                              ; preds = %253, %250
  %255 = call i8* @memchr(i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 1, i64 2), i32 noundef 0, i64 noundef 2) #4
  %256 = icmp eq i8* %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  br label %261

258:                                              ; preds = %254
  %259 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

260:                                              ; No predecessors!
  br label %261

261:                                              ; preds = %260, %257
  %262 = call i8* @memchr(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 1, i64 3), i32 noundef 0, i64 noundef 1) #4
  %263 = icmp eq i8* %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  br label %268

265:                                              ; preds = %261
  %266 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

267:                                              ; No predecessors!
  br label %268

268:                                              ; preds = %267, %264
  %269 = load volatile i32, i32* @v0, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 %270, i64 0
  %272 = call i8* @memchr(i8* noundef nonnull dereferenceable(4) %271, i32 noundef 0, i64 noundef 4) #4
  %273 = icmp eq i8* %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  br label %278

275:                                              ; preds = %268
  %276 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

277:                                              ; No predecessors!
  br label %278

278:                                              ; preds = %277, %274
  %279 = load volatile i32, i32* @v0, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @s4_2, i64 0, i64 %280, i64 1
  %282 = call i8* @memchr(i8* noundef nonnull dereferenceable(3) %281, i32 noundef 0, i64 noundef 3) #4
  %283 = icmp eq i8* %282, null
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %288

285:                                              ; preds = %278
  %286 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

287:                                              ; No predecessors!
  br label %288

288:                                              ; preds = %287, %284
  %289 = call i8* @memchr(i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 0, i64 0), i32 noundef 0, i64 noundef 15) #4
  %290 = icmp eq i8* %289, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  br label %295

292:                                              ; preds = %288
  %293 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

294:                                              ; No predecessors!
  br label %295

295:                                              ; preds = %294, %291
  %296 = call i8* @memchr(i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 0, i64 0), i32 noundef 0, i64 noundef 15) #4
  %297 = icmp eq i8* %296, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  br label %302

299:                                              ; preds = %295
  %300 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.39, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

301:                                              ; No predecessors!
  br label %302

302:                                              ; preds = %301, %298
  %303 = call i8* @memchr(i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 0, i64 1), i32 noundef 0, i64 noundef 14) #4
  %304 = icmp eq i8* %303, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  br label %309

306:                                              ; preds = %302
  %307 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.40, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

308:                                              ; No predecessors!
  br label %309

309:                                              ; preds = %308, %305
  %310 = call i8* @memchr(i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 0, i64 2), i32 noundef 0, i64 noundef 13) #4
  %311 = icmp eq i8* %310, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  br label %316

313:                                              ; preds = %309
  %314 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.41, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

315:                                              ; No predecessors!
  br label %316

316:                                              ; preds = %315, %312
  %317 = call i8* @memchr(i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 0, i64 4), i32 noundef 0, i64 noundef 11) #4
  %318 = icmp eq i8* %317, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %318, label %319, label %320

319:                                              ; preds = %316
  br label %323

320:                                              ; preds = %316
  %321 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.42, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

322:                                              ; No predecessors!
  br label %323

323:                                              ; preds = %322, %319
  %324 = call i8* @memchr(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 0), i32 noundef 0, i64 noundef 5) #4
  %325 = icmp eq i8* %324, getelementptr inbounds ([3 x [5 x i8]], [3 x [5 x i8]]* @s5_3, i64 0, i64 1, i64 4)
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  br label %330

327:                                              ; preds = %323
  %328 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.43, i64 0, i64 0)) #4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

329:                                              ; No predecessors!
  br label %330

330:                                              ; preds = %329, %326
  ret void

UnifiedUnreachableBlock:                          ; preds = %327, %320, %313, %306, %299, %292, %285, %275, %265, %258, %251, %244, %237, %230, %223, %210, %197, %184, %171, %159, %155, %151, %147, %143, %138, %123, %118, %112, %102, %90, %86, %82, %77, %65, %61, %56, %44, %40, %35, %23, %19, %14, %2
  unreachable
}

declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test_wide() #3 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test_narrow()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
