; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20081117-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20081117-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64 }

@s = dso_local global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 1, i8 0, i8 33, i8 67, i8 101, i8 -121, i8 2, i8 0 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i64 %0, i32 noundef %1) #0 {
  %3 = alloca %struct.s, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.s* %3 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = lshr i64 %7, 16
  %9 = and i64 %8, 4294967295
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.s, %struct.s* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @s to %struct.s*), i32 0, i32 0), align 8
  %3 = call i32 @f(i64 %2, i32 noundef -2023406815)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
