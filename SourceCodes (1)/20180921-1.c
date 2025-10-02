; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20180921-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20180921-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i32, i16, i32 }

@ss = dso_local global i8* null, align 8
@j = internal global i32 0, align 4
@i = dso_local global [6 x i32] zeroinitializer, align 16
@v = internal global i32 0, align 4
@n = internal global i32 0, align 4
@s = internal global i32 0, align 4
@__const.aw.ax = private unnamed_addr constant [5 x i32] [i32 9, i32 5, i32 5, i32 9, i32 5], align 16
@__const.aw.az = private unnamed_addr constant { i32, i8, i8, i32 } { i32 1, i8 3, i8 0, i32 0 }, align 4
@an = dso_local global i32 0, align 4
@__const.aw.ba = private unnamed_addr constant [23 x i32] [i32 5, i32 5, i32 9, i32 8, i32 1, i32 0, i32 5, i32 5, i32 9, i32 8, i32 1, i32 0, i32 5, i32 5, i32 9, i32 8, i32 1, i32 0, i32 5, i32 5, i32 9, i32 8, i32 1], align 16
@__const.aw.a = private unnamed_addr constant [7 x i32] [i32 8, i32 2, i32 8, i32 2, i32 8, i32 2, i32 8], align 16
@__const.aw.b = private unnamed_addr constant [31 x i32] [i32 1027239, i32 8, i32 1, i32 7, i32 9, i32 2, i32 9, i32 4, i32 4, i32 2, i32 8, i32 1, i32 0, i32 4, i32 4, i32 2, i32 4, i32 4, i32 2, i32 9, i32 2, i32 9, i32 8, i32 1, i32 7, i32 9, i32 2, i32 9, i32 4, i32 4, i32 2], align 16
@z = internal global i32 0, align 4
@e = internal global i32 0, align 4
@q = internal global i32 0, align 4
@aa = internal global i32 0, align 4
@__const.aw.bd = private unnamed_addr constant { i32, i8, i8, i32 } { i32 5, i8 0, i8 0, i32 0 }, align 4
@__const.aw.d = private unnamed_addr constant [20 x i32] [i32 1, i32 9, i32 7, i32 7, i32 8, i32 4, i32 4, i32 4, i32 4, i32 8, i32 1, i32 9, i32 7, i32 7, i32 8, i32 4, i32 4, i32 4, i32 4, i32 0], align 16
@h = internal global i32 5, align 4
@r = internal global i32 0, align 4
@x = internal global i32 0, align 4
@c = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@t = internal global i16 95, align 2
@am = internal global i16 0, align 2
@o = internal global i32 0, align 4
@__const.aw.bf = private unnamed_addr constant { i32, i8, i8, i32 } { i32 908, i8 5, i8 0, i32 3 }, align 4
@k = internal global i32 0, align 4
@ag = internal global i32 8, align 4
@ae = internal global i32 0, align 4
@aj = internal global i32 0, align 4
@u = internal global i32 0, align 4
@f = internal global i32 0, align 4
@ac = internal global i32 0, align 4
@w = internal global i32 0, align 4
@ak = internal global i32 0, align 4
@af = internal global i32 0, align 4
@ao = dso_local global i32 0, align 4
@y = internal global i32 0, align 4
@ah = internal global i32 0, align 4
@ai = internal global i32 0, align 4
@ap = dso_local global i32 0, align 4
@p = internal global i32 0, align 4
@ad = internal global i32 0, align 4
@l = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.aw.bn = private unnamed_addr constant [47 x i32] [i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2, i32 2, i32 5, i32 2], align 16
@__const.aw.a.2 = private unnamed_addr constant [4 x { i32, i8, i8, i32 }] [{ i32, i8, i8, i32 } { i32 -854941880, i8 2, i8 0, i32 8 }, { i32, i8, i8, i32 } { i32 4, i8 2, i8 0, i32 8 }, { i32, i8, i8, i32 } { i32 4, i8 4, i8 0, i32 2 }, { i32, i8, i8, i32 } { i32 8, i8 4, i8 0, i32 0 }], align 16
@__const.aw.b.3 = private unnamed_addr constant { i32, i8, i8, i32 } { i32 3075920, i8 0, i8 0, i32 0 }, align 4
@m = internal global [1 x i16] zeroinitializer, align 2
@ab = internal global i32 0, align 4
@__const.at.au = private unnamed_addr constant [2 x i32] [i32 2080555007, i32 0], align 4
@al = internal global i32 0, align 4
@g = internal global { i32, i8, i8, i32 } { i32 9, i8 5, i8 0, i32 0 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dummy(i8* noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** @ss, align 8
  %5 = load i32, i32* %2, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aq(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @j, align 4
  %4 = and i32 %3, 5
  %5 = load i32, i32* @j, align 4
  %6 = load i32, i32* @v, align 4
  %7 = and i32 %6, 5
  %8 = xor i32 %5, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* @i, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %4, %11
  store i32 %12, i32* @j, align 4
  %13 = load i32, i32* @j, align 4
  %14 = and i32 %13, 5
  %15 = load i32, i32* @j, align 4
  %16 = load i32, i32* @v, align 4
  %17 = xor i32 %15, %16
  %18 = and i32 %17, 5
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* @i, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %14, %21
  store i32 %22, i32* @j, align 4
  %23 = load i32, i32* @j, align 4
  %24 = and i32 %23, 4095
  %25 = load i32, i32* @j, align 4
  %26 = load i32, i32* @v, align 4
  %27 = xor i32 %25, %26
  %28 = and i32 %27, 5
  %29 = xor i32 %24, %28
  store i32 %29, i32* @j, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @as(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @n, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 0, i32* @s, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @aw(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.a, align 4
  %7 = alloca [23 x i32], align 16
  %8 = alloca [7 x i32], align 16
  %9 = alloca [31 x i32], align 16
  %10 = alloca %struct.a, align 4
  %11 = alloca %struct.a, align 4
  %12 = alloca [20 x i32], align 16
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca %struct.a, align 4
  %15 = alloca %struct.a, align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  %23 = alloca [1 x i32], align 4
  %24 = alloca [47 x i32], align 16
  %25 = alloca [4 x %struct.a], align 16
  %26 = alloca %struct.a, align 4
  store i32 %0, i32* %3, align 4
  %27 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([5 x i32]* @__const.aw.ax to i8*), i64 20, i1 false)
  store i32 3, i32* %5, align 4
  %28 = bitcast %struct.a* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast ({ i32, i8, i8, i32 }* @__const.aw.az to i8*), i64 12, i1 false)
  br label %29

29:                                               ; preds = %343, %306, %187, %1
  %30 = call i32 @at()
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  call void @as(i32 noundef %33)
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %35 = load i32, i32* %34, align 16
  store i32 %35, i32* @an, align 4
  %36 = bitcast [23 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 bitcast ([23 x i32]* @__const.aw.ba to i8*), i64 92, i1 false)
  %37 = bitcast [7 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %37, i8* align 16 bitcast ([7 x i32]* @__const.aw.a to i8*), i64 28, i1 false)
  %38 = bitcast [31 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 bitcast ([31 x i32]* @__const.aw.b to i8*), i64 124, i1 false)
  %39 = load i32, i32* @z, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %170, %41
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i32, i32* @e, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @q, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @e, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %2, align 4
  br label %347

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* @e, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @e, align 4
  br label %43, !llvm.loop !4

59:                                               ; preds = %43
  %60 = getelementptr inbounds %struct.a, %struct.a* %10, i32 0, i32 1
  %61 = load i16, i16* %60, align 4
  %62 = shl i16 %61, 7
  %63 = ashr i16 %62, 7
  %64 = sext i16 %63 to i32
  %65 = load i32, i32* getelementptr inbounds (%struct.a, %struct.a* bitcast ({ i32, i8, i8, i32 }* @g to %struct.a*), i32 0, i32 2), align 4
  %66 = icmp slt i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 7
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %59
  %72 = load i32, i32* @aa, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* @aa, align 4
  br label %74

74:                                               ; preds = %71, %59
  br label %75

75:                                               ; preds = %74, %29
  %76 = bitcast %struct.a* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 bitcast ({ i32, i8, i8, i32 }* @__const.aw.bd to i8*), i64 12, i1 false)
  %77 = bitcast [20 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %77, i8* align 16 bitcast ([20 x i32]* @__const.aw.d to i8*), i64 80, i1 false)
  %78 = load i32, i32* @h, align 4
  %79 = load i32, i32* @r, align 4
  %80 = load i16, i16* getelementptr inbounds (%struct.a, %struct.a* bitcast ({ i32, i8, i8, i32 }* @g to %struct.a*), i32 0, i32 1), align 4
  %81 = shl i16 %80, 7
  %82 = ashr i16 %81, 7
  %83 = sext i16 %82 to i32
  %84 = srem i32 %79, %83
  %85 = load i32, i32* @x, align 4
  %86 = xor i32 %84, %85
  %87 = or i32 %78, %86
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* @c, align 1
  %89 = bitcast { i64, i32 }* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 bitcast ({ i32, i8, i8, i32 }* @g to i8*), i64 12, i1 false)
  %90 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %91 = load i64, i64* %90, align 4
  %92 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %91, i32 %93)
  %95 = load i16, i16* @t, align 2
  %96 = sext i16 %95 to i32
  %97 = load i32, i32* @x, align 4
  %98 = or i32 %96, %97
  %99 = load i16, i16* @am, align 2
  %100 = sext i16 %99 to i32
  %101 = sub nsw i32 %100, %98
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* @am, align 2
  %103 = load i32, i32* @h, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %336

105:                                              ; preds = %75
  br label %106

106:                                              ; preds = %105, %191, %334
  %107 = load i32, i32* @o, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %278

112:                                              ; preds = %106
  %113 = load i32, i32* %3, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %247

115:                                              ; preds = %112
  %116 = bitcast %struct.a* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 bitcast ({ i32, i8, i8, i32 }* @__const.aw.bf to i8*), i64 12, i1 false)
  %117 = load i32, i32* @k, align 4
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* @ag, align 4
  %119 = load i32, i32* @ae, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* @aj, align 4
  %122 = add nsw i32 %121, 3
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* @u, align 4
  %124 = load i32, i32* @e, align 4
  %125 = shl i32 %123, %124
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* @f, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %115
  %129 = load i32, i32* @ac, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* @w, align 4
  store i32 %132, i32* @ak, align 4
  br label %133

133:                                              ; preds = %131, %128
  br label %134

134:                                              ; preds = %133, %115
  %135 = load i32, i32* @ag, align 4
  %136 = load i16, i16* @t, align 2
  %137 = sext i16 %136 to i32
  %138 = and i32 %135, %137
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* @ag, align 4
  %140 = load i32, i32* @ag, align 4
  %141 = load i32, i32* @af, align 4
  %142 = xor i32 %140, %141
  store i32 %142, i32* @af, align 4
  %143 = load i32, i32* @af, align 4
  %144 = icmp slt i32 8, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %335

146:                                              ; preds = %134
  %147 = load i32, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %188

150:                                              ; preds = %146
  %151 = load i32, i32* @s, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 6)
  br label %155

155:                                              ; preds = %153, %150
  %156 = load i32, i32* @k, align 4
  %157 = getelementptr inbounds %struct.a, %struct.a* %14, i32 0, i32 2
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* @f, align 4
  %159 = load i32, i32* %17, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* @w, align 4
  %161 = bitcast { i64, i32 }* %21 to i8*
  %162 = bitcast %struct.a* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 4 %162, i64 12, i1 false)
  %163 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %164 = load i64, i64* %163, align 4
  %165 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %164, i32 %166)
  %168 = load i32, i32* @w, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %155
  br label %42

171:                                              ; preds = %155
  %172 = load i32, i32* @r, align 4
  %173 = load i32, i32* @aa, align 4
  %174 = sub nsw i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* getelementptr inbounds (%struct.a, %struct.a* bitcast ({ i32, i8, i8, i32 }* @g to %struct.a*), i32 0, i32 0), align 4
  %178 = icmp ne i32 %177, 0
  br label %179

179:                                              ; preds = %176, %171
  %180 = phi i1 [ false, %171 ], [ %178, %176 ]
  %181 = zext i1 %180 to i32
  store i32 %181, i32* @ao, align 4
  %182 = load i32, i32* @y, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* @k, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @k, align 4
  br label %187

187:                                              ; preds = %184, %179
  br label %29

188:                                              ; preds = %275, %149
  %189 = load i32, i32* @aa, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %106

192:                                              ; preds = %188
  %193 = load i32, i32* @f, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load i32, i32* @k, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = bitcast { i64, i32 }* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %199, i8* align 4 bitcast ({ i32, i8, i8, i32 }* @g to i8*), i64 12, i1 false)
  %200 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %201 = load i64, i64* %200, align 4
  %202 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %201, i32 %203)
  br label %205

205:                                              ; preds = %198, %195
  br label %206

206:                                              ; preds = %205, %192
  %207 = load i32, i32* @ac, align 4
  %208 = load i32, i32* @k, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i16, i16* getelementptr inbounds (%struct.a, %struct.a* bitcast ({ i32, i8, i8, i32 }* @g to %struct.a*), i32 0, i32 1), align 4
  %211 = shl i16 %210, 7
  %212 = ashr i16 %211, 7
  %213 = sext i16 %212 to i32
  %214 = xor i32 %209, %213
  store i32 %214, i32* @aj, align 4
  %215 = load i32, i32* %19, align 4
  %216 = trunc i32 %215 to i16
  %217 = load i16, i16* getelementptr inbounds (%struct.a, %struct.a* bitcast ({ i32, i8, i8, i32 }* @g to %struct.a*), i32 0, i32 1), align 4
  %218 = and i16 %216, 511
  %219 = and i16 %217, -512
  %220 = or i16 %219, %218
  store i16 %220, i16* getelementptr inbounds (%struct.a, %struct.a* bitcast ({ i32, i8, i8, i32 }* @g to %struct.a*), i32 0, i32 1), align 4
  %221 = shl i16 %218, 7
  %222 = ashr i16 %221, 7
  %223 = sext i16 %222 to i32
  store i32 0, i32* @ah, align 4
  br label %224

224:                                              ; preds = %235, %206
  %225 = load i32, i32* @ah, align 4
  %226 = icmp slt i32 %225, 3
  br i1 %226, label %227, label %238

227:                                              ; preds = %224
  %228 = load i32, i32* @s, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i32, i32* @ah, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %232
  store i32 8, i32* %233, align 4
  br label %234

234:                                              ; preds = %230, %227
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* @ah, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* @ah, align 4
  br label %224, !llvm.loop !6

238:                                              ; preds = %224
  %239 = load i32, i32* %5, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* @ai, align 4
  %243 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load i32, i32* %20, align 4
  store i32 %245, i32* @u, align 4
  %246 = bitcast %struct.a* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast ({ i32, i8, i8, i32 }* @g to i8*), i8* align 4 %246, i64 12, i1 false)
  br label %256

247:                                              ; preds = %112
  br label %248

248:                                              ; preds = %249, %247
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* @ap, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @o, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* @o, align 4
  br label %248

256:                                              ; preds = %244
  %257 = bitcast [1 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %257, i8 0, i64 4, i1 false)
  br label %258

258:                                              ; preds = %264, %256
  %259 = load i32, i32* @p, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %258
  %262 = load i32, i32* @ad, align 4
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* @c, align 1
  br label %264

264:                                              ; preds = %261
  %265 = load i32, i32* @p, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* @p, align 4
  br label %258, !llvm.loop !7

267:                                              ; preds = %258
  %268 = load i32, i32* @l, align 4
  store i32 %268, i32* @ad, align 4
  %269 = getelementptr inbounds %struct.a, %struct.a* %11, i32 0, i32 1
  %270 = load i16, i16* %269, align 4
  %271 = shl i16 %270, 7
  %272 = ashr i16 %271, 7
  %273 = sext i16 %272 to i32
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %267
  %276 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %188

277:                                              ; preds = %267
  br label %278

278:                                              ; preds = %277, %106
  %279 = bitcast [47 x i32]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %279, i8* align 16 bitcast ([47 x i32]* @__const.aw.bn to i8*), i64 188, i1 false)
  %280 = bitcast [4 x %struct.a]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %280, i8* align 16 bitcast ([4 x { i32, i8, i8, i32 }]* @__const.aw.a.2 to i8*), i64 48, i1 false)
  %281 = bitcast %struct.a* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %281, i8* align 4 bitcast ({ i32, i8, i8, i32 }* @__const.aw.b.3 to i8*), i64 12, i1 false)
  %282 = load i32, i32* @f, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %278
  %285 = load i16, i16* @am, align 2
  %286 = sext i16 %285 to i32
  %287 = load i32, i32* @e, align 4
  %288 = add nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [1 x i16], [1 x i16]* @m, i64 0, i64 %289
  %291 = load i16, i16* %290, align 2
  %292 = sext i16 %291 to i32
  call void @aq(i32 noundef %292)
  %293 = load i32, i32* @j, align 4
  %294 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef %293)
  %295 = load i32, i32* @e, align 4
  %296 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef %295)
  %297 = load i32, i32* @ab, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* @ab, align 4
  br label %299

299:                                              ; preds = %284, %278
  %300 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %301 = load i32, i32* %300, align 16
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load i32, i32* @l, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  br label %29

307:                                              ; preds = %303
  %308 = load i32, i32* @f, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* @f, align 4
  br label %323

310:                                              ; preds = %299
  %311 = getelementptr inbounds %struct.a, %struct.a* %6, i32 0, i32 1
  %312 = load i16, i16* %311, align 4
  %313 = shl i16 %312, 7
  %314 = ashr i16 %313, 7
  %315 = sext i16 %314 to i32
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %310
  %318 = getelementptr inbounds [4 x %struct.a], [4 x %struct.a]* %25, i64 0, i64 0
  %319 = icmp ne %struct.a* %318, null
  br label %320

320:                                              ; preds = %317, %310
  %321 = phi i1 [ false, %310 ], [ %319, %317 ]
  %322 = zext i1 %321 to i32
  store i32 %322, i32* %5, align 4
  br label %323

323:                                              ; preds = %320, %307
  br label %324

324:                                              ; preds = %331, %323
  %325 = load i32, i32* @ac, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %324
  %328 = load i32, i32* @f, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [1 x i16], [1 x i16]* @m, i64 0, i64 %329
  store i16 0, i16* %330, align 2
  br label %331

331:                                              ; preds = %327
  %332 = load i32, i32* @ac, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* @ac, align 4
  br label %324, !llvm.loop !8

334:                                              ; preds = %324
  br label %106

335:                                              ; preds = %145
  br label %336

336:                                              ; preds = %335, %75
  store i32 9, i32* @h, align 4
  br label %337

337:                                              ; preds = %345, %336
  %338 = load i32, i32* @y, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %337
  %341 = load i32, i32* @f, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %340
  br label %29

344:                                              ; preds = %340
  br label %345

345:                                              ; preds = %344
  store i32 1, i32* @y, align 4
  br label %337, !llvm.loop !9

346:                                              ; preds = %337
  store i32 0, i32* %2, align 4
  br label %347

347:                                              ; preds = %346, %50
  %348 = load i32, i32* %2, align 4
  ret i32 %348
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @aw(i32 noundef 1)
  %3 = load i16, i16* getelementptr inbounds (%struct.a, %struct.a* bitcast ({ i32, i8, i8, i32 }* @g to %struct.a*), i32 0, i32 1), align 4
  %4 = shl i16 %3, 7
  %5 = ashr i16 %4, 7
  %6 = sext i16 %5 to i32
  %7 = icmp ne i32 %6, 5
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #4
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @at() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = bitcast [2 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast ([2 x i32]* @__const.at.au to i8*), i64 8, i1 false)
  br label %3

3:                                                ; preds = %29, %0
  %4 = load i32, i32* @al, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = load i32, i32* @r, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @x, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* @x, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* getelementptr inbounds (%struct.a, %struct.a* bitcast ({ i32, i8, i8, i32 }* @g to %struct.a*), i32 0, i32 2), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @l, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @l, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @j, align 4
  %20 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef %19)
  %21 = load i32, i32* @u, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @al, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @n, align 4
  store i32 %27, i32* @ae, align 4
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* @al, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @al, align 4
  br label %3, !llvm.loop !10

32:                                               ; preds = %3
  store i32 0, i32* @r, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
