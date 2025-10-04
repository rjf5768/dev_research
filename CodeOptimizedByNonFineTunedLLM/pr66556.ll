; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr66556.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr66556.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i24, i16 }

@b = dso_local global { i32, i8, i8, i8, i16 } { i32 8355840, i8 6, i8 -128, i8 2, i16 0 }, align 4
@g = dso_local global { i32, i8, i8, i8, i16 } { i32 8, i8 0, i8 -128, i8 2, i16 0 }, align 4
@h = dso_local global i32 8, align 4
@e = dso_local global <{ i8, [236 x i8] }> <{ i8 4, [236 x i8] zeroinitializer }>, align 16
@d = dso_local global i16 0, align 2
@f = dso_local global i16* @d, align 8
@i = dso_local global [5 x i16] [i16 3, i16 0, i16 0, i16 0, i16 0], align 2
@c = dso_local global i32 0, align 4
@k = dso_local global i32* @c, align 8
@a = dso_local global i32 0, align 4
@j = dso_local global i8 0, align 1
@l = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub i32 0, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn2(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  store i32 %4, i32* @a, align 4
  %5 = load volatile i8, i8* getelementptr inbounds ([237 x i8], [237 x i8]* bitcast (<{ i8, [236 x i8] }>* @e to [237 x i8]*), i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @fn3() #0 {
  %1 = load i32*, i32** @k, align 8
  store i32 4, i32* %1, align 4
  %2 = load i16*, i16** @f, align 8
  %3 = load i16, i16* %2, align 2
  ret i16 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  store i32 0, i32* %1, align 4
  store i16* getelementptr inbounds ([5 x i16], [5 x i16]* @i, i64 0, i64 4), i16** %3, align 8
  %4 = load i32, i32* @h, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i8, i8* @j, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i1 [ false, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* bitcast (i24* getelementptr inbounds (%struct.anon, %struct.anon* bitcast ({ i32, i8, i8, i8, i16 }* @b to %struct.anon*), i32 0, i32 1) to i32*), align 4
  %14 = lshr i32 %13, 15
  %15 = and i32 %14, 7
  %16 = icmp sle i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @fn1(i32 noundef %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* bitcast (i24* getelementptr inbounds (%struct.anon, %struct.anon* bitcast ({ i32, i8, i8, i8, i16 }* @g to %struct.anon*), i32 0, i32 1) to i32*), align 4
  %21 = and i32 %20, 32767
  %22 = icmp ugt i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* @l, align 2
  %25 = load i16*, i16** %3, align 8
  store i16 3, i16* %25, align 2
  %26 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* bitcast ({ i32, i8, i8, i8, i16 }* @b to %struct.anon*), i32 0, i32 0), align 4
  %27 = lshr i32 %26, 15
  %28 = trunc i32 %27 to i8
  call void @fn2(i8 noundef signext %28)
  %29 = load i32, i32* @a, align 4
  %30 = and i32 %29, 255
  %31 = icmp ne i32 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %10
  call void @abort() #2
  unreachable

33:                                               ; preds = %10
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
