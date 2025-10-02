; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2005-07-15-Bitfield-ABI.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2005-07-15-Bitfield-ABI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32 }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(%struct.X* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.X*, align 8
  %4 = alloca i32, align 4
  store %struct.X* %0, %struct.X** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.X*, %struct.X** %3, align 8
  %7 = bitcast %struct.X* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %5, 15
  %10 = shl i32 %9, 6
  %11 = and i32 %8, -961
  %12 = or i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = shl i32 %9, 28
  %14 = ashr i32 %13, 28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %union.anon* %2 to i32*
  store i32 -1, i32* %3, align 4
  %4 = bitcast %union.anon* %2 to %struct.X*
  call void @test(%struct.X* noundef %4, i32 noundef 0)
  %5 = bitcast %union.anon* %2 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %6)
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
