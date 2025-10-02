; ModuleID = './stkalign.ll'
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
  call void asm "", "=*imr,=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull elementtype(i32) %3, %struct.anon* nonnull elementtype(%struct.anon) @test.s, i32* nonnull %3, %struct.anon* nonnull elementtype(%struct.anon) @test.s) #1, !srcloc !4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %2
  %5 = add i32 %0, -1
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @test(i32 noundef %5, i32 noundef %6)
  br label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = xor i32 %9, %1
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %7, %4 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void asm "", "=*imr,=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(i32* nonnull elementtype(i32) %3, %struct.anon.0* nonnull elementtype(%struct.anon.0) @test2.s, i32* nonnull %3, %struct.anon.0* nonnull elementtype(%struct.anon.0) @test2.s) #1, !srcloc !5
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %2
  %5 = add i32 %0, -1
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @test2(i32 noundef %5, i32 noundef %6)
  br label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = xor i32 %9, %1
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %7, %4 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call i32 @test(i32 noundef %0, i32 noundef 0)
  %4 = add nsw i32 %0, 1
  %5 = call i32 @test(i32 noundef %4, i32 noundef 0)
  %6 = or i32 %3, %5
  %7 = add nsw i32 %0, 2
  %8 = call i32 @test(i32 noundef %7, i32 noundef 0)
  %9 = or i32 %6, %8
  %10 = call i32 @test2(i32 noundef %0, i32 noundef 0)
  %11 = add nsw i32 %0, 1
  %12 = call i32 @test2(i32 noundef %11, i32 noundef 0)
  %13 = add nsw i32 %0, 2
  %14 = call i32 @test2(i32 noundef %13, i32 noundef 0)
  %15 = and i32 %9, 63
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = or i32 %10, %12
  %19 = or i32 %18, %14
  %20 = and i32 %19, 63
  %21 = icmp ne i32 %20, 0
  %phi.cast = zext i1 %21 to i32
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i32 [ 0, %2 ], [ %phi.cast, %17 ]
  ret i32 %23
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
