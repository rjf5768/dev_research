; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65215-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65215-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i64 }

@__const.main.s = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -66, i8 -83, i8 -34, i8 -17, i8 -88, i8 -66, i8 -19, i8 -2 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @bar(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %5 = load %struct.S*, %struct.S** %2, align 8
  %6 = bitcast %struct.S* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = and i64 %7, 16777215
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 8
  %11 = load %struct.S*, %struct.S** %2, align 8
  %12 = bitcast %struct.S* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = lshr i64 %13, 24
  %15 = and i64 %14, 255
  %16 = trunc i64 %15 to i32
  %17 = or i32 %10, %16
  %18 = call i32 @foo(i32 noundef %17)
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %3, align 8
  %20 = load %struct.S*, %struct.S** %2, align 8
  %21 = bitcast %struct.S* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = call i32 @foo(i32 noundef %24)
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = shl i64 %27, 32
  %29 = load i64, i64* %3, align 8
  %30 = or i64 %28, %29
  ret i64 %30
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 24
  %5 = load i32, i32* %2, align 4
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 65280
  %8 = or i32 %4, %7
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 8
  %11 = and i32 %10, 16711680
  %12 = or i32 %8, %11
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 %13, 24
  %15 = or i32 %12, %14
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.main.s, i32 0, i32 0), i64 8, i1 false)
  %5 = call i64 @bar(%struct.S* noundef %2)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %7 to i32
  %9 = call i32 @foo(i32 noundef %8)
  %10 = bitcast %struct.S* %2 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %36, label %15

15:                                               ; preds = %0
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @foo(i32 noundef %17)
  %19 = lshr i32 %18, 8
  %20 = bitcast %struct.S* %2 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, 16777215
  %23 = trunc i64 %22 to i32
  %24 = icmp ne i32 %19, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %15
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @foo(i32 noundef %27)
  %29 = and i32 %28, 255
  %30 = bitcast %struct.S* %2 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %31, 24
  %33 = and i64 %32, 255
  %34 = trunc i64 %33 to i32
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25, %15, %0
  call void @abort() #3
  unreachable

37:                                               ; preds = %25
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
