; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/mode-dependent-address.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/mode-dependent-address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.correct = private unnamed_addr constant [96 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 56, i32 57, i32 58, i32 59, i32 64, i32 65, i32 66, i32 67, i32 64, i32 65, i32 66, i32 67, i32 72, i32 73, i32 74, i32 75, i32 72, i32 73, i32 74, i32 75, i32 80, i32 81, i32 82, i32 83, i32 80, i32 81, i32 82, i32 83, i32 88, i32 89, i32 90, i32 91, i32 88, i32 89, i32 90, i32 91], align 16
@arg4 = dso_local global [96 x i8] zeroinitializer, align 16
@arg1 = dso_local global [96 x i16] zeroinitializer, align 16
@arg2 = dso_local global [96 x i32] zeroinitializer, align 16
@arg3 = dso_local global [96 x i64] zeroinitializer, align 16
@result = dso_local global [96 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @f883b(i8* noundef %0, i16* noalias noundef %1, i32* noalias noundef %2, i64* noalias noundef %3, i8* noalias noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %56, %5
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 96
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  %16 = load i16*, i16** %7, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %16, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp slt i32 1, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %31

24:                                               ; preds = %15
  %25 = load i16*, i16** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  br label %31

31:                                               ; preds = %24, %23
  %32 = phi i32 [ 1, %23 ], [ %30, %24 ]
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 31
  %39 = ashr i32 %32, %38
  %40 = xor i32 %39, 1
  %41 = sub nsw i32 %40, -32
  %42 = ashr i32 %41, 7
  %43 = or i32 %42, -5
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %44, %49
  %51 = trunc i64 %50 to i8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %51, i8* %55, align 1
  br label %56

56:                                               ; preds = %31
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %12, !llvm.loop !4

59:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [96 x i32], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [96 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([96 x i32]* @__const.main.correct to i8*), i64 384, i1 false)
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %26, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 96
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [96 x i8], [96 x i8]* @arg4, i64 0, i64 %12
  store i8 %10, i8* %13, align 1
  %14 = zext i8 %10 to i16
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [96 x i16], [96 x i16]* @arg1, i64 0, i64 %16
  store i16 %14, i16* %17, align 2
  %18 = sext i16 %14 to i32
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [96 x i32], [96 x i32]* @arg2, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = zext i32 %18 to i64
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [96 x i64], [96 x i64]* @arg3, i64 0, i64 %24
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %8
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %5, !llvm.loop !6

29:                                               ; preds = %5
  call void @f883b(i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @result, i64 0, i64 0), i16* noundef getelementptr inbounds ([96 x i16], [96 x i16]* @arg1, i64 0, i64 0), i32* noundef getelementptr inbounds ([96 x i32], [96 x i32]* @arg2, i64 0, i64 0), i64* noundef getelementptr inbounds ([96 x i64], [96 x i64]* @arg3, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @arg4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 96
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [96 x i8], [96 x i8]* @result, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [96 x i32], [96 x i32]* %3, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  call void @abort() #3
  unreachable

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %30, !llvm.loop !7

49:                                               ; preds = %30
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
