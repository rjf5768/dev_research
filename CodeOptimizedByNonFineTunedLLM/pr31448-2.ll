; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31448-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31448-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._st = type { i48 }

@g.constreg = internal constant [1 x i32] zeroinitializer, align 4
@f.constreg = internal constant [1 x i64] [i64 4278124286], align 8
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
  %7 = sext i32 %6 to i64
  %8 = load %struct._st*, %struct._st** %1, align 8
  %9 = bitcast %struct._st* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = and i64 %7, 16777215
  %12 = and i64 %10, -16777216
  %13 = or i64 %12, %11
  store i64 %13, i64* %9, align 8
  %14 = shl i64 %11, 40
  %15 = ashr i64 %14, 40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [1 x i64], [1 x i64]* @f.constreg, i64 0, i64 %3
  %5 = load i64, i64* %4, align 8
  %6 = load %struct._st*, %struct._st** @next, align 8
  %7 = bitcast %struct._st* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = and i64 %5, 16777215
  %10 = and i64 %8, -16777216
  %11 = or i64 %10, %9
  store i64 %11, i64* %7, align 8
  %12 = shl i64 %9, 40
  %13 = ashr i64 %12, 40
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1 x i64], [1 x i64]* @f.constreg, i64 0, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct._st*, %struct._st** @next, align 8
  %19 = bitcast %struct._st* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %17, 16777215
  %22 = shl i64 %21, 24
  %23 = and i64 %20, -281474959933441
  %24 = or i64 %23, %22
  store i64 %24, i64* %19, align 8
  %25 = shl i64 %21, 40
  %26 = ashr i64 %25, 40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._st, align 8
  store i32 0, i32* %1, align 4
  store %struct._st* %2, %struct._st** @next, align 8
  call void @f()
  %3 = load %struct._st*, %struct._st** @next, align 8
  %4 = bitcast %struct._st* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = shl i64 %5, 40
  %7 = ashr i64 %6, 40
  %8 = trunc i64 %7 to i32
  %9 = icmp ne i32 %8, -65794
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %0
  %12 = load %struct._st*, %struct._st** @next, align 8
  %13 = bitcast %struct._st* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = shl i64 %14, 16
  %16 = ashr i64 %15, 40
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %17, -65794
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  call void @abort() #2
  unreachable

20:                                               ; preds = %11
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
