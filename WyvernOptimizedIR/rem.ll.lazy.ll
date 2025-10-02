; ModuleID = './rem.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SignlessTypes/rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Test #%u, failed in iteration #: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failing test vector:\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"m=%u, x_u=%u, y_u=%u, z_u=%u, x_s=%d, y_s=%d, z_s=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\0A *** REM test done! ***\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"\0A *** REM test done! ***\00", align 1
@str.1 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.2 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.3 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.4 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.5 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.6 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.7 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.8 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.9 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.10 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.11 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.12 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.13 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.14 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.15 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.16 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.17 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.18 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.19 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.20 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.21 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.22 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.23 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.24 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.25 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.26 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1
@str.27 = private unnamed_addr constant [21 x i8] c"Failing test vector:\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i64 @gcd(i64 noundef %0, i64 noundef %1) #0 {
  br label %3

3:                                                ; preds = %7, %2
  %.01 = phi i64 [ %1, %2 ], [ %4, %7 ]
  %.0 = phi i64 [ %0, %2 ], [ %.01, %7 ]
  %4 = srem i64 %.0, %.01
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  ret i64 %.01

7:                                                ; preds = %3
  br label %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  br label %3

3:                                                ; preds = %688, %2
  %.01 = phi i32 [ 0, %2 ], [ %689, %688 ]
  %4 = icmp ult i32 %.01, 100
  br i1 %4, label %5, label %690

5:                                                ; preds = %3
  %6 = call i32 @rand() #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = add i32 %.01, -1
  br label %688

10:                                               ; preds = %5
  %11 = call i32 @rand() #6
  %12 = call i32 @rand() #6
  %13 = call i32 @rand() #6
  %14 = call i32 @rand() #6
  %15 = and i32 %14, 1
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %18, label %16

16:                                               ; preds = %10
  %17 = call i32 @rand() #6
  br label %21

18:                                               ; preds = %10
  %19 = call i32 @rand() #6
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ]
  %23 = call i32 @rand() #6
  %24 = and i32 %23, 1
  %.not217 = icmp eq i32 %24, 0
  br i1 %.not217, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 @rand() #6
  br label %30

27:                                               ; preds = %21
  %28 = call i32 @rand() #6
  %29 = sub nsw i32 0, %28
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  %32 = call i32 @rand() #6
  %33 = and i32 %32, 1
  %.not218 = icmp eq i32 %33, 0
  br i1 %.not218, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 @rand() #6
  br label %39

36:                                               ; preds = %30
  %37 = call i32 @rand() #6
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  %.not219 = icmp eq i32 %22, %31
  br i1 %.not219, label %41, label %48

41:                                               ; preds = %39
  %42 = urem i32 %22, %6
  %43 = urem i32 %31, %6
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i32 noundef %.01) #6
  %puts220 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.1, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

48:                                               ; preds = %41, %39
  %.not221 = icmp eq i32 %22, %12
  br i1 %.not221, label %49, label %56

49:                                               ; preds = %48
  %50 = urem i32 %22, %6
  %51 = urem i32 %12, %6
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 2, i32 noundef %.01) #6
  %puts222 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.2, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

56:                                               ; preds = %49, %48
  %.not223 = icmp eq i32 %11, %31
  br i1 %.not223, label %57, label %64

57:                                               ; preds = %56
  %58 = urem i32 %11, %6
  %59 = urem i32 %31, %6
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 3, i32 noundef %.01) #6
  %puts224 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.3, i64 0, i64 0))
  %63 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

64:                                               ; preds = %57, %56
  %.not225 = icmp eq i32 %11, %12
  br i1 %.not225, label %65, label %72

65:                                               ; preds = %64
  %66 = urem i32 %11, %6
  %67 = urem i32 %12, %6
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 4, i32 noundef %.01) #6
  %puts226 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.4, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

72:                                               ; preds = %65, %64
  %73 = urem i32 %11, %6
  %74 = urem i32 %12, %6
  %75 = add i32 %73, %74
  %76 = urem i32 %11, %6
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %92, label %78

78:                                               ; preds = %72
  %79 = xor i32 %11, -1
  %80 = icmp ugt i32 %12, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %78
  %82 = urem i32 %11, %6
  %83 = urem i32 %12, %6
  %84 = add i32 %82, %83
  %85 = urem i32 %84, %6
  %86 = add i32 %11, %12
  %87 = urem i32 %86, %6
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 5, i32 noundef %.01) #6
  %puts227 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.5, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

92:                                               ; preds = %81, %78, %72
  %93 = xor i32 %12, -1
  %94 = icmp ugt i32 %13, %93
  br i1 %94, label %113, label %95

95:                                               ; preds = %92
  %96 = icmp ult i32 %11, %13
  br i1 %96, label %113, label %97

97:                                               ; preds = %95
  %98 = urem i32 %11, %6
  %99 = add i32 %12, %13
  %100 = urem i32 %99, %6
  %101 = icmp eq i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = urem i32 %102, %6
  %104 = sub i32 %11, %13
  %105 = urem i32 %104, %6
  %106 = urem i32 %12, %6
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = icmp eq i32 %103, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %97
  %111 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 6, i32 noundef %.01) #6
  %puts228 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.6, i64 0, i64 0))
  %112 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

113:                                              ; preds = %97, %95, %92
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 %12)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %127, label %114

114:                                              ; preds = %113
  %115 = mul i32 %12, %6
  %116 = xor i32 %11, -1
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %127, label %118

118:                                              ; preds = %114
  %119 = urem i32 %11, %6
  %120 = mul i32 %12, %6
  %121 = add i32 %11, %120
  %122 = urem i32 %121, %6
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 7, i32 noundef %.01) #6
  %puts230 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.7, i64 0, i64 0))
  %126 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

127:                                              ; preds = %118, %114, %113
  %128 = sext i32 %40 to i64
  %129 = zext i32 %6 to i64
  %130 = call i64 @gcd(i64 noundef %128, i64 noundef %129)
  %.not231 = icmp eq i64 %130, 1
  br i1 %.not231, label %131, label %156

131:                                              ; preds = %127
  %132 = icmp eq i32 %40, 0
  br i1 %132, label %156, label %133

133:                                              ; preds = %131
  %134 = sext i32 %22 to i64
  %135 = sext i32 %40 to i64
  %136 = call i64 @gcd(i64 noundef %134, i64 noundef %135)
  %137 = sext i32 %40 to i64
  %.not232 = icmp eq i64 %136, %137
  br i1 %.not232, label %138, label %156

138:                                              ; preds = %133
  %139 = sext i32 %31 to i64
  %140 = sext i32 %40 to i64
  %141 = call i64 @gcd(i64 noundef %139, i64 noundef %140)
  %142 = sext i32 %40 to i64
  %.not233 = icmp eq i64 %141, %142
  br i1 %.not233, label %143, label %156

143:                                              ; preds = %138
  %144 = urem i32 %22, %6
  %145 = urem i32 %31, %6
  %146 = icmp ne i32 %144, %145
  %147 = sdiv i32 %22, %40
  %148 = urem i32 %147, %6
  %149 = sdiv i32 %31, %40
  %150 = urem i32 %149, %6
  %151 = icmp eq i32 %148, %150
  %152 = xor i1 %146, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %143
  %154 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 8, i32 noundef %.01) #6
  %puts235 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.8, i64 0, i64 0))
  %155 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

156:                                              ; preds = %143, %138, %133, %131, %127
  %157 = zext i32 %13 to i64
  %158 = zext i32 %6 to i64
  %159 = call i64 @gcd(i64 noundef %157, i64 noundef %158)
  %.not236 = icmp eq i64 %159, 1
  br i1 %.not236, label %160, label %185

160:                                              ; preds = %156
  %161 = icmp eq i32 %13, 0
  br i1 %161, label %185, label %162

162:                                              ; preds = %160
  %163 = sext i32 %22 to i64
  %164 = zext i32 %13 to i64
  %165 = call i64 @gcd(i64 noundef %163, i64 noundef %164)
  %166 = zext i32 %13 to i64
  %.not237 = icmp eq i64 %165, %166
  br i1 %.not237, label %167, label %185

167:                                              ; preds = %162
  %168 = sext i32 %31 to i64
  %169 = zext i32 %13 to i64
  %170 = call i64 @gcd(i64 noundef %168, i64 noundef %169)
  %171 = zext i32 %13 to i64
  %.not238 = icmp eq i64 %170, %171
  br i1 %.not238, label %172, label %185

172:                                              ; preds = %167
  %173 = urem i32 %22, %6
  %174 = urem i32 %31, %6
  %175 = icmp ne i32 %173, %174
  %176 = udiv i32 %22, %13
  %177 = urem i32 %176, %6
  %178 = udiv i32 %31, %13
  %179 = urem i32 %178, %6
  %180 = icmp eq i32 %177, %179
  %181 = xor i1 %175, %180
  br i1 %181, label %185, label %182

182:                                              ; preds = %172
  %183 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 9, i32 noundef %.01) #6
  %puts240 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.9, i64 0, i64 0))
  %184 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

185:                                              ; preds = %172, %167, %162, %160, %156
  %186 = sext i32 %40 to i64
  %187 = zext i32 %6 to i64
  %188 = call i64 @gcd(i64 noundef %186, i64 noundef %187)
  %.not241 = icmp eq i64 %188, 1
  br i1 %.not241, label %189, label %214

189:                                              ; preds = %185
  %190 = icmp eq i32 %40, 0
  br i1 %190, label %214, label %191

191:                                              ; preds = %189
  %192 = sext i32 %22 to i64
  %193 = sext i32 %40 to i64
  %194 = call i64 @gcd(i64 noundef %192, i64 noundef %193)
  %195 = sext i32 %40 to i64
  %.not242 = icmp eq i64 %194, %195
  br i1 %.not242, label %196, label %214

196:                                              ; preds = %191
  %197 = zext i32 %12 to i64
  %198 = sext i32 %40 to i64
  %199 = call i64 @gcd(i64 noundef %197, i64 noundef %198)
  %200 = sext i32 %40 to i64
  %.not243 = icmp eq i64 %199, %200
  br i1 %.not243, label %201, label %214

201:                                              ; preds = %196
  %202 = urem i32 %22, %6
  %203 = urem i32 %12, %6
  %204 = icmp ne i32 %202, %203
  %205 = sdiv i32 %22, %40
  %206 = urem i32 %205, %6
  %207 = udiv i32 %12, %40
  %208 = urem i32 %207, %6
  %209 = icmp eq i32 %206, %208
  %210 = xor i1 %204, %209
  br i1 %210, label %214, label %211

211:                                              ; preds = %201
  %212 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 10, i32 noundef %.01) #6
  %puts245 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.10, i64 0, i64 0))
  %213 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

214:                                              ; preds = %201, %196, %191, %189, %185
  %215 = zext i32 %13 to i64
  %216 = zext i32 %6 to i64
  %217 = call i64 @gcd(i64 noundef %215, i64 noundef %216)
  %.not246 = icmp eq i64 %217, 1
  br i1 %.not246, label %218, label %243

218:                                              ; preds = %214
  %219 = icmp eq i32 %13, 0
  br i1 %219, label %243, label %220

220:                                              ; preds = %218
  %221 = sext i32 %22 to i64
  %222 = zext i32 %13 to i64
  %223 = call i64 @gcd(i64 noundef %221, i64 noundef %222)
  %224 = zext i32 %13 to i64
  %.not247 = icmp eq i64 %223, %224
  br i1 %.not247, label %225, label %243

225:                                              ; preds = %220
  %226 = zext i32 %12 to i64
  %227 = zext i32 %13 to i64
  %228 = call i64 @gcd(i64 noundef %226, i64 noundef %227)
  %229 = zext i32 %13 to i64
  %.not248 = icmp eq i64 %228, %229
  br i1 %.not248, label %230, label %243

230:                                              ; preds = %225
  %231 = urem i32 %22, %6
  %232 = urem i32 %12, %6
  %233 = icmp ne i32 %231, %232
  %234 = udiv i32 %22, %13
  %235 = urem i32 %234, %6
  %236 = udiv i32 %12, %13
  %237 = urem i32 %236, %6
  %238 = icmp eq i32 %235, %237
  %239 = xor i1 %233, %238
  br i1 %239, label %243, label %240

240:                                              ; preds = %230
  %241 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 11, i32 noundef %.01) #6
  %puts250 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.11, i64 0, i64 0))
  %242 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

243:                                              ; preds = %230, %225, %220, %218, %214
  %244 = sext i32 %40 to i64
  %245 = zext i32 %6 to i64
  %246 = call i64 @gcd(i64 noundef %244, i64 noundef %245)
  %.not251 = icmp eq i64 %246, 1
  br i1 %.not251, label %247, label %272

247:                                              ; preds = %243
  %248 = icmp eq i32 %40, 0
  br i1 %248, label %272, label %249

249:                                              ; preds = %247
  %250 = zext i32 %11 to i64
  %251 = sext i32 %40 to i64
  %252 = call i64 @gcd(i64 noundef %250, i64 noundef %251)
  %253 = sext i32 %40 to i64
  %.not252 = icmp eq i64 %252, %253
  br i1 %.not252, label %254, label %272

254:                                              ; preds = %249
  %255 = sext i32 %31 to i64
  %256 = sext i32 %40 to i64
  %257 = call i64 @gcd(i64 noundef %255, i64 noundef %256)
  %258 = sext i32 %40 to i64
  %.not253 = icmp eq i64 %257, %258
  br i1 %.not253, label %259, label %272

259:                                              ; preds = %254
  %260 = urem i32 %11, %6
  %261 = urem i32 %31, %6
  %262 = icmp ne i32 %260, %261
  %263 = udiv i32 %11, %40
  %264 = urem i32 %263, %6
  %265 = sdiv i32 %31, %40
  %266 = urem i32 %265, %6
  %267 = icmp eq i32 %264, %266
  %268 = xor i1 %262, %267
  br i1 %268, label %272, label %269

269:                                              ; preds = %259
  %270 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 12, i32 noundef %.01) #6
  %puts255 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.12, i64 0, i64 0))
  %271 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

272:                                              ; preds = %259, %254, %249, %247, %243
  %273 = zext i32 %13 to i64
  %274 = zext i32 %6 to i64
  %275 = call i64 @gcd(i64 noundef %273, i64 noundef %274)
  %.not256 = icmp eq i64 %275, 1
  br i1 %.not256, label %276, label %301

276:                                              ; preds = %272
  %277 = icmp eq i32 %13, 0
  br i1 %277, label %301, label %278

278:                                              ; preds = %276
  %279 = zext i32 %11 to i64
  %280 = zext i32 %13 to i64
  %281 = call i64 @gcd(i64 noundef %279, i64 noundef %280)
  %282 = zext i32 %13 to i64
  %.not257 = icmp eq i64 %281, %282
  br i1 %.not257, label %283, label %301

283:                                              ; preds = %278
  %284 = sext i32 %31 to i64
  %285 = zext i32 %13 to i64
  %286 = call i64 @gcd(i64 noundef %284, i64 noundef %285)
  %287 = zext i32 %13 to i64
  %.not258 = icmp eq i64 %286, %287
  br i1 %.not258, label %288, label %301

288:                                              ; preds = %283
  %289 = urem i32 %11, %6
  %290 = urem i32 %31, %6
  %291 = icmp ne i32 %289, %290
  %292 = udiv i32 %11, %13
  %293 = urem i32 %292, %6
  %294 = udiv i32 %31, %13
  %295 = urem i32 %294, %6
  %296 = icmp eq i32 %293, %295
  %297 = xor i1 %291, %296
  br i1 %297, label %301, label %298

298:                                              ; preds = %288
  %299 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 13, i32 noundef %.01) #6
  %puts260 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.13, i64 0, i64 0))
  %300 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

301:                                              ; preds = %288, %283, %278, %276, %272
  %302 = sext i32 %40 to i64
  %303 = zext i32 %6 to i64
  %304 = call i64 @gcd(i64 noundef %302, i64 noundef %303)
  %.not261 = icmp eq i64 %304, 1
  br i1 %.not261, label %305, label %330

305:                                              ; preds = %301
  %306 = icmp eq i32 %40, 0
  br i1 %306, label %330, label %307

307:                                              ; preds = %305
  %308 = zext i32 %11 to i64
  %309 = sext i32 %40 to i64
  %310 = call i64 @gcd(i64 noundef %308, i64 noundef %309)
  %311 = sext i32 %40 to i64
  %.not262 = icmp eq i64 %310, %311
  br i1 %.not262, label %312, label %330

312:                                              ; preds = %307
  %313 = zext i32 %12 to i64
  %314 = sext i32 %40 to i64
  %315 = call i64 @gcd(i64 noundef %313, i64 noundef %314)
  %316 = sext i32 %40 to i64
  %.not263 = icmp eq i64 %315, %316
  br i1 %.not263, label %317, label %330

317:                                              ; preds = %312
  %318 = urem i32 %11, %6
  %319 = urem i32 %12, %6
  %320 = icmp ne i32 %318, %319
  %321 = udiv i32 %11, %40
  %322 = urem i32 %321, %6
  %323 = udiv i32 %12, %40
  %324 = urem i32 %323, %6
  %325 = icmp eq i32 %322, %324
  %326 = xor i1 %320, %325
  br i1 %326, label %330, label %327

327:                                              ; preds = %317
  %328 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 14, i32 noundef %.01) #6
  %puts265 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.14, i64 0, i64 0))
  %329 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

330:                                              ; preds = %317, %312, %307, %305, %301
  %331 = zext i32 %13 to i64
  %332 = zext i32 %6 to i64
  %333 = call i64 @gcd(i64 noundef %331, i64 noundef %332)
  %.not266 = icmp eq i64 %333, 1
  br i1 %.not266, label %334, label %359

334:                                              ; preds = %330
  %335 = icmp eq i32 %13, 0
  br i1 %335, label %359, label %336

336:                                              ; preds = %334
  %337 = zext i32 %11 to i64
  %338 = zext i32 %13 to i64
  %339 = call i64 @gcd(i64 noundef %337, i64 noundef %338)
  %340 = zext i32 %13 to i64
  %.not267 = icmp eq i64 %339, %340
  br i1 %.not267, label %341, label %359

341:                                              ; preds = %336
  %342 = zext i32 %12 to i64
  %343 = zext i32 %13 to i64
  %344 = call i64 @gcd(i64 noundef %342, i64 noundef %343)
  %345 = zext i32 %13 to i64
  %.not268 = icmp eq i64 %344, %345
  br i1 %.not268, label %346, label %359

346:                                              ; preds = %341
  %347 = urem i32 %11, %6
  %348 = urem i32 %12, %6
  %349 = icmp ne i32 %347, %348
  %350 = udiv i32 %11, %13
  %351 = urem i32 %350, %6
  %352 = udiv i32 %12, %13
  %353 = urem i32 %352, %6
  %354 = icmp eq i32 %351, %353
  %355 = xor i1 %349, %354
  br i1 %355, label %359, label %356

356:                                              ; preds = %346
  %357 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 15, i32 noundef %.01) #6
  %puts270 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.15, i64 0, i64 0))
  %358 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

359:                                              ; preds = %346, %341, %336, %334, %330
  %360 = icmp eq i32 %40, 0
  br i1 %360, label %391, label %361

361:                                              ; preds = %359
  %362 = sext i32 %22 to i64
  %363 = sext i32 %40 to i64
  %364 = call i64 @gcd(i64 noundef %362, i64 noundef %363)
  %365 = sext i32 %40 to i64
  %.not271 = icmp eq i64 %364, %365
  br i1 %.not271, label %366, label %391

366:                                              ; preds = %361
  %367 = sext i32 %31 to i64
  %368 = sext i32 %40 to i64
  %369 = call i64 @gcd(i64 noundef %367, i64 noundef %368)
  %370 = sext i32 %40 to i64
  %.not272 = icmp eq i64 %369, %370
  br i1 %.not272, label %371, label %391

371:                                              ; preds = %366
  %372 = zext i32 %6 to i64
  %373 = sext i32 %40 to i64
  %374 = call i64 @gcd(i64 noundef %372, i64 noundef %373)
  %375 = sext i32 %40 to i64
  %.not273 = icmp eq i64 %374, %375
  br i1 %.not273, label %376, label %391

376:                                              ; preds = %371
  %377 = urem i32 %22, %6
  %378 = urem i32 %31, %6
  %379 = icmp ne i32 %377, %378
  %380 = sdiv i32 %22, %40
  %381 = udiv i32 %6, %40
  %382 = urem i32 %380, %381
  %383 = sdiv i32 %31, %40
  %384 = udiv i32 %6, %40
  %385 = urem i32 %383, %384
  %386 = icmp eq i32 %382, %385
  %387 = xor i1 %379, %386
  br i1 %387, label %391, label %388

388:                                              ; preds = %376
  %389 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 16, i32 noundef %.01) #6
  %puts275 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.16, i64 0, i64 0))
  %390 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

391:                                              ; preds = %376, %371, %366, %361, %359
  %392 = icmp eq i32 %13, 0
  br i1 %392, label %423, label %393

393:                                              ; preds = %391
  %394 = sext i32 %22 to i64
  %395 = zext i32 %13 to i64
  %396 = call i64 @gcd(i64 noundef %394, i64 noundef %395)
  %397 = zext i32 %13 to i64
  %.not276 = icmp eq i64 %396, %397
  br i1 %.not276, label %398, label %423

398:                                              ; preds = %393
  %399 = sext i32 %31 to i64
  %400 = zext i32 %13 to i64
  %401 = call i64 @gcd(i64 noundef %399, i64 noundef %400)
  %402 = zext i32 %13 to i64
  %.not277 = icmp eq i64 %401, %402
  br i1 %.not277, label %403, label %423

403:                                              ; preds = %398
  %404 = zext i32 %6 to i64
  %405 = zext i32 %13 to i64
  %406 = call i64 @gcd(i64 noundef %404, i64 noundef %405)
  %407 = zext i32 %13 to i64
  %.not278 = icmp eq i64 %406, %407
  br i1 %.not278, label %408, label %423

408:                                              ; preds = %403
  %409 = urem i32 %22, %6
  %410 = urem i32 %31, %6
  %411 = icmp ne i32 %409, %410
  %412 = udiv i32 %22, %13
  %413 = udiv i32 %6, %13
  %414 = urem i32 %412, %413
  %415 = udiv i32 %31, %13
  %416 = udiv i32 %6, %13
  %417 = urem i32 %415, %416
  %418 = icmp eq i32 %414, %417
  %419 = xor i1 %411, %418
  br i1 %419, label %423, label %420

420:                                              ; preds = %408
  %421 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 17, i32 noundef %.01) #6
  %puts280 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.17, i64 0, i64 0))
  %422 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

423:                                              ; preds = %408, %403, %398, %393, %391
  %424 = icmp eq i32 %40, 0
  br i1 %424, label %455, label %425

425:                                              ; preds = %423
  %426 = sext i32 %22 to i64
  %427 = sext i32 %40 to i64
  %428 = call i64 @gcd(i64 noundef %426, i64 noundef %427)
  %429 = sext i32 %40 to i64
  %.not281 = icmp eq i64 %428, %429
  br i1 %.not281, label %430, label %455

430:                                              ; preds = %425
  %431 = zext i32 %12 to i64
  %432 = sext i32 %40 to i64
  %433 = call i64 @gcd(i64 noundef %431, i64 noundef %432)
  %434 = sext i32 %40 to i64
  %.not282 = icmp eq i64 %433, %434
  br i1 %.not282, label %435, label %455

435:                                              ; preds = %430
  %436 = zext i32 %6 to i64
  %437 = sext i32 %40 to i64
  %438 = call i64 @gcd(i64 noundef %436, i64 noundef %437)
  %439 = sext i32 %40 to i64
  %.not283 = icmp eq i64 %438, %439
  br i1 %.not283, label %440, label %455

440:                                              ; preds = %435
  %441 = urem i32 %22, %6
  %442 = urem i32 %12, %6
  %443 = icmp ne i32 %441, %442
  %444 = sdiv i32 %22, %40
  %445 = udiv i32 %6, %40
  %446 = urem i32 %444, %445
  %447 = udiv i32 %12, %40
  %448 = udiv i32 %6, %40
  %449 = urem i32 %447, %448
  %450 = icmp eq i32 %446, %449
  %451 = xor i1 %443, %450
  br i1 %451, label %455, label %452

452:                                              ; preds = %440
  %453 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 18, i32 noundef %.01) #6
  %puts285 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.18, i64 0, i64 0))
  %454 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

455:                                              ; preds = %440, %435, %430, %425, %423
  %456 = icmp eq i32 %13, 0
  br i1 %456, label %487, label %457

457:                                              ; preds = %455
  %458 = sext i32 %22 to i64
  %459 = zext i32 %13 to i64
  %460 = call i64 @gcd(i64 noundef %458, i64 noundef %459)
  %461 = zext i32 %13 to i64
  %.not286 = icmp eq i64 %460, %461
  br i1 %.not286, label %462, label %487

462:                                              ; preds = %457
  %463 = zext i32 %12 to i64
  %464 = zext i32 %13 to i64
  %465 = call i64 @gcd(i64 noundef %463, i64 noundef %464)
  %466 = zext i32 %13 to i64
  %.not287 = icmp eq i64 %465, %466
  br i1 %.not287, label %467, label %487

467:                                              ; preds = %462
  %468 = zext i32 %6 to i64
  %469 = zext i32 %13 to i64
  %470 = call i64 @gcd(i64 noundef %468, i64 noundef %469)
  %471 = zext i32 %13 to i64
  %.not288 = icmp eq i64 %470, %471
  br i1 %.not288, label %472, label %487

472:                                              ; preds = %467
  %473 = urem i32 %22, %6
  %474 = urem i32 %12, %6
  %475 = icmp ne i32 %473, %474
  %476 = udiv i32 %22, %13
  %477 = udiv i32 %6, %13
  %478 = urem i32 %476, %477
  %479 = udiv i32 %12, %13
  %480 = udiv i32 %6, %13
  %481 = urem i32 %479, %480
  %482 = icmp eq i32 %478, %481
  %483 = xor i1 %475, %482
  br i1 %483, label %487, label %484

484:                                              ; preds = %472
  %485 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 19, i32 noundef %.01) #6
  %puts290 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.19, i64 0, i64 0))
  %486 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

487:                                              ; preds = %472, %467, %462, %457, %455
  %488 = icmp eq i32 %40, 0
  br i1 %488, label %519, label %489

489:                                              ; preds = %487
  %490 = zext i32 %11 to i64
  %491 = sext i32 %40 to i64
  %492 = call i64 @gcd(i64 noundef %490, i64 noundef %491)
  %493 = sext i32 %40 to i64
  %.not291 = icmp eq i64 %492, %493
  br i1 %.not291, label %494, label %519

494:                                              ; preds = %489
  %495 = sext i32 %31 to i64
  %496 = sext i32 %40 to i64
  %497 = call i64 @gcd(i64 noundef %495, i64 noundef %496)
  %498 = sext i32 %40 to i64
  %.not292 = icmp eq i64 %497, %498
  br i1 %.not292, label %499, label %519

499:                                              ; preds = %494
  %500 = zext i32 %6 to i64
  %501 = sext i32 %40 to i64
  %502 = call i64 @gcd(i64 noundef %500, i64 noundef %501)
  %503 = sext i32 %40 to i64
  %.not293 = icmp eq i64 %502, %503
  br i1 %.not293, label %504, label %519

504:                                              ; preds = %499
  %505 = urem i32 %11, %6
  %506 = urem i32 %31, %6
  %507 = icmp ne i32 %505, %506
  %508 = udiv i32 %11, %40
  %509 = udiv i32 %6, %40
  %510 = urem i32 %508, %509
  %511 = sdiv i32 %31, %40
  %512 = udiv i32 %6, %40
  %513 = urem i32 %511, %512
  %514 = icmp eq i32 %510, %513
  %515 = xor i1 %507, %514
  br i1 %515, label %519, label %516

516:                                              ; preds = %504
  %517 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 20, i32 noundef %.01) #6
  %puts295 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.20, i64 0, i64 0))
  %518 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

519:                                              ; preds = %504, %499, %494, %489, %487
  %520 = icmp eq i32 %13, 0
  br i1 %520, label %551, label %521

521:                                              ; preds = %519
  %522 = zext i32 %11 to i64
  %523 = zext i32 %13 to i64
  %524 = call i64 @gcd(i64 noundef %522, i64 noundef %523)
  %525 = zext i32 %13 to i64
  %.not296 = icmp eq i64 %524, %525
  br i1 %.not296, label %526, label %551

526:                                              ; preds = %521
  %527 = sext i32 %31 to i64
  %528 = zext i32 %13 to i64
  %529 = call i64 @gcd(i64 noundef %527, i64 noundef %528)
  %530 = zext i32 %13 to i64
  %.not297 = icmp eq i64 %529, %530
  br i1 %.not297, label %531, label %551

531:                                              ; preds = %526
  %532 = zext i32 %6 to i64
  %533 = zext i32 %13 to i64
  %534 = call i64 @gcd(i64 noundef %532, i64 noundef %533)
  %535 = zext i32 %13 to i64
  %.not298 = icmp eq i64 %534, %535
  br i1 %.not298, label %536, label %551

536:                                              ; preds = %531
  %537 = urem i32 %11, %6
  %538 = urem i32 %31, %6
  %539 = icmp ne i32 %537, %538
  %540 = udiv i32 %11, %13
  %541 = udiv i32 %6, %13
  %542 = urem i32 %540, %541
  %543 = udiv i32 %31, %13
  %544 = udiv i32 %6, %13
  %545 = urem i32 %543, %544
  %546 = icmp eq i32 %542, %545
  %547 = xor i1 %539, %546
  br i1 %547, label %551, label %548

548:                                              ; preds = %536
  %549 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 21, i32 noundef %.01) #6
  %puts300 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.21, i64 0, i64 0))
  %550 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

551:                                              ; preds = %536, %531, %526, %521, %519
  %552 = icmp eq i32 %40, 0
  br i1 %552, label %583, label %553

553:                                              ; preds = %551
  %554 = zext i32 %11 to i64
  %555 = sext i32 %40 to i64
  %556 = call i64 @gcd(i64 noundef %554, i64 noundef %555)
  %557 = sext i32 %40 to i64
  %.not301 = icmp eq i64 %556, %557
  br i1 %.not301, label %558, label %583

558:                                              ; preds = %553
  %559 = zext i32 %12 to i64
  %560 = sext i32 %40 to i64
  %561 = call i64 @gcd(i64 noundef %559, i64 noundef %560)
  %562 = sext i32 %40 to i64
  %.not302 = icmp eq i64 %561, %562
  br i1 %.not302, label %563, label %583

563:                                              ; preds = %558
  %564 = zext i32 %6 to i64
  %565 = sext i32 %40 to i64
  %566 = call i64 @gcd(i64 noundef %564, i64 noundef %565)
  %567 = sext i32 %40 to i64
  %.not303 = icmp eq i64 %566, %567
  br i1 %.not303, label %568, label %583

568:                                              ; preds = %563
  %569 = urem i32 %11, %6
  %570 = urem i32 %12, %6
  %571 = icmp ne i32 %569, %570
  %572 = udiv i32 %11, %40
  %573 = udiv i32 %6, %40
  %574 = urem i32 %572, %573
  %575 = udiv i32 %12, %40
  %576 = udiv i32 %6, %40
  %577 = urem i32 %575, %576
  %578 = icmp eq i32 %574, %577
  %579 = xor i1 %571, %578
  br i1 %579, label %583, label %580

580:                                              ; preds = %568
  %581 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 22, i32 noundef %.01) #6
  %puts305 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.22, i64 0, i64 0))
  %582 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

583:                                              ; preds = %568, %563, %558, %553, %551
  %584 = icmp eq i32 %13, 0
  br i1 %584, label %615, label %585

585:                                              ; preds = %583
  %586 = zext i32 %11 to i64
  %587 = zext i32 %13 to i64
  %588 = call i64 @gcd(i64 noundef %586, i64 noundef %587)
  %589 = zext i32 %13 to i64
  %.not306 = icmp eq i64 %588, %589
  br i1 %.not306, label %590, label %615

590:                                              ; preds = %585
  %591 = zext i32 %12 to i64
  %592 = zext i32 %13 to i64
  %593 = call i64 @gcd(i64 noundef %591, i64 noundef %592)
  %594 = zext i32 %13 to i64
  %.not307 = icmp eq i64 %593, %594
  br i1 %.not307, label %595, label %615

595:                                              ; preds = %590
  %596 = zext i32 %6 to i64
  %597 = zext i32 %13 to i64
  %598 = call i64 @gcd(i64 noundef %596, i64 noundef %597)
  %599 = zext i32 %13 to i64
  %.not308 = icmp eq i64 %598, %599
  br i1 %.not308, label %600, label %615

600:                                              ; preds = %595
  %601 = urem i32 %11, %6
  %602 = urem i32 %12, %6
  %603 = icmp ne i32 %601, %602
  %604 = udiv i32 %11, %13
  %605 = udiv i32 %6, %13
  %606 = urem i32 %604, %605
  %607 = udiv i32 %12, %13
  %608 = udiv i32 %6, %13
  %609 = urem i32 %607, %608
  %610 = icmp eq i32 %606, %609
  %611 = xor i1 %603, %610
  br i1 %611, label %615, label %612

612:                                              ; preds = %600
  %613 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 23, i32 noundef %.01) #6
  %puts310 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.23, i64 0, i64 0))
  %614 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

615:                                              ; preds = %600, %595, %590, %585, %583
  %616 = icmp eq i32 %13, 0
  br i1 %616, label %633, label %617

617:                                              ; preds = %615
  %618 = zext i32 %6 to i64
  %619 = zext i32 %13 to i64
  %620 = call i64 @gcd(i64 noundef %618, i64 noundef %619)
  %621 = zext i32 %13 to i64
  %.not311 = icmp eq i64 %620, %621
  br i1 %.not311, label %622, label %633

622:                                              ; preds = %617
  %623 = urem i32 %22, %6
  %624 = urem i32 %31, %6
  %625 = icmp ne i32 %623, %624
  %626 = urem i32 %22, %13
  %627 = urem i32 %31, %13
  %628 = icmp eq i32 %626, %627
  %629 = xor i1 %625, %628
  br i1 %629, label %633, label %630

630:                                              ; preds = %622
  %631 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 25, i32 noundef %.01) #6
  %puts313 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.24, i64 0, i64 0))
  %632 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

633:                                              ; preds = %622, %617, %615
  %634 = icmp eq i32 %13, 0
  br i1 %634, label %651, label %635

635:                                              ; preds = %633
  %636 = zext i32 %6 to i64
  %637 = zext i32 %13 to i64
  %638 = call i64 @gcd(i64 noundef %636, i64 noundef %637)
  %639 = zext i32 %13 to i64
  %.not314 = icmp eq i64 %638, %639
  br i1 %.not314, label %640, label %651

640:                                              ; preds = %635
  %641 = urem i32 %22, %6
  %642 = urem i32 %12, %6
  %643 = icmp ne i32 %641, %642
  %644 = urem i32 %22, %13
  %645 = urem i32 %12, %13
  %646 = icmp eq i32 %644, %645
  %647 = xor i1 %643, %646
  br i1 %647, label %651, label %648

648:                                              ; preds = %640
  %649 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i32 noundef %.01) #6
  %puts316 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.25, i64 0, i64 0))
  %650 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

651:                                              ; preds = %640, %635, %633
  %652 = icmp eq i32 %13, 0
  br i1 %652, label %669, label %653

653:                                              ; preds = %651
  %654 = zext i32 %6 to i64
  %655 = zext i32 %13 to i64
  %656 = call i64 @gcd(i64 noundef %654, i64 noundef %655)
  %657 = zext i32 %13 to i64
  %.not317 = icmp eq i64 %656, %657
  br i1 %.not317, label %658, label %669

658:                                              ; preds = %653
  %659 = urem i32 %11, %6
  %660 = urem i32 %31, %6
  %661 = icmp ne i32 %659, %660
  %662 = urem i32 %11, %13
  %663 = urem i32 %31, %13
  %664 = icmp eq i32 %662, %663
  %665 = xor i1 %661, %664
  br i1 %665, label %669, label %666

666:                                              ; preds = %658
  %667 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 29, i32 noundef %.01) #6
  %puts319 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.26, i64 0, i64 0))
  %668 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

669:                                              ; preds = %658, %653, %651
  %670 = icmp eq i32 %13, 0
  br i1 %670, label %687, label %671

671:                                              ; preds = %669
  %672 = zext i32 %6 to i64
  %673 = zext i32 %13 to i64
  %674 = call i64 @gcd(i64 noundef %672, i64 noundef %673)
  %675 = zext i32 %13 to i64
  %.not320 = icmp eq i64 %674, %675
  br i1 %.not320, label %676, label %687

676:                                              ; preds = %671
  %677 = urem i32 %11, %6
  %678 = urem i32 %12, %6
  %679 = icmp ne i32 %677, %678
  %680 = urem i32 %11, %13
  %681 = urem i32 %12, %13
  %682 = icmp eq i32 %680, %681
  %683 = xor i1 %679, %682
  br i1 %683, label %687, label %684

684:                                              ; preds = %676
  %685 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i32 noundef %.01) #6
  %puts322 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.27, i64 0, i64 0))
  %686 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %22, i32 noundef %31, i32 noundef %40) #6
  br label %691

687:                                              ; preds = %676, %671, %669
  br label %688

688:                                              ; preds = %687, %8
  %.1 = phi i32 [ %9, %8 ], [ %.01, %687 ]
  %689 = add i32 %.1, 1
  br label %3, !llvm.loop !4

690:                                              ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  br label %691

691:                                              ; preds = %690, %684, %666, %648, %630, %612, %580, %548, %516, %484, %452, %420, %388, %356, %327, %298, %269, %240, %211, %182, %153, %124, %110, %89, %69, %61, %53, %45
  %.0 = phi i32 [ 1, %684 ], [ 1, %666 ], [ 1, %648 ], [ 1, %630 ], [ 1, %612 ], [ 1, %580 ], [ 1, %548 ], [ 1, %516 ], [ 1, %484 ], [ 1, %452 ], [ 1, %420 ], [ 1, %388 ], [ 1, %356 ], [ 1, %327 ], [ 1, %298 ], [ 1, %269 ], [ 1, %240 ], [ 1, %211 ], [ 1, %182 ], [ 1, %153 ], [ 1, %124 ], [ 1, %110 ], [ 1, %89 ], [ 1, %69 ], [ 1, %61 ], [ 1, %53 ], [ 1, %45 ], [ 0, %690 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
