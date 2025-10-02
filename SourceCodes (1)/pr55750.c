; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr55750.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr55750.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [3 x i8] }

@arr = dso_local global [2 x %struct.S] zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 %4
  %6 = bitcast %struct.S* %5 to i8*
  %7 = load i8, i8* %6, align 4
  %8 = ashr i8 %7, 1
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %9, 1
  %11 = trunc i32 %10 to i8
  %12 = load i8, i8* %6, align 4
  %13 = and i8 %11, 127
  %14 = shl i8 %13, 1
  %15 = and i8 %12, 1
  %16 = or i8 %15, %14
  store i8 %16, i8* %6, align 4
  %17 = shl i8 %13, 1
  %18 = ashr i8 %17, 1
  %19 = sext i8 %18 to i32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i32 0, i32 0, i32 0), align 4
  %3 = and i8 %2, -2
  %4 = or i8 %3, 1
  store i8 %4, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i32 0, i32 0, i32 0), align 4
  %5 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i32 0, i32 0, i32 0), align 4
  %6 = and i8 %5, 1
  %7 = or i8 %6, 126
  store i8 %7, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i32 0, i32 0, i32 0), align 4
  %8 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 1, i32 0), align 4
  %9 = and i8 %8, -2
  %10 = or i8 %9, 0
  store i8 %10, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 1, i32 0), align 4
  %11 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 1, i32 0), align 4
  %12 = and i8 %11, 1
  %13 = or i8 %12, -2
  store i8 %13, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 1, i32 0), align 4
  call void @foo(i32 noundef 0)
  call void @foo(i32 noundef 1)
  %14 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i32 0, i32 0, i32 0), align 4
  %15 = shl i8 %14, 7
  %16 = ashr i8 %15, 7
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %35, label %19

19:                                               ; preds = %0
  %20 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i32 0, i32 0, i32 0), align 4
  %21 = ashr i8 %20, 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, -64
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 1, i32 0), align 4
  %26 = shl i8 %25, 7
  %27 = ashr i8 %26, 7
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i8, i8* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @arr, i64 0, i64 1, i32 0), align 4
  %32 = ashr i8 %31, 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24, %19, %0
  call void @abort() #2
  unreachable

36:                                               ; preds = %30
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
