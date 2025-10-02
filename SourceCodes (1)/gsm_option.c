; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_option.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gsm_option(%struct.gsm_state* noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca %struct.gsm_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.gsm_state* %0, %struct.gsm_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %24 [
    i32 1, label %9
    i32 2, label %23
  ]

9:                                                ; preds = %3
  %10 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %11 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %10, i32 0, i32 10
  %12 = load i8, i8* %11, align 4
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = trunc i32 %18 to i8
  %20 = load %struct.gsm_state*, %struct.gsm_state** %4, align 8
  %21 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %20, i32 0, i32 10
  store i8 %19, i8* %21, align 4
  br label %22

22:                                               ; preds = %16, %9
  br label %25

23:                                               ; preds = %3
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %23, %22
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
