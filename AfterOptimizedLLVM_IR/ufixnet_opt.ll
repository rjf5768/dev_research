; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ufixnet.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ufixnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }

@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ufixnet(%struct.termbox* noundef %0) #0 {
  %2 = alloca %struct.termbox*, align 8
  %3 = alloca %struct.dimbox*, align 8
  %4 = alloca %struct.netbox*, align 8
  %5 = alloca %struct.termnets*, align 8
  %6 = alloca %struct.termbox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.termbox* %0, %struct.termbox** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.termbox*, %struct.termbox** %2, align 8
  store %struct.termbox* %10, %struct.termbox** %6, align 8
  br label %11

11:                                               ; preds = %236, %1
  %12 = load %struct.termbox*, %struct.termbox** %6, align 8
  %13 = icmp ne %struct.termbox* %12, null
  br i1 %13, label %14, label %240

14:                                               ; preds = %11
  %15 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %16 = load %struct.termbox*, %struct.termbox** %6, align 8
  %17 = getelementptr inbounds %struct.termbox, %struct.termbox* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.termnets*, %struct.termnets** %15, i64 %19
  %21 = load %struct.termnets*, %struct.termnets** %20, align 8
  store %struct.termnets* %21, %struct.termnets** %5, align 8
  %22 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %23 = load %struct.termnets*, %struct.termnets** %5, align 8
  %24 = getelementptr inbounds %struct.termnets, %struct.termnets* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %22, i64 %26
  %28 = load %struct.dimbox*, %struct.dimbox** %27, align 8
  store %struct.dimbox* %28, %struct.dimbox** %3, align 8
  %29 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %30 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %14
  %34 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %35 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %14
  br label %236

39:                                               ; preds = %33
  %40 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %41 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %40, i32 0, i32 7
  store i32 0, i32* %41, align 8
  %42 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %43 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %42, i32 0, i32 0
  %44 = load %struct.netbox*, %struct.netbox** %43, align 8
  store %struct.netbox* %44, %struct.netbox** %4, align 8
  br label %45

45:                                               ; preds = %96, %39
  %46 = load %struct.netbox*, %struct.netbox** %4, align 8
  %47 = icmp eq %struct.netbox* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %100

49:                                               ; preds = %45
  %50 = load %struct.netbox*, %struct.netbox** %4, align 8
  %51 = getelementptr inbounds %struct.netbox, %struct.netbox* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %96

55:                                               ; preds = %49
  %56 = load %struct.netbox*, %struct.netbox** %4, align 8
  %57 = getelementptr inbounds %struct.netbox, %struct.netbox* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load %struct.netbox*, %struct.netbox** %4, align 8
  %62 = getelementptr inbounds %struct.netbox, %struct.netbox* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %65 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %67 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %66, i32 0, i32 3
  store i32 %63, i32* %67, align 8
  %68 = load %struct.netbox*, %struct.netbox** %4, align 8
  %69 = getelementptr inbounds %struct.netbox, %struct.netbox* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %72 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %74 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %73, i32 0, i32 8
  store i32 %70, i32* %74, align 4
  %75 = load %struct.netbox*, %struct.netbox** %4, align 8
  %76 = getelementptr inbounds %struct.netbox, %struct.netbox* %75, i32 0, i32 6
  store i32 0, i32* %76, align 4
  br label %92

77:                                               ; preds = %55
  %78 = load %struct.netbox*, %struct.netbox** %4, align 8
  %79 = getelementptr inbounds %struct.netbox, %struct.netbox* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %82 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %84 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %83, i32 0, i32 3
  store i32 %80, i32* %84, align 8
  %85 = load %struct.netbox*, %struct.netbox** %4, align 8
  %86 = getelementptr inbounds %struct.netbox, %struct.netbox* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %89 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %88, i32 0, i32 10
  store i32 %87, i32* %89, align 4
  %90 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %91 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %90, i32 0, i32 8
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %77, %60
  %93 = load %struct.netbox*, %struct.netbox** %4, align 8
  %94 = getelementptr inbounds %struct.netbox, %struct.netbox* %93, i32 0, i32 0
  %95 = load %struct.netbox*, %struct.netbox** %94, align 8
  store %struct.netbox* %95, %struct.netbox** %4, align 8
  br label %100

96:                                               ; preds = %54
  %97 = load %struct.netbox*, %struct.netbox** %4, align 8
  %98 = getelementptr inbounds %struct.netbox, %struct.netbox* %97, i32 0, i32 0
  %99 = load %struct.netbox*, %struct.netbox** %98, align 8
  store %struct.netbox* %99, %struct.netbox** %4, align 8
  br label %45

100:                                              ; preds = %92, %48
  br label %101

101:                                              ; preds = %174, %100
  %102 = load %struct.netbox*, %struct.netbox** %4, align 8
  %103 = icmp ne %struct.netbox* %102, null
  br i1 %103, label %104, label %178

104:                                              ; preds = %101
  %105 = load %struct.netbox*, %struct.netbox** %4, align 8
  %106 = getelementptr inbounds %struct.netbox, %struct.netbox* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %174

110:                                              ; preds = %104
  %111 = load %struct.netbox*, %struct.netbox** %4, align 8
  %112 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.netbox*, %struct.netbox** %4, align 8
  %117 = getelementptr inbounds %struct.netbox, %struct.netbox* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %8, align 4
  %119 = load %struct.netbox*, %struct.netbox** %4, align 8
  %120 = getelementptr inbounds %struct.netbox, %struct.netbox* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %9, align 4
  %122 = load %struct.netbox*, %struct.netbox** %4, align 8
  %123 = getelementptr inbounds %struct.netbox, %struct.netbox* %122, i32 0, i32 6
  store i32 0, i32* %123, align 4
  br label %131

124:                                              ; preds = %110
  %125 = load %struct.netbox*, %struct.netbox** %4, align 8
  %126 = getelementptr inbounds %struct.netbox, %struct.netbox* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %8, align 4
  %128 = load %struct.netbox*, %struct.netbox** %4, align 8
  %129 = getelementptr inbounds %struct.netbox, %struct.netbox* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %124, %115
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %134 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %140 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  br label %152

141:                                              ; preds = %131
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %144 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %150 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %141
  br label %152

152:                                              ; preds = %151, %137
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %155 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %161 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 4
  br label %173

162:                                              ; preds = %152
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %165 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %163, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %171 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %170, i32 0, i32 10
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %162
  br label %173

173:                                              ; preds = %172, %158
  br label %174

174:                                              ; preds = %173, %109
  %175 = load %struct.netbox*, %struct.netbox** %4, align 8
  %176 = getelementptr inbounds %struct.netbox, %struct.netbox* %175, i32 0, i32 0
  %177 = load %struct.netbox*, %struct.netbox** %176, align 8
  store %struct.netbox* %177, %struct.netbox** %4, align 8
  br label %101, !llvm.loop !4

178:                                              ; preds = %101
  %179 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %180 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %179, i32 0, i32 11
  %181 = load double, double* %180, align 8
  %182 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %183 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %186 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %184, %187
  %189 = sitofp i32 %188 to double
  %190 = fmul double %181, %189
  %191 = fptosi double %190 to i32
  %192 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %193 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %192, i32 0, i32 11
  %194 = load double, double* %193, align 8
  %195 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %196 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %199 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %197, %200
  %202 = sitofp i32 %201 to double
  %203 = fmul double %194, %202
  %204 = fptosi double %203 to i32
  %205 = sub nsw i32 %191, %204
  %206 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %207 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %206, i32 0, i32 12
  %208 = load double, double* %207, align 8
  %209 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %210 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %213 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %211, %214
  %216 = sitofp i32 %215 to double
  %217 = fmul double %208, %216
  %218 = fptosi double %217 to i32
  %219 = add nsw i32 %205, %218
  %220 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %221 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %220, i32 0, i32 12
  %222 = load double, double* %221, align 8
  %223 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %224 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.dimbox*, %struct.dimbox** %3, align 8
  %227 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %225, %228
  %230 = sitofp i32 %229 to double
  %231 = fmul double %222, %230
  %232 = fptosi double %231 to i32
  %233 = sub nsw i32 %219, %232
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %178, %38
  %237 = load %struct.termbox*, %struct.termbox** %6, align 8
  %238 = getelementptr inbounds %struct.termbox, %struct.termbox* %237, i32 0, i32 0
  %239 = load %struct.termbox*, %struct.termbox** %238, align 8
  store %struct.termbox* %239, %struct.termbox** %6, align 8
  br label %11, !llvm.loop !6

240:                                              ; preds = %11
  %241 = load i32, i32* %7, align 4
  ret i32 %241
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
