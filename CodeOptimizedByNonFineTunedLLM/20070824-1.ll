; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070824-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070824-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { %struct.S*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S*, align 8
  %3 = alloca %struct.S**, align 8
  %4 = alloca %struct.S*, align 8
  store i32 0, i32* %1, align 4
  store %struct.S* null, %struct.S** %2, align 8
  store %struct.S** %2, %struct.S*** %3, align 8
  br label %5

5:                                                ; preds = %10, %0
  %6 = load %struct.S**, %struct.S*** %3, align 8
  %7 = load %struct.S*, %struct.S** %6, align 8
  %8 = icmp ne %struct.S* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = load %struct.S**, %struct.S*** %3, align 8
  %12 = load %struct.S*, %struct.S** %11, align 8
  %13 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 0
  store %struct.S** %13, %struct.S*** %3, align 8
  br label %5, !llvm.loop !4

14:                                               ; preds = %5
  %15 = alloca i8, i64 16, align 16
  %16 = bitcast i8* %15 to %struct.S*
  store %struct.S* %16, %struct.S** %4, align 8
  %17 = load %struct.S**, %struct.S*** %3, align 8
  %18 = load %struct.S*, %struct.S** %17, align 8
  %19 = load %struct.S*, %struct.S** %4, align 8
  %20 = getelementptr inbounds %struct.S, %struct.S* %19, i32 0, i32 0
  store %struct.S* %18, %struct.S** %20, align 8
  %21 = load %struct.S*, %struct.S** %4, align 8
  %22 = getelementptr inbounds %struct.S, %struct.S* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = load %struct.S*, %struct.S** %4, align 8
  %24 = load %struct.S**, %struct.S*** %3, align 8
  store %struct.S* %23, %struct.S** %24, align 8
  %25 = load %struct.S*, %struct.S** %2, align 8
  %26 = icmp ne %struct.S* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  call void @abort() #2
  unreachable

28:                                               ; preds = %14
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
