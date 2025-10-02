; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100708-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100708-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { double, [16 x %struct.anon] }
%struct.anon = type { i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca i32, align 4
  store %struct.S* %0, %struct.S** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %26, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = load %struct.S*, %struct.S** %2, align 8
  %9 = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 1
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* %9, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.S*, %struct.S** %2, align 8
  %15 = getelementptr inbounds %struct.S, %struct.S* %14, i32 0, i32 1
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* %15, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.S*, %struct.S** %2, align 8
  %21 = getelementptr inbounds %struct.S, %struct.S* %20, i32 0, i32 1
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* %21, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 2
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %3, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %4, !llvm.loop !4

29:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 8
  store i32 0, i32* %1, align 4
  call void @f(%struct.S* noundef %2)
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
