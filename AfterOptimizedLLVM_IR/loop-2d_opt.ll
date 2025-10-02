; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-2d.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [2 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %7
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %14, %1
  %11 = load i32, i32* %4, align 4
  %12 = add i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp ult i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = mul i32 %15, 3
  %17 = add i32 %16, ptrtoint ([2 x i32]* @a to i32)
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 -1
  store i32* %19, i32** %5, align 8
  store i32 %17, i32* %19, align 4
  br label %10, !llvm.loop !4

20:                                               ; preds = %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  %2 = call i32 @f(i32 noundef 2)
  %3 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  %4 = icmp ne i32 %3, ptrtoint ([2 x i32]* @a to i32)
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 1), align 4
  %7 = icmp ne i32 %6, add nsw (i32 ptrtoint ([2 x i32]* @a to i32), i32 3)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
