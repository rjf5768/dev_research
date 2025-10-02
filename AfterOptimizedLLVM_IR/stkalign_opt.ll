; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stkalign.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stkalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, [63 x i8] }
%struct.anon.0 = type { i8 }

@test.s = internal global %struct.anon zeroinitializer, align 64
@test2.s = internal global %struct.anon.0 zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  call void asm "", "=*imr,=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(i32* elementtype(i32) %5, %struct.anon* elementtype(%struct.anon) @test.s, i32* %5, %struct.anon* elementtype(%struct.anon) @test.s) #1, !srcloc !4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = sub i32 %9, 1
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @test(i32 noundef %10, i32 noundef %11)
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = xor i32 %14, %15
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32 [ %12, %8 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  call void asm "", "=*imr,=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(i32* elementtype(i32) %5, %struct.anon.0* elementtype(%struct.anon.0) @test2.s, i32* %5, %struct.anon.0* elementtype(%struct.anon.0) @test2.s) #1, !srcloc !5
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = sub i32 %9, 1
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @test2(i32 noundef %10, i32 noundef %11)
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = xor i32 %14, %15
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32 [ %12, %8 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @test(i32 noundef %8, i32 noundef 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 @test(i32 noundef %11, i32 noundef 0)
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 2
  %17 = call i32 @test(i32 noundef %16, i32 noundef 0)
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @test2(i32 noundef %20, i32 noundef 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @test2(i32 noundef %23, i32 noundef 0)
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 2
  %29 = call i32 @test2(i32 noundef %28, i32 noundef 0)
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 63
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 63
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %35, %2
  %40 = phi i1 [ false, %2 ], [ %38, %35 ]
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  ret i32 %42
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 344}
!5 = !{i64 557}
