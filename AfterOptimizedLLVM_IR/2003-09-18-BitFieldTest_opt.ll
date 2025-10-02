; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-09-18-BitFieldTest.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-09-18-BitFieldTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @i2(%struct.rtx_def* noundef %0) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %4 = bitcast %struct.rtx_def* %3 to i8*
  %5 = load i8, i8* %4, align 4
  %6 = and i8 %5, -2
  %7 = or i8 %6, 0
  store i8 %7, i8* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rtx_def, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.rtx_def* %2 to i8*
  %4 = load i8, i8* %3, align 4
  %5 = and i8 %4, -3
  %6 = or i8 %5, 2
  store i8 %6, i8* %3, align 4
  call void @i2(%struct.rtx_def* noundef %2)
  %7 = bitcast %struct.rtx_def* %2 to i8*
  %8 = load i8, i8* %7, align 4
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  %11 = bitcast %struct.rtx_def* %2 to i8*
  %12 = load i8, i8* %11, align 4
  %13 = lshr i8 %12, 1
  %14 = and i8 %13, 1
  %15 = zext i8 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %10, i32 noundef %15)
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
