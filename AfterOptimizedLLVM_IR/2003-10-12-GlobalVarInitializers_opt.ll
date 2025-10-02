; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/2003-10-12-GlobalVarInitializers.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/2003-10-12-GlobalVarInitializers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }
%union.anon.0 = type { i32 }

@GlobalUnion = dso_local global %union.anon { i32 1891631104 }, align 4
@__const.main.LocalUnion = private unnamed_addr constant %union.anon.0 { i32 2143289344 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon.0, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %union.anon.0* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%union.anon.0* @__const.main.LocalUnion to i8*), i64 4, i1 false)
  %4 = load float, float* bitcast (%union.anon* @GlobalUnion to float*), align 4
  %5 = fpext float %4 to double
  %6 = bitcast %union.anon.0* %2 to float*
  %7 = load float, float* %6, align 4
  %8 = fpext float %7 to double
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double noundef %5, double noundef %8)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
