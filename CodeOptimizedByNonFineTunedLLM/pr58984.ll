; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58984.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58984.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i24 }
%struct.T = type <{ i8, i16, i8 }>

@a = dso_local global i32 0, align 4
@c = dso_local global i32* @a, align 8
@__const.main.o = private unnamed_addr constant { i8, i8, i8, i8 } { i8 1, i8 64, i8 0, i8 undef }, align 4
@n = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@__const.main.p = private unnamed_addr constant { i8, i8, i8, i8 } { i8 1, i8 64, i8 0, i8 undef }, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  %3 = alloca %struct.T, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @__const.main.o, i32 0, i32 0), i64 4, i1 false)
  %5 = bitcast %struct.S* %2 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @foo(i32 %6)
  %8 = load i32, i32* @n, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %0
  %11 = bitcast %struct.S* %2 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 24
  %14 = ashr i32 %13, 24
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %10, %0
  %17 = phi i1 [ true, %0 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* @m, align 4
  %19 = load i32, i32* @a, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @abort() #3
  unreachable

22:                                               ; preds = %16
  store i32 0, i32* @e, align 4
  %23 = bitcast %struct.T* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @__const.main.p, i32 0, i32 0), i64 4, i1 false)
  %24 = bitcast %struct.T* %3 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bar(i32 %25)
  %27 = load i32, i32* @n, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.T, %struct.T* %3, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %22
  %35 = phi i1 [ true, %22 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @m, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @m, align 4
  %39 = load i32, i32* @a, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  call void @abort() #3
  unreachable

42:                                               ; preds = %34
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.S, align 4
  %4 = alloca [36 x i16*], align 16
  %5 = alloca i16**, align 8
  %6 = bitcast %struct.S* %3 to i32*
  store i32 %0, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* @e, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = getelementptr inbounds [36 x i16*], [36 x i16*]* %4, i64 0, i64 0
  store i16** %11, i16*** %5, align 8
  %12 = load i32*, i32** @c, align 8
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = bitcast %struct.S* %3 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 13
  %18 = ashr i32 %17, 27
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load i16**, i16*** %5, align 8
  store i16* null, i16** %21, align 8
  %22 = load i32, i32* @b, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @e, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @e, align 4
  br label %7, !llvm.loop !4

27:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @bar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.T, align 4
  %4 = alloca [36 x i16*], align 16
  %5 = alloca i16**, align 8
  %6 = bitcast %struct.T* %3 to i32*
  store i32 %0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* @e, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = getelementptr inbounds [36 x i16*], [36 x i16*]* %4, i64 0, i64 0
  store i16** %11, i16*** %5, align 8
  %12 = load i32*, i32** @c, align 8
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %struct.T, %struct.T* %3, i32 0, i32 1
  %16 = load i16, i16* %15, align 1
  %17 = shl i16 %16, 5
  %18 = ashr i16 %17, 11
  %19 = sext i16 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i16**, i16*** %5, align 8
  store i16* null, i16** %22, align 8
  %23 = load i32, i32* @b, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* @e, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @e, align 4
  br label %7, !llvm.loop !6

28:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
