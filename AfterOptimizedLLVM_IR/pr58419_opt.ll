; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58419.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58419.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i16 0, align 2
@p = dso_local global i32* null, align 8
@b = dso_local global i8 0, align 1
@h = dso_local global i16 0, align 2
@e = dso_local global i8 0, align 1
@a = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@d = internal global i16* @c, align 8
@i = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @dummy() #0 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @foo(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub nsw i32 %5, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar() #0 {
  %1 = alloca i16*, align 8
  store i16* @c, i16** %1, align 8
  %2 = load i16*, i16** %1, align 8
  store i16 1, i16* %2, align 2
  %3 = load i32*, i32** @p, align 8
  store i32 0, i32* %3, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8 -22, i8* @b, align 1
  br label %4

4:                                                ; preds = %37, %0
  %5 = load i8, i8* @b, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp sge i32 %6, -29
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  store i16* @h, i16** %2, align 8
  store i8* @e, i8** %3, align 8
  %9 = load i32, i32* @a, align 4
  %10 = trunc i32 %9 to i16
  %11 = load i16*, i16** %2, align 8
  store i16 %10, i16* %11, align 2
  %12 = load i32, i32* @k, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i16*, i16** @d, align 8
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi i1 [ false, %8 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %3, align 8
  store i8 %22, i8* %23, align 1
  %24 = sext i8 %22 to i32
  %25 = load i32, i32* @i, align 4
  %26 = icmp sgt i32 1, %25
  %27 = zext i1 %26 to i32
  %28 = call signext i8 @foo(i32 noundef %24, i32 noundef %27)
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = call i32 @bar()
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %19
  %35 = phi i1 [ true, %19 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* @g, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load i8, i8* @b, align 1
  %39 = add i8 %38, -1
  store i8 %39, i8* @b, align 1
  br label %4, !llvm.loop !5

40:                                               ; preds = %4
  call void @dummy()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 63}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
