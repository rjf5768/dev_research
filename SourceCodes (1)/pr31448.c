; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31448.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31448.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._st = type { i24, i24 }

@g.constreg = internal constant [1 x i32] zeroinitializer, align 4
@f.constreg = internal constant [1 x i32] [i32 -16843010], align 4
@next = dso_local global %struct._st* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @g() #0 {
  %1 = alloca %struct._st*, align 8
  %2 = alloca i32, align 4
  store %struct._st* null, %struct._st** %1, align 8
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [1 x i32], [1 x i32]* @g.constreg, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct._st*, %struct._st** %1, align 8
  %8 = bitcast %struct._st* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %6, 16777215
  %11 = and i32 %9, -16777216
  %12 = or i32 %11, %10
  store i32 %12, i32* %8, align 4
  %13 = shl i32 %10, 8
  %14 = ashr i32 %13, 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [1 x i32], [1 x i32]* @f.constreg, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct._st*, %struct._st** @next, align 8
  %7 = bitcast %struct._st* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %5, 16777215
  %10 = and i32 %8, -16777216
  %11 = or i32 %10, %9
  store i32 %11, i32* %7, align 4
  %12 = shl i32 %9, 8
  %13 = ashr i32 %12, 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* @f.constreg, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct._st*, %struct._st** @next, align 8
  %19 = getelementptr inbounds %struct._st, %struct._st* %18, i32 0, i32 1
  %20 = bitcast i24* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %17, 16777215
  %23 = and i32 %21, -16777216
  %24 = or i32 %23, %22
  store i32 %24, i32* %20, align 4
  %25 = shl i32 %22, 8
  %26 = ashr i32 %25, 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._st, align 4
  store i32 0, i32* %1, align 4
  store %struct._st* %2, %struct._st** @next, align 8
  call void @f()
  %3 = load %struct._st*, %struct._st** @next, align 8
  %4 = bitcast %struct._st* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 %5, 8
  %7 = ashr i32 %6, 8
  %8 = icmp ne i32 %7, -65794
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
  %11 = load %struct._st*, %struct._st** @next, align 8
  %12 = getelementptr inbounds %struct._st, %struct._st* %11, i32 0, i32 1
  %13 = bitcast i24* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 8
  %16 = ashr i32 %15, 8
  %17 = icmp ne i32 %16, -65794
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  call void @abort() #2
  unreachable

19:                                               ; preds = %10
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
