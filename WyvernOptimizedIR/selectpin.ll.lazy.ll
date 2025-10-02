; ModuleID = './selectpin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/selectpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@randVar = external dso_local global i32, align 4
@flips = external dso_local global i32, align 4
@flipp = external dso_local global i32, align 4
@attp = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @selectpin(%struct.cellbox* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 20
  %3 = load %struct.uncombox*, %struct.uncombox** %2, align 8
  %4 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 18
  br label %5

5:                                                ; preds = %17, %1
  %6 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 18
  %7 = load i32, i32* %6, align 4
  %8 = sitofp i32 %7 to double
  %9 = load i32, i32* @randVar, align 4
  %10 = mul nsw i32 %9, 1103515245
  %11 = add nsw i32 %10, 12345
  store i32 %11, i32* @randVar, align 4
  %12 = and i32 %11, 2147483647
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %13, 0x41DFFFFFFFC00000
  %15 = fmul double %14, %8
  %16 = fptosi double %15 to i32
  br label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, %16
  br i1 %19, label %5, label %20, !llvm.loop !4

20:                                               ; preds = %17
  %21 = add nsw i32 %16, 1
  br label %22

22:                                               ; preds = %27, %20
  %.04 = phi i32 [ %21, %20 ], [ %28, %27 ]
  %23 = sext i32 %.04 to i64
  %24 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %23, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = add nsw i32 %.04, -1
  br label %22, !llvm.loop !6

29:                                               ; preds = %22
  %30 = sext i32 %.04 to i64
  %31 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %30, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = sext i32 %.04 to i64
  %36 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %35, i32 4
  br label %37

37:                                               ; preds = %50, %34
  %38 = sext i32 %.04 to i64
  %39 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %38, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to double
  %42 = load i32, i32* @randVar, align 4
  %43 = mul nsw i32 %42, 1103515245
  %44 = add nsw i32 %43, 12345
  store i32 %44, i32* @randVar, align 4
  %45 = and i32 %44, 2147483647
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 0x41DFFFFFFFC00000
  %48 = fmul double %47, %41
  %49 = fptosi double %48 to i32
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %36, align 4
  %52 = icmp eq i32 %51, %49
  br i1 %52, label %37, label %53, !llvm.loop !7

53:                                               ; preds = %50
  %54 = add nsw i32 %49, 1
  br label %99

55:                                               ; preds = %29
  %56 = sext i32 %.04 to i64
  %57 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %56, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %88

60:                                               ; preds = %55
  %61 = sext i32 %.04 to i64
  %62 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %61, i32 4
  br label %63

63:                                               ; preds = %76, %60
  %64 = sext i32 %.04 to i64
  %65 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %64, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to double
  %68 = load i32, i32* @randVar, align 4
  %69 = mul nsw i32 %68, 1103515245
  %70 = add nsw i32 %69, 12345
  store i32 %70, i32* @randVar, align 4
  %71 = and i32 %70, 2147483647
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %72, 0x41DFFFFFFFC00000
  %74 = fmul double %73, %67
  %75 = fptosi double %74 to i32
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %62, align 4
  %78 = icmp eq i32 %77, %75
  br i1 %78, label %63, label %79, !llvm.loop !8

79:                                               ; preds = %76
  %80 = icmp eq i32 %75, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = sext i32 %.04 to i64
  %83 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %82, i32 5
  br label %87

84:                                               ; preds = %79
  %85 = sext i32 %.04 to i64
  %86 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %85, i32 6
  br label %87

87:                                               ; preds = %84, %81
  %.0.in = phi i32* [ %83, %81 ], [ %86, %84 ]
  br label %98

88:                                               ; preds = %55
  %89 = sext i32 %.04 to i64
  %90 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %89, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %95

94:                                               ; preds = %88
  br label %220

95:                                               ; preds = %93
  %96 = sext i32 %.04 to i64
  %97 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %96, i32 5
  br label %98

98:                                               ; preds = %95, %87
  %.1.in = phi i32* [ %.0.in, %87 ], [ %97, %95 ]
  %.1 = load i32, i32* %.1.in, align 4
  br label %99

99:                                               ; preds = %98, %53
  %.2 = phi i32 [ %54, %53 ], [ %.1, %98 ]
  %100 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 22
  %101 = load %struct.sidebox*, %struct.sidebox** %100, align 8
  %102 = sext i32 %.2 to i64
  %103 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %101, i64 %102, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %.2 to i64
  %106 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %101, i64 %105, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, %104
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %.04 to i64
  %111 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %110, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 19
  %114 = load %struct.contentbox*, %struct.contentbox** %113, align 8
  br label %115

115:                                              ; preds = %137, %99
  %.06 = phi i32 [ undef, %99 ], [ %.17, %137 ]
  %.01 = phi i32 [ 0, %99 ], [ %.12, %137 ]
  %116 = sitofp i32 %109 to double
  %117 = load i32, i32* @randVar, align 4
  %118 = mul nsw i32 %117, 1103515245
  %119 = add nsw i32 %118, 12345
  store i32 %119, i32* @randVar, align 4
  %120 = and i32 %119, 2147483647
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %121, 0x41DFFFFFFFC00000
  %123 = fmul double %122, %116
  %124 = fptosi double %123 to i32
  %125 = add nsw i32 %104, %124
  br label %126

126:                                              ; preds = %134, %115
  %.05 = phi i32 [ 0, %115 ], [ %131, %134 ]
  %.03 = phi i32 [ %125, %115 ], [ %135, %134 ]
  %.not = icmp sgt i32 %.03, %107
  br i1 %.not, label %.loopexit, label %127

127:                                              ; preds = %126
  %128 = sext i32 %.03 to i64
  %129 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %114, i64 %128, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %.05, %130
  %.not19 = icmp slt i32 %131, %112
  br i1 %.not19, label %133, label %132

132:                                              ; preds = %127
  br label %136

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133
  %135 = add nsw i32 %.03, 1
  br label %126, !llvm.loop !9

.loopexit:                                        ; preds = %126
  br label %136

136:                                              ; preds = %.loopexit, %132
  %.17 = phi i32 [ %.03, %132 ], [ %.06, %.loopexit ]
  %.12 = phi i32 [ 1, %132 ], [ %.01, %.loopexit ]
  br label %137

137:                                              ; preds = %136
  %.not14 = icmp eq i32 %.12, 0
  br i1 %.not14, label %115, label %138, !llvm.loop !10

138:                                              ; preds = %137
  %139 = sext i32 %.04 to i64
  %140 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %139, i32 1
  %141 = load i32, i32* %140, align 4
  %.not15 = icmp eq i32 %125, %141
  br i1 %.not15, label %152, label %142

142:                                              ; preds = %138
  %143 = call i32 @upin(%struct.cellbox* noundef %0, i32 noundef %.04, i32 noundef %112, i32 noundef %125, i32 noundef %.17) #2
  %.not18 = icmp eq i32 %143, 0
  br i1 %.not18, label %149, label %144

144:                                              ; preds = %142
  %145 = load i32, i32* @flips, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @flips, align 4
  %147 = load i32, i32* @flipp, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* @flipp, align 4
  br label %149

149:                                              ; preds = %144, %142
  %150 = load i32, i32* @attp, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* @attp, align 4
  br label %152

152:                                              ; preds = %149, %138
  %153 = sext i32 %.04 to i64
  %154 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %153, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %219

157:                                              ; preds = %152
  %158 = icmp sgt i32 %112, 1
  br i1 %158, label %159, label %219

159:                                              ; preds = %157
  br label %160

160:                                              ; preds = %170, %159
  %161 = sitofp i32 %112 to double
  %162 = load i32, i32* @randVar, align 4
  %163 = mul nsw i32 %162, 1103515245
  %164 = add nsw i32 %163, 12345
  store i32 %164, i32* @randVar, align 4
  %165 = and i32 %164, 2147483647
  %166 = sitofp i32 %165 to double
  %167 = fdiv double %166, 0x41DFFFFFFFC00000
  %168 = fmul double %167, %161
  %169 = fptosi double %168 to i32
  br label %170

170:                                              ; preds = %160
  %171 = icmp eq i32 %112, %169
  br i1 %171, label %160, label %172, !llvm.loop !11

172:                                              ; preds = %170
  br label %173

173:                                              ; preds = %187, %172
  %174 = sitofp i32 %112 to double
  %175 = load i32, i32* @randVar, align 4
  %176 = mul nsw i32 %175, 1103515245
  %177 = add nsw i32 %176, 12345
  store i32 %177, i32* @randVar, align 4
  %178 = and i32 %177, 2147483647
  %179 = sitofp i32 %178 to double
  %180 = fdiv double %179, 0x41DFFFFFFFC00000
  %181 = fmul double %180, %174
  %182 = fptosi double %181 to i32
  br label %183

183:                                              ; preds = %173
  %184 = icmp eq i32 %112, %182
  br i1 %184, label %187, label %185

185:                                              ; preds = %183
  %186 = icmp eq i32 %182, %169
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i1 [ true, %183 ], [ %186, %185 ]
  br i1 %188, label %173, label %189, !llvm.loop !12

189:                                              ; preds = %187
  %190 = add nsw i32 %.04, %169
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %191, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %.04, %182
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %195, i32 1
  %197 = load i32, i32* %196, align 4
  %.not16 = icmp eq i32 %193, %197
  br i1 %.not16, label %218, label %198

198:                                              ; preds = %189
  %199 = add nsw i32 %.04, %169
  %200 = add nsw i32 %.04, %182
  %201 = add nsw i32 %.04, %169
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %202, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %.04, %182
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %206, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @upinswap(%struct.cellbox* noundef %0, i32 noundef %199, i32 noundef %200, i32 noundef %204, i32 noundef %208) #2
  %.not17 = icmp eq i32 %209, 0
  br i1 %.not17, label %215, label %210

210:                                              ; preds = %198
  %211 = load i32, i32* @flips, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* @flips, align 4
  %213 = load i32, i32* @flipp, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* @flipp, align 4
  br label %215

215:                                              ; preds = %210, %198
  %216 = load i32, i32* @attp, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @attp, align 4
  br label %218

218:                                              ; preds = %215, %189
  br label %219

219:                                              ; preds = %218, %157, %152
  br label %220

220:                                              ; preds = %219, %94
  ret void
}

declare dso_local i32 @upin(%struct.cellbox* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @upinswap(%struct.cellbox* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
