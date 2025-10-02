; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/showbord.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/showbord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"   A B C D E F G H J K L M N O P Q R S T\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@p = external dso_local global [19 x [19 x i8]], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" O\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" X\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@umove = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"     Your color: White O\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"     Your color: Black X\0A\00", align 1
@mymove = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"     My color:   White O\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"     My color:   Black X\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"     You have captured %d pieces\0A\00", align 1
@mk = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"     I have captured %d pieces\0A\00", align 1
@uk = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c" 4\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"   A B C D E F G H J K L M N O P Q R S T\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @showboard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %51, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %54

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = sub nsw i32 19, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %11)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %44, %8
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 19
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %18
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %43

28:                                               ; preds = %16
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %30
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %31, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %42

40:                                               ; preds = %28
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %13, !llvm.loop !4

47:                                               ; preds = %13
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %48)
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %5, !llvm.loop !6

54:                                               ; preds = %5
  %55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %81, %54
  %57 = load i32, i32* %2, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %80

68:                                               ; preds = %59
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %79

77:                                               ; preds = %68
  %78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %75
  br label %80

80:                                               ; preds = %79, %66
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %56, !llvm.loop !7

84:                                               ; preds = %56
  %85 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 3), align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %99

90:                                               ; preds = %84
  %91 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 3), align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %98

96:                                               ; preds = %90
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %94
  br label %99

99:                                               ; preds = %98, %88
  store i32 4, i32* %2, align 4
  br label %100

100:                                              ; preds = %125, %99
  %101 = load i32, i32* %2, align 4
  %102 = icmp slt i32 %101, 9
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %124

112:                                              ; preds = %103
  %113 = load i32, i32* %2, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %123

121:                                              ; preds = %112
  %122 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %119
  br label %124

124:                                              ; preds = %123, %110
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %2, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %2, align 4
  br label %100, !llvm.loop !8

128:                                              ; preds = %100
  %129 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 9), align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %143

134:                                              ; preds = %128
  %135 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 9), align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %142

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %138
  br label %143

143:                                              ; preds = %142, %132
  store i32 10, i32* %2, align 4
  br label %144

144:                                              ; preds = %169, %143
  %145 = load i32, i32* %2, align 4
  %146 = icmp slt i32 %145, 15
  br i1 %146, label %147, label %172

147:                                              ; preds = %144
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %168

156:                                              ; preds = %147
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %167

165:                                              ; preds = %156
  %166 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %163
  br label %168

168:                                              ; preds = %167, %154
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %2, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %2, align 4
  br label %144, !llvm.loop !9

172:                                              ; preds = %144
  %173 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 15), align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %187

178:                                              ; preds = %172
  %179 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 15), align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %186

184:                                              ; preds = %178
  %185 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %182
  br label %187

187:                                              ; preds = %186, %176
  store i32 16, i32* %2, align 4
  br label %188

188:                                              ; preds = %213, %187
  %189 = load i32, i32* %2, align 4
  %190 = icmp slt i32 %189, 19
  br i1 %190, label %191, label %216

191:                                              ; preds = %188
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %212

200:                                              ; preds = %191
  %201 = load i32, i32* %2, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3), i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %211

209:                                              ; preds = %200
  %210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %207
  br label %212

212:                                              ; preds = %211, %198
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %2, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %2, align 4
  br label %188, !llvm.loop !10

216:                                              ; preds = %188
  %217 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %218 = load i32, i32* @umove, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %230

222:                                              ; preds = %216
  %223 = load i32, i32* @umove, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %229

227:                                              ; preds = %222
  %228 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %225
  br label %230

230:                                              ; preds = %229, %220
  store i32 4, i32* %1, align 4
  br label %231

231:                                              ; preds = %302, %230
  %232 = load i32, i32* %1, align 4
  %233 = icmp slt i32 %232, 9
  br i1 %233, label %234, label %305

234:                                              ; preds = %231
  %235 = load i32, i32* %1, align 4
  %236 = sub nsw i32 19, %235
  store i32 %236, i32* %3, align 4
  %237 = load i32, i32* %3, align 4
  %238 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %237)
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %270, %234
  %240 = load i32, i32* %2, align 4
  %241 = icmp slt i32 %240, 19
  br i1 %241, label %242, label %273

242:                                              ; preds = %239
  %243 = load i32, i32* %1, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %244
  %246 = load i32, i32* %2, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [19 x i8], [19 x i8]* %245, i64 0, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %242
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %269

254:                                              ; preds = %242
  %255 = load i32, i32* %1, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %256
  %258 = load i32, i32* %2, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [19 x i8], [19 x i8]* %257, i64 0, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %266

264:                                              ; preds = %254
  %265 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %268

266:                                              ; preds = %254
  %267 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %264
  br label %269

269:                                              ; preds = %268, %252
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %2, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %2, align 4
  br label %239, !llvm.loop !11

273:                                              ; preds = %239
  %274 = load i32, i32* %3, align 4
  %275 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %274)
  %276 = load i32, i32* %1, align 4
  %277 = icmp eq i32 %276, 4
  br i1 %277, label %278, label %292

278:                                              ; preds = %273
  %279 = load i32, i32* @mymove, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %291

283:                                              ; preds = %278
  %284 = load i32, i32* @mymove, align 4
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %290

288:                                              ; preds = %283
  %289 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %290

290:                                              ; preds = %288, %286
  br label %291

291:                                              ; preds = %290, %281
  br label %301

292:                                              ; preds = %273
  %293 = load i32, i32* %1, align 4
  %294 = icmp ne i32 %293, 8
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %300

297:                                              ; preds = %292
  %298 = load i32, i32* @mk, align 4
  %299 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 noundef %298)
  br label %300

300:                                              ; preds = %297, %295
  br label %301

301:                                              ; preds = %300, %291
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %1, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %1, align 4
  br label %231, !llvm.loop !12

305:                                              ; preds = %231
  %306 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %307

307:                                              ; preds = %332, %305
  %308 = load i32, i32* %2, align 4
  %309 = icmp slt i32 %308, 3
  br i1 %309, label %310, label %335

310:                                              ; preds = %307
  %311 = load i32, i32* %2, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %310
  %318 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %331

319:                                              ; preds = %310
  %320 = load i32, i32* %2, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %328

326:                                              ; preds = %319
  %327 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %330

328:                                              ; preds = %319
  %329 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %326
  br label %331

331:                                              ; preds = %330, %317
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %2, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %2, align 4
  br label %307, !llvm.loop !13

335:                                              ; preds = %307
  %336 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 3), align 1
  %337 = zext i8 %336 to i32
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  %340 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %350

341:                                              ; preds = %335
  %342 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 3), align 1
  %343 = zext i8 %342 to i32
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %349

347:                                              ; preds = %341
  %348 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %349

349:                                              ; preds = %347, %345
  br label %350

350:                                              ; preds = %349, %339
  store i32 4, i32* %2, align 4
  br label %351

351:                                              ; preds = %376, %350
  %352 = load i32, i32* %2, align 4
  %353 = icmp slt i32 %352, 9
  br i1 %353, label %354, label %379

354:                                              ; preds = %351
  %355 = load i32, i32* %2, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %354
  %362 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %375

363:                                              ; preds = %354
  %364 = load i32, i32* %2, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %365
  %367 = load i8, i8* %366, align 1
  %368 = zext i8 %367 to i32
  %369 = icmp eq i32 %368, 1
  br i1 %369, label %370, label %372

370:                                              ; preds = %363
  %371 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %374

372:                                              ; preds = %363
  %373 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %374

374:                                              ; preds = %372, %370
  br label %375

375:                                              ; preds = %374, %361
  br label %376

376:                                              ; preds = %375
  %377 = load i32, i32* %2, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %2, align 4
  br label %351, !llvm.loop !14

379:                                              ; preds = %351
  %380 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  %381 = zext i8 %380 to i32
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %379
  %384 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %394

385:                                              ; preds = %379
  %386 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  %387 = zext i8 %386 to i32
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %391

389:                                              ; preds = %385
  %390 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %393

391:                                              ; preds = %385
  %392 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %393

393:                                              ; preds = %391, %389
  br label %394

394:                                              ; preds = %393, %383
  store i32 10, i32* %2, align 4
  br label %395

395:                                              ; preds = %420, %394
  %396 = load i32, i32* %2, align 4
  %397 = icmp slt i32 %396, 15
  br i1 %397, label %398, label %423

398:                                              ; preds = %395
  %399 = load i32, i32* %2, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %400
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %398
  %406 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %419

407:                                              ; preds = %398
  %408 = load i32, i32* %2, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %414, label %416

414:                                              ; preds = %407
  %415 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %418

416:                                              ; preds = %407
  %417 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %418

418:                                              ; preds = %416, %414
  br label %419

419:                                              ; preds = %418, %405
  br label %420

420:                                              ; preds = %419
  %421 = load i32, i32* %2, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %2, align 4
  br label %395, !llvm.loop !15

423:                                              ; preds = %395
  %424 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 15), align 1
  %425 = zext i8 %424 to i32
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %423
  %428 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %438

429:                                              ; preds = %423
  %430 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 15), align 1
  %431 = zext i8 %430 to i32
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %435

433:                                              ; preds = %429
  %434 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %437

435:                                              ; preds = %429
  %436 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %437

437:                                              ; preds = %435, %433
  br label %438

438:                                              ; preds = %437, %427
  store i32 16, i32* %2, align 4
  br label %439

439:                                              ; preds = %464, %438
  %440 = load i32, i32* %2, align 4
  %441 = icmp slt i32 %440, 19
  br i1 %441, label %442, label %467

442:                                              ; preds = %439
  %443 = load i32, i32* %2, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %444
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i32
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %442
  %450 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %463

451:                                              ; preds = %442
  %452 = load i32, i32* %2, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9), i64 0, i64 %453
  %455 = load i8, i8* %454, align 1
  %456 = zext i8 %455 to i32
  %457 = icmp eq i32 %456, 1
  br i1 %457, label %458, label %460

458:                                              ; preds = %451
  %459 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %462

460:                                              ; preds = %451
  %461 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %462

462:                                              ; preds = %460, %458
  br label %463

463:                                              ; preds = %462, %449
  br label %464

464:                                              ; preds = %463
  %465 = load i32, i32* %2, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %2, align 4
  br label %439, !llvm.loop !16

467:                                              ; preds = %439
  %468 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %469 = load i32, i32* @uk, align 4
  %470 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 noundef %469)
  store i32 10, i32* %1, align 4
  br label %471

471:                                              ; preds = %517, %467
  %472 = load i32, i32* %1, align 4
  %473 = icmp slt i32 %472, 15
  br i1 %473, label %474, label %520

474:                                              ; preds = %471
  %475 = load i32, i32* %1, align 4
  %476 = sub nsw i32 19, %475
  store i32 %476, i32* %3, align 4
  %477 = load i32, i32* %3, align 4
  %478 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %477)
  store i32 0, i32* %2, align 4
  br label %479

479:                                              ; preds = %510, %474
  %480 = load i32, i32* %2, align 4
  %481 = icmp slt i32 %480, 19
  br i1 %481, label %482, label %513

482:                                              ; preds = %479
  %483 = load i32, i32* %1, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %484
  %486 = load i32, i32* %2, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [19 x i8], [19 x i8]* %485, i64 0, i64 %487
  %489 = load i8, i8* %488, align 1
  %490 = zext i8 %489 to i32
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %482
  %493 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %509

494:                                              ; preds = %482
  %495 = load i32, i32* %1, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %496
  %498 = load i32, i32* %2, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [19 x i8], [19 x i8]* %497, i64 0, i64 %499
  %501 = load i8, i8* %500, align 1
  %502 = zext i8 %501 to i32
  %503 = icmp eq i32 %502, 1
  br i1 %503, label %504, label %506

504:                                              ; preds = %494
  %505 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %508

506:                                              ; preds = %494
  %507 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %508

508:                                              ; preds = %506, %504
  br label %509

509:                                              ; preds = %508, %492
  br label %510

510:                                              ; preds = %509
  %511 = load i32, i32* %2, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %2, align 4
  br label %479, !llvm.loop !17

513:                                              ; preds = %479
  %514 = load i32, i32* %3, align 4
  %515 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %514)
  %516 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %517

517:                                              ; preds = %513
  %518 = load i32, i32* %1, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %1, align 4
  br label %471, !llvm.loop !18

520:                                              ; preds = %471
  %521 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %522

522:                                              ; preds = %547, %520
  %523 = load i32, i32* %2, align 4
  %524 = icmp slt i32 %523, 3
  br i1 %524, label %525, label %550

525:                                              ; preds = %522
  %526 = load i32, i32* %2, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %527
  %529 = load i8, i8* %528, align 1
  %530 = zext i8 %529 to i32
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %534

532:                                              ; preds = %525
  %533 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %546

534:                                              ; preds = %525
  %535 = load i32, i32* %2, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %536
  %538 = load i8, i8* %537, align 1
  %539 = zext i8 %538 to i32
  %540 = icmp eq i32 %539, 1
  br i1 %540, label %541, label %543

541:                                              ; preds = %534
  %542 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %545

543:                                              ; preds = %534
  %544 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %545

545:                                              ; preds = %543, %541
  br label %546

546:                                              ; preds = %545, %532
  br label %547

547:                                              ; preds = %546
  %548 = load i32, i32* %2, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %2, align 4
  br label %522, !llvm.loop !19

550:                                              ; preds = %522
  %551 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 3), align 1
  %552 = zext i8 %551 to i32
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %556

554:                                              ; preds = %550
  %555 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %565

556:                                              ; preds = %550
  %557 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 3), align 1
  %558 = zext i8 %557 to i32
  %559 = icmp eq i32 %558, 1
  br i1 %559, label %560, label %562

560:                                              ; preds = %556
  %561 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %564

562:                                              ; preds = %556
  %563 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %564

564:                                              ; preds = %562, %560
  br label %565

565:                                              ; preds = %564, %554
  store i32 4, i32* %2, align 4
  br label %566

566:                                              ; preds = %591, %565
  %567 = load i32, i32* %2, align 4
  %568 = icmp slt i32 %567, 9
  br i1 %568, label %569, label %594

569:                                              ; preds = %566
  %570 = load i32, i32* %2, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %571
  %573 = load i8, i8* %572, align 1
  %574 = zext i8 %573 to i32
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %569
  %577 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %590

578:                                              ; preds = %569
  %579 = load i32, i32* %2, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %580
  %582 = load i8, i8* %581, align 1
  %583 = zext i8 %582 to i32
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %585, label %587

585:                                              ; preds = %578
  %586 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %589

587:                                              ; preds = %578
  %588 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %589

589:                                              ; preds = %587, %585
  br label %590

590:                                              ; preds = %589, %576
  br label %591

591:                                              ; preds = %590
  %592 = load i32, i32* %2, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %2, align 4
  br label %566, !llvm.loop !20

594:                                              ; preds = %566
  %595 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 9), align 1
  %596 = zext i8 %595 to i32
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %594
  %599 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %609

600:                                              ; preds = %594
  %601 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 9), align 1
  %602 = zext i8 %601 to i32
  %603 = icmp eq i32 %602, 1
  br i1 %603, label %604, label %606

604:                                              ; preds = %600
  %605 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %608

606:                                              ; preds = %600
  %607 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %608

608:                                              ; preds = %606, %604
  br label %609

609:                                              ; preds = %608, %598
  store i32 10, i32* %2, align 4
  br label %610

610:                                              ; preds = %635, %609
  %611 = load i32, i32* %2, align 4
  %612 = icmp slt i32 %611, 15
  br i1 %612, label %613, label %638

613:                                              ; preds = %610
  %614 = load i32, i32* %2, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %615
  %617 = load i8, i8* %616, align 1
  %618 = zext i8 %617 to i32
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %622

620:                                              ; preds = %613
  %621 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %634

622:                                              ; preds = %613
  %623 = load i32, i32* %2, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %624
  %626 = load i8, i8* %625, align 1
  %627 = zext i8 %626 to i32
  %628 = icmp eq i32 %627, 1
  br i1 %628, label %629, label %631

629:                                              ; preds = %622
  %630 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %633

631:                                              ; preds = %622
  %632 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %633

633:                                              ; preds = %631, %629
  br label %634

634:                                              ; preds = %633, %620
  br label %635

635:                                              ; preds = %634
  %636 = load i32, i32* %2, align 4
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %2, align 4
  br label %610, !llvm.loop !21

638:                                              ; preds = %610
  %639 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 15), align 1
  %640 = zext i8 %639 to i32
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %644

642:                                              ; preds = %638
  %643 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %653

644:                                              ; preds = %638
  %645 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 15), align 1
  %646 = zext i8 %645 to i32
  %647 = icmp eq i32 %646, 1
  br i1 %647, label %648, label %650

648:                                              ; preds = %644
  %649 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %652

650:                                              ; preds = %644
  %651 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %652

652:                                              ; preds = %650, %648
  br label %653

653:                                              ; preds = %652, %642
  store i32 16, i32* %2, align 4
  br label %654

654:                                              ; preds = %679, %653
  %655 = load i32, i32* %2, align 4
  %656 = icmp slt i32 %655, 19
  br i1 %656, label %657, label %682

657:                                              ; preds = %654
  %658 = load i32, i32* %2, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %659
  %661 = load i8, i8* %660, align 1
  %662 = zext i8 %661 to i32
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %666

664:                                              ; preds = %657
  %665 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %678

666:                                              ; preds = %657
  %667 = load i32, i32* %2, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15), i64 0, i64 %668
  %670 = load i8, i8* %669, align 1
  %671 = zext i8 %670 to i32
  %672 = icmp eq i32 %671, 1
  br i1 %672, label %673, label %675

673:                                              ; preds = %666
  %674 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %677

675:                                              ; preds = %666
  %676 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %677

677:                                              ; preds = %675, %673
  br label %678

678:                                              ; preds = %677, %664
  br label %679

679:                                              ; preds = %678
  %680 = load i32, i32* %2, align 4
  %681 = add nsw i32 %680, 1
  store i32 %681, i32* %2, align 4
  br label %654, !llvm.loop !22

682:                                              ; preds = %654
  %683 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %684 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 16, i32* %1, align 4
  br label %685

685:                                              ; preds = %731, %682
  %686 = load i32, i32* %1, align 4
  %687 = icmp slt i32 %686, 19
  br i1 %687, label %688, label %734

688:                                              ; preds = %685
  %689 = load i32, i32* %1, align 4
  %690 = sub nsw i32 19, %689
  store i32 %690, i32* %3, align 4
  %691 = load i32, i32* %3, align 4
  %692 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %691)
  store i32 0, i32* %2, align 4
  br label %693

693:                                              ; preds = %724, %688
  %694 = load i32, i32* %2, align 4
  %695 = icmp slt i32 %694, 19
  br i1 %695, label %696, label %727

696:                                              ; preds = %693
  %697 = load i32, i32* %1, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %698
  %700 = load i32, i32* %2, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [19 x i8], [19 x i8]* %699, i64 0, i64 %701
  %703 = load i8, i8* %702, align 1
  %704 = zext i8 %703 to i32
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %706, label %708

706:                                              ; preds = %696
  %707 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %723

708:                                              ; preds = %696
  %709 = load i32, i32* %1, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %710
  %712 = load i32, i32* %2, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [19 x i8], [19 x i8]* %711, i64 0, i64 %713
  %715 = load i8, i8* %714, align 1
  %716 = zext i8 %715 to i32
  %717 = icmp eq i32 %716, 1
  br i1 %717, label %718, label %720

718:                                              ; preds = %708
  %719 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %722

720:                                              ; preds = %708
  %721 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %722

722:                                              ; preds = %720, %718
  br label %723

723:                                              ; preds = %722, %706
  br label %724

724:                                              ; preds = %723
  %725 = load i32, i32* %2, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %2, align 4
  br label %693, !llvm.loop !23

727:                                              ; preds = %693
  %728 = load i32, i32* %3, align 4
  %729 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %728)
  %730 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %731

731:                                              ; preds = %727
  %732 = load i32, i32* %1, align 4
  %733 = add nsw i32 %732, 1
  store i32 %733, i32* %1, align 4
  br label %685, !llvm.loop !24

734:                                              ; preds = %685
  %735 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
