; ModuleID = './arith-rand-ll.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/arith-rand-ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple_rand.seed = internal global i64 47114711, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i64 @simple_rand() #0 {
  %1 = load i64, i64* @simple_rand.seed, align 8
  %2 = mul i64 %1, 1103515245
  %3 = add i64 %2, 12345
  store i64 %3, i64* @simple_rand.seed, align 8
  %4 = lshr i64 %3, 8
  ret i64 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @random_bitstring() #1 {
  br label %1

1:                                                ; preds = %21, %0
  %.02 = phi i32 [ 0, %0 ], [ %6, %21 ]
  %.01 = phi i64 [ 0, %0 ], [ %.1, %21 ]
  %2 = call i64 @simple_rand()
  %3 = ashr i64 %2, 1
  %4 = srem i64 %3, 16
  %5 = trunc i64 %4 to i32
  %6 = add nsw i32 %.02, %5
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = and i64 %4, 4294967295
  %11 = shl i64 %.01, %10
  %12 = and i64 %2, 1
  %.not = icmp eq i64 %12, 0
  br i1 %.not, label %17, label %13

13:                                               ; preds = %9
  %notmask = shl nsw i32 -1, %5
  %14 = xor i32 %notmask, -1
  %15 = sext i32 %14 to i64
  %16 = or i64 %11, %15
  br label %17

17:                                               ; preds = %13, %9
  %.1 = phi i64 [ %16, %13 ], [ %11, %9 ]
  %18 = icmp ugt i32 %6, 70
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %22

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  br label %1

22:                                               ; preds = %19, %8
  %.0 = phi i64 [ %.01, %8 ], [ %.1, %19 ]
  ret i64 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  br label %1

1:                                                ; preds = %189, %0
  %.0 = phi i64 [ 0, %0 ], [ %190, %189 ]
  %2 = icmp ult i64 %.0, 10000
  br i1 %2, label %3, label %191

3:                                                ; preds = %1
  %4 = call i64 @random_bitstring()
  %5 = call i64 @random_bitstring()
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %189

8:                                                ; preds = %3
  br i1 false, label %14, label %9

9:                                                ; preds = %8
  %10 = urem i64 %4, %5
  %11 = urem i64 %4, %5
  %12 = sub i64 %4, %11
  %13 = add i64 %12, %10
  %.not = icmp eq i64 %13, %4
  br i1 %.not, label %15, label %14

14:                                               ; preds = %9, %8
  call void @abort() #4
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %9
  %.mask = and i64 %4, 9223372036854775807
  %16 = icmp eq i64 %.mask, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = icmp eq i64 %5, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %189

20:                                               ; preds = %17, %15
  %21 = srem i64 %4, %5
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %26

24:                                               ; preds = %20
  %25 = sub nsw i64 0, %21
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i64 [ %21, %23 ], [ %25, %24 ]
  %28 = icmp sgt i64 %5, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %32

30:                                               ; preds = %26
  %31 = sub nsw i64 0, %5
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i64 [ %5, %29 ], [ %31, %30 ]
  %.not1 = icmp ult i64 %27, %33
  br i1 %.not1, label %34, label %38

34:                                               ; preds = %32
  %35 = srem i64 %4, %5
  %36 = sub i64 %4, %35
  %37 = add nsw i64 %36, %21
  %.not2 = icmp eq i64 %37, %4
  br i1 %.not2, label %39, label %38

38:                                               ; preds = %34, %32
  call void @abort() #4
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39
  %41 = trunc i64 %4 to i32
  %42 = trunc i64 %5 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %189

45:                                               ; preds = %40
  br i1 false, label %51, label %46

46:                                               ; preds = %45
  %47 = urem i32 %41, %42
  %48 = urem i32 %41, %42
  %49 = sub i32 %41, %48
  %50 = add i32 %49, %47
  %.not3 = icmp eq i32 %50, %41
  br i1 %.not3, label %52, label %51

51:                                               ; preds = %46, %45
  call void @abort() #4
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %46
  %53 = trunc i64 %4 to i32
  %54 = trunc i64 %5 to i32
  %.mask4 = and i32 %53, 2147483647
  %55 = icmp eq i32 %.mask4, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = icmp eq i32 %54, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  br label %189

59:                                               ; preds = %56, %52
  %60 = srem i32 %53, %54
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %65

63:                                               ; preds = %59
  %64 = sub nsw i32 0, %60
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ %60, %62 ], [ %64, %63 ]
  %67 = icmp sgt i32 %54, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %71

69:                                               ; preds = %65
  %70 = sub nsw i32 0, %54
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ %54, %68 ], [ %70, %69 ]
  %.not5 = icmp ult i32 %66, %72
  br i1 %.not5, label %73, label %79

73:                                               ; preds = %71
  %74 = srem i32 %53, %54
  %75 = sub i32 %53, %74
  %76 = add nsw i32 %75, %60
  %.not6 = icmp eq i32 %76, %53
  br i1 %.not6, label %77, label %79

77:                                               ; preds = %73
  %.not8.unshifted = xor i32 %60, %53
  %.not8 = icmp sgt i32 %.not8.unshifted, -1
  br i1 %.not8, label %80, label %78

78:                                               ; preds = %77
  %.not20 = icmp eq i32 %60, 0
  br i1 %.not20, label %80, label %79

79:                                               ; preds = %78, %73, %71
  call void @abort() #4
  br label %UnifiedUnreachableBlock

80:                                               ; preds = %78, %77
  %81 = trunc i64 %4 to i32
  %82 = trunc i64 %5 to i32
  %83 = and i64 %5, 65535
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %189

86:                                               ; preds = %80
  %87 = trunc i64 %4 to i16
  %88 = trunc i64 %5 to i16
  %89 = urem i16 %87, %88
  %90 = zext i16 %89 to i32
  %91 = trunc i64 %5 to i32
  %92 = and i32 %91, 65535
  %.not9 = icmp ugt i32 %92, %90
  br i1 %.not9, label %93, label %103

93:                                               ; preds = %86
  %94 = trunc i64 %4 to i16
  %95 = trunc i64 %5 to i16
  %96 = udiv i16 %94, %95
  %97 = zext i16 %96 to i32
  %98 = and i32 %82, 65535
  %99 = mul nuw nsw i32 %98, %97
  %100 = zext i16 %89 to i32
  %101 = add nuw nsw i32 %99, %100
  %102 = and i32 %81, 65535
  %.not10 = icmp eq i32 %101, %102
  br i1 %.not10, label %104, label %103

103:                                              ; preds = %93, %86
  call void @abort() #4
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %93
  %105 = trunc i64 %4 to i16
  %106 = trunc i64 %5 to i16
  %107 = sext i16 %105 to i32
  %108 = sext i16 %106 to i32
  %109 = sdiv i32 %107, %108
  %110 = sext i16 %105 to i32
  %111 = sext i16 %106 to i32
  %112 = srem i32 %110, %111
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %117

115:                                              ; preds = %104
  %116 = sub nsw i32 0, %112
  br label %117

117:                                              ; preds = %115, %114
  %118 = phi i32 [ %112, %114 ], [ %116, %115 ]
  %119 = icmp sgt i16 %106, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %123

121:                                              ; preds = %117
  %122 = sub i16 0, %106
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi i16 [ %106, %120 ], [ %122, %121 ]
  %125 = zext i16 %124 to i32
  %.not11 = icmp slt i32 %118, %125
  br i1 %.not11, label %126, label %133

126:                                              ; preds = %123
  %sext = shl i32 %109, 16
  %127 = ashr exact i32 %sext, 16
  %128 = sext i16 %106 to i32
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %129, %112
  %sext12 = shl i32 %130, 16
  %131 = ashr exact i32 %sext12, 16
  %132 = sext i16 %105 to i32
  %.not13 = icmp eq i32 %131, %132
  br i1 %.not13, label %134, label %133

133:                                              ; preds = %126, %123
  call void @abort() #4
  br label %UnifiedUnreachableBlock

134:                                              ; preds = %126
  %135 = trunc i64 %4 to i32
  %136 = trunc i64 %5 to i32
  %137 = and i64 %5, 255
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %189

140:                                              ; preds = %134
  %141 = trunc i64 %4 to i8
  %142 = trunc i64 %5 to i8
  %143 = urem i8 %141, %142
  %144 = zext i8 %143 to i32
  %145 = trunc i64 %5 to i32
  %146 = and i32 %145, 255
  %.not14 = icmp ugt i32 %146, %144
  br i1 %.not14, label %147, label %157

147:                                              ; preds = %140
  %148 = trunc i64 %4 to i8
  %149 = trunc i64 %5 to i8
  %150 = udiv i8 %148, %149
  %151 = zext i8 %150 to i32
  %152 = and i32 %136, 255
  %153 = mul nuw nsw i32 %152, %151
  %154 = zext i8 %143 to i32
  %155 = add nuw nsw i32 %153, %154
  %156 = and i32 %135, 255
  %.not15 = icmp eq i32 %155, %156
  br i1 %.not15, label %158, label %157

157:                                              ; preds = %147, %140
  call void @abort() #4
  br label %UnifiedUnreachableBlock

158:                                              ; preds = %147
  %159 = trunc i64 %4 to i8
  %160 = trunc i64 %5 to i8
  %161 = sext i8 %159 to i32
  %162 = sext i8 %160 to i32
  %163 = sdiv i32 %161, %162
  %164 = sext i8 %159 to i32
  %165 = sext i8 %160 to i32
  %166 = srem i32 %164, %165
  %167 = icmp sgt i32 %166, -1
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %171

169:                                              ; preds = %158
  %170 = sub nsw i32 0, %166
  br label %171

171:                                              ; preds = %169, %168
  %172 = phi i32 [ %166, %168 ], [ %170, %169 ]
  %173 = icmp sgt i8 %160, -1
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %177

175:                                              ; preds = %171
  %176 = sub i8 0, %160
  br label %177

177:                                              ; preds = %175, %174
  %178 = phi i8 [ %160, %174 ], [ %176, %175 ]
  %179 = zext i8 %178 to i32
  %.not16 = icmp slt i32 %172, %179
  br i1 %.not16, label %180, label %187

180:                                              ; preds = %177
  %sext17 = shl i32 %163, 24
  %181 = ashr exact i32 %sext17, 24
  %182 = sext i8 %160 to i32
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %183, %166
  %sext18 = shl i32 %184, 24
  %185 = ashr exact i32 %sext18, 24
  %186 = sext i8 %159 to i32
  %.not19 = icmp eq i32 %185, %186
  br i1 %.not19, label %188, label %187

187:                                              ; preds = %180, %177
  call void @abort() #4
  br label %UnifiedUnreachableBlock

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %139, %85, %58, %44, %19, %7
  %190 = add nuw nsw i64 %.0, 1
  br label %1, !llvm.loop !4

191:                                              ; preds = %1
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %191, %187, %157, %133, %103, %79, %51, %38, %14
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
