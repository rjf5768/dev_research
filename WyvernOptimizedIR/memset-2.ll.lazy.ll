; ModuleID = './memset-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [16 x i8] }

@A = dso_local global i8 65, align 1
@u = internal global %union.anon zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @reset() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.0, 31
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [31 x i8], [31 x i8]* bitcast (%union.anon* @u to [31 x i8]*), i64 0, i64 %4
  store i8 97, i8* %5, align 1
  br label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %10, %3
  %.01 = phi i8* [ bitcast (%union.anon* @u to i8*), %3 ], [ %12, %10 ]
  %.0 = phi i32 [ 0, %3 ], [ %11, %10 ]
  %5 = icmp slt i32 %.0, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = load i8, i8* %.01, align 1
  %.not7 = icmp eq i8 %7, 97
  br i1 %.not7, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %4, !llvm.loop !6

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %21, %13
  %.12 = phi i8* [ %.01, %13 ], [ %23, %21 ]
  %.1 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %15 = icmp slt i32 %.1, %1
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = load i8, i8* %.12, align 1
  %18 = sext i8 %17 to i32
  %.not6 = icmp eq i32 %18, %2
  br i1 %.not6, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.1, 1
  %23 = getelementptr inbounds i8, i8* %.12, i64 1
  br label %14, !llvm.loop !7

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %31, %24
  %.23 = phi i8* [ %.12, %24 ], [ %33, %31 ]
  %.2 = phi i32 [ 0, %24 ], [ %32, %31 ]
  %26 = icmp ult i32 %.2, 8
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = load i8, i8* %.23, align 1
  %.not = icmp eq i8 %28, 97
  br i1 %.not, label %30, label %29

29:                                               ; preds = %27
  call void @abort() #5
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30
  %32 = add nuw nsw i32 %.2, 1
  %33 = getelementptr inbounds i8, i8* %.23, i64 1
  br label %25, !llvm.loop !8

34:                                               ; preds = %25
  ret void

UnifiedUnreachableBlock:                          ; preds = %29, %19, %8
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  br label %1

1:                                                ; preds = %17, %0
  %.0 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %2 = icmp ult i32 %.0, 8
  br i1 %2, label %3, label %19

3:                                                ; preds = %1
  call void @reset()
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %4
  store i8 0, i8* %5, align 1
  br i1 true, label %7, label %6

6:                                                ; preds = %3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %3
  call void @check(i32 noundef %.0, i32 noundef 1, i32 noundef 0)
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %8
  %10 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1) %9, i8 %10, i64 1, i1 false)
  br i1 true, label %12, label %11

11:                                               ; preds = %7
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  call void @check(i32 noundef %.0, i32 noundef 1, i32 noundef 65)
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %13
  store i8 66, i8* %14, align 1
  br i1 true, label %16, label %15

15:                                               ; preds = %12
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  call void @check(i32 noundef %.0, i32 noundef 1, i32 noundef 66)
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !9

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %38, %19
  %.1 = phi i32 [ 0, %19 ], [ %39, %38 ]
  %21 = icmp ult i32 %.1, 8
  br i1 %21, label %22, label %40

22:                                               ; preds = %20
  call void @reset()
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %23
  %25 = bitcast i8* %24 to i16*
  store i16 0, i16* %25, align 1
  br i1 true, label %27, label %26

26:                                               ; preds = %22
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %22
  call void @check(i32 noundef %.1, i32 noundef 2, i32 noundef 0)
  %28 = zext i32 %.1 to i64
  %29 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %28
  %30 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(2) %29, i8 %30, i64 2, i1 false)
  br i1 true, label %32, label %31

31:                                               ; preds = %27
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %27
  call void @check(i32 noundef %.1, i32 noundef 2, i32 noundef 65)
  %33 = zext i32 %.1 to i64
  %34 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %33
  %35 = bitcast i8* %34 to i16*
  store i16 16962, i16* %35, align 1
  br i1 true, label %37, label %36

36:                                               ; preds = %32
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %32
  call void @check(i32 noundef %.1, i32 noundef 2, i32 noundef 66)
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.1, 1
  br label %20, !llvm.loop !10

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %57, %40
  %.2 = phi i32 [ 0, %40 ], [ %58, %57 ]
  %42 = icmp ult i32 %.2, 8
  br i1 %42, label %43, label %59

43:                                               ; preds = %41
  call void @reset()
  %44 = zext i32 %.2 to i64
  %45 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %44
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %45, i8 0, i64 3, i1 false)
  br i1 true, label %47, label %46

46:                                               ; preds = %43
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %43
  call void @check(i32 noundef %.2, i32 noundef 3, i32 noundef 0)
  %48 = zext i32 %.2 to i64
  %49 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %48
  %50 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %49, i8 %50, i64 3, i1 false)
  br i1 true, label %52, label %51

51:                                               ; preds = %47
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %47
  call void @check(i32 noundef %.2, i32 noundef 3, i32 noundef 65)
  %53 = zext i32 %.2 to i64
  %54 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %53
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %54, i8 66, i64 3, i1 false)
  br i1 true, label %56, label %55

55:                                               ; preds = %52
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %52
  call void @check(i32 noundef %.2, i32 noundef 3, i32 noundef 66)
  br label %57

57:                                               ; preds = %56
  %58 = add nuw nsw i32 %.2, 1
  br label %41, !llvm.loop !11

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %78, %59
  %.3 = phi i32 [ 0, %59 ], [ %79, %78 ]
  %61 = icmp ult i32 %.3, 8
  br i1 %61, label %62, label %80

62:                                               ; preds = %60
  call void @reset()
  %63 = zext i32 %.3 to i64
  %64 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %63
  %65 = bitcast i8* %64 to i32*
  store i32 0, i32* %65, align 1
  br i1 true, label %67, label %66

66:                                               ; preds = %62
  br label %UnifiedUnreachableBlock

67:                                               ; preds = %62
  call void @check(i32 noundef %.3, i32 noundef 4, i32 noundef 0)
  %68 = zext i32 %.3 to i64
  %69 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %68
  %70 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(4) %69, i8 %70, i64 4, i1 false)
  br i1 true, label %72, label %71

71:                                               ; preds = %67
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %67
  call void @check(i32 noundef %.3, i32 noundef 4, i32 noundef 65)
  %73 = zext i32 %.3 to i64
  %74 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  store i32 1111638594, i32* %75, align 1
  br i1 true, label %77, label %76

76:                                               ; preds = %72
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %72
  call void @check(i32 noundef %.3, i32 noundef 4, i32 noundef 66)
  br label %78

78:                                               ; preds = %77
  %79 = add nuw nsw i32 %.3, 1
  br label %60, !llvm.loop !12

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %97, %80
  %.4 = phi i32 [ 0, %80 ], [ %98, %97 ]
  %82 = icmp ult i32 %.4, 8
  br i1 %82, label %83, label %99

83:                                               ; preds = %81
  call void @reset()
  %84 = zext i32 %.4 to i64
  %85 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %84
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %85, i8 0, i64 5, i1 false)
  br i1 true, label %87, label %86

86:                                               ; preds = %83
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %83
  call void @check(i32 noundef %.4, i32 noundef 5, i32 noundef 0)
  %88 = zext i32 %.4 to i64
  %89 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %88
  %90 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %89, i8 %90, i64 5, i1 false)
  br i1 true, label %92, label %91

91:                                               ; preds = %87
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %87
  call void @check(i32 noundef %.4, i32 noundef 5, i32 noundef 65)
  %93 = zext i32 %.4 to i64
  %94 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %93
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %94, i8 66, i64 5, i1 false)
  br i1 true, label %96, label %95

95:                                               ; preds = %92
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %92
  call void @check(i32 noundef %.4, i32 noundef 5, i32 noundef 66)
  br label %97

97:                                               ; preds = %96
  %98 = add nuw nsw i32 %.4, 1
  br label %81, !llvm.loop !13

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %116, %99
  %.5 = phi i32 [ 0, %99 ], [ %117, %116 ]
  %101 = icmp ult i32 %.5, 8
  br i1 %101, label %102, label %118

102:                                              ; preds = %100
  call void @reset()
  %103 = zext i32 %.5 to i64
  %104 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %103
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %104, i8 0, i64 6, i1 false)
  br i1 true, label %106, label %105

105:                                              ; preds = %102
  br label %UnifiedUnreachableBlock

106:                                              ; preds = %102
  call void @check(i32 noundef %.5, i32 noundef 6, i32 noundef 0)
  %107 = zext i32 %.5 to i64
  %108 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %107
  %109 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %108, i8 %109, i64 6, i1 false)
  br i1 true, label %111, label %110

110:                                              ; preds = %106
  br label %UnifiedUnreachableBlock

111:                                              ; preds = %106
  call void @check(i32 noundef %.5, i32 noundef 6, i32 noundef 65)
  %112 = zext i32 %.5 to i64
  %113 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %112
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %113, i8 66, i64 6, i1 false)
  br i1 true, label %115, label %114

114:                                              ; preds = %111
  br label %UnifiedUnreachableBlock

115:                                              ; preds = %111
  call void @check(i32 noundef %.5, i32 noundef 6, i32 noundef 66)
  br label %116

116:                                              ; preds = %115
  %117 = add nuw nsw i32 %.5, 1
  br label %100, !llvm.loop !14

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %135, %118
  %.6 = phi i32 [ 0, %118 ], [ %136, %135 ]
  %120 = icmp ult i32 %.6, 8
  br i1 %120, label %121, label %137

121:                                              ; preds = %119
  call void @reset()
  %122 = zext i32 %.6 to i64
  %123 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %122
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %123, i8 0, i64 7, i1 false)
  br i1 true, label %125, label %124

124:                                              ; preds = %121
  br label %UnifiedUnreachableBlock

125:                                              ; preds = %121
  call void @check(i32 noundef %.6, i32 noundef 7, i32 noundef 0)
  %126 = zext i32 %.6 to i64
  %127 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %126
  %128 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %127, i8 %128, i64 7, i1 false)
  br i1 true, label %130, label %129

129:                                              ; preds = %125
  br label %UnifiedUnreachableBlock

130:                                              ; preds = %125
  call void @check(i32 noundef %.6, i32 noundef 7, i32 noundef 65)
  %131 = zext i32 %.6 to i64
  %132 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %131
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %132, i8 66, i64 7, i1 false)
  br i1 true, label %134, label %133

133:                                              ; preds = %130
  br label %UnifiedUnreachableBlock

134:                                              ; preds = %130
  call void @check(i32 noundef %.6, i32 noundef 7, i32 noundef 66)
  br label %135

135:                                              ; preds = %134
  %136 = add nuw nsw i32 %.6, 1
  br label %119, !llvm.loop !15

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %156, %137
  %.7 = phi i32 [ 0, %137 ], [ %157, %156 ]
  %139 = icmp ult i32 %.7, 8
  br i1 %139, label %140, label %158

140:                                              ; preds = %138
  call void @reset()
  %141 = zext i32 %.7 to i64
  %142 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %141
  %143 = bitcast i8* %142 to i64*
  store i64 0, i64* %143, align 1
  br i1 true, label %145, label %144

144:                                              ; preds = %140
  br label %UnifiedUnreachableBlock

145:                                              ; preds = %140
  call void @check(i32 noundef %.7, i32 noundef 8, i32 noundef 0)
  %146 = zext i32 %.7 to i64
  %147 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %146
  %148 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(8) %147, i8 %148, i64 8, i1 false)
  br i1 true, label %150, label %149

149:                                              ; preds = %145
  br label %UnifiedUnreachableBlock

150:                                              ; preds = %145
  call void @check(i32 noundef %.7, i32 noundef 8, i32 noundef 65)
  %151 = zext i32 %.7 to i64
  %152 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %151
  %153 = bitcast i8* %152 to i64*
  store i64 4774451407313060418, i64* %153, align 1
  br i1 true, label %155, label %154

154:                                              ; preds = %150
  br label %UnifiedUnreachableBlock

155:                                              ; preds = %150
  call void @check(i32 noundef %.7, i32 noundef 8, i32 noundef 66)
  br label %156

156:                                              ; preds = %155
  %157 = add nuw nsw i32 %.7, 1
  br label %138, !llvm.loop !16

158:                                              ; preds = %138
  br label %159

159:                                              ; preds = %175, %158
  %.8 = phi i32 [ 0, %158 ], [ %176, %175 ]
  %160 = icmp ult i32 %.8, 8
  br i1 %160, label %161, label %177

161:                                              ; preds = %159
  call void @reset()
  %162 = zext i32 %.8 to i64
  %163 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %162
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %163, i8 0, i64 9, i1 false)
  br i1 true, label %165, label %164

164:                                              ; preds = %161
  br label %UnifiedUnreachableBlock

165:                                              ; preds = %161
  call void @check(i32 noundef %.8, i32 noundef 9, i32 noundef 0)
  %166 = zext i32 %.8 to i64
  %167 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %166
  %168 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %167, i8 %168, i64 9, i1 false)
  br i1 true, label %170, label %169

169:                                              ; preds = %165
  br label %UnifiedUnreachableBlock

170:                                              ; preds = %165
  call void @check(i32 noundef %.8, i32 noundef 9, i32 noundef 65)
  %171 = zext i32 %.8 to i64
  %172 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %171
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %172, i8 66, i64 9, i1 false)
  br i1 true, label %174, label %173

173:                                              ; preds = %170
  br label %UnifiedUnreachableBlock

174:                                              ; preds = %170
  call void @check(i32 noundef %.8, i32 noundef 9, i32 noundef 66)
  br label %175

175:                                              ; preds = %174
  %176 = add nuw nsw i32 %.8, 1
  br label %159, !llvm.loop !17

177:                                              ; preds = %159
  br label %178

178:                                              ; preds = %194, %177
  %.9 = phi i32 [ 0, %177 ], [ %195, %194 ]
  %179 = icmp ult i32 %.9, 8
  br i1 %179, label %180, label %196

180:                                              ; preds = %178
  call void @reset()
  %181 = zext i32 %.9 to i64
  %182 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %181
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %182, i8 0, i64 10, i1 false)
  br i1 true, label %184, label %183

183:                                              ; preds = %180
  br label %UnifiedUnreachableBlock

184:                                              ; preds = %180
  call void @check(i32 noundef %.9, i32 noundef 10, i32 noundef 0)
  %185 = zext i32 %.9 to i64
  %186 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %185
  %187 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %186, i8 %187, i64 10, i1 false)
  br i1 true, label %189, label %188

188:                                              ; preds = %184
  br label %UnifiedUnreachableBlock

189:                                              ; preds = %184
  call void @check(i32 noundef %.9, i32 noundef 10, i32 noundef 65)
  %190 = zext i32 %.9 to i64
  %191 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %190
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %191, i8 66, i64 10, i1 false)
  br i1 true, label %193, label %192

192:                                              ; preds = %189
  br label %UnifiedUnreachableBlock

193:                                              ; preds = %189
  call void @check(i32 noundef %.9, i32 noundef 10, i32 noundef 66)
  br label %194

194:                                              ; preds = %193
  %195 = add nuw nsw i32 %.9, 1
  br label %178, !llvm.loop !18

196:                                              ; preds = %178
  br label %197

197:                                              ; preds = %213, %196
  %.10 = phi i32 [ 0, %196 ], [ %214, %213 ]
  %198 = icmp ult i32 %.10, 8
  br i1 %198, label %199, label %215

199:                                              ; preds = %197
  call void @reset()
  %200 = zext i32 %.10 to i64
  %201 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %200
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %201, i8 0, i64 11, i1 false)
  br i1 true, label %203, label %202

202:                                              ; preds = %199
  br label %UnifiedUnreachableBlock

203:                                              ; preds = %199
  call void @check(i32 noundef %.10, i32 noundef 11, i32 noundef 0)
  %204 = zext i32 %.10 to i64
  %205 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %204
  %206 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %205, i8 %206, i64 11, i1 false)
  br i1 true, label %208, label %207

207:                                              ; preds = %203
  br label %UnifiedUnreachableBlock

208:                                              ; preds = %203
  call void @check(i32 noundef %.10, i32 noundef 11, i32 noundef 65)
  %209 = zext i32 %.10 to i64
  %210 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %209
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %210, i8 66, i64 11, i1 false)
  br i1 true, label %212, label %211

211:                                              ; preds = %208
  br label %UnifiedUnreachableBlock

212:                                              ; preds = %208
  call void @check(i32 noundef %.10, i32 noundef 11, i32 noundef 66)
  br label %213

213:                                              ; preds = %212
  %214 = add nuw nsw i32 %.10, 1
  br label %197, !llvm.loop !19

215:                                              ; preds = %197
  br label %216

216:                                              ; preds = %232, %215
  %.11 = phi i32 [ 0, %215 ], [ %233, %232 ]
  %217 = icmp ult i32 %.11, 8
  br i1 %217, label %218, label %234

218:                                              ; preds = %216
  call void @reset()
  %219 = zext i32 %.11 to i64
  %220 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %219
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %220, i8 0, i64 12, i1 false)
  br i1 true, label %222, label %221

221:                                              ; preds = %218
  br label %UnifiedUnreachableBlock

222:                                              ; preds = %218
  call void @check(i32 noundef %.11, i32 noundef 12, i32 noundef 0)
  %223 = zext i32 %.11 to i64
  %224 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %223
  %225 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %224, i8 %225, i64 12, i1 false)
  br i1 true, label %227, label %226

226:                                              ; preds = %222
  br label %UnifiedUnreachableBlock

227:                                              ; preds = %222
  call void @check(i32 noundef %.11, i32 noundef 12, i32 noundef 65)
  %228 = zext i32 %.11 to i64
  %229 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %228
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %229, i8 66, i64 12, i1 false)
  br i1 true, label %231, label %230

230:                                              ; preds = %227
  br label %UnifiedUnreachableBlock

231:                                              ; preds = %227
  call void @check(i32 noundef %.11, i32 noundef 12, i32 noundef 66)
  br label %232

232:                                              ; preds = %231
  %233 = add nuw nsw i32 %.11, 1
  br label %216, !llvm.loop !20

234:                                              ; preds = %216
  br label %235

235:                                              ; preds = %251, %234
  %.12 = phi i32 [ 0, %234 ], [ %252, %251 ]
  %236 = icmp ult i32 %.12, 8
  br i1 %236, label %237, label %253

237:                                              ; preds = %235
  call void @reset()
  %238 = zext i32 %.12 to i64
  %239 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %238
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %239, i8 0, i64 13, i1 false)
  br i1 true, label %241, label %240

240:                                              ; preds = %237
  br label %UnifiedUnreachableBlock

241:                                              ; preds = %237
  call void @check(i32 noundef %.12, i32 noundef 13, i32 noundef 0)
  %242 = zext i32 %.12 to i64
  %243 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %242
  %244 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %243, i8 %244, i64 13, i1 false)
  br i1 true, label %246, label %245

245:                                              ; preds = %241
  br label %UnifiedUnreachableBlock

246:                                              ; preds = %241
  call void @check(i32 noundef %.12, i32 noundef 13, i32 noundef 65)
  %247 = zext i32 %.12 to i64
  %248 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %247
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %248, i8 66, i64 13, i1 false)
  br i1 true, label %250, label %249

249:                                              ; preds = %246
  br label %UnifiedUnreachableBlock

250:                                              ; preds = %246
  call void @check(i32 noundef %.12, i32 noundef 13, i32 noundef 66)
  br label %251

251:                                              ; preds = %250
  %252 = add nuw nsw i32 %.12, 1
  br label %235, !llvm.loop !21

253:                                              ; preds = %235
  br label %254

254:                                              ; preds = %270, %253
  %.13 = phi i32 [ 0, %253 ], [ %271, %270 ]
  %255 = icmp ult i32 %.13, 8
  br i1 %255, label %256, label %272

256:                                              ; preds = %254
  call void @reset()
  %257 = zext i32 %.13 to i64
  %258 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %257
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %258, i8 0, i64 14, i1 false)
  br i1 true, label %260, label %259

259:                                              ; preds = %256
  br label %UnifiedUnreachableBlock

260:                                              ; preds = %256
  call void @check(i32 noundef %.13, i32 noundef 14, i32 noundef 0)
  %261 = zext i32 %.13 to i64
  %262 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %261
  %263 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %262, i8 %263, i64 14, i1 false)
  br i1 true, label %265, label %264

264:                                              ; preds = %260
  br label %UnifiedUnreachableBlock

265:                                              ; preds = %260
  call void @check(i32 noundef %.13, i32 noundef 14, i32 noundef 65)
  %266 = zext i32 %.13 to i64
  %267 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %266
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %267, i8 66, i64 14, i1 false)
  br i1 true, label %269, label %268

268:                                              ; preds = %265
  br label %UnifiedUnreachableBlock

269:                                              ; preds = %265
  call void @check(i32 noundef %.13, i32 noundef 14, i32 noundef 66)
  br label %270

270:                                              ; preds = %269
  %271 = add nuw nsw i32 %.13, 1
  br label %254, !llvm.loop !22

272:                                              ; preds = %254
  br label %273

273:                                              ; preds = %289, %272
  %.14 = phi i32 [ 0, %272 ], [ %290, %289 ]
  %274 = icmp ult i32 %.14, 8
  br i1 %274, label %275, label %291

275:                                              ; preds = %273
  call void @reset()
  %276 = zext i32 %.14 to i64
  %277 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %276
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(15) %277, i8 0, i64 15, i1 false)
  br i1 true, label %279, label %278

278:                                              ; preds = %275
  br label %UnifiedUnreachableBlock

279:                                              ; preds = %275
  call void @check(i32 noundef %.14, i32 noundef 15, i32 noundef 0)
  %280 = zext i32 %.14 to i64
  %281 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %280
  %282 = load i8, i8* @A, align 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(15) %281, i8 %282, i64 15, i1 false)
  br i1 true, label %284, label %283

283:                                              ; preds = %279
  br label %UnifiedUnreachableBlock

284:                                              ; preds = %279
  call void @check(i32 noundef %.14, i32 noundef 15, i32 noundef 65)
  %285 = zext i32 %.14 to i64
  %286 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %285
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(15) %286, i8 66, i64 15, i1 false)
  br i1 true, label %288, label %287

287:                                              ; preds = %284
  br label %UnifiedUnreachableBlock

288:                                              ; preds = %284
  call void @check(i32 noundef %.14, i32 noundef 15, i32 noundef 66)
  br label %289

289:                                              ; preds = %288
  %290 = add nuw nsw i32 %.14, 1
  br label %273, !llvm.loop !23

291:                                              ; preds = %273
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %291, %287, %283, %278, %268, %264, %259, %249, %245, %240, %230, %226, %221, %211, %207, %202, %192, %188, %183, %173, %169, %164, %154, %149, %144, %133, %129, %124, %114, %110, %105, %95, %91, %86, %76, %71, %66, %55, %51, %46, %36, %31, %26, %15, %11, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { noreturn nounwind }

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
