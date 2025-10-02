; ModuleID = './20020508-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020508-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i8 52, align 1
@s = dso_local global i16 -3532, align 2
@i = dso_local global i32 62004, align 4
@l = dso_local global i64 4063516280, align 8
@ll = dso_local global i64 1090791845765373680, align 8
@shift1 = dso_local global i32 4, align 4
@shift2 = dso_local global i32 60, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8, i8* @c, align 1
  %2 = sext i8 %1 to i32
  %3 = load i32, i32* @shift1, align 4
  %4 = ashr i32 %2, %3
  %5 = sext i8 %1 to i32
  %6 = sub i32 8, %3
  %7 = shl i32 %5, %6
  %8 = or i32 %4, %7
  %.not = icmp eq i32 %8, 835
  br i1 %.not, label %10, label %9

9:                                                ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %0
  %11 = load i8, i8* @c, align 1
  %12 = ashr i8 %11, 4
  %13 = sext i8 %12 to i32
  %14 = sext i8 %11 to i32
  %15 = shl nsw i32 %14, 4
  %16 = or i32 %15, %13
  %.not1 = icmp eq i32 %16, 835
  br i1 %.not1, label %18, label %17

17:                                               ; preds = %10
  call void @abort() #2
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %10
  %19 = load i16, i16* @s, align 2
  %20 = sext i16 %19 to i32
  %21 = load i32, i32* @shift1, align 4
  %22 = ashr i32 %20, %21
  %23 = sext i16 %19 to i32
  %24 = sub i32 16, %21
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %.not2 = icmp eq i32 %26, -221
  br i1 %.not2, label %28, label %27

27:                                               ; preds = %18
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %18
  %29 = load i16, i16* @s, align 2
  %30 = ashr i16 %29, 4
  %31 = sext i16 %30 to i32
  %32 = sext i16 %29 to i32
  %33 = shl nsw i32 %32, 12
  %34 = or i32 %33, %31
  %.not3 = icmp eq i32 %34, -221
  br i1 %.not3, label %36, label %35

35:                                               ; preds = %28
  call void @abort() #2
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %28
  %37 = load i32, i32* @i, align 4
  %38 = load i32, i32* @shift1, align 4
  %39 = ashr i32 %37, %38
  %40 = sub i32 32, %38
  %41 = shl i32 %37, %40
  %42 = or i32 %39, %41
  %.not4 = icmp eq i32 %42, 1073745699
  br i1 %.not4, label %44, label %43

43:                                               ; preds = %36
  call void @abort() #2
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %36
  %45 = load i32, i32* @i, align 4
  %46 = ashr i32 %45, 4
  %47 = shl i32 %45, 28
  %48 = or i32 %46, %47
  %.not5 = icmp eq i32 %48, 1073745699
  br i1 %.not5, label %50, label %49

49:                                               ; preds = %44
  call void @abort() #2
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %44
  %51 = load i64, i64* @l, align 8
  %52 = load i32, i32* @shift1, align 4
  %53 = zext i32 %52 to i64
  %54 = ashr i64 %51, %53
  %55 = sext i32 %52 to i64
  %56 = sub nsw i64 64, %55
  %57 = shl i64 %51, %56
  %58 = or i64 %54, %57
  %.not6 = icmp eq i64 %58, -9223372036600806041
  br i1 %.not6, label %60, label %59

59:                                               ; preds = %50
  call void @abort() #2
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %50
  %61 = load i64, i64* @l, align 8
  %62 = ashr i64 %61, 4
  %63 = shl i64 %61, 60
  %64 = or i64 %62, %63
  %.not7 = icmp eq i64 %64, -9223372036600806041
  br i1 %.not7, label %66, label %65

65:                                               ; preds = %60
  call void @abort() #2
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %60
  %67 = load i64, i64* @ll, align 8
  %68 = load i32, i32* @shift1, align 4
  %69 = zext i32 %68 to i64
  %70 = ashr i64 %67, %69
  %71 = sext i32 %68 to i64
  %72 = sub nsw i64 64, %71
  %73 = shl i64 %67, %72
  %74 = or i64 %70, %73
  %.not8 = icmp eq i64 %74, 68174490360335855
  br i1 %.not8, label %76, label %75

75:                                               ; preds = %66
  call void @abort() #2
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %66
  %77 = load i64, i64* @ll, align 8
  %78 = ashr i64 %77, 4
  %79 = shl i64 %77, 60
  %80 = or i64 %78, %79
  %.not9 = icmp eq i64 %80, 68174490360335855
  br i1 %.not9, label %82, label %81

81:                                               ; preds = %76
  call void @abort() #2
  br label %UnifiedUnreachableBlock

82:                                               ; preds = %76
  %83 = load i64, i64* @ll, align 8
  %84 = load i32, i32* @shift2, align 4
  %85 = zext i32 %84 to i64
  %86 = ashr i64 %83, %85
  %87 = sext i32 %84 to i64
  %88 = sub nsw i64 64, %87
  %89 = shl i64 %83, %88
  %90 = or i64 %86, %89
  %.not10 = icmp eq i64 %90, -994074541463572736
  br i1 %.not10, label %92, label %91

91:                                               ; preds = %82
  call void @abort() #2
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %82
  %93 = load i64, i64* @ll, align 8
  %94 = ashr i64 %93, 60
  %95 = shl i64 %93, 4
  %96 = or i64 %94, %95
  %.not11 = icmp eq i64 %96, -994074541463572736
  br i1 %.not11, label %98, label %97

97:                                               ; preds = %92
  call void @abort() #2
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %92
  %99 = load i8, i8* @c, align 1
  %100 = sext i8 %99 to i32
  %101 = load i32, i32* @shift1, align 4
  %102 = shl i32 %100, %101
  %103 = sext i8 %99 to i32
  %104 = sub i32 8, %101
  %105 = ashr i32 %103, %104
  %106 = or i32 %102, %105
  %.not12 = icmp eq i32 %106, 835
  br i1 %.not12, label %108, label %107

107:                                              ; preds = %98
  call void @abort() #2
  br label %UnifiedUnreachableBlock

108:                                              ; preds = %98
  %109 = load i8, i8* @c, align 1
  %110 = sext i8 %109 to i32
  %111 = shl nsw i32 %110, 4
  %112 = ashr i8 %109, 4
  %113 = sext i8 %112 to i32
  %114 = or i32 %111, %113
  %.not13 = icmp eq i32 %114, 835
  br i1 %.not13, label %116, label %115

115:                                              ; preds = %108
  call void @abort() #2
  br label %UnifiedUnreachableBlock

116:                                              ; preds = %108
  %117 = load i16, i16* @s, align 2
  %118 = sext i16 %117 to i32
  %119 = load i32, i32* @shift1, align 4
  %120 = shl i32 %118, %119
  %121 = sext i16 %117 to i32
  %122 = sub i32 16, %119
  %123 = ashr i32 %121, %122
  %124 = or i32 %120, %123
  %.not14 = icmp eq i32 %124, -1
  br i1 %.not14, label %126, label %125

125:                                              ; preds = %116
  call void @abort() #2
  br label %UnifiedUnreachableBlock

126:                                              ; preds = %116
  %127 = load i16, i16* @s, align 2
  %128 = sext i16 %127 to i32
  %129 = shl nsw i32 %128, 4
  %130 = ashr i16 %127, 12
  %131 = sext i16 %130 to i32
  %132 = or i32 %129, %131
  %.not15 = icmp eq i32 %132, -1
  br i1 %.not15, label %134, label %133

133:                                              ; preds = %126
  call void @abort() #2
  br label %UnifiedUnreachableBlock

134:                                              ; preds = %126
  %135 = load i32, i32* @i, align 4
  %136 = load i32, i32* @shift1, align 4
  %137 = shl i32 %135, %136
  %138 = sub i32 32, %136
  %139 = ashr i32 %135, %138
  %140 = or i32 %137, %139
  %.not16 = icmp eq i32 %140, 992064
  br i1 %.not16, label %142, label %141

141:                                              ; preds = %134
  call void @abort() #2
  br label %UnifiedUnreachableBlock

142:                                              ; preds = %134
  %143 = load i32, i32* @i, align 4
  %144 = shl i32 %143, 4
  %145 = ashr i32 %143, 28
  %146 = or i32 %144, %145
  %.not17 = icmp eq i32 %146, 992064
  br i1 %.not17, label %148, label %147

147:                                              ; preds = %142
  call void @abort() #2
  br label %UnifiedUnreachableBlock

148:                                              ; preds = %142
  %149 = load i64, i64* @l, align 8
  %150 = load i32, i32* @shift1, align 4
  %151 = zext i32 %150 to i64
  %152 = shl i64 %149, %151
  %153 = sext i32 %150 to i64
  %154 = sub nsw i64 64, %153
  %155 = ashr i64 %149, %154
  %156 = or i64 %152, %155
  %.not18 = icmp eq i64 %156, 65016260480
  br i1 %.not18, label %158, label %157

157:                                              ; preds = %148
  call void @abort() #2
  br label %UnifiedUnreachableBlock

158:                                              ; preds = %148
  %159 = load i64, i64* @l, align 8
  %160 = shl i64 %159, 4
  %161 = ashr i64 %159, 60
  %162 = or i64 %160, %161
  %.not19 = icmp eq i64 %162, 65016260480
  br i1 %.not19, label %164, label %163

163:                                              ; preds = %158
  call void @abort() #2
  br label %UnifiedUnreachableBlock

164:                                              ; preds = %158
  %165 = load i64, i64* @ll, align 8
  %166 = load i32, i32* @shift1, align 4
  %167 = zext i32 %166 to i64
  %168 = shl i64 %165, %167
  %169 = sext i32 %166 to i64
  %170 = sub nsw i64 64, %169
  %171 = ashr i64 %165, %170
  %172 = or i64 %168, %171
  %.not20 = icmp eq i64 %172, -994074541463572736
  br i1 %.not20, label %174, label %173

173:                                              ; preds = %164
  call void @abort() #2
  br label %UnifiedUnreachableBlock

174:                                              ; preds = %164
  %175 = load i64, i64* @ll, align 8
  %176 = shl i64 %175, 4
  %177 = ashr i64 %175, 60
  %178 = or i64 %176, %177
  %.not21 = icmp eq i64 %178, -994074541463572736
  br i1 %.not21, label %180, label %179

179:                                              ; preds = %174
  call void @abort() #2
  br label %UnifiedUnreachableBlock

180:                                              ; preds = %174
  %181 = load i64, i64* @ll, align 8
  %182 = load i32, i32* @shift2, align 4
  %183 = zext i32 %182 to i64
  %184 = shl i64 %181, %183
  %185 = sext i32 %182 to i64
  %186 = sub nsw i64 64, %185
  %187 = ashr i64 %181, %186
  %188 = or i64 %184, %187
  %.not22 = icmp eq i64 %188, 68174490360335855
  br i1 %.not22, label %190, label %189

189:                                              ; preds = %180
  call void @abort() #2
  br label %UnifiedUnreachableBlock

190:                                              ; preds = %180
  %191 = load i64, i64* @ll, align 8
  %192 = shl i64 %191, 60
  %193 = ashr i64 %191, 4
  %194 = or i64 %192, %193
  %.not23 = icmp eq i64 %194, 68174490360335855
  br i1 %.not23, label %196, label %195

195:                                              ; preds = %190
  call void @abort() #2
  br label %UnifiedUnreachableBlock

196:                                              ; preds = %190
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %196, %195, %189, %179, %173, %163, %157, %147, %141, %133, %125, %115, %107, %97, %91, %81, %75, %65, %59, %49, %43, %35, %27, %17, %9
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
