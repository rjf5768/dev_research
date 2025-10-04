; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr28778.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr28778.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @find(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [32 x i32], align 16
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  store i32* %8, i32** %3, align 8
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 3
  store i32 42, i32* %10, align 4
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  store i32* %11, i32** %3, align 8
  br label %12

12:                                               ; preds = %9, %7
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to i64*
  call void @aglChoosePixelFormat(i64* noundef %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aglChoosePixelFormat(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32*, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = bitcast i64* %4 to i32*
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 42
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @abort() #2
  unreachable

11:                                               ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @find(i32* noundef null)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
