; ModuleID = './arith-rand.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/arith-rand.c"
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

1:                                                ; preds = %187, %0
  %.0 = phi i64 [ 0, %0 ], [ %188, %187 ]
  %2 = icmp ult i64 %.0, 1000
  br i1 %2, label %3, label %189

3:                                                ; preds = %1
  %4 = call i64 @random_bitstring()
  %5 = call i64 @random_bitstring()
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %187

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
  br label %187

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
  br label %187

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
  br label %187

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
  br i1 %.not5, label %73, label %77

73:                                               ; preds = %71
  %74 = srem i32 %53, %54
  %75 = sub i32 %53, %74
  %76 = add nsw i32 %75, %60
  %.not6 = icmp eq i32 %76, %53
  br i1 %.not6, label %78, label %77

77:                                               ; preds = %73, %71
  call void @abort() #4
  br label %UnifiedUnreachableBlock

78:                                               ; preds = %73
  %79 = trunc i64 %4 to i32
  %80 = trunc i64 %5 to i32
  %81 = and i64 %5, 65535
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %187

84:                                               ; preds = %78
  %85 = trunc i64 %4 to i16
  %86 = trunc i64 %5 to i16
  %87 = urem i16 %85, %86
  %88 = zext i16 %87 to i32
  %89 = trunc i64 %5 to i32
  %90 = and i32 %89, 65535
  %.not7 = icmp ugt i32 %90, %88
  br i1 %.not7, label %91, label %101

91:                                               ; preds = %84
  %92 = trunc i64 %4 to i16
  %93 = trunc i64 %5 to i16
  %94 = udiv i16 %92, %93
  %95 = zext i16 %94 to i32
  %96 = and i32 %80, 65535
  %97 = mul nuw nsw i32 %96, %95
  %98 = zext i16 %87 to i32
  %99 = add nuw nsw i32 %97, %98
  %100 = and i32 %79, 65535
  %.not8 = icmp eq i32 %99, %100
  br i1 %.not8, label %102, label %101

101:                                              ; preds = %91, %84
  call void @abort() #4
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %91
  %103 = trunc i64 %4 to i16
  %104 = trunc i64 %5 to i16
  %105 = sext i16 %103 to i32
  %106 = sext i16 %104 to i32
  %107 = sdiv i32 %105, %106
  %108 = sext i16 %103 to i32
  %109 = sext i16 %104 to i32
  %110 = srem i32 %108, %109
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %115

113:                                              ; preds = %102
  %114 = sub nsw i32 0, %110
  br label %115

115:                                              ; preds = %113, %112
  %116 = phi i32 [ %110, %112 ], [ %114, %113 ]
  %117 = icmp sgt i16 %104, -1
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %121

119:                                              ; preds = %115
  %120 = sub i16 0, %104
  br label %121

121:                                              ; preds = %119, %118
  %122 = phi i16 [ %104, %118 ], [ %120, %119 ]
  %123 = zext i16 %122 to i32
  %.not9 = icmp slt i32 %116, %123
  br i1 %.not9, label %124, label %131

124:                                              ; preds = %121
  %sext = shl i32 %107, 16
  %125 = ashr exact i32 %sext, 16
  %126 = sext i16 %104 to i32
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %127, %110
  %sext10 = shl i32 %128, 16
  %129 = ashr exact i32 %sext10, 16
  %130 = sext i16 %103 to i32
  %.not11 = icmp eq i32 %129, %130
  br i1 %.not11, label %132, label %131

131:                                              ; preds = %124, %121
  call void @abort() #4
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %124
  %133 = trunc i64 %4 to i32
  %134 = trunc i64 %5 to i32
  %135 = and i64 %5, 255
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %187

138:                                              ; preds = %132
  %139 = trunc i64 %4 to i8
  %140 = trunc i64 %5 to i8
  %141 = urem i8 %139, %140
  %142 = zext i8 %141 to i32
  %143 = trunc i64 %5 to i32
  %144 = and i32 %143, 255
  %.not12 = icmp ugt i32 %144, %142
  br i1 %.not12, label %145, label %155

145:                                              ; preds = %138
  %146 = trunc i64 %4 to i8
  %147 = trunc i64 %5 to i8
  %148 = udiv i8 %146, %147
  %149 = zext i8 %148 to i32
  %150 = and i32 %134, 255
  %151 = mul nuw nsw i32 %150, %149
  %152 = zext i8 %141 to i32
  %153 = add nuw nsw i32 %151, %152
  %154 = and i32 %133, 255
  %.not13 = icmp eq i32 %153, %154
  br i1 %.not13, label %156, label %155

155:                                              ; preds = %145, %138
  call void @abort() #4
  br label %UnifiedUnreachableBlock

156:                                              ; preds = %145
  %157 = trunc i64 %4 to i8
  %158 = trunc i64 %5 to i8
  %159 = sext i8 %157 to i32
  %160 = sext i8 %158 to i32
  %161 = sdiv i32 %159, %160
  %162 = sext i8 %157 to i32
  %163 = sext i8 %158 to i32
  %164 = srem i32 %162, %163
  %165 = icmp sgt i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  br label %169

167:                                              ; preds = %156
  %168 = sub nsw i32 0, %164
  br label %169

169:                                              ; preds = %167, %166
  %170 = phi i32 [ %164, %166 ], [ %168, %167 ]
  %171 = icmp sgt i8 %158, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %175

173:                                              ; preds = %169
  %174 = sub i8 0, %158
  br label %175

175:                                              ; preds = %173, %172
  %176 = phi i8 [ %158, %172 ], [ %174, %173 ]
  %177 = zext i8 %176 to i32
  %.not14 = icmp slt i32 %170, %177
  br i1 %.not14, label %178, label %185

178:                                              ; preds = %175
  %sext15 = shl i32 %161, 24
  %179 = ashr exact i32 %sext15, 24
  %180 = sext i8 %158 to i32
  %181 = mul nsw i32 %179, %180
  %182 = add nsw i32 %181, %164
  %sext16 = shl i32 %182, 24
  %183 = ashr exact i32 %sext16, 24
  %184 = sext i8 %157 to i32
  %.not17 = icmp eq i32 %183, %184
  br i1 %.not17, label %186, label %185

185:                                              ; preds = %178, %175
  call void @abort() #4
  br label %UnifiedUnreachableBlock

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %137, %83, %58, %44, %19, %7
  %188 = add nuw nsw i64 %.0, 1
  br label %1, !llvm.loop !4

189:                                              ; preds = %1
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %189, %185, %155, %131, %101, %77, %51, %38, %14
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
