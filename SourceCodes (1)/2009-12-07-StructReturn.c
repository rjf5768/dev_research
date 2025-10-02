; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2009-12-07-StructReturn.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2009-12-07-StructReturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.barstruct = type { %struct.foostruct, float }
%struct.foostruct = type { [3 x float] }

@bar_ary = dso_local global [4 x %struct.barstruct] zeroinitializer, align 16
@foobify.my_static_foo = internal global %struct.barstruct { %struct.foostruct { [3 x float] [float 4.200000e+01, float 4.200000e+01, float 4.200000e+01] }, float 4.200000e+01 }, align 4
@.str = private unnamed_addr constant [51 x i8] c"error: store clobbered memory outside destination\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float* @spooky(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [4 x %struct.barstruct], [4 x %struct.barstruct]* @bar_ary, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.barstruct, %struct.barstruct* %5, i32 0, i32 1
  store float 1.420000e+02, float* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x %struct.barstruct], [4 x %struct.barstruct]* @bar_ary, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.barstruct, %struct.barstruct* %9, i32 0, i32 1
  ret float* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @foobify() #0 {
  %1 = alloca %struct.foostruct, align 4
  %2 = alloca { <2 x float>, float }, align 8
  %3 = bitcast %struct.foostruct* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.barstruct* @foobify.my_static_foo to i8*), i64 12, i1 false)
  %4 = getelementptr inbounds %struct.foostruct, %struct.foostruct* %1, i32 0, i32 0
  %5 = bitcast { <2 x float>, float }* %2 to i8*
  %6 = bitcast [3 x float]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = load { <2 x float>, float }, { <2 x float>, float }* %2, align 8
  ret { <2 x float>, float } %7
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.foostruct, align 4
  %8 = alloca { <2 x float>, float }, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call float* @spooky(i32 noundef 0)
  store float* %9, float** %6, align 8
  %10 = call { <2 x float>, float } @foobify()
  %11 = getelementptr inbounds %struct.foostruct, %struct.foostruct* %7, i32 0, i32 0
  store { <2 x float>, float } %10, { <2 x float>, float }* %8, align 8
  %12 = bitcast [3 x float]* %11 to i8*
  %13 = bitcast { <2 x float>, float }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 8 %13, i64 12, i1 false)
  %14 = bitcast %struct.foostruct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast ([4 x %struct.barstruct]* @bar_ary to i8*), i8* align 4 %14, i64 12, i1 false)
  %15 = load float*, float** %6, align 8
  %16 = load float, float* %15, align 4
  %17 = fpext float %16 to double
  %18 = fcmp une double %17, 1.420000e+02
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  call void @abort() #4
  unreachable

21:                                               ; preds = %2
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
