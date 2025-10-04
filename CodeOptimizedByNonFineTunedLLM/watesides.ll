; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/watesides.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/watesides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psidebox = type { i32, double, i32, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@pSideArray = external dso_local global %struct.psidebox*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @watesides(%struct.cellbox* noundef %0) #0 {
  %2 = alloca %struct.cellbox*, align 8
  %3 = alloca %struct.tilebox*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cellbox* %0, %struct.cellbox** %2, align 8
  %9 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i32 0, i32 21
  %11 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %10, i64 0, i64 0
  %12 = load %struct.tilebox*, %struct.tilebox** %11, align 8
  store %struct.tilebox* %12, %struct.tilebox** %3, align 8
  br label %13

13:                                               ; preds = %237, %1
  %14 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %15 = icmp ne %struct.tilebox* %14, null
  br i1 %15, label %16, label %241

16:                                               ; preds = %13
  %17 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %18 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %25 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 1
  store double -1.000000e+00, double* %25, align 8
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %68, %16
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %26
  %33 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %33, i64 %35
  %37 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %67

40:                                               ; preds = %32
  %41 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %41, i64 %43
  %45 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %40
  %50 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %50, i64 %52
  %54 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %56, i64 %58
  %60 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %55, %62
  %64 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %65 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %64, i32 0, i32 1
  store double %63, double* %65, align 8
  br label %66

66:                                               ; preds = %49, %40
  br label %67

67:                                               ; preds = %66, %32
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %26, !llvm.loop !4

71:                                               ; preds = %26
  %72 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %73 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %76 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %6, align 4
  %79 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %80 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %79, i32 0, i32 2
  store double -1.000000e+00, double* %80, align 8
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %123, %71
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %84 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %82, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %81
  %88 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %88, i64 %90
  %92 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %122

95:                                               ; preds = %87
  %96 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %96, i64 %98
  %100 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %95
  %105 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %105, i64 %107
  %109 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %108, i32 0, i32 1
  %110 = load double, double* %109, align 8
  %111 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %111, i64 %113
  %115 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sitofp i32 %116 to double
  %118 = fdiv double %110, %117
  %119 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %120 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %119, i32 0, i32 2
  store double %118, double* %120, align 8
  br label %121

121:                                              ; preds = %104, %95
  br label %122

122:                                              ; preds = %121, %87
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %81, !llvm.loop !6

126:                                              ; preds = %81
  %127 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %128 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %131 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %129, %132
  store i32 %133, i32* %7, align 4
  %134 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %135 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 3
  store double -1.000000e+00, double* %135, align 8
  store i32 1, i32* %4, align 4
  br label %136

136:                                              ; preds = %178, %126
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %139 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = icmp sle i32 %137, %140
  br i1 %141, label %142, label %181

142:                                              ; preds = %136
  %143 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %143, i64 %145
  %147 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %177

150:                                              ; preds = %142
  %151 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %151, i64 %153
  %155 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %150
  %160 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %160, i64 %162
  %164 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %163, i32 0, i32 1
  %165 = load double, double* %164, align 8
  %166 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %166, i64 %168
  %170 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sitofp i32 %171 to double
  %173 = fdiv double %165, %172
  %174 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %175 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %174, i32 0, i32 3
  store double %173, double* %175, align 8
  br label %176

176:                                              ; preds = %159, %150
  br label %177

177:                                              ; preds = %176, %142
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %136, !llvm.loop !7

181:                                              ; preds = %136
  %182 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %183 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %185, i32 0, i32 12
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %184, %187
  store i32 %188, i32* %8, align 4
  %189 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %190 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %189, i32 0, i32 4
  store double -1.000000e+00, double* %190, align 8
  store i32 1, i32* %4, align 4
  br label %191

191:                                              ; preds = %233, %181
  %192 = load i32, i32* %4, align 4
  %193 = load %struct.cellbox*, %struct.cellbox** %2, align 8
  %194 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = icmp sle i32 %192, %195
  br i1 %196, label %197, label %236

197:                                              ; preds = %191
  %198 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %198, i64 %200
  %202 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %232

205:                                              ; preds = %197
  %206 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %206, i64 %208
  %210 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %205
  %215 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %215, i64 %217
  %219 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %218, i32 0, i32 1
  %220 = load double, double* %219, align 8
  %221 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %221, i64 %223
  %225 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sitofp i32 %226 to double
  %228 = fdiv double %220, %227
  %229 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %230 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i32 0, i32 4
  store double %228, double* %230, align 8
  br label %231

231:                                              ; preds = %214, %205
  br label %232

232:                                              ; preds = %231, %197
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %4, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %4, align 4
  br label %191, !llvm.loop !8

236:                                              ; preds = %191
  br label %237

237:                                              ; preds = %236
  %238 = load %struct.tilebox*, %struct.tilebox** %3, align 8
  %239 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %238, i32 0, i32 0
  %240 = load %struct.tilebox*, %struct.tilebox** %239, align 8
  store %struct.tilebox* %240, %struct.tilebox** %3, align 8
  br label %13, !llvm.loop !9

241:                                              ; preds = %13
  ret void
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
