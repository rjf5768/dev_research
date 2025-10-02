; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-2e.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-2e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32* noundef %0, i32** noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %16, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 40
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32**, i32*** %4, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i32 1
  store i32** %15, i32*** %4, align 8
  store i32* %13, i32** %14, align 8
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %6, !llvm.loop !4

19:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [40 x i32*], align 16
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 9223372036854775807, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, -32
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %2, align 8
  %9 = getelementptr inbounds [40 x i32*], [40 x i32*]* %3, i64 0, i64 39
  store i32* null, i32** %9, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds [40 x i32*], [40 x i32*]* %3, i64 0, i64 0
  call void @f(i32* noundef %11, i32** noundef %12)
  %13 = getelementptr inbounds [40 x i32*], [40 x i32*]* %3, i64 0, i64 39
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = getelementptr inbounds i32, i32* %16, i64 39
  %18 = icmp ne i32* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  call void @abort() #2
  unreachable

20:                                               ; preds = %0
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
