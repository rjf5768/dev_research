; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usoftnet.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usoftnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @usoftnet(%struct.cellbox* noundef %0) #0 {
  %2 = alloca %struct.cellbox*, align 8
  %3 = alloca %struct.dimbox*, align 8
  %4 = alloca %struct.netbox*, align 8
  %5 = alloca %struct.termnets*, align 8
  %6 = alloca %struct.uncombox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cellbox* %0, %struct.cellbox** %2, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i32 0, i32 20
  %13 = load %struct.uncombox*, %struct.uncombox** %12, align 8
  store %struct.uncombox* %13, %struct.uncombox** %6, align 8
  store i32 1, i32* %7, align 4
  br label %14

14:                                               ; preds = %245, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %17 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %16, i32 0, i32 18
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %248

20:                                               ; preds = %14
  %21 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %22 = load %struct.uncombox*, %struct.uncombox** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %22, i64 %24
  %26 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.termnets*, %struct.termnets** %21, i64 %28
  %30 = load %struct.termnets*, %struct.termnets** %29, align 8
  store %struct.termnets* %30, %struct.termnets** %5, align 8
  %31 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %32 = load %struct.termnets*, %struct.termnets** %5, align 8
  %33 = getelementptr inbounds %struct.termnets, %struct.termnets* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %31, i64 %35
  %37 = load %struct.dimbox*, %struct.dimbox** %36, align 8
  store %struct.dimbox* %37, %struct.dimbox** %3, align 8
  %38 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %39 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %20
  %43 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %44 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %20
  br label %245

48:                                               ; preds = %42
  %49 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %50 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %49, i32 0, i32 7
  store i32 0, i32* %50, align 8
  %51 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %52 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %51, i32 0, i32 0
  %53 = load %struct.netbox*, %struct.netbox** %52, align 8
  store %struct.netbox* %53, %struct.netbox** %4, align 8
  br label %54

54:                                               ; preds = %105, %48
  %55 = load %struct.netbox*, %struct.netbox** %4, align 8
  %56 = icmp eq %struct.netbox* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %109

58:                                               ; preds = %54
  %59 = load %struct.netbox*, %struct.netbox** %4, align 8
  %60 = getelementptr inbounds %struct.netbox, %struct.netbox* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %105

64:                                               ; preds = %58
  %65 = load %struct.netbox*, %struct.netbox** %4, align 8
  %66 = getelementptr inbounds %struct.netbox, %struct.netbox* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.netbox*, %struct.netbox** %4, align 8
  %71 = getelementptr inbounds %struct.netbox, %struct.netbox* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %74 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %76 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %75, i32 0, i32 3
  store i32 %72, i32* %76, align 8
  %77 = load %struct.netbox*, %struct.netbox** %4, align 8
  %78 = getelementptr inbounds %struct.netbox, %struct.netbox* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %81 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 4
  %82 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %83 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %82, i32 0, i32 8
  store i32 %79, i32* %83, align 4
  %84 = load %struct.netbox*, %struct.netbox** %4, align 8
  %85 = getelementptr inbounds %struct.netbox, %struct.netbox* %84, i32 0, i32 6
  store i32 0, i32* %85, align 4
  br label %101

86:                                               ; preds = %64
  %87 = load %struct.netbox*, %struct.netbox** %4, align 8
  %88 = getelementptr inbounds %struct.netbox, %struct.netbox* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %91 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %93 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %92, i32 0, i32 3
  store i32 %89, i32* %93, align 8
  %94 = load %struct.netbox*, %struct.netbox** %4, align 8
  %95 = getelementptr inbounds %struct.netbox, %struct.netbox* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %98 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %97, i32 0, i32 10
  store i32 %96, i32* %98, align 4
  %99 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %100 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %99, i32 0, i32 8
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %86, %69
  %102 = load %struct.netbox*, %struct.netbox** %4, align 8
  %103 = getelementptr inbounds %struct.netbox, %struct.netbox* %102, i32 0, i32 0
  %104 = load %struct.netbox*, %struct.netbox** %103, align 8
  store %struct.netbox* %104, %struct.netbox** %4, align 8
  br label %109

105:                                              ; preds = %63
  %106 = load %struct.netbox*, %struct.netbox** %4, align 8
  %107 = getelementptr inbounds %struct.netbox, %struct.netbox* %106, i32 0, i32 0
  %108 = load %struct.netbox*, %struct.netbox** %107, align 8
  store %struct.netbox* %108, %struct.netbox** %4, align 8
  br label %54

109:                                              ; preds = %101, %57
  br label %110

110:                                              ; preds = %183, %109
  %111 = load %struct.netbox*, %struct.netbox** %4, align 8
  %112 = icmp ne %struct.netbox* %111, null
  br i1 %112, label %113, label %187

113:                                              ; preds = %110
  %114 = load %struct.netbox*, %struct.netbox** %4, align 8
  %115 = getelementptr inbounds %struct.netbox, %struct.netbox* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %183

119:                                              ; preds = %113
  %120 = load %struct.netbox*, %struct.netbox** %4, align 8
  %121 = getelementptr inbounds %struct.netbox, %struct.netbox* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.netbox*, %struct.netbox** %4, align 8
  %126 = getelementptr inbounds %struct.netbox, %struct.netbox* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %9, align 4
  %128 = load %struct.netbox*, %struct.netbox** %4, align 8
  %129 = getelementptr inbounds %struct.netbox, %struct.netbox* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  %131 = load %struct.netbox*, %struct.netbox** %4, align 8
  %132 = getelementptr inbounds %struct.netbox, %struct.netbox* %131, i32 0, i32 6
  store i32 0, i32* %132, align 4
  br label %140

133:                                              ; preds = %119
  %134 = load %struct.netbox*, %struct.netbox** %4, align 8
  %135 = getelementptr inbounds %struct.netbox, %struct.netbox* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %9, align 4
  %137 = load %struct.netbox*, %struct.netbox** %4, align 8
  %138 = getelementptr inbounds %struct.netbox, %struct.netbox* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %133, %124
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %143 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %149 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  br label %161

150:                                              ; preds = %140
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %153 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %159 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %150
  br label %161

161:                                              ; preds = %160, %146
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %164 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %170 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 4
  br label %182

171:                                              ; preds = %161
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %174 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %173, i32 0, i32 10
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %172, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %180 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %179, i32 0, i32 10
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %177, %171
  br label %182

182:                                              ; preds = %181, %167
  br label %183

183:                                              ; preds = %182, %118
  %184 = load %struct.netbox*, %struct.netbox** %4, align 8
  %185 = getelementptr inbounds %struct.netbox, %struct.netbox* %184, i32 0, i32 0
  %186 = load %struct.netbox*, %struct.netbox** %185, align 8
  store %struct.netbox* %186, %struct.netbox** %4, align 8
  br label %110, !llvm.loop !4

187:                                              ; preds = %110
  %188 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %189 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %188, i32 0, i32 11
  %190 = load double, double* %189, align 8
  %191 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %192 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %195 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %193, %196
  %198 = sitofp i32 %197 to double
  %199 = fmul double %190, %198
  %200 = fptosi double %199 to i32
  %201 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %202 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %201, i32 0, i32 11
  %203 = load double, double* %202, align 8
  %204 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %205 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %208 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %206, %209
  %211 = sitofp i32 %210 to double
  %212 = fmul double %203, %211
  %213 = fptosi double %212 to i32
  %214 = sub nsw i32 %200, %213
  %215 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %216 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %215, i32 0, i32 12
  %217 = load double, double* %216, align 8
  %218 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %219 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %222 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %220, %223
  %225 = sitofp i32 %224 to double
  %226 = fmul double %217, %225
  %227 = fptosi double %226 to i32
  %228 = add nsw i32 %214, %227
  %229 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %230 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %229, i32 0, i32 12
  %231 = load double, double* %230, align 8
  %232 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %233 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %236 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %234, %237
  %239 = sitofp i32 %238 to double
  %240 = fmul double %231, %239
  %241 = fptosi double %240 to i32
  %242 = sub nsw i32 %228, %241
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %187, %47
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %14, !llvm.loop !6

248:                                              ; preds = %14
  %249 = load i32, i32* %8, align 4
  ret i32 %249
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
