; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vla-dealloc-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vla-dealloc-1.c"
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
  br i1 false, label %6, label %8

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %27, %6
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 1000
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 1, i32* %15, align 16
  %16 = load i32, i32* %2, align 4
  %17 = srem i32 %16, 1000
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  store i32 2, i32* %19, align 4
  %20 = bitcast i32* %14 to i8*
  store volatile i8* %20, i8** @p, align 8
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 1000000
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  store i32 2, i32* %5, align 4
  br label %27

26:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %28)
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %32 [
    i32 2, label %7
    i32 1, label %30
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* %1, align 4
  ret i32 %31

32:                                               ; preds = %27
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
