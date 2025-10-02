; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/byval-alignment.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/byval-alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s0 = type { x86_fp80, x86_fp80 }

@g0 = dso_local global %struct.s0 zeroinitializer, align 16
@__const.main.a = private unnamed_addr constant %struct.s0 { x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK40008000000000000000 }, align 16
@.str = private unnamed_addr constant [24 x i8] c"g0.x: %.4f, g0.y: %.4f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f0(i32 noundef %0, %struct.s0* noundef byval(%struct.s0) align 16 %1) #0 {
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = bitcast %struct.s0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast (%struct.s0* @g0 to i8*), i8* align 16 %4, i64 32, i1 false)
  %5 = load i32, i32* %3, align 4
  %6 = sitofp i32 %5 to x86_fp80
  %7 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 0), align 16
  %8 = fadd x86_fp80 %7, %6
  store x86_fp80 %8, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 0), align 16
  %9 = load i32, i32* %3, align 4
  %10 = sitofp i32 %9 to x86_fp80
  %11 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 1), align 16
  %12 = fadd x86_fp80 %11, %10
  store x86_fp80 %12, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 1), align 16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s0, align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.s0* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast (%struct.s0* @__const.main.a to i8*), i64 32, i1 false)
  call void @f0(i32 noundef 1, %struct.s0* noundef byval(%struct.s0) align 16 %2)
  %4 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 0), align 16
  %5 = fptrunc x86_fp80 %4 to double
  %6 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 1), align 16
  %7 = fptrunc x86_fp80 %6 to double
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), double noundef %5, double noundef %7)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
