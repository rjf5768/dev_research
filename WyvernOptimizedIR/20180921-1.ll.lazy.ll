; ModuleID = './20180921-1.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @dummy(i8* noundef %0, ...) #0 {
  store i8* %0, i8** @ss, align 8
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @aq(i32 noundef %0) #1 {
  %2 = load i32, i32* @j, align 4
  %3 = and i32 %2, 5
  %4 = load i32, i32* @v, align 4
  %5 = and i32 %4, 5
  %6 = xor i32 %2, %5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* @i, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = xor i32 %3, %9
  store i32 %10, i32* @j, align 4
  %11 = and i32 %10, 5
  %12 = load i32, i32* @v, align 4
  %13 = xor i32 %10, %12
  %14 = and i32 %13, 5
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* @i, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %11, %17
  store i32 %18, i32* @j, align 4
  %19 = and i32 %18, 4095
  %20 = load i32, i32* @v, align 4
  %21 = xor i32 %18, %20
  %22 = and i32 %21, 5
  %23 = xor i32 %19, %22
  store i32 %23, i32* @j, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @as(i32 noundef %0) #1 {
  %2 = load i32, i32* @n, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  store i32 0, i32* @s, align 4
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @aw(i32 noundef %0) #2 {
  %2 = alloca { i64, i32 }, align 8
  %3 = alloca %struct.a, align 4
  %4 = alloca { i64, i32 }, align 8
  %5 = alloca { i64, i32 }, align 8
  br label %6

6:                                                ; preds = %.backedge, %1
  %.01 = phi i32 [ 3, %1 ], [ %.01.be, %.backedge ]
  %7 = call i32 @at()
  call void @as(i32 noundef 5)
  store i32 5, i32* @an, align 4
  %8 = load i32, i32* @z, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %30, label %9

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %102, %9
  %.1 = phi i32 [ %.01, %9 ], [ %.3.ph, %102 ]
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* @e, align 4
  %.not21 = icmp eq i32 %12, 0
  br i1 %.not21, label %25, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @q, align 4
  %.not22 = icmp eq i32 %15, 0
  br i1 %.not22, label %21, label %16

16:                                               ; preds = %14
  %17 = load i32, i32* @e, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* @__const.aw.ax, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  br label %231

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* @e, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @e, align 4
  br label %11, !llvm.loop !4

25:                                               ; preds = %11
  br i1 true, label %26, label %29

26:                                               ; preds = %25
  %27 = load i32, i32* @aa, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @aa, align 4
  br label %29

29:                                               ; preds = %26, %25
  br label %30

30:                                               ; preds = %29, %6
  %.2 = phi i32 [ %.1, %29 ], [ %.01, %6 ]
  %31 = load i32, i32* @h, align 4
  %32 = load i32, i32* @r, align 4
  %33 = load i16, i16* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i32 }, { i32, i8, i8, i32 }* @g, i64 0, i32 1) to i16*), align 4
  %34 = shl i16 %33, 7
  %35 = ashr exact i16 %34, 7
  %36 = sext i16 %35 to i32
  %37 = srem i32 %32, %36
  %38 = load i32, i32* @x, align 4
  %39 = xor i32 %37, %38
  %40 = or i32 %31, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* @c, align 1
  %42 = bitcast { i64, i32 }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %42, i8* noundef nonnull align 4 dereferenceable(12) bitcast ({ i32, i8, i8, i32 }* @g to i8*), i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i64 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i64 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %46)
  %48 = load i16, i16* @t, align 2
  %49 = load i32, i32* @x, align 4
  %50 = load i16, i16* @am, align 2
  %51 = trunc i32 %49 to i16
  %52 = or i16 %48, %51
  %53 = sub i16 %50, %52
  store i16 %53, i16* @am, align 2
  %54 = load i32, i32* @h, align 4
  %.not7 = icmp eq i32 %54, 0
  br i1 %.not7, label %222, label %55

55:                                               ; preds = %30
  br label %.outer

.outer:                                           ; preds = %220, %55
  %.3.ph = phi i32 [ %.4, %220 ], [ %.2, %55 ]
  br label %56

56:                                               ; preds = %.outer, %119
  br i1 false, label %.loopexit, label %57

57:                                               ; preds = %56
  %.not14 = icmp eq i32 %0, 0
  br i1 %.not14, label %161, label %58

58:                                               ; preds = %57
  %59 = load i32, i32* @k, align 4
  %60 = load i32, i32* @ag, align 4
  %61 = load i32, i32* @ae, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @aj, align 4
  %64 = load i32, i32* @u, align 4
  %65 = load i32, i32* @e, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* @f, align 4
  %.not15 = icmp eq i32 %67, 0
  br i1 %.not15, label %73, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @ac, align 4
  %.not29 = icmp eq i32 %69, 0
  br i1 %.not29, label %72, label %70

70:                                               ; preds = %68
  %71 = load i32, i32* @w, align 4
  store i32 %71, i32* @ak, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72, %58
  %74 = load i32, i32* @ag, align 4
  %75 = load i16, i16* @t, align 2
  %76 = sext i16 %75 to i32
  %77 = and i32 %74, %76
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* @ag, align 4
  %79 = load i32, i32* @af, align 4
  %80 = xor i32 %79, %78
  store i32 %80, i32* @af, align 4
  %81 = icmp sgt i32 %80, 8
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %221

83:                                               ; preds = %73
  %.not16 = icmp eq i32 %62, 0
  br i1 %.not16, label %85, label %84

84:                                               ; preds = %83
  br label %117

85:                                               ; preds = %83
  %86 = load i32, i32* @s, align 4
  %.not17 = icmp eq i32 %86, 0
  br i1 %.not17, label %89, label %87

87:                                               ; preds = %85
  %88 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 6)
  br label %89

89:                                               ; preds = %87, %85
  %90 = load i32, i32* @k, align 4
  %91 = getelementptr inbounds %struct.a, %struct.a* %3, i64 0, i32 2
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @f, align 4
  %93 = sub nsw i32 %92, %59
  store i32 %93, i32* @w, align 4
  %94 = bitcast { i64, i32 }* %4 to i8*
  %95 = bitcast %struct.a* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %94, i8* noundef nonnull align 4 dereferenceable(12) %95, i64 12, i1 false)
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i64 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i64 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %97, i32 %99)
  %101 = load i32, i32* @w, align 4
  %.not18 = icmp eq i32 %101, 0
  br i1 %.not18, label %103, label %102

102:                                              ; preds = %89
  br label %10

103:                                              ; preds = %89
  %104 = load i32, i32* @r, align 4
  %105 = load i32, i32* @aa, align 4
  %.not19 = icmp eq i32 %104, %105
  br i1 %.not19, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* getelementptr inbounds ({ i32, i8, i8, i32 }, { i32, i8, i8, i32 }* @g, i64 0, i32 0), align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i1 [ false, %103 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* @ao, align 4
  %112 = load i32, i32* @y, align 4
  %.not20 = icmp eq i32 %112, 0
  br i1 %.not20, label %116, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @k, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @k, align 4
  br label %116

116:                                              ; preds = %113, %109
  br label %.backedge

.backedge:                                        ; preds = %116, %203, %227
  %.01.be = phi i32 [ %.5, %227 ], [ %.3.ph, %203 ], [ %.3.ph, %116 ]
  br label %6

117:                                              ; preds = %181, %84
  %118 = load i32, i32* @aa, align 4
  %.not23 = icmp eq i32 %118, 0
  br i1 %.not23, label %120, label %119

119:                                              ; preds = %117
  br label %56

120:                                              ; preds = %117
  %121 = load i32, i32* @f, align 4
  %.not24 = icmp eq i32 %121, 0
  br i1 %.not24, label %132, label %122

122:                                              ; preds = %120
  %123 = load i32, i32* @k, align 4
  %.not28 = icmp eq i32 %123, 0
  br i1 %.not28, label %131, label %124

124:                                              ; preds = %122
  %125 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %125, i8* noundef nonnull align 4 dereferenceable(12) bitcast ({ i32, i8, i8, i32 }* @g to i8*), i64 12, i1 false)
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %127, i32 %129)
  br label %131

131:                                              ; preds = %124, %122
  br label %132

132:                                              ; preds = %131, %120
  %133 = load i32, i32* @ac, align 4
  %134 = load i32, i32* @k, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i16, i16* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i32 }, { i32, i8, i8, i32 }* @g, i64 0, i32 1) to i16*), align 4
  %137 = shl i16 %136, 7
  %138 = ashr exact i16 %137, 7
  %139 = sext i16 %138 to i32
  %140 = xor i32 %135, %139
  store i32 %140, i32* @aj, align 4
  %141 = trunc i32 %63 to i16
  %142 = add i16 %141, 3
  %143 = load i16, i16* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i32 }, { i32, i8, i8, i32 }* @g, i64 0, i32 1) to i16*), align 4
  %144 = and i16 %142, 511
  %145 = and i16 %143, -512
  %146 = or i16 %145, %144
  store i16 %146, i16* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i32 }, { i32, i8, i8, i32 }* @g, i64 0, i32 1) to i16*), align 4
  br label %147

147:                                              ; preds = %153, %132
  %storemerge = phi i32 [ 0, %132 ], [ %155, %153 ]
  store i32 %storemerge, i32* @ah, align 4
  %148 = icmp slt i32 %storemerge, 3
  br i1 %148, label %149, label %156

149:                                              ; preds = %147
  %150 = load i32, i32* @s, align 4
  %.not27 = icmp eq i32 %150, 0
  br i1 %.not27, label %152, label %151

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %151, %149
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* @ah, align 4
  %155 = add nsw i32 %154, 1
  br label %147, !llvm.loop !6

156:                                              ; preds = %147
  %.not25 = icmp eq i32 %.3.ph, 0
  br i1 %.not25, label %157, label %160

157:                                              ; preds = %156
  %158 = load i32, i32* @ai, align 4
  %159 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef %158)
  br label %160

160:                                              ; preds = %157, %156
  store i32 %66, i32* @u, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) bitcast ({ i32, i8, i8, i32 }* @g to i8*), i8* noundef nonnull align 4 dereferenceable(12) bitcast ({ i32, i8, i8, i32 }* @__const.aw.bf to i8*), i64 12, i1 false)
  br label %170

161:                                              ; preds = %57
  br label %162

162:                                              ; preds = %163, %161
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* @ap, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [7 x i32], [7 x i32]* @__const.aw.a, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @o, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* @o, align 4
  br label %162

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %176, %170
  %172 = load i32, i32* @p, align 4
  %.not26 = icmp eq i32 %172, 0
  br i1 %.not26, label %179, label %173

173:                                              ; preds = %171
  %174 = load i32, i32* @ad, align 4
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* @c, align 1
  br label %176

176:                                              ; preds = %173
  %177 = load i32, i32* @p, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @p, align 4
  br label %171, !llvm.loop !7

179:                                              ; preds = %171
  %180 = load i32, i32* @l, align 4
  store i32 %180, i32* @ad, align 4
  br i1 false, label %181, label %182

181:                                              ; preds = %179
  br label %117

182:                                              ; preds = %179
  br label %183

.loopexit:                                        ; preds = %56
  br label %183

183:                                              ; preds = %.loopexit, %182
  %184 = load i32, i32* @f, align 4
  %.not11 = icmp eq i32 %184, 0
  br i1 %.not11, label %200, label %185

185:                                              ; preds = %183
  %186 = load i16, i16* @am, align 2
  %187 = sext i16 %186 to i32
  %188 = load i32, i32* @e, align 4
  %189 = add nsw i32 %188, %187
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [1 x i16], [1 x i16]* @m, i64 0, i64 %190
  %192 = load i16, i16* %191, align 2
  %193 = sext i16 %192 to i32
  call void @aq(i32 noundef %193)
  %194 = load i32, i32* @j, align 4
  %195 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef %194)
  %196 = load i32, i32* @e, align 4
  %197 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef %196)
  %198 = load i32, i32* @ab, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* @ab, align 4
  br label %200

200:                                              ; preds = %185, %183
  br i1 true, label %201, label %207

201:                                              ; preds = %200
  %202 = load i32, i32* @l, align 4
  %.not13 = icmp eq i32 %202, 0
  br i1 %.not13, label %204, label %203

203:                                              ; preds = %201
  br label %.backedge

204:                                              ; preds = %201
  %205 = load i32, i32* @f, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* @f, align 4
  br label %210

207:                                              ; preds = %200
  br i1 true, label %208, label %209

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208, %207
  br label %210

210:                                              ; preds = %209, %204
  %.4 = phi i32 [ %.3.ph, %204 ], [ 1, %209 ]
  br label %211

211:                                              ; preds = %217, %210
  %212 = load i32, i32* @ac, align 4
  %.not12 = icmp eq i32 %212, 0
  br i1 %.not12, label %220, label %213

213:                                              ; preds = %211
  %214 = load i32, i32* @f, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [1 x i16], [1 x i16]* @m, i64 0, i64 %215
  store i16 0, i16* %216, align 2
  br label %217

217:                                              ; preds = %213
  %218 = load i32, i32* @ac, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* @ac, align 4
  br label %211, !llvm.loop !8

220:                                              ; preds = %211
  br label %.outer

221:                                              ; preds = %82
  br label %222

222:                                              ; preds = %221, %30
  %.5 = phi i32 [ %.3.ph, %221 ], [ %.2, %30 ]
  store i32 9, i32* @h, align 4
  br label %223

223:                                              ; preds = %229, %222
  %224 = load i32, i32* @y, align 4
  %.not8 = icmp eq i32 %224, 0
  br i1 %.not8, label %230, label %225

225:                                              ; preds = %223
  %226 = load i32, i32* @f, align 4
  %.not9 = icmp eq i32 %226, 0
  br i1 %.not9, label %228, label %227

227:                                              ; preds = %225
  br label %.backedge

228:                                              ; preds = %225
  br label %229

229:                                              ; preds = %228
  store i32 1, i32* @y, align 4
  br label %223, !llvm.loop !9

230:                                              ; preds = %223
  br label %231

231:                                              ; preds = %230, %16
  %.0 = phi i32 [ %20, %16 ], [ 0, %230 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #5 {
  %1 = call i32 @aw(i32 noundef 1)
  %2 = load i16, i16* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i32 }, { i32, i8, i8, i32 }* @g, i64 0, i32 1) to i16*), align 4
  %.mask = and i16 %2, 511
  %.not = icmp eq i16 %.mask, 5
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #7
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #6

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal i32 @at() #2 {
  br label %1

1:                                                ; preds = %23, %0
  %2 = load i32, i32* @al, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %26, label %3

3:                                                ; preds = %1
  %4 = load i32, i32* @r, align 4
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %8, label %5

5:                                                ; preds = %3
  %6 = load i32, i32* @x, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* @x, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = load i32, i32* getelementptr inbounds ({ i32, i8, i8, i32 }, { i32, i8, i8, i32 }* @g, i64 0, i32 3), align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %13, label %10

10:                                               ; preds = %8
  %11 = load i32, i32* @l, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @l, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = load i32, i32* @j, align 4
  %15 = call i32 (i8*, ...) @dummy(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef %14)
  %16 = load i32, i32* @u, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @al, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* @__const.at.au, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @n, align 4
  store i32 %21, i32* @ae, align 4
  br label %22

22:                                               ; preds = %17, %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @al, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* @al, align 4
  br label %1, !llvm.loop !10

26:                                               ; preds = %1
  store i32 0, i32* @r, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }

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
