; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type <{ i16, [2 x i16*] }>

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca %struct.A, align 2
  %5 = alloca %struct.A*, align 8
  store i32 0, i32* %1, align 4
  store i16 1, i16* %3, align 2
  store %struct.A* %4, %struct.A** %5, align 8
  %6 = load %struct.A*, %struct.A** %5, align 8
  %7 = getelementptr inbounds %struct.A, %struct.A* %6, i32 0, i32 1
  %8 = load i16, i16* %3, align 2
  %9 = sext i16 %8 to i64
  %10 = getelementptr inbounds [2 x i16*], [2 x i16*]* %7, i64 0, i64 %9
  store i16* %2, i16** %10, align 2
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
