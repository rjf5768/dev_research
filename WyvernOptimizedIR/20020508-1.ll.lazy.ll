; ModuleID = './20020508-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020508-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uc = dso_local global i8 52, align 1
@us = dso_local global i16 -3532, align 2
@ui = dso_local global i32 62004, align 4
@ul = dso_local global i64 4063516280, align 8
@ull = dso_local global i64 1090791845765373680, align 8
@shift1 = dso_local global i32 4, align 4
@shift2 = dso_local global i32 60, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8, i8* @uc, align 1
  %2 = zext i8 %1 to i32
  %3 = load i32, i32* @shift1, align 4
  %4 = lshr i32 %2, %3
  %5 = zext i8 %1 to i32
  %6 = sub i32 8, %3
  %7 = shl i32 %5, %6
  %8 = or i32 %4, %7
  %.not = icmp eq i32 %8, 835
  br i1 %.not, label %10, label %9

9:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %0
  %11 = load i8, i8* @uc, align 1
  %12 = lshr i8 %11, 4
  %13 = zext i8 %12 to i32
  %14 = zext i8 %11 to i32
  %15 = shl nuw nsw i32 %14, 4
  %16 = or i32 %15, %13
  %.not1 = icmp eq i32 %16, 835
  br i1 %.not1, label %18, label %17

17:                                               ; preds = %10
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %10
  %19 = load i16, i16* @us, align 2
  %20 = zext i16 %19 to i32
  %21 = load i32, i32* @shift1, align 4
  %22 = lshr i32 %20, %21
  %23 = zext i16 %19 to i32
  %24 = sub i32 16, %21
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %.not2 = icmp eq i32 %26, 253972259
  br i1 %.not2, label %28, label %27

27:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %18
  %29 = load i16, i16* @us, align 2
  %30 = lshr i16 %29, 4
  %31 = zext i16 %30 to i32
  %32 = zext i16 %29 to i32
  %33 = shl nuw nsw i32 %32, 12
  %34 = or i32 %33, %31
  %.not3 = icmp eq i32 %34, 253972259
  br i1 %.not3, label %36, label %35

35:                                               ; preds = %28
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %28
  %37 = load i32, i32* @ui, align 4
  %38 = load i32, i32* @shift1, align 4
  %39 = lshr i32 %37, %38
  %40 = sub i32 32, %38
  %41 = shl i32 %37, %40
  %42 = or i32 %39, %41
  %.not4 = icmp eq i32 %42, 1073745699
  br i1 %.not4, label %44, label %43

43:                                               ; preds = %36
  call void @abort() #3
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %36
  %45 = load i32, i32* @ui, align 4
  %.not5 = icmp eq i32 %45, 62004
  br i1 %.not5, label %47, label %46

46:                                               ; preds = %44
  call void @abort() #3
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %44
  %48 = load i64, i64* @ul, align 8
  %49 = load i32, i32* @shift1, align 4
  %50 = zext i32 %49 to i64
  %51 = lshr i64 %48, %50
  %52 = sext i32 %49 to i64
  %53 = sub nsw i64 64, %52
  %54 = shl i64 %48, %53
  %55 = or i64 %51, %54
  %.not6 = icmp eq i64 %55, -9223372036600806041
  br i1 %.not6, label %57, label %56

56:                                               ; preds = %47
  call void @abort() #3
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %47
  %58 = load i64, i64* @ul, align 8
  %.not7 = icmp eq i64 %58, 4063516280
  br i1 %.not7, label %60, label %59

59:                                               ; preds = %57
  call void @abort() #3
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %57
  %61 = load i64, i64* @ull, align 8
  %62 = load i32, i32* @shift1, align 4
  %63 = zext i32 %62 to i64
  %64 = lshr i64 %61, %63
  %65 = sext i32 %62 to i64
  %66 = sub nsw i64 64, %65
  %67 = shl i64 %61, %66
  %68 = or i64 %64, %67
  %.not8 = icmp eq i64 %68, 68174490360335855
  br i1 %.not8, label %70, label %69

69:                                               ; preds = %60
  call void @abort() #3
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %60
  %71 = load i64, i64* @ull, align 8
  %.not9 = icmp eq i64 %71, 1090791845765373680
  br i1 %.not9, label %73, label %72

72:                                               ; preds = %70
  call void @abort() #3
  br label %UnifiedUnreachableBlock

73:                                               ; preds = %70
  %74 = load i64, i64* @ull, align 8
  %75 = load i32, i32* @shift2, align 4
  %76 = zext i32 %75 to i64
  %77 = lshr i64 %74, %76
  %78 = sext i32 %75 to i64
  %79 = sub nsw i64 64, %78
  %80 = shl i64 %74, %79
  %81 = or i64 %77, %80
  %.not10 = icmp eq i64 %81, -994074541463572736
  br i1 %.not10, label %83, label %82

82:                                               ; preds = %73
  call void @abort() #3
  br label %UnifiedUnreachableBlock

83:                                               ; preds = %73
  %84 = load i64, i64* @ull, align 8
  %.not11 = icmp eq i64 %84, 1090791845765373680
  br i1 %.not11, label %86, label %85

85:                                               ; preds = %83
  call void @abort() #3
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %83
  %87 = load i8, i8* @uc, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* @shift1, align 4
  %90 = shl i32 %88, %89
  %91 = zext i8 %87 to i32
  %92 = sub i32 8, %89
  %93 = lshr i32 %91, %92
  %94 = or i32 %90, %93
  %.not12 = icmp eq i32 %94, 835
  br i1 %.not12, label %96, label %95

95:                                               ; preds = %86
  call void @abort() #3
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %86
  %97 = load i8, i8* @uc, align 1
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 4
  %100 = lshr i8 %97, 4
  %101 = zext i8 %100 to i32
  %102 = or i32 %99, %101
  %.not13 = icmp eq i32 %102, 835
  br i1 %.not13, label %104, label %103

103:                                              ; preds = %96
  call void @abort() #3
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %96
  %105 = load i16, i16* @us, align 2
  %106 = zext i16 %105 to i32
  %107 = load i32, i32* @shift1, align 4
  %108 = shl i32 %106, %107
  %109 = zext i16 %105 to i32
  %110 = sub i32 16, %107
  %111 = lshr i32 %109, %110
  %112 = or i32 %108, %111
  %.not14 = icmp eq i32 %112, 992079
  br i1 %.not14, label %114, label %113

113:                                              ; preds = %104
  call void @abort() #3
  br label %UnifiedUnreachableBlock

114:                                              ; preds = %104
  %115 = load i16, i16* @us, align 2
  %116 = zext i16 %115 to i32
  %117 = shl nuw nsw i32 %116, 4
  %118 = lshr i16 %115, 12
  %119 = zext i16 %118 to i32
  %120 = or i32 %117, %119
  %.not15 = icmp eq i32 %120, 992079
  br i1 %.not15, label %122, label %121

121:                                              ; preds = %114
  call void @abort() #3
  br label %UnifiedUnreachableBlock

122:                                              ; preds = %114
  %123 = load i32, i32* @ui, align 4
  %124 = load i32, i32* @shift1, align 4
  %125 = shl i32 %123, %124
  %126 = sub i32 32, %124
  %127 = lshr i32 %123, %126
  %128 = or i32 %125, %127
  %.not16 = icmp eq i32 %128, 992064
  br i1 %.not16, label %130, label %129

129:                                              ; preds = %122
  call void @abort() #3
  br label %UnifiedUnreachableBlock

130:                                              ; preds = %122
  %131 = load i32, i32* @ui, align 4
  %.not17 = icmp eq i32 %131, 62004
  br i1 %.not17, label %133, label %132

132:                                              ; preds = %130
  call void @abort() #3
  br label %UnifiedUnreachableBlock

133:                                              ; preds = %130
  %134 = load i64, i64* @ul, align 8
  %135 = load i32, i32* @shift1, align 4
  %136 = zext i32 %135 to i64
  %137 = shl i64 %134, %136
  %138 = sext i32 %135 to i64
  %139 = sub nsw i64 64, %138
  %140 = lshr i64 %134, %139
  %141 = or i64 %137, %140
  %.not18 = icmp eq i64 %141, 65016260480
  br i1 %.not18, label %143, label %142

142:                                              ; preds = %133
  call void @abort() #3
  br label %UnifiedUnreachableBlock

143:                                              ; preds = %133
  %144 = load i64, i64* @ul, align 8
  %.not19 = icmp eq i64 %144, 4063516280
  br i1 %.not19, label %146, label %145

145:                                              ; preds = %143
  call void @abort() #3
  br label %UnifiedUnreachableBlock

146:                                              ; preds = %143
  %147 = load i64, i64* @ull, align 8
  %148 = load i32, i32* @shift1, align 4
  %149 = zext i32 %148 to i64
  %150 = shl i64 %147, %149
  %151 = sext i32 %148 to i64
  %152 = sub nsw i64 64, %151
  %153 = lshr i64 %147, %152
  %154 = or i64 %150, %153
  %.not20 = icmp eq i64 %154, -994074541463572736
  br i1 %.not20, label %156, label %155

155:                                              ; preds = %146
  call void @abort() #3
  br label %UnifiedUnreachableBlock

156:                                              ; preds = %146
  %157 = load i64, i64* @ull, align 8
  %.not21 = icmp eq i64 %157, 1090791845765373680
  br i1 %.not21, label %159, label %158

158:                                              ; preds = %156
  call void @abort() #3
  br label %UnifiedUnreachableBlock

159:                                              ; preds = %156
  %160 = load i64, i64* @ull, align 8
  %161 = load i32, i32* @shift2, align 4
  %162 = zext i32 %161 to i64
  %163 = shl i64 %160, %162
  %164 = sext i32 %161 to i64
  %165 = sub nsw i64 64, %164
  %166 = lshr i64 %160, %165
  %167 = or i64 %163, %166
  %.not22 = icmp eq i64 %167, 68174490360335855
  br i1 %.not22, label %169, label %168

168:                                              ; preds = %159
  call void @abort() #3
  br label %UnifiedUnreachableBlock

169:                                              ; preds = %159
  %170 = load i64, i64* @ull, align 8
  %.not23 = icmp eq i64 %170, 1090791845765373680
  br i1 %.not23, label %172, label %171

171:                                              ; preds = %169
  call void @abort() #3
  br label %UnifiedUnreachableBlock

172:                                              ; preds = %169
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %172, %171, %168, %158, %155, %145, %142, %132, %129, %121, %113, %103, %95, %85, %82, %72, %69, %59, %56, %46, %43, %35, %27, %17, %9
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
