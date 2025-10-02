; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071211-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071211-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64 }

@sv = dso_local global %struct.s zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.s, %struct.s* @sv, i32 0, i32 0), align 8
  %4 = and i64 %3, 1099511627775
  %5 = or i64 %4, -1099511627776
  store i64 %5, i64* getelementptr inbounds (%struct.s, %struct.s* @sv, i32 0, i32 0), align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %6 = load i64, i64* getelementptr inbounds (%struct.s, %struct.s* @sv, i32 0, i32 0), align 8
  %7 = lshr i64 %6, 40
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* getelementptr inbounds (%struct.s, %struct.s* @sv, i32 0, i32 0), align 8
  %12 = and i64 %10, 16777215
  %13 = shl i64 %12, 40
  %14 = and i64 %11, 1099511627775
  %15 = or i64 %14, %13
  store i64 %15, i64* getelementptr inbounds (%struct.s, %struct.s* @sv, i32 0, i32 0), align 8
  %16 = trunc i64 %12 to i32
  %17 = load i64, i64* getelementptr inbounds (%struct.s, %struct.s* @sv, i32 0, i32 0), align 8
  %18 = lshr i64 %17, 40
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  call void @abort() #3
  unreachable

23:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 258}
