; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43560.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43560.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, [10 x i8] }

@s = dso_local constant %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  br label %3

3:                                                ; preds = %22, %1
  %4 = load %struct.S*, %struct.S** %2, align 8
  %5 = getelementptr inbounds %struct.S, %struct.S* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = load %struct.S*, %struct.S** %2, align 8
  %10 = getelementptr inbounds %struct.S, %struct.S* %9, i32 0, i32 2
  %11 = load %struct.S*, %struct.S** %2, align 8
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i1 [ false, %3 ], [ %19, %8 ]
  br i1 %21, label %22, label %34

22:                                               ; preds = %20
  %23 = load %struct.S*, %struct.S** %2, align 8
  %24 = getelementptr inbounds %struct.S, %struct.S* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.S*, %struct.S** %2, align 8
  %28 = getelementptr inbounds %struct.S, %struct.S* %27, i32 0, i32 2
  %29 = load %struct.S*, %struct.S** %2, align 8
  %30 = getelementptr inbounds %struct.S, %struct.S* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %28, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  br label %3, !llvm.loop !4

34:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S*, align 8
  store i32 0, i32* %1, align 4
  %3 = call %struct.S* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(%struct.S* @s) #1, !srcloc !6
  store %struct.S* %3, %struct.S** %2, align 8
  %4 = load %struct.S*, %struct.S** %2, align 8
  call void @test(%struct.S* noundef %4)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i64 298}
