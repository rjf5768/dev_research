; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71083.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71083.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_chain = type { i32 }
%struct.lock_chain1 = type <{ i8, i16 }>

@test = dso_local global [101 x %struct.lock_chain] zeroinitializer, align 16
@test1 = dso_local global [101 x %struct.lock_chain1] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.lock_chain* @foo(%struct.lock_chain* noundef %0) #0 {
  %2 = alloca %struct.lock_chain*, align 8
  %3 = alloca i32, align 4
  store %struct.lock_chain* %0, %struct.lock_chain** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %26, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = load %struct.lock_chain*, %struct.lock_chain** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.lock_chain, %struct.lock_chain* %8, i64 %10
  %12 = bitcast %struct.lock_chain* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = lshr i32 %13, 8
  %15 = load %struct.lock_chain*, %struct.lock_chain** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.lock_chain, %struct.lock_chain* %15, i64 %18
  %20 = bitcast %struct.lock_chain* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %14, 16777215
  %23 = shl i32 %22, 8
  %24 = and i32 %21, 255
  %25 = or i32 %24, %23
  store i32 %25, i32* %20, align 4
  br label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %4, !llvm.loop !4

29:                                               ; preds = %4
  %30 = load %struct.lock_chain*, %struct.lock_chain** %2, align 8
  ret %struct.lock_chain* %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.lock_chain1* @bar(%struct.lock_chain1* noundef %0) #0 {
  %2 = alloca %struct.lock_chain1*, align 8
  %3 = alloca i32, align 4
  store %struct.lock_chain1* %0, %struct.lock_chain1** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = load %struct.lock_chain1*, %struct.lock_chain1** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.lock_chain1, %struct.lock_chain1* %8, i64 %10
  %12 = getelementptr inbounds %struct.lock_chain1, %struct.lock_chain1* %11, i32 0, i32 1
  %13 = load i16, i16* %12, align 1
  %14 = load %struct.lock_chain1*, %struct.lock_chain1** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.lock_chain1, %struct.lock_chain1* %14, i64 %17
  %19 = getelementptr inbounds %struct.lock_chain1, %struct.lock_chain1* %18, i32 0, i32 1
  store i16 %13, i16* %19, align 1
  br label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4, !llvm.loop !6

23:                                               ; preds = %4
  %24 = load %struct.lock_chain1*, %struct.lock_chain1** %2, align 8
  ret %struct.lock_chain1* %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call %struct.lock_chain* @foo(%struct.lock_chain* noundef getelementptr inbounds ([101 x %struct.lock_chain], [101 x %struct.lock_chain]* @test, i64 0, i64 0))
  %3 = call %struct.lock_chain1* @bar(%struct.lock_chain1* noundef getelementptr inbounds ([101 x %struct.lock_chain1], [101 x %struct.lock_chain1]* @test1, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
