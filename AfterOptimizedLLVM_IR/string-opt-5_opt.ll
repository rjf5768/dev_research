; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/string-opt-5.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/string-opt-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 6, align 4
@y = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [9 x i8] c"hi world\00", align 1
@bar = dso_local global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"lo world\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ello world\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ello \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" oo\00\00\00\00\00\00\00\00 \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"hello\00\00\00 \00", align 1
@buf = dso_local global [64 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"!!!\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"!!!--------\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"---\00\00\00\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"-\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %4 = load i8*, i8** @bar, align 8
  %5 = call i64 @strlen(i8* noundef %4)
  %6 = icmp ne i64 %5, 8
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #4
  unreachable

8:                                                ; preds = %0
  %9 = load i8*, i8** @bar, align 8
  %10 = load i32, i32* @x, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @x, align 4
  %12 = and i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %9, i64 %13
  %15 = call i64 @strlen(i8* noundef %14)
  %16 = icmp ne i64 %15, 6
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  call void @abort() #4
  unreachable

18:                                               ; preds = %8
  %19 = load i32, i32* @x, align 4
  %20 = icmp ne i32 %19, 7
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @abort() #4
  unreachable

22:                                               ; preds = %18
  %23 = load i32, i32* @x, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @x, align 4
  %25 = call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 6))
  %26 = icmp ne i64 %25, 5
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void @abort() #4
  unreachable

28:                                               ; preds = %22
  %29 = load i32, i32* @x, align 4
  %30 = icmp ne i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #4
  unreachable

32:                                               ; preds = %28
  %33 = load i32, i32* @x, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @x, align 4
  %35 = and i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 %36
  %38 = call i64 @strlen(i8* noundef %37)
  %39 = icmp ne i64 %38, 10
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  call void @abort() #4
  unreachable

41:                                               ; preds = %32
  %42 = load i32, i32* @x, align 4
  %43 = icmp ne i32 %42, 9
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #4
  unreachable

45:                                               ; preds = %41
  %46 = load i32, i32* @x, align 4
  %47 = sub nsw i32 %46, 6
  store i32 %47, i32* @x, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 %48
  %50 = call i32 @strcmp(i8* noundef %49, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  call void @abort() #4
  unreachable

53:                                               ; preds = %45
  %54 = load i32, i32* @x, align 4
  %55 = icmp ne i32 %54, 3
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @abort() #4
  unreachable

57:                                               ; preds = %53
  %58 = load i8*, i8** @bar, align 8
  %59 = call i32 @strcmp(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* noundef %58)
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  call void @abort() #4
  unreachable

62:                                               ; preds = %57
  %63 = load i8*, i8** @bar, align 8
  %64 = load i32, i32* @x, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @x, align 4
  %66 = and i32 %64, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = call i32 @strcmp(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* noundef %68)
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  call void @abort() #4
  unreachable

72:                                               ; preds = %62
  %73 = load i32, i32* @x, align 4
  %74 = icmp ne i32 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @abort() #4
  unreachable

76:                                               ; preds = %72
  %77 = load i32, i32* @x, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @x, align 4
  %79 = and i32 %77, 7
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 %80
  %82 = call i8* @strchr(i8* noundef %81, i32 noundef 108)
  %83 = icmp ne i8* %82, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i64 9)
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  call void @abort() #4
  unreachable

85:                                               ; preds = %76
  %86 = load i32, i32* @x, align 4
  %87 = icmp ne i32 %86, 5
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @abort() #4
  unreachable

89:                                               ; preds = %85
  %90 = load i8*, i8** @bar, align 8
  %91 = call i8* @strchr(i8* noundef %90, i32 noundef 111)
  %92 = load i8*, i8** @bar, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  %94 = icmp ne i8* %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  call void @abort() #4
  unreachable

96:                                               ; preds = %89
  %97 = load i8*, i8** @bar, align 8
  %98 = call i8* @strchr(i8* noundef %97, i32 noundef 0)
  %99 = load i8*, i8** @bar, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  %101 = icmp ne i8* %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  call void @abort() #4
  unreachable

103:                                              ; preds = %96
  %104 = load i8*, i8** @bar, align 8
  %105 = call i8* @strrchr(i8* noundef %104, i32 noundef 120)
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  call void @abort() #4
  unreachable

108:                                              ; preds = %103
  %109 = load i8*, i8** @bar, align 8
  %110 = call i8* @strrchr(i8* noundef %109, i32 noundef 111)
  %111 = load i8*, i8** @bar, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  %113 = icmp ne i8* %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  call void @abort() #4
  unreachable

115:                                              ; preds = %108
  %116 = load i32, i32* @x, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @x, align 4
  %118 = and i32 %116, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 %119
  %121 = load i32, i32* @y, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* @y, align 4
  %123 = and i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %124
  %126 = call i32 @strcmp(i8* noundef %120, i8* noundef %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  call void @abort() #4
  unreachable

129:                                              ; preds = %115
  %130 = load i32, i32* @x, align 4
  %131 = icmp ne i32 %130, 6
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @y, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132, %129
  call void @abort() #4
  unreachable

136:                                              ; preds = %132
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 5
  store i8 32, i8* %137, align 1
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 6
  store i8 0, i8* %138, align 2
  store i32 5, i32* @x, align 4
  store i32 1, i32* @y, align 4
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i32, i32* @x, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @x, align 4
  %143 = and i32 %141, 3
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 %144
  %146 = call i8* @strncpy(i8* noundef %140, i8* noundef %145, i64 noundef 4)
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = icmp ne i8* %146, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %136
  %151 = load i32, i32* @x, align 4
  %152 = icmp ne i32 %151, 6
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = call i32 @strcmp(i8* noundef %155, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153, %150, %136
  call void @abort() #4
  unreachable

159:                                              ; preds = %153
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %160, i8 32, i64 64, i1 false)
  %161 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %162 = load i32, i32* @x, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @x, align 4
  %164 = and i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %161, i64 %165
  %167 = load i32, i32* @y, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @y, align 4
  %169 = and i32 %167, 3
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %170
  %172 = call i8* @strncpy(i8* noundef %166, i8* noundef %171, i64 noundef 10)
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = icmp ne i8* %172, %174
  br i1 %175, label %186, label %176

176:                                              ; preds = %159
  %177 = load i32, i32* @x, align 4
  %178 = icmp ne i32 %177, 7
  br i1 %178, label %186, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @y, align 4
  %181 = icmp ne i32 %180, 2
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %184 = call i32 @memcmp(i8* noundef %183, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 noundef 12)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182, %179, %176, %159
  call void @abort() #4
  unreachable

187:                                              ; preds = %182
  %188 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %188, i8 32, i64 64, i1 false)
  %189 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %190 = call i8* @strncpy(i8* noundef %189, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 noundef 8)
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %192 = icmp ne i8* %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %195 = call i32 @memcmp(i8* noundef %194, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 noundef 9)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193, %187
  call void @abort() #4
  unreachable

198:                                              ; preds = %193
  store i32 33, i32* @x, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8 32, i64 64, i1 false)
  %199 = load i32, i32* @x, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* @x, align 4
  %201 = trunc i32 %199 to i8
  %202 = load i32, i32* @y, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* @y, align 4
  %204 = sext i32 %203 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8 %201, i64 %204, i1 false)
  br i1 false, label %214, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* @x, align 4
  %207 = icmp ne i32 %206, 34
  br i1 %207, label %214, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* @y, align 4
  %210 = icmp ne i32 %209, 3
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 noundef 3)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211, %208, %205, %198
  call void @abort() #4
  unreachable

215:                                              ; preds = %211
  %216 = load i32, i32* @y, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @y, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i64 %218
  call void @llvm.memset.p0i8.i64(i8* align 1 %219, i8 45, i64 8, i1 false)
  %220 = icmp ne i8* %219, getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 3)
  br i1 %220, label %227, label %221

221:                                              ; preds = %215
  %222 = load i32, i32* @y, align 4
  %223 = icmp ne i32 %222, 4
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 noundef 11)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224, %221, %215
  call void @abort() #4
  unreachable

228:                                              ; preds = %224
  store i32 10, i32* @x, align 4
  %229 = load i32, i32* @x, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* @x, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i64 %231
  %233 = load i32, i32* @y, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* @y, align 4
  %235 = sext i32 %233 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %232, i8 0, i64 %235, i1 false)
  %236 = icmp ne i8* %232, getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 11)
  br i1 %236, label %246, label %237

237:                                              ; preds = %228
  %238 = load i32, i32* @x, align 4
  %239 = icmp ne i32 %238, 11
  br i1 %239, label %246, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* @y, align 4
  %242 = icmp ne i32 %241, 5
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 8), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 noundef 7)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %243, %240, %237, %228
  call void @abort() #4
  unreachable

247:                                              ; preds = %243
  %248 = load i32, i32* @x, align 4
  %249 = add nsw i32 %248, 4
  store i32 %249, i32* @x, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i64 %250
  call void @llvm.memset.p0i8.i64(i8* align 1 %251, i8 0, i64 6, i1 false)
  %252 = icmp ne i8* %251, getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 15)
  br i1 %252, label %259, label %253

253:                                              ; preds = %247
  %254 = load i32, i32* @x, align 4
  %255 = icmp ne i32 %254, 15
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 10), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 noundef 11)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %256, %253, %247
  call void @abort() #4
  unreachable

260:                                              ; preds = %256
  ret i32 0
}

declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #1

declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
