; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/divides.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/divides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.SV = type { <4 x i32> }
%union.UV = type { <4 x i32> }

@.str = private unnamed_addr constant [22 x i8] c"U3.V = <%u %u %u %u>\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"S3.V = <%u %u %u %u>\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testuvec(<4 x i32>* noundef %0, <4 x i32>* noundef %1, <4 x i32>* noundef %2) #0 {
  %4 = alloca <4 x i32>*, align 8
  %5 = alloca <4 x i32>*, align 8
  %6 = alloca <4 x i32>*, align 8
  store <4 x i32>* %0, <4 x i32>** %4, align 8
  store <4 x i32>* %1, <4 x i32>** %5, align 8
  store <4 x i32>* %2, <4 x i32>** %6, align 8
  %7 = load <4 x i32>*, <4 x i32>** %4, align 8
  %8 = load <4 x i32>, <4 x i32>* %7, align 16
  %9 = load <4 x i32>*, <4 x i32>** %5, align 8
  %10 = load <4 x i32>, <4 x i32>* %9, align 16
  %11 = udiv <4 x i32> %8, %10
  %12 = load <4 x i32>*, <4 x i32>** %6, align 8
  store <4 x i32> %11, <4 x i32>* %12, align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testsvec(<4 x i32>* noundef %0, <4 x i32>* noundef %1, <4 x i32>* noundef %2) #0 {
  %4 = alloca <4 x i32>*, align 8
  %5 = alloca <4 x i32>*, align 8
  %6 = alloca <4 x i32>*, align 8
  store <4 x i32>* %0, <4 x i32>** %4, align 8
  store <4 x i32>* %1, <4 x i32>** %5, align 8
  store <4 x i32>* %2, <4 x i32>** %6, align 8
  %7 = load <4 x i32>*, <4 x i32>** %4, align 8
  %8 = load <4 x i32>, <4 x i32>* %7, align 16
  %9 = load <4 x i32>*, <4 x i32>** %5, align 8
  %10 = load <4 x i32>, <4 x i32>* %9, align 16
  %11 = sdiv <4 x i32> %8, %10
  %12 = load <4 x i32>*, <4 x i32>** %6, align 8
  store <4 x i32> %11, <4 x i32>* %12, align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %union.SV, align 16
  %7 = alloca %union.SV, align 16
  %8 = alloca %union.SV, align 16
  %9 = alloca %union.UV, align 16
  %10 = alloca %union.UV, align 16
  %11 = alloca %union.UV, align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast %union.SV* %7 to [4 x i32]*
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 2, i32* %13, align 16
  %14 = bitcast %union.SV* %6 to [4 x i32]*
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 2, i32* %15, align 16
  %16 = bitcast %union.SV* %7 to [4 x i32]*
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 -3, i32* %17, align 4
  %18 = bitcast %union.SV* %6 to [4 x i32]*
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 -3, i32* %19, align 4
  %20 = bitcast %union.SV* %7 to [4 x i32]*
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 5, i32* %21, align 8
  %22 = bitcast %union.SV* %6 to [4 x i32]*
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 2
  store i32 5, i32* %23, align 8
  %24 = bitcast %union.SV* %7 to [4 x i32]*
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 3
  store i32 -8, i32* %25, align 4
  %26 = bitcast %union.SV* %6 to [4 x i32]*
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 3
  store i32 -8, i32* %27, align 4
  %28 = bitcast %union.UV* %10 to [4 x i32]*
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32 2, i32* %29, align 16
  %30 = bitcast %union.UV* %9 to [4 x i32]*
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0
  store i32 2, i32* %31, align 16
  %32 = bitcast %union.UV* %10 to [4 x i32]*
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 1
  store i32 3, i32* %33, align 4
  %34 = bitcast %union.UV* %9 to [4 x i32]*
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 1
  store i32 3, i32* %35, align 4
  %36 = bitcast %union.UV* %10 to [4 x i32]*
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 2
  store i32 5, i32* %37, align 8
  %38 = bitcast %union.UV* %9 to [4 x i32]*
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 2
  store i32 5, i32* %39, align 8
  %40 = bitcast %union.UV* %10 to [4 x i32]*
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i64 0, i64 3
  store i32 8, i32* %41, align 4
  %42 = bitcast %union.UV* %9 to [4 x i32]*
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 0, i64 3
  store i32 8, i32* %43, align 4
  %44 = bitcast %union.UV* %9 to <4 x i32>*
  %45 = bitcast %union.UV* %10 to <4 x i32>*
  %46 = bitcast %union.UV* %11 to <4 x i32>*
  call void @testuvec(<4 x i32>* noundef %44, <4 x i32>* noundef %45, <4 x i32>* noundef %46)
  %47 = bitcast %union.SV* %6 to <4 x i32>*
  %48 = bitcast %union.SV* %7 to <4 x i32>*
  %49 = bitcast %union.SV* %8 to <4 x i32>*
  call void @testsvec(<4 x i32>* noundef %47, <4 x i32>* noundef %48, <4 x i32>* noundef %49)
  %50 = bitcast %union.UV* %11 to [4 x i32]*
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = bitcast %union.UV* %11 to [4 x i32]*
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = bitcast %union.UV* %11 to [4 x i32]*
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i64 0, i64 2
  %58 = load i32, i32* %57, align 8
  %59 = bitcast %union.UV* %11 to [4 x i32]*
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i64 0, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %52, i32 noundef %55, i32 noundef %58, i32 noundef %61)
  %63 = bitcast %union.SV* %8 to [4 x i32]*
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = bitcast %union.SV* %8 to [4 x i32]*
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %union.SV* %8 to [4 x i32]*
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 2
  %71 = load i32, i32* %70, align 8
  %72 = bitcast %union.SV* %8 to [4 x i32]*
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i64 0, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef %65, i32 noundef %68, i32 noundef %71, i32 noundef %74)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
