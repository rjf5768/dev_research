; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/PR1386.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/PR1386.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i128 }

@.str = private unnamed_addr constant [16 x i8] c"bad bits: %llx\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.X, align 1
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.X* %2 to i128*
  %5 = load i128, i128* %4, align 1
  %6 = and i128 %5, -16
  %7 = or i128 %6, 15
  store i128 %7, i128* %4, align 1
  %8 = bitcast %struct.X* %2 to i128*
  %9 = load i128, i128* %8, align 1
  %10 = and i128 %9, -295147905179352825841
  %11 = or i128 %10, 295147905179352825840
  store i128 %11, i128* %8, align 1
  %12 = bitcast %struct.X* %2 to i128*
  %13 = load i128, i128* %12, align 1
  %14 = and i128 %13, 295147905179352825855
  %15 = or i128 %14, -295147905179352825856
  store i128 %15, i128* %12, align 1
  %16 = bitcast %struct.X* %2 to i64*
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = xor i64 -1, %18
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 noundef %20)
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  ret i32 %24
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
