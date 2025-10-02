; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.shift.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IV = type { <2 x i64> }

@.str = private unnamed_addr constant [21 x i8] c"%08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca <4 x i32>, align 16
  %6 = alloca <2 x i64>, align 16
  %7 = alloca i32, align 4
  %8 = alloca <2 x i64>, align 16
  %9 = alloca i32, align 4
  %10 = alloca <2 x i64>, align 16
  %11 = alloca <2 x i64>, align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca <2 x i64>, align 16
  %15 = alloca <2 x i64>, align 16
  %16 = alloca <2 x i64>, align 16
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  store i32 %17, i32* %1, align 4
  store i32 %18, i32* %2, align 4
  store i32 %19, i32* %3, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = insertelement <4 x i32> undef, i32 %21, i32 0
  %23 = load i32, i32* %3, align 4
  %24 = insertelement <4 x i32> %22, i32 %23, i32 1
  %25 = load i32, i32* %2, align 4
  %26 = insertelement <4 x i32> %24, i32 %25, i32 2
  %27 = load i32, i32* %1, align 4
  %28 = insertelement <4 x i32> %26, i32 %27, i32 3
  store <4 x i32> %28, <4 x i32>* %5, align 16
  %29 = load <4 x i32>, <4 x i32>* %5, align 16
  %30 = bitcast <4 x i32> %29 to <2 x i64>
  store <2 x i64> %30, <2 x i64>* %14, align 16
  %31 = load <2 x i64>, <2 x i64>* %14, align 16
  %32 = load <2 x i64>, <2 x i64>* %14, align 16
  store <2 x i64> %31, <2 x i64>* %10, align 16
  store <2 x i64> %32, <2 x i64>* %11, align 16
  %33 = load <2 x i64>, <2 x i64>* %10, align 16
  %34 = bitcast <2 x i64> %33 to <4 x i32>
  %35 = load <2 x i64>, <2 x i64>* %11, align 16
  %36 = bitcast <2 x i64> %35 to <4 x i32>
  %37 = icmp eq <4 x i32> %34, %36
  %38 = sext <4 x i1> %37 to <4 x i32>
  %39 = bitcast <4 x i32> %38 to <2 x i64>
  store <2 x i64> %39, <2 x i64>* %14, align 16
  %40 = load <2 x i64>, <2 x i64>* %14, align 16
  store <2 x i64> %40, <2 x i64>* %8, align 16
  store i32 8, i32* %9, align 4
  %41 = load <2 x i64>, <2 x i64>* %8, align 16
  %42 = bitcast <2 x i64> %41 to <8 x i16>
  %43 = load i32, i32* %9, align 4
  %44 = call <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16> %42, i32 %43) #4
  %45 = bitcast <8 x i16> %44 to <2 x i64>
  store <2 x i64> %45, <2 x i64>* %15, align 16
  %46 = bitcast <2 x i64>* %15 to %union.IV*
  call void @printIV(%union.IV* noundef %46)
  %47 = load <2 x i64>, <2 x i64>* %14, align 16
  store <2 x i64> %47, <2 x i64>* %6, align 16
  store i32 8, i32* %7, align 4
  %48 = load <2 x i64>, <2 x i64>* %6, align 16
  %49 = bitcast <2 x i64> %48 to <8 x i16>
  %50 = load i32, i32* %7, align 4
  %51 = call <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16> %49, i32 %50) #4
  %52 = bitcast <8 x i16> %51 to <2 x i64>
  store <2 x i64> %52, <2 x i64>* %16, align 16
  %53 = bitcast <2 x i64>* %16 to %union.IV*
  call void @printIV(%union.IV* noundef %53)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printIV(%union.IV* noundef %0) #1 {
  %2 = alloca %union.IV*, align 8
  store %union.IV* %0, %union.IV** %2, align 8
  %3 = load %union.IV*, %union.IV** %2, align 8
  %4 = bitcast %union.IV* %3 to [4 x i32]*
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %6 = load i32, i32* %5, align 16
  %7 = load %union.IV*, %union.IV** %2, align 8
  %8 = bitcast %union.IV* %7 to [4 x i32]*
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load %union.IV*, %union.IV** %2, align 8
  %12 = bitcast %union.IV* %11 to [4 x i32]*
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %14 = load i32, i32* %13, align 8
  %15 = load %union.IV*, %union.IV** %2, align 8
  %16 = bitcast %union.IV* %15 to [4 x i32]*
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %6, i32 noundef %10, i32 noundef %14, i32 noundef %18)
  ret void
}

; Function Attrs: nounwind readnone
declare <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16>, i32) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: nounwind readnone
declare <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16>, i32) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
