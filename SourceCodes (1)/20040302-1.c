; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040302-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040302-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code = dso_local global [5 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1], align 16
@bar.l = internal global [2 x i8*] [i8* blockaddress(@bar, %8), i8* blockaddress(@bar, %16)], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store volatile i32 -1, i32* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  call void @foo(i32 noundef 0)
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bar.l, i64 0, i64 %5
  %7 = load i8*, i8** %6, align 8
  br label %17

8:                                                ; preds = %17
  call void @foo(i32 noundef 0)
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bar.l, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  br label %17

16:                                               ; preds = %17
  ret void

17:                                               ; preds = %8, %1
  %18 = phi i8* [ %7, %1 ], [ %15, %8 ]
  indirectbr i8* %18, [label %8, label %16]
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @bar(i32* noundef getelementptr inbounds ([5 x i32], [5 x i32]* @code, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
