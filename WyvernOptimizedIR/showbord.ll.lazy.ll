; ModuleID = './showbord.ll'
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
@str = private unnamed_addr constant [41 x i8] c"   A B C D E F G H J K L M N O P Q R S T\00", align 1
@str.1 = private unnamed_addr constant [42 x i8] c"   A B C D E F G H J K L M N O P Q R S T\0A\00", align 1
@str.2 = private unnamed_addr constant [25 x i8] c"     My color:   Black X\00", align 1
@str.3 = private unnamed_addr constant [25 x i8] c"     My color:   White O\00", align 1
@str.4 = private unnamed_addr constant [25 x i8] c"     Your color: Black X\00", align 1
@str.5 = private unnamed_addr constant [25 x i8] c"     Your color: White O\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @showboard() #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @str, i64 0, i64 0))
  br label %1

1:                                                ; preds = %32, %0
  %.0 = phi i32 [ 0, %0 ], [ %33, %32 ]
  %2 = icmp ult i32 %.0, 3
  br i1 %2, label %3, label %34

3:                                                ; preds = %1
  %4 = sub nsw i32 19, %.0
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4) #3
  br label %6

6:                                                ; preds = %28, %3
  %.01 = phi i32 [ 0, %3 ], [ %29, %28 ]
  %7 = icmp ult i32 %.01, 19
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  %9 = zext i32 %.0 to i64
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %27

16:                                               ; preds = %8
  %17 = zext i32 %.0 to i64
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %26

24:                                               ; preds = %16
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %26

26:                                               ; preds = %24, %22
  br label %27

27:                                               ; preds = %26, %14
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !4

30:                                               ; preds = %6
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4) #3
  %putchar16 = call i32 @putchar(i32 10)
  br label %32

32:                                               ; preds = %30
  %33 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

34:                                               ; preds = %1
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #3
  br label %36

36:                                               ; preds = %56, %34
  %.12 = phi i32 [ 0, %34 ], [ %57, %56 ]
  %37 = icmp ult i32 %.12, 3
  br i1 %37, label %38, label %58

38:                                               ; preds = %36
  %39 = zext i32 %.12 to i64
  %40 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %55

45:                                               ; preds = %38
  %46 = zext i32 %.12 to i64
  %47 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55
  %57 = add nuw nsw i32 %.12, 1
  br label %36, !llvm.loop !7

58:                                               ; preds = %36
  %59 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 3), align 4
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %71

63:                                               ; preds = %58
  %64 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 3), align 4
  %65 = icmp eq i8 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %70

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %70

70:                                               ; preds = %68, %66
  br label %71

71:                                               ; preds = %70, %61
  br label %72

72:                                               ; preds = %92, %71
  %.23 = phi i32 [ 4, %71 ], [ %93, %92 ]
  %73 = icmp ult i32 %.23, 9
  br i1 %73, label %74, label %94

74:                                               ; preds = %72
  %75 = zext i32 %.23 to i64
  %76 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %91

81:                                               ; preds = %74
  %82 = zext i32 %.23 to i64
  %83 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %90

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %79
  br label %92

92:                                               ; preds = %91
  %93 = add nuw nsw i32 %.23, 1
  br label %72, !llvm.loop !8

94:                                               ; preds = %72
  %95 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 9), align 2
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %107

99:                                               ; preds = %94
  %100 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 9), align 2
  %101 = icmp eq i8 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %106

104:                                              ; preds = %99
  %105 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %106

106:                                              ; preds = %104, %102
  br label %107

107:                                              ; preds = %106, %97
  br label %108

108:                                              ; preds = %128, %107
  %.34 = phi i32 [ 10, %107 ], [ %129, %128 ]
  %109 = icmp ult i32 %.34, 15
  br i1 %109, label %110, label %130

110:                                              ; preds = %108
  %111 = zext i32 %.34 to i64
  %112 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %127

117:                                              ; preds = %110
  %118 = zext i32 %.34 to i64
  %119 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = icmp eq i8 %120, 1
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %126

124:                                              ; preds = %117
  %125 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %126

126:                                              ; preds = %124, %122
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127
  %129 = add nuw nsw i32 %.34, 1
  br label %108, !llvm.loop !9

130:                                              ; preds = %108
  %131 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 15), align 8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %143

135:                                              ; preds = %130
  %136 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 15), align 8
  %137 = icmp eq i8 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %142

140:                                              ; preds = %135
  %141 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %142

142:                                              ; preds = %140, %138
  br label %143

143:                                              ; preds = %142, %133
  br label %144

144:                                              ; preds = %164, %143
  %.4 = phi i32 [ 16, %143 ], [ %165, %164 ]
  %145 = icmp ult i32 %.4, 19
  br i1 %145, label %146, label %166

146:                                              ; preds = %144
  %147 = zext i32 %.4 to i64
  %148 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %163

153:                                              ; preds = %146
  %154 = zext i32 %.4 to i64
  %155 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = icmp eq i8 %156, 1
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %162

160:                                              ; preds = %153
  %161 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %162

162:                                              ; preds = %160, %158
  br label %163

163:                                              ; preds = %162, %151
  br label %164

164:                                              ; preds = %163
  %165 = add nuw nsw i32 %.4, 1
  br label %144, !llvm.loop !10

166:                                              ; preds = %144
  %167 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #3
  %168 = load i32, i32* @umove, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  %puts15 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.5, i64 0, i64 0))
  br label %177

171:                                              ; preds = %166
  %172 = load i32, i32* @umove, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  %puts14 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.4, i64 0, i64 0))
  br label %176

175:                                              ; preds = %171
  %putchar = call i32 @putchar(i32 10)
  br label %176

176:                                              ; preds = %175, %174
  br label %177

177:                                              ; preds = %176, %170
  br label %178

178:                                              ; preds = %228, %177
  %.1 = phi i32 [ 4, %177 ], [ %229, %228 ]
  %179 = icmp ult i32 %.1, 9
  br i1 %179, label %180, label %230

180:                                              ; preds = %178
  %181 = sub nsw i32 19, %.1
  %182 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %181) #3
  br label %183

183:                                              ; preds = %205, %180
  %.5 = phi i32 [ 0, %180 ], [ %206, %205 ]
  %184 = icmp ult i32 %.5, 19
  br i1 %184, label %185, label %207

185:                                              ; preds = %183
  %186 = zext i32 %.1 to i64
  %187 = zext i32 %.5 to i64
  %188 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %186, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %204

193:                                              ; preds = %185
  %194 = zext i32 %.1 to i64
  %195 = zext i32 %.5 to i64
  %196 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %194, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = icmp eq i8 %197, 1
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %203

201:                                              ; preds = %193
  %202 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %203

203:                                              ; preds = %201, %199
  br label %204

204:                                              ; preds = %203, %191
  br label %205

205:                                              ; preds = %204
  %206 = add nuw nsw i32 %.5, 1
  br label %183, !llvm.loop !11

207:                                              ; preds = %183
  %208 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %181) #3
  %209 = icmp eq i32 %.1, 4
  br i1 %209, label %210, label %221

210:                                              ; preds = %207
  %211 = load i32, i32* @mymove, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  %puts13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.3, i64 0, i64 0))
  br label %220

214:                                              ; preds = %210
  %215 = load i32, i32* @mymove, align 4
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  %puts12 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.2, i64 0, i64 0))
  br label %219

218:                                              ; preds = %214
  %putchar11 = call i32 @putchar(i32 10)
  br label %219

219:                                              ; preds = %218, %217
  br label %220

220:                                              ; preds = %219, %213
  br label %227

221:                                              ; preds = %207
  %.not = icmp eq i32 %.1, 8
  br i1 %.not, label %223, label %222

222:                                              ; preds = %221
  %putchar10 = call i32 @putchar(i32 10)
  br label %226

223:                                              ; preds = %221
  %224 = load i32, i32* @mk, align 4
  %225 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 noundef %224) #3
  br label %226

226:                                              ; preds = %223, %222
  br label %227

227:                                              ; preds = %226, %220
  br label %228

228:                                              ; preds = %227
  %229 = add nuw nsw i32 %.1, 1
  br label %178, !llvm.loop !12

230:                                              ; preds = %178
  %231 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #3
  br label %232

232:                                              ; preds = %252, %230
  %.6 = phi i32 [ 0, %230 ], [ %253, %252 ]
  %233 = icmp ult i32 %.6, 3
  br i1 %233, label %234, label %254

234:                                              ; preds = %232
  %235 = zext i32 %.6 to i64
  %236 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %234
  %240 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %251

241:                                              ; preds = %234
  %242 = zext i32 %.6 to i64
  %243 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  %247 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %250

248:                                              ; preds = %241
  %249 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %250

250:                                              ; preds = %248, %246
  br label %251

251:                                              ; preds = %250, %239
  br label %252

252:                                              ; preds = %251
  %253 = add nuw nsw i32 %.6, 1
  br label %232, !llvm.loop !13

254:                                              ; preds = %232
  %255 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 3), align 2
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %267

259:                                              ; preds = %254
  %260 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 3), align 2
  %261 = icmp eq i8 %260, 1
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %266

264:                                              ; preds = %259
  %265 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %266

266:                                              ; preds = %264, %262
  br label %267

267:                                              ; preds = %266, %257
  br label %268

268:                                              ; preds = %288, %267
  %.7 = phi i32 [ 4, %267 ], [ %289, %288 ]
  %269 = icmp ult i32 %.7, 9
  br i1 %269, label %270, label %290

270:                                              ; preds = %268
  %271 = zext i32 %.7 to i64
  %272 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %287

277:                                              ; preds = %270
  %278 = zext i32 %.7 to i64
  %279 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = icmp eq i8 %280, 1
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %286

284:                                              ; preds = %277
  %285 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %286

286:                                              ; preds = %284, %282
  br label %287

287:                                              ; preds = %286, %275
  br label %288

288:                                              ; preds = %287
  %289 = add nuw nsw i32 %.7, 1
  br label %268, !llvm.loop !14

290:                                              ; preds = %268
  %291 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 4
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %303

295:                                              ; preds = %290
  %296 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 4
  %297 = icmp eq i8 %296, 1
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %302

300:                                              ; preds = %295
  %301 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %302

302:                                              ; preds = %300, %298
  br label %303

303:                                              ; preds = %302, %293
  br label %304

304:                                              ; preds = %324, %303
  %.8 = phi i32 [ 10, %303 ], [ %325, %324 ]
  %305 = icmp ult i32 %.8, 15
  br i1 %305, label %306, label %326

306:                                              ; preds = %304
  %307 = zext i32 %.8 to i64
  %308 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %323

313:                                              ; preds = %306
  %314 = zext i32 %.8 to i64
  %315 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = icmp eq i8 %316, 1
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %322

320:                                              ; preds = %313
  %321 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %322

322:                                              ; preds = %320, %318
  br label %323

323:                                              ; preds = %322, %311
  br label %324

324:                                              ; preds = %323
  %325 = add nuw nsw i32 %.8, 1
  br label %304, !llvm.loop !15

326:                                              ; preds = %304
  %327 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 15), align 2
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %326
  %330 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %339

331:                                              ; preds = %326
  %332 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 15), align 2
  %333 = icmp eq i8 %332, 1
  br i1 %333, label %334, label %336

334:                                              ; preds = %331
  %335 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %338

336:                                              ; preds = %331
  %337 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %338

338:                                              ; preds = %336, %334
  br label %339

339:                                              ; preds = %338, %329
  br label %340

340:                                              ; preds = %360, %339
  %.9 = phi i32 [ 16, %339 ], [ %361, %360 ]
  %341 = icmp ult i32 %.9, 19
  br i1 %341, label %342, label %362

342:                                              ; preds = %340
  %343 = zext i32 %.9 to i64
  %344 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %359

349:                                              ; preds = %342
  %350 = zext i32 %.9 to i64
  %351 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = icmp eq i8 %352, 1
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %358

356:                                              ; preds = %349
  %357 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %358

358:                                              ; preds = %356, %354
  br label %359

359:                                              ; preds = %358, %347
  br label %360

360:                                              ; preds = %359
  %361 = add nuw nsw i32 %.9, 1
  br label %340, !llvm.loop !16

362:                                              ; preds = %340
  %363 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #3
  %364 = load i32, i32* @uk, align 4
  %365 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 noundef %364) #3
  br label %366

366:                                              ; preds = %397, %362
  %.2 = phi i32 [ 10, %362 ], [ %398, %397 ]
  %367 = icmp ult i32 %.2, 15
  br i1 %367, label %368, label %399

368:                                              ; preds = %366
  %369 = sub nsw i32 19, %.2
  %370 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %369) #3
  br label %371

371:                                              ; preds = %393, %368
  %.10 = phi i32 [ 0, %368 ], [ %394, %393 ]
  %372 = icmp ult i32 %.10, 19
  br i1 %372, label %373, label %395

373:                                              ; preds = %371
  %374 = zext i32 %.2 to i64
  %375 = zext i32 %.10 to i64
  %376 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %374, i64 %375
  %377 = load i8, i8* %376, align 1
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %373
  %380 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %392

381:                                              ; preds = %373
  %382 = zext i32 %.2 to i64
  %383 = zext i32 %.10 to i64
  %384 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %382, i64 %383
  %385 = load i8, i8* %384, align 1
  %386 = icmp eq i8 %385, 1
  br i1 %386, label %387, label %389

387:                                              ; preds = %381
  %388 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %391

389:                                              ; preds = %381
  %390 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %391

391:                                              ; preds = %389, %387
  br label %392

392:                                              ; preds = %391, %379
  br label %393

393:                                              ; preds = %392
  %394 = add nuw nsw i32 %.10, 1
  br label %371, !llvm.loop !17

395:                                              ; preds = %371
  %396 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %369) #3
  %putchar9 = call i32 @putchar(i32 10)
  br label %397

397:                                              ; preds = %395
  %398 = add nuw nsw i32 %.2, 1
  br label %366, !llvm.loop !18

399:                                              ; preds = %366
  %400 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #3
  br label %401

401:                                              ; preds = %421, %399
  %.11 = phi i32 [ 0, %399 ], [ %422, %421 ]
  %402 = icmp ult i32 %.11, 3
  br i1 %402, label %403, label %423

403:                                              ; preds = %401
  %404 = zext i32 %.11 to i64
  %405 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %403
  %409 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %420

410:                                              ; preds = %403
  %411 = zext i32 %.11 to i64
  %412 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 %411
  %413 = load i8, i8* %412, align 1
  %414 = icmp eq i8 %413, 1
  br i1 %414, label %415, label %417

415:                                              ; preds = %410
  %416 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %419

417:                                              ; preds = %410
  %418 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %419

419:                                              ; preds = %417, %415
  br label %420

420:                                              ; preds = %419, %408
  br label %421

421:                                              ; preds = %420
  %422 = add nuw nsw i32 %.11, 1
  br label %401, !llvm.loop !19

423:                                              ; preds = %401
  %424 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 3), align 16
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %423
  %427 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %436

428:                                              ; preds = %423
  %429 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 3), align 16
  %430 = icmp eq i8 %429, 1
  br i1 %430, label %431, label %433

431:                                              ; preds = %428
  %432 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %435

433:                                              ; preds = %428
  %434 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %435

435:                                              ; preds = %433, %431
  br label %436

436:                                              ; preds = %435, %426
  br label %437

437:                                              ; preds = %457, %436
  %.125 = phi i32 [ 4, %436 ], [ %458, %457 ]
  %438 = icmp ult i32 %.125, 9
  br i1 %438, label %439, label %459

439:                                              ; preds = %437
  %440 = zext i32 %.125 to i64
  %441 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 %440
  %442 = load i8, i8* %441, align 1
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %444, label %446

444:                                              ; preds = %439
  %445 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %456

446:                                              ; preds = %439
  %447 = zext i32 %.125 to i64
  %448 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 %447
  %449 = load i8, i8* %448, align 1
  %450 = icmp eq i8 %449, 1
  br i1 %450, label %451, label %453

451:                                              ; preds = %446
  %452 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %455

453:                                              ; preds = %446
  %454 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %455

455:                                              ; preds = %453, %451
  br label %456

456:                                              ; preds = %455, %444
  br label %457

457:                                              ; preds = %456
  %458 = add nuw nsw i32 %.125, 1
  br label %437, !llvm.loop !20

459:                                              ; preds = %437
  %460 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 9), align 2
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %459
  %463 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %472

464:                                              ; preds = %459
  %465 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 9), align 2
  %466 = icmp eq i8 %465, 1
  br i1 %466, label %467, label %469

467:                                              ; preds = %464
  %468 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %471

469:                                              ; preds = %464
  %470 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %471

471:                                              ; preds = %469, %467
  br label %472

472:                                              ; preds = %471, %462
  br label %473

473:                                              ; preds = %493, %472
  %.13 = phi i32 [ 10, %472 ], [ %494, %493 ]
  %474 = icmp ult i32 %.13, 15
  br i1 %474, label %475, label %495

475:                                              ; preds = %473
  %476 = zext i32 %.13 to i64
  %477 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 %476
  %478 = load i8, i8* %477, align 1
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %475
  %481 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %492

482:                                              ; preds = %475
  %483 = zext i32 %.13 to i64
  %484 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 %483
  %485 = load i8, i8* %484, align 1
  %486 = icmp eq i8 %485, 1
  br i1 %486, label %487, label %489

487:                                              ; preds = %482
  %488 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %491

489:                                              ; preds = %482
  %490 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %491

491:                                              ; preds = %489, %487
  br label %492

492:                                              ; preds = %491, %480
  br label %493

493:                                              ; preds = %492
  %494 = add nuw nsw i32 %.13, 1
  br label %473, !llvm.loop !21

495:                                              ; preds = %473
  %496 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 15), align 4
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %495
  %499 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %508

500:                                              ; preds = %495
  %501 = load i8, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 15), align 4
  %502 = icmp eq i8 %501, 1
  br i1 %502, label %503, label %505

503:                                              ; preds = %500
  %504 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %507

505:                                              ; preds = %500
  %506 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %507

507:                                              ; preds = %505, %503
  br label %508

508:                                              ; preds = %507, %498
  br label %509

509:                                              ; preds = %529, %508
  %.14 = phi i32 [ 16, %508 ], [ %530, %529 ]
  %510 = icmp ult i32 %.14, 19
  br i1 %510, label %511, label %531

511:                                              ; preds = %509
  %512 = zext i32 %.14 to i64
  %513 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 %512
  %514 = load i8, i8* %513, align 1
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %516, label %518

516:                                              ; preds = %511
  %517 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %528

518:                                              ; preds = %511
  %519 = zext i32 %.14 to i64
  %520 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 %519
  %521 = load i8, i8* %520, align 1
  %522 = icmp eq i8 %521, 1
  br i1 %522, label %523, label %525

523:                                              ; preds = %518
  %524 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %527

525:                                              ; preds = %518
  %526 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %527

527:                                              ; preds = %525, %523
  br label %528

528:                                              ; preds = %527, %516
  br label %529

529:                                              ; preds = %528
  %530 = add nuw nsw i32 %.14, 1
  br label %509, !llvm.loop !22

531:                                              ; preds = %509
  %532 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #3
  %putchar6 = call i32 @putchar(i32 10)
  br label %533

533:                                              ; preds = %564, %531
  %.3 = phi i32 [ 16, %531 ], [ %565, %564 ]
  %534 = icmp ult i32 %.3, 19
  br i1 %534, label %535, label %566

535:                                              ; preds = %533
  %536 = sub nsw i32 19, %.3
  %537 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %536) #3
  br label %538

538:                                              ; preds = %560, %535
  %.15 = phi i32 [ 0, %535 ], [ %561, %560 ]
  %539 = icmp ult i32 %.15, 19
  br i1 %539, label %540, label %562

540:                                              ; preds = %538
  %541 = zext i32 %.3 to i64
  %542 = zext i32 %.15 to i64
  %543 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %541, i64 %542
  %544 = load i8, i8* %543, align 1
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %546, label %548

546:                                              ; preds = %540
  %547 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %559

548:                                              ; preds = %540
  %549 = zext i32 %.3 to i64
  %550 = zext i32 %.15 to i64
  %551 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %549, i64 %550
  %552 = load i8, i8* %551, align 1
  %553 = icmp eq i8 %552, 1
  br i1 %553, label %554, label %556

554:                                              ; preds = %548
  %555 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %558

556:                                              ; preds = %548
  %557 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %558

558:                                              ; preds = %556, %554
  br label %559

559:                                              ; preds = %558, %546
  br label %560

560:                                              ; preds = %559
  %561 = add nuw nsw i32 %.15, 1
  br label %538, !llvm.loop !23

562:                                              ; preds = %538
  %563 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %536) #3
  %putchar8 = call i32 @putchar(i32 10)
  br label %564

564:                                              ; preds = %562
  %565 = add nuw nsw i32 %.3, 1
  br label %533, !llvm.loop !24

566:                                              ; preds = %533
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
