; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/neworient.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/neworient.c"
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @newOrient(%struct.cellbox* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cellbox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cellbox* %0, %struct.cellbox** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %11 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %151

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 4
  br i1 %17, label %18, label %84

18:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 3
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %24 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %23, i32 0, i32 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [9 x i32], [9 x i32]* %24, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19, !llvm.loop !4

37:                                               ; preds = %19
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %227

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %7, align 4
  %44 = sitofp i32 %43 to double
  %45 = load i32, i32* @randVar, align 4
  %46 = mul nsw i32 %45, 1103515245
  %47 = add nsw i32 %46, 12345
  store i32 %47, i32* @randVar, align 4
  %48 = and i32 %47, 2147483647
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 0x41DFFFFFFFC00000
  %51 = fmul double %44, %50
  %52 = fptosi double %51 to i32
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %42, label %59, !llvm.loop !6

59:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i32, i32* %8, align 4
  %62 = icmp sle i32 %61, 3
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %65 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %64, i32 0, i32 4
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %65, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %227

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %60, !llvm.loop !7

83:                                               ; preds = %60
  br label %150

84:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %85

85:                                               ; preds = %100, %84
  %86 = load i32, i32* %8, align 4
  %87 = icmp sle i32 %86, 7
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %90 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i32 0, i32 4
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [9 x i32], [9 x i32]* %90, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %88
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %85, !llvm.loop !8

103:                                              ; preds = %85
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 -1, i32* %3, align 4
  br label %227

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %120, %107
  %109 = load i32, i32* %7, align 4
  %110 = sitofp i32 %109 to double
  %111 = load i32, i32* @randVar, align 4
  %112 = mul nsw i32 %111, 1103515245
  %113 = add nsw i32 %112, 12345
  store i32 %113, i32* @randVar, align 4
  %114 = and i32 %113, 2147483647
  %115 = sitofp i32 %114 to double
  %116 = fdiv double %115, 0x41DFFFFFFFC00000
  %117 = fmul double %110, %116
  %118 = fptosi double %117 to i32
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %108
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %108, label %125, !llvm.loop !9

125:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %126

126:                                              ; preds = %146, %125
  %127 = load i32, i32* %8, align 4
  %128 = icmp sle i32 %127, 7
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %131 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %130, i32 0, i32 4
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [9 x i32], [9 x i32]* %131, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %3, align 4
  br label %227

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %129
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %126, !llvm.loop !10

149:                                              ; preds = %126
  br label %150

150:                                              ; preds = %149, %83
  br label %227

151:                                              ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %172, %151
  %153 = load i32, i32* %8, align 4
  %154 = icmp sle i32 %153, 7
  br i1 %154, label %155, label %175

155:                                              ; preds = %152
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %172

160:                                              ; preds = %155
  %161 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %162 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %161, i32 0, i32 4
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [9 x i32], [9 x i32]* %162, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %168, %160
  br label %172

172:                                              ; preds = %171, %159
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %152, !llvm.loop !11

175:                                              ; preds = %152
  %176 = load i32, i32* %7, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 -1, i32* %3, align 4
  br label %227

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %192, %179
  %181 = load i32, i32* %7, align 4
  %182 = sitofp i32 %181 to double
  %183 = load i32, i32* @randVar, align 4
  %184 = mul nsw i32 %183, 1103515245
  %185 = add nsw i32 %184, 12345
  store i32 %185, i32* @randVar, align 4
  %186 = and i32 %185, 2147483647
  %187 = sitofp i32 %186 to double
  %188 = fdiv double %187, 0x41DFFFFFFFC00000
  %189 = fmul double %182, %188
  %190 = fptosi double %189 to i32
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %180
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %180, label %197, !llvm.loop !12

197:                                              ; preds = %192
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %223, %197
  %199 = load i32, i32* %8, align 4
  %200 = icmp sle i32 %199, 7
  br i1 %200, label %201, label %226

201:                                              ; preds = %198
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %223

206:                                              ; preds = %201
  %207 = load %struct.cellbox*, %struct.cellbox** %4, align 8
  %208 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %207, i32 0, i32 4
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [9 x i32], [9 x i32]* %208, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %222

214:                                              ; preds = %206
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* %8, align 4
  store i32 %220, i32* %3, align 4
  br label %227

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %206
  br label %223

223:                                              ; preds = %222, %205
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  br label %198, !llvm.loop !13

226:                                              ; preds = %198
  br label %227

227:                                              ; preds = %40, %76, %106, %142, %178, %219, %226, %150
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
