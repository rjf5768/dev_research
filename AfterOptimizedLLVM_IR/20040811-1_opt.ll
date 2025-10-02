; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040811-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040811-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %25, %0
  %7 = load i32, i32* %2, align 4
  %8 = srem i32 %7, 1000
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 1, i32* %13, align 16
  %14 = load i32, i32* %2, align 4
  %15 = srem i32 %14, 1000
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32 2, i32* %17, align 4
  %18 = bitcast i32* %12 to i8*
  store volatile i8* %18, i8** @p, align 8
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 1000000
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 2, i32* %5, align 4
  br label %25

24:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %26)
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %30 [
    i32 2, label %6
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* %1, align 4
  ret i32 %29

30:                                               ; preds = %25
  unreachable
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
