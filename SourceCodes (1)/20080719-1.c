; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080719-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080719-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfb_tab8_be = internal constant [16 x i32] [i32 0, i32 255, i32 65280, i32 65535, i32 16711680, i32 16711935, i32 16776960, i32 16777215, i32 -16777216, i32 -16776961, i32 -16711936, i32 -16711681, i32 -65536, i32 -65281, i32 -256, i32 -1], align 16
@cfb_tab16_be = internal constant [4 x i32] [i32 0, i32 65535, i32 -65536, i32 -1], align 16
@cfb_tab32 = internal constant [2 x i32] [i32 0, i32 -1], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @xxx(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %8 [
    i32 8, label %5
    i32 16, label %6
    i32 32, label %7
  ]

5:                                                ; preds = %1
  store i32* getelementptr inbounds ([16 x i32], [16 x i32]* @cfb_tab8_be, i64 0, i64 0), i32** %3, align 8
  br label %9

6:                                                ; preds = %1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cfb_tab16_be, i64 0, i64 0), i32** %3, align 8
  br label %9

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cfb_tab32, i64 0, i64 0), i32** %3, align 8
  br label %9

9:                                                ; preds = %8, %6, %5
  %10 = load i32*, i32** %3, align 8
  ret i32* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32* @xxx(i32 noundef 8)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @cfb_tab8_be, i64 0, i64 0), align 16
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #2
  unreachable

12:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
