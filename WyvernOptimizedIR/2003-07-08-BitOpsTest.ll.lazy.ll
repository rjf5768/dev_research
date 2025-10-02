; ModuleID = './2003-07-08-BitOpsTest.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-08-BitOpsTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = xor i32 %0, %1
  %6 = xor i32 %5, %2
  %7 = xor i32 %6, %3
  %8 = or i32 %0, %1
  %9 = or i32 %8, %2
  %10 = or i32 %9, %3
  %11 = and i32 %0, %1
  %12 = and i32 %11, %2
  %13 = and i32 %12, %3
  %14 = xor i32 %1, -1
  %15 = and i32 %14, %0
  %16 = xor i32 %3, -1
  %17 = and i32 %16, %2
  %18 = xor i32 %15, %17
  %19 = xor i32 %1, -1
  %20 = or i32 %19, %0
  %21 = xor i32 %3, -1
  %22 = or i32 %21, %2
  %23 = xor i32 %20, %22
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %18, i32 noundef %23) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test(i32 noundef 7, i32 noundef 8, i32 noundef -5, i32 noundef 5)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
