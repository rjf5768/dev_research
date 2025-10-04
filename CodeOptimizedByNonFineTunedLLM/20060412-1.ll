; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060412-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060412-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i64, [82 x %struct.S] }
%struct.S = type { i64 }

@t = dso_local global %struct.T zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S*, align 8
  %3 = alloca %struct.S*, align 8
  store i32 0, i32* %1, align 4
  store %struct.S* bitcast (%struct.T* @t to %struct.S*), %struct.S** %2, align 8
  %4 = load %struct.S*, %struct.S** %2, align 8
  %5 = bitcast %struct.S* %4 to %struct.T*
  %6 = getelementptr inbounds %struct.T, %struct.T* %5, i32 0, i32 1
  %7 = getelementptr inbounds [82 x %struct.S], [82 x %struct.S]* %6, i64 0, i64 0
  store %struct.S* %7, %struct.S** %2, align 8
  %8 = load %struct.S*, %struct.S** %2, align 8
  %9 = getelementptr inbounds %struct.S, %struct.S* %8, i64 82
  store %struct.S* %9, %struct.S** %3, align 8
  br label %10

10:                                               ; preds = %15, %0
  %11 = load %struct.S*, %struct.S** %3, align 8
  %12 = getelementptr inbounds %struct.S, %struct.S* %11, i32 -1
  store %struct.S* %12, %struct.S** %3, align 8
  %13 = load %struct.S*, %struct.S** %2, align 8
  %14 = icmp ugt %struct.S* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.S*, %struct.S** %3, align 8
  %17 = getelementptr inbounds %struct.S, %struct.S* %16, i32 0, i32 0
  store i64 -1, i64* %17, align 8
  br label %10, !llvm.loop !4

18:                                               ; preds = %10
  %19 = load %struct.S*, %struct.S** %3, align 8
  %20 = getelementptr inbounds %struct.S, %struct.S* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.S*, %struct.S** %3, align 8
  %22 = load %struct.S*, %struct.S** %2, align 8
  %23 = icmp ugt %struct.S* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  call void @abort() #2
  unreachable

25:                                               ; preds = %18
  %26 = load %struct.S*, %struct.S** %3, align 8
  %27 = load %struct.S*, %struct.S** %2, align 8
  %28 = ptrtoint %struct.S* %26 to i64
  %29 = ptrtoint %struct.S* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  call void @abort() #2
  unreachable

34:                                               ; preds = %25
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
