; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20140828-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20140828-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @f(i16* noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i16, align 2
  store i16* %0, i16** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i16*, i16** %4, align 8
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %7, align 2
  %10 = load i16*, i16** %4, align 8
  %11 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %11, i16** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i16, i16* %7, align 2
  %14 = sext i16 %13 to i32
  %15 = shl i32 %12, %14
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %7, align 2
  %17 = load i16, i16* %7, align 2
  %18 = sext i16 %17 to i32
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i16*, i16** %4, align 8
  ret i16* %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i16], align 2
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [2 x i16], [2 x i16]* %3, i64 0, i64 0
  store i16 0, i16* %4, align 2
  %5 = getelementptr inbounds [2 x i16], [2 x i16]* %3, i64 0, i64 0
  %6 = call i16* @f(i16* noundef %5, i32 noundef 1, i32* noundef %2)
  %7 = getelementptr inbounds [2 x i16], [2 x i16]* %3, i64 0, i64 1
  %8 = icmp ne i16* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
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
